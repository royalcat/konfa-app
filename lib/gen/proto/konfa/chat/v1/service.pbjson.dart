//
//  Generated code. Do not modify.
//  source: konfa/chat/v1/service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use textChannelRefDescriptor instead')
const TextChannelRef$json = {
  '1': 'TextChannelRef',
  '2': [
    {'1': 'server_id', '3': 1, '4': 1, '5': 9, '10': 'serverId'},
    {'1': 'channel_id', '3': 2, '4': 1, '5': 9, '10': 'channelId'},
  ],
};

/// Descriptor for `TextChannelRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textChannelRefDescriptor = $convert.base64Decode(
    'Cg5UZXh0Q2hhbm5lbFJlZhIbCglzZXJ2ZXJfaWQYASABKAlSCHNlcnZlcklkEh0KCmNoYW5uZW'
    'xfaWQYAiABKAlSCWNoYW5uZWxJZA==');

@$core.Deprecated('Use sendMessageRequestDescriptor instead')
const SendMessageRequest$json = {
  '1': 'SendMessageRequest',
  '2': [
    {'1': 'channel', '3': 1, '4': 1, '5': 11, '6': '.konfa.chat.v1.TextChannelRef', '10': 'channel'},
    {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `SendMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendMessageRequestDescriptor = $convert.base64Decode(
    'ChJTZW5kTWVzc2FnZVJlcXVlc3QSNwoHY2hhbm5lbBgBIAEoCzIdLmtvbmZhLmNoYXQudjEuVG'
    'V4dENoYW5uZWxSZWZSB2NoYW5uZWwSGAoHY29udGVudBgCIAEoCVIHY29udGVudA==');

@$core.Deprecated('Use sendMessageResponseDescriptor instead')
const SendMessageResponse$json = {
  '1': 'SendMessageResponse',
  '2': [
    {'1': 'message_id', '3': 1, '4': 1, '5': 9, '10': 'messageId'},
  ],
};

/// Descriptor for `SendMessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendMessageResponseDescriptor = $convert.base64Decode(
    'ChNTZW5kTWVzc2FnZVJlc3BvbnNlEh0KCm1lc3NhZ2VfaWQYASABKAlSCW1lc3NhZ2VJZA==');

@$core.Deprecated('Use messageDescriptor instead')
const Message$json = {
  '1': 'Message',
  '2': [
    {'1': 'message_id', '3': 1, '4': 1, '5': 9, '10': 'messageId'},
    {'1': 'sender_id', '3': 4, '4': 1, '5': 9, '10': 'senderId'},
    {'1': 'content', '3': 5, '4': 1, '5': 9, '10': 'content'},
    {'1': 'timestamp', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode(
    'CgdNZXNzYWdlEh0KCm1lc3NhZ2VfaWQYASABKAlSCW1lc3NhZ2VJZBIbCglzZW5kZXJfaWQYBC'
    'ABKAlSCHNlbmRlcklkEhgKB2NvbnRlbnQYBSABKAlSB2NvbnRlbnQSOAoJdGltZXN0YW1wGAYg'
    'ASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdGltZXN0YW1w');

@$core.Deprecated('Use getMessageHistoryRequestDescriptor instead')
const GetMessageHistoryRequest$json = {
  '1': 'GetMessageHistoryRequest',
  '2': [
    {'1': 'channel', '3': 1, '4': 1, '5': 11, '6': '.konfa.chat.v1.TextChannelRef', '10': 'channel'},
    {'1': 'from', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'from'},
    {'1': 'count', '3': 3, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `GetMessageHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMessageHistoryRequestDescriptor = $convert.base64Decode(
    'ChhHZXRNZXNzYWdlSGlzdG9yeVJlcXVlc3QSNwoHY2hhbm5lbBgBIAEoCzIdLmtvbmZhLmNoYX'
    'QudjEuVGV4dENoYW5uZWxSZWZSB2NoYW5uZWwSLgoEZnJvbRgCIAEoCzIaLmdvb2dsZS5wcm90'
    'b2J1Zi5UaW1lc3RhbXBSBGZyb20SFAoFY291bnQYAyABKAVSBWNvdW50');

@$core.Deprecated('Use getMessageHistoryResponseDescriptor instead')
const GetMessageHistoryResponse$json = {
  '1': 'GetMessageHistoryResponse',
  '2': [
    {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.konfa.chat.v1.Message', '10': 'messages'},
  ],
};

/// Descriptor for `GetMessageHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMessageHistoryResponseDescriptor = $convert.base64Decode(
    'ChlHZXRNZXNzYWdlSGlzdG9yeVJlc3BvbnNlEjIKCG1lc3NhZ2VzGAEgAygLMhYua29uZmEuY2'
    'hhdC52MS5NZXNzYWdlUghtZXNzYWdlcw==');

@$core.Deprecated('Use getMessageRequestDescriptor instead')
const GetMessageRequest$json = {
  '1': 'GetMessageRequest',
  '2': [
    {'1': 'channel', '3': 1, '4': 1, '5': 11, '6': '.konfa.chat.v1.TextChannelRef', '10': 'channel'},
    {'1': 'message_id', '3': 2, '4': 1, '5': 9, '10': 'messageId'},
  ],
};

/// Descriptor for `GetMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMessageRequestDescriptor = $convert.base64Decode(
    'ChFHZXRNZXNzYWdlUmVxdWVzdBI3CgdjaGFubmVsGAEgASgLMh0ua29uZmEuY2hhdC52MS5UZX'
    'h0Q2hhbm5lbFJlZlIHY2hhbm5lbBIdCgptZXNzYWdlX2lkGAIgASgJUgltZXNzYWdlSWQ=');

@$core.Deprecated('Use getMessageResponseDescriptor instead')
const GetMessageResponse$json = {
  '1': 'GetMessageResponse',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 11, '6': '.konfa.chat.v1.Message', '10': 'message'},
  ],
};

/// Descriptor for `GetMessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMessageResponseDescriptor = $convert.base64Decode(
    'ChJHZXRNZXNzYWdlUmVzcG9uc2USMAoHbWVzc2FnZRgBIAEoCzIWLmtvbmZhLmNoYXQudjEuTW'
    'Vzc2FnZVIHbWVzc2FnZQ==');

@$core.Deprecated('Use streamNewMessagesRequestDescriptor instead')
const StreamNewMessagesRequest$json = {
  '1': 'StreamNewMessagesRequest',
  '2': [
    {'1': 'channel', '3': 1, '4': 1, '5': 11, '6': '.konfa.chat.v1.TextChannelRef', '10': 'channel'},
  ],
};

/// Descriptor for `StreamNewMessagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamNewMessagesRequestDescriptor = $convert.base64Decode(
    'ChhTdHJlYW1OZXdNZXNzYWdlc1JlcXVlc3QSNwoHY2hhbm5lbBgBIAEoCzIdLmtvbmZhLmNoYX'
    'QudjEuVGV4dENoYW5uZWxSZWZSB2NoYW5uZWw=');

@$core.Deprecated('Use streamNewMessagesResponseDescriptor instead')
const StreamNewMessagesResponse$json = {
  '1': 'StreamNewMessagesResponse',
  '2': [
    {'1': 'message_id', '3': 1, '4': 1, '5': 9, '10': 'messageId'},
  ],
};

/// Descriptor for `StreamNewMessagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamNewMessagesResponseDescriptor = $convert.base64Decode(
    'ChlTdHJlYW1OZXdNZXNzYWdlc1Jlc3BvbnNlEh0KCm1lc3NhZ2VfaWQYASABKAlSCW1lc3NhZ2'
    'VJZA==');

@$core.Deprecated('Use uploadAttachmentRequestDescriptor instead')
const UploadAttachmentRequest$json = {
  '1': 'UploadAttachmentRequest',
  '2': [
    {'1': 'info', '3': 1, '4': 1, '5': 11, '6': '.konfa.chat.v1.AttachmentUploadInfo', '9': 0, '10': 'info'},
    {'1': 'data', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'data'},
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `UploadAttachmentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadAttachmentRequestDescriptor = $convert.base64Decode(
    'ChdVcGxvYWRBdHRhY2htZW50UmVxdWVzdBI5CgRpbmZvGAEgASgLMiMua29uZmEuY2hhdC52MS'
    '5BdHRhY2htZW50VXBsb2FkSW5mb0gAUgRpbmZvEhQKBGRhdGEYAiABKAxIAFIEZGF0YUIJCgdw'
    'YXlsb2Fk');

@$core.Deprecated('Use attachmentUploadInfoDescriptor instead')
const AttachmentUploadInfo$json = {
  '1': 'AttachmentUploadInfo',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `AttachmentUploadInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attachmentUploadInfoDescriptor = $convert.base64Decode(
    'ChRBdHRhY2htZW50VXBsb2FkSW5mbxISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use uploadAttachmentResponseDescriptor instead')
const UploadAttachmentResponse$json = {
  '1': 'UploadAttachmentResponse',
  '2': [
    {'1': 'attachmen_id', '3': 1, '4': 1, '5': 9, '10': 'attachmenId'},
  ],
};

/// Descriptor for `UploadAttachmentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadAttachmentResponseDescriptor = $convert.base64Decode(
    'ChhVcGxvYWRBdHRhY2htZW50UmVzcG9uc2USIQoMYXR0YWNobWVuX2lkGAEgASgJUgthdHRhY2'
    'htZW5JZA==');
