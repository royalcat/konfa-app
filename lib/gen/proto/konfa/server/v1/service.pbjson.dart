//
//  Generated code. Do not modify.
//  source: konfa/server/v1/service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use listServerChannelsRequestDescriptor instead')
const ListServerChannelsRequest$json = {
  '1': 'ListServerChannelsRequest',
  '2': [
    {'1': 'server_id', '3': 1, '4': 1, '5': 9, '10': 'serverId'},
  ],
};

/// Descriptor for `ListServerChannelsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listServerChannelsRequestDescriptor = $convert.base64Decode(
    'ChlMaXN0U2VydmVyQ2hhbm5lbHNSZXF1ZXN0EhsKCXNlcnZlcl9pZBgBIAEoCVIIc2VydmVySW'
    'Q=');

@$core.Deprecated('Use listServerChannelsResponseDescriptor instead')
const ListServerChannelsResponse$json = {
  '1': 'ListServerChannelsResponse',
  '2': [
    {'1': 'channels', '3': 1, '4': 3, '5': 11, '6': '.konfa.channel.v1.Channel', '10': 'channels'},
  ],
};

/// Descriptor for `ListServerChannelsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listServerChannelsResponseDescriptor = $convert.base64Decode(
    'ChpMaXN0U2VydmVyQ2hhbm5lbHNSZXNwb25zZRI1CghjaGFubmVscxgBIAMoCzIZLmtvbmZhLm'
    'NoYW5uZWwudjEuQ2hhbm5lbFIIY2hhbm5lbHM=');
