import '/src/binding_forward_export.dart';
part 'agora_rhythm_player.g.dart';

@JsonEnum(alwaysCreate: true)
enum RhythmPlayerStateType {
  @JsonValue(810)
  rhythmPlayerStateIdle,

  @JsonValue(811)
  rhythmPlayerStateOpening,

  @JsonValue(812)
  rhythmPlayerStateDecoding,

  @JsonValue(813)
  rhythmPlayerStatePlaying,

  @JsonValue(814)
  rhythmPlayerStateFailed,
}

extension RhythmPlayerStateTypeExt on RhythmPlayerStateType {
  /// @nodoc
  static RhythmPlayerStateType fromValue(int value) {
    return $enumDecode(_$RhythmPlayerStateTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RhythmPlayerStateTypeEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum RhythmPlayerReason {
  @JsonValue(0)
  rhythmPlayerReasonOk,

  @JsonValue(1)
  rhythmPlayerReasonFailed,

  @JsonValue(801)
  rhythmPlayerReasonCanNotOpen,

  @JsonValue(802)
  rhythmPlayerReasonCanNotPlay,

  @JsonValue(803)
  rhythmPlayerReasonFileOverDurationLimit,
}

extension RhythmPlayerReasonExt on RhythmPlayerReason {
  /// @nodoc
  static RhythmPlayerReason fromValue(int value) {
    return $enumDecode(_$RhythmPlayerReasonEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RhythmPlayerReasonEnumMap[this]!;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AgoraRhythmPlayerConfig {
  const AgoraRhythmPlayerConfig({this.beatsPerMeasure, this.beatsPerMinute});

  @JsonKey(name: 'beatsPerMeasure')
  final int? beatsPerMeasure;

  @JsonKey(name: 'beatsPerMinute')
  final int? beatsPerMinute;

  factory AgoraRhythmPlayerConfig.fromJson(Map<String, dynamic> json) =>
      _$AgoraRhythmPlayerConfigFromJson(json);

  Map<String, dynamic> toJson() => _$AgoraRhythmPlayerConfigToJson(this);
}
