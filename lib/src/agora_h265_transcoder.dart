import '/src/binding_forward_export.dart';
part 'agora_h265_transcoder.g.dart';

@JsonEnum(alwaysCreate: true)
enum H265TranscodeResult {
  @JsonValue(-1)
  h265TranscodeResultUnknown,

  @JsonValue(0)
  h265TranscodeResultSuccess,

  @JsonValue(1)
  h265TranscodeResultRequestInvalid,

  @JsonValue(2)
  h265TranscodeResultUnauthorized,

  @JsonValue(3)
  h265TranscodeResultTokenExpired,

  @JsonValue(4)
  h265TranscodeResultForbidden,

  @JsonValue(5)
  h265TranscodeResultNotFound,

  @JsonValue(6)
  h265TranscodeResultConflicted,

  @JsonValue(7)
  h265TranscodeResultNotSupported,

  @JsonValue(8)
  h265TranscodeResultTooOften,

  @JsonValue(9)
  h265TranscodeResultServerInternalError,

  @JsonValue(10)
  h265TranscodeResultServiceUnavailable,
}

extension H265TranscodeResultExt on H265TranscodeResult {
  /// @nodoc
  static H265TranscodeResult fromValue(int value) {
    return $enumDecode(_$H265TranscodeResultEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$H265TranscodeResultEnumMap[this]!;
  }
}

class H265TranscoderObserver {
  /// Construct the [H265TranscoderObserver].
  const H265TranscoderObserver({
    this.onEnableTranscode,
    this.onQueryChannel,
    this.onTriggerTranscode,
  });

  final void Function(H265TranscodeResult result)? onEnableTranscode;

  final void Function(H265TranscodeResult result, String originChannel,
      String transcodeChannel)? onQueryChannel;

  final void Function(H265TranscodeResult result)? onTriggerTranscode;
}

abstract class H265Transcoder {
  Future<void> enableTranscode(
      {required String token, required String channel, required int uid});

  Future<int> queryChannel(
      {required String token, required String channel, required int uid});

  Future<void> triggerTranscode(
      {required String token, required String channel, required int uid});

  void registerTranscoderObserver(H265TranscoderObserver observer);

  void unregisterTranscoderObserver(H265TranscoderObserver observer);
}
