import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:confa/bloc/voice_bloc.dart';
import 'package:confa/gen/proto/confa/channel/v1/channels.pb.dart';
import 'package:confa/services/connection_manager.dart';

class VoiceChannelWidget extends StatelessWidget {
  final VoiceChannel channel;

  const VoiceChannelWidget({super.key, required this.channel});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VoiceBloc, VoiceState>(
      builder: (context, state) {
        if (state is VoiceLoading) {
          return Column(
            children: [
              ListTile(
                leading: const Icon(Icons.mic),
                title: Text(channel.name),
                trailing: const CircularProgressIndicator(),
              ),
            ],
          );
        }

        if (state is VoiceChannelConnected &&
            state.channelId == channel.channelId &&
            state.serverId == channel.serverId) {
          return _ActiveVoiceChannelListTile(channel: channel, state: state);
        }

        return _InactiveVoiceChannelListTile(channel: channel);
      },
    );
  }
}

class _InactiveVoiceChannelListTile extends StatelessWidget {
  final VoiceChannel channel;

  const _InactiveVoiceChannelListTile({required this.channel});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VoiceBloc, VoiceState>(
      builder: (context, state) {
        return ListTile(
          leading: const Icon(Icons.mic),
          title: Text(channel.name),
          selected: false,
          onTap:
              () => context.read<VoiceBloc>().add(
                JoinVoiceChannel(
                  conn: context.read<HubConnection>(),
                  serverId: channel.serverId,
                  channelId: channel.channelId,
                  voiceRelayId: channel.voiceRelayId[0],
                ),
              ),
        );
      },
    );
  }
}

class _ActiveVoiceChannelListTile extends StatelessWidget {
  final VoiceChannel channel;
  final VoiceChannelConnected state;

  const _ActiveVoiceChannelListTile({required this.channel, required this.state});

  @override
  Widget build(BuildContext context) {
    final users = state.usersState.userIds;

    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.mic),
          title: Text(channel.name),
          trailing: IconButton(
            icon: const Icon(Icons.call_end),
            onPressed: () => context.read<VoiceBloc>().add(LeaveVoiceChannel()),
          ),
        ),
        if (users.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: SizedBox(
              height: users.length * 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                    users.map((userId) {
                      final displayName = state.userDisplayNames[userId] ?? userId;
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
                          children: [
                            const Icon(Icons.person, size: 16),
                            const SizedBox(width: 8),
                            Text(displayName),
                          ],
                        ),
                      );
                    }).toList(),
              ),
            ),
          ),
      ],
    );
  }
}
