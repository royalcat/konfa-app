//
//  Generated code. Do not modify.
//  source: google/protobuf/go_features.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GoFeatures_APILevel extends $pb.ProtobufEnum {
  static const GoFeatures_APILevel API_LEVEL_UNSPECIFIED = GoFeatures_APILevel._(0, _omitEnumNames ? '' : 'API_LEVEL_UNSPECIFIED');
  static const GoFeatures_APILevel API_OPEN = GoFeatures_APILevel._(1, _omitEnumNames ? '' : 'API_OPEN');
  static const GoFeatures_APILevel API_HYBRID = GoFeatures_APILevel._(2, _omitEnumNames ? '' : 'API_HYBRID');
  static const GoFeatures_APILevel API_OPAQUE = GoFeatures_APILevel._(3, _omitEnumNames ? '' : 'API_OPAQUE');

  static const $core.List<GoFeatures_APILevel> values = <GoFeatures_APILevel> [
    API_LEVEL_UNSPECIFIED,
    API_OPEN,
    API_HYBRID,
    API_OPAQUE,
  ];

  static final $core.Map<$core.int, GoFeatures_APILevel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GoFeatures_APILevel? valueOf($core.int value) => _byValue[value];

  const GoFeatures_APILevel._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');