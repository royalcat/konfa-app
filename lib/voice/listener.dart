import 'dart:async';
import 'dart:typed_data';

import 'package:grpc/grpc.dart';
import 'package:confa/gen/proto/confa/voice_relay/v1/service.pbgrpc.dart';
import 'package:confa/gen/proto/confa/voice_relay/v1/voice.pb.dart';
import 'package:confa/voice/service.dart';
import 'package:confa/voice/opus/opus.dart';
import 'package:streaming_sound/streaming_sound.dart';

class VoiceChatListener {
  final VoiceRelayServiceClient _client;

  final String serverId;
  final String channelId;
  final String userId;

  ResponseStream<ListenToUserResponse>? _request;

  VoiceChatListener(this._client, this.serverId, this.channelId, this.userId);

  Future<void> listen() async {
    _request = _client.listenToUser(
      ListenToUserRequest(
        voiceInfo: VoiceInfo(
          codec: AudioCodec.AUDIO_CODEC_PCM_F32,
          serverId: serverId,
          channelId: channelId,
          userId: userId,
        ),
      ),
    );

    final pcmStream = _request!
        .where((event) => event.hasVoiceData())
        .map((event) => event.voiceData.data as Uint8List?)
        // .transform(SimpleStreamOpusDecoder(
        //   sampleRate: sampleRate,
        //   channels: 1,
        // ))
        // .cast<Float32List>()
        .map((event) => event!.buffer.asFloat32List())
        .transform(StreamEventRateCounter("speaker:"));

    playSoundStream<Float32List>(pcmStream, sampleRate: sampleRate, outputName: userId);
  }

  Future<void> stop() async {
    _request?.cancel();
  }

  // Uint8List prependWavHeader(Uint8List data) {
  //   final header = Uint8List(44);
  //   final dv = ByteData.view(header.buffer);

  //   dv.setUint32(0, 0x46464952, Endian.little); // "RIFF"
  //   dv.setUint32(4, 36 + data.lengthInBytes, Endian.little); // File size - 8
  //   dv.setUint32(8, 0x45564157, Endian.little); // "WAVE"
  //   dv.setUint32(12, 0x20746d66, Endian.little); // "fmt "
  //   dv.setUint32(16, 16, Endian.little); // fmt chunk size
  //   dv.setUint16(20, 1, Endian.little); // PCM format
  //   dv.setUint16(22, 1, Endian.little); // Mono
  //   dv.setUint32(24, 48000, Endian.little); // Sample rate
  //   dv.setUint32(28, 48000, Endian.little); // Byte rate
  //   dv.setUint16(32, 1, Endian.little); // Block align
  //   dv.setUint16(34, 16, Endian.little); // Bits per sample
  //   dv.setUint32(36, 0x61746164, Endian.little); // "data"
  //   dv.setUint32(40, data.lengthInBytes, Endian.little); // Data size

  //   return Uint8List.fromList(header + data);
  // }
}
