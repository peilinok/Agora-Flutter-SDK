import '/src/binding_forward_export.dart';
part 'agora_media_player_types.g.dart';

/// @nodoc
const kMaxCharBufferLength = 50;

@JsonEnum(alwaysCreate: true)
enum MediaPlayerState {
  @JsonValue(0)
  playerStateIdle,

  @JsonValue(1)
  playerStateOpening,

  @JsonValue(2)
  playerStateOpenCompleted,

  @JsonValue(3)
  playerStatePlaying,

  @JsonValue(4)
  playerStatePaused,

  @JsonValue(5)
  playerStatePlaybackCompleted,

  @JsonValue(6)
  playerStatePlaybackAllLoopsCompleted,

  @JsonValue(7)
  playerStateStopped,

  @JsonValue(50)
  playerStatePausingInternal,

  @JsonValue(51)
  playerStateStoppingInternal,

  @JsonValue(52)
  playerStateSeekingInternal,

  @JsonValue(53)
  playerStateGettingInternal,

  @JsonValue(54)
  playerStateNoneInternal,

  @JsonValue(55)
  playerStateDoNothingInternal,

  @JsonValue(56)
  playerStateSetTrackInternal,

  @JsonValue(100)
  playerStateFailed,
}

extension MediaPlayerStateExt on MediaPlayerState {
  /// @nodoc
  static MediaPlayerState fromValue(int value) {
    return $enumDecode(_$MediaPlayerStateEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MediaPlayerStateEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum MediaPlayerReason {
  @JsonValue(0)
  playerReasonNone,

  @JsonValue(-1)
  playerReasonInvalidArguments,

  @JsonValue(-2)
  playerReasonInternal,

  @JsonValue(-3)
  playerReasonNoResource,

  @JsonValue(-4)
  playerReasonInvalidMediaSource,

  @JsonValue(-5)
  playerReasonUnknownStreamType,

  @JsonValue(-6)
  playerReasonObjNotInitialized,

  @JsonValue(-7)
  playerReasonCodecNotSupported,

  @JsonValue(-8)
  playerReasonVideoRenderFailed,

  @JsonValue(-9)
  playerReasonInvalidState,

  @JsonValue(-10)
  playerReasonUrlNotFound,

  @JsonValue(-11)
  playerReasonInvalidConnectionState,

  @JsonValue(-12)
  playerReasonSrcBufferUnderflow,

  @JsonValue(-13)
  playerReasonInterrupted,

  @JsonValue(-14)
  playerReasonNotSupported,

  @JsonValue(-15)
  playerReasonTokenExpired,

  @JsonValue(-16)
  playerReasonIpExpired,

  @JsonValue(-17)
  playerReasonUnknown,
}

extension MediaPlayerReasonExt on MediaPlayerReason {
  /// @nodoc
  static MediaPlayerReason fromValue(int value) {
    return $enumDecode(_$MediaPlayerReasonEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MediaPlayerReasonEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum MediaStreamType {
  @JsonValue(0)
  streamTypeUnknown,

  @JsonValue(1)
  streamTypeVideo,

  @JsonValue(2)
  streamTypeAudio,

  @JsonValue(3)
  streamTypeSubtitle,
}

extension MediaStreamTypeExt on MediaStreamType {
  /// @nodoc
  static MediaStreamType fromValue(int value) {
    return $enumDecode(_$MediaStreamTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MediaStreamTypeEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum MediaPlayerEvent {
  @JsonValue(0)
  playerEventSeekBegin,

  @JsonValue(1)
  playerEventSeekComplete,

  @JsonValue(2)
  playerEventSeekError,

  @JsonValue(5)
  playerEventAudioTrackChanged,

  @JsonValue(6)
  playerEventBufferLow,

  @JsonValue(7)
  playerEventBufferRecover,

  @JsonValue(8)
  playerEventFreezeStart,

  @JsonValue(9)
  playerEventFreezeStop,

  @JsonValue(10)
  playerEventSwitchBegin,

  @JsonValue(11)
  playerEventSwitchComplete,

  @JsonValue(12)
  playerEventSwitchError,

  @JsonValue(13)
  playerEventFirstDisplayed,

  @JsonValue(14)
  playerEventReachCacheFileMaxCount,

  @JsonValue(15)
  playerEventReachCacheFileMaxSize,

  @JsonValue(16)
  playerEventTryOpenStart,

  @JsonValue(17)
  playerEventTryOpenSucceed,

  @JsonValue(18)
  playerEventTryOpenFailed,
}

extension MediaPlayerEventExt on MediaPlayerEvent {
  /// @nodoc
  static MediaPlayerEvent fromValue(int value) {
    return $enumDecode(_$MediaPlayerEventEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MediaPlayerEventEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum PlayerPreloadEvent {
  @JsonValue(0)
  playerPreloadEventBegin,

  @JsonValue(1)
  playerPreloadEventComplete,

  @JsonValue(2)
  playerPreloadEventError,
}

extension PlayerPreloadEventExt on PlayerPreloadEvent {
  /// @nodoc
  static PlayerPreloadEvent fromValue(int value) {
    return $enumDecode(_$PlayerPreloadEventEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$PlayerPreloadEventEnumMap[this]!;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PlayerStreamInfo {
  const PlayerStreamInfo(
      {this.streamIndex,
      this.streamType,
      this.codecName,
      this.language,
      this.videoFrameRate,
      this.videoBitRate,
      this.videoWidth,
      this.videoHeight,
      this.videoRotation,
      this.audioSampleRate,
      this.audioChannels,
      this.audioBitsPerSample,
      this.duration});

  @JsonKey(name: 'streamIndex')
  final int? streamIndex;

  @JsonKey(name: 'streamType')
  final MediaStreamType? streamType;

  @JsonKey(name: 'codecName')
  final String? codecName;

  @JsonKey(name: 'language')
  final String? language;

  @JsonKey(name: 'videoFrameRate')
  final int? videoFrameRate;

  @JsonKey(name: 'videoBitRate')
  final int? videoBitRate;

  @JsonKey(name: 'videoWidth')
  final int? videoWidth;

  @JsonKey(name: 'videoHeight')
  final int? videoHeight;

  @JsonKey(name: 'videoRotation')
  final int? videoRotation;

  @JsonKey(name: 'audioSampleRate')
  final int? audioSampleRate;

  @JsonKey(name: 'audioChannels')
  final int? audioChannels;

  @JsonKey(name: 'audioBitsPerSample')
  final int? audioBitsPerSample;

  @JsonKey(name: 'duration')
  final int? duration;

  factory PlayerStreamInfo.fromJson(Map<String, dynamic> json) =>
      _$PlayerStreamInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerStreamInfoToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SrcInfo {
  const SrcInfo({this.bitrateInKbps, this.name});

  @JsonKey(name: 'bitrateInKbps')
  final int? bitrateInKbps;

  @JsonKey(name: 'name')
  final String? name;

  factory SrcInfo.fromJson(Map<String, dynamic> json) =>
      _$SrcInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SrcInfoToJson(this);
}

@JsonEnum(alwaysCreate: true)
enum MediaPlayerMetadataType {
  @JsonValue(0)
  playerMetadataTypeUnknown,

  @JsonValue(1)
  playerMetadataTypeSei,
}

extension MediaPlayerMetadataTypeExt on MediaPlayerMetadataType {
  /// @nodoc
  static MediaPlayerMetadataType fromValue(int value) {
    return $enumDecode(_$MediaPlayerMetadataTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MediaPlayerMetadataTypeEnumMap[this]!;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class CacheStatistics {
  const CacheStatistics({this.fileSize, this.cacheSize, this.downloadSize});

  @JsonKey(name: 'fileSize')
  final int? fileSize;

  @JsonKey(name: 'cacheSize')
  final int? cacheSize;

  @JsonKey(name: 'downloadSize')
  final int? downloadSize;

  factory CacheStatistics.fromJson(Map<String, dynamic> json) =>
      _$CacheStatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$CacheStatisticsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PlayerPlaybackStats {
  const PlayerPlaybackStats(
      {this.videoFps,
      this.videoBitrateInKbps,
      this.audioBitrateInKbps,
      this.totalBitrateInKbps});

  @JsonKey(name: 'videoFps')
  final int? videoFps;

  @JsonKey(name: 'videoBitrateInKbps')
  final int? videoBitrateInKbps;

  @JsonKey(name: 'audioBitrateInKbps')
  final int? audioBitrateInKbps;

  @JsonKey(name: 'totalBitrateInKbps')
  final int? totalBitrateInKbps;

  factory PlayerPlaybackStats.fromJson(Map<String, dynamic> json) =>
      _$PlayerPlaybackStatsFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerPlaybackStatsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PlayerUpdatedInfo {
  const PlayerUpdatedInfo(
      {this.internalPlayerUuid,
      this.deviceId,
      this.videoHeight,
      this.videoWidth,
      this.audioSampleRate,
      this.audioChannels,
      this.audioBitsPerSample});

  @JsonKey(name: 'internalPlayerUuid')
  final String? internalPlayerUuid;

  @JsonKey(name: 'deviceId')
  final String? deviceId;

  @JsonKey(name: 'videoHeight')
  final int? videoHeight;

  @JsonKey(name: 'videoWidth')
  final int? videoWidth;

  @JsonKey(name: 'audioSampleRate')
  final int? audioSampleRate;

  @JsonKey(name: 'audioChannels')
  final int? audioChannels;

  @JsonKey(name: 'audioBitsPerSample')
  final int? audioBitsPerSample;

  factory PlayerUpdatedInfo.fromJson(Map<String, dynamic> json) =>
      _$PlayerUpdatedInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerUpdatedInfoToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MediaSource {
  const MediaSource(
      {this.url,
      this.uri,
      this.startPos,
      this.autoPlay,
      this.enableCache,
      this.enableMultiAudioTrack,
      this.isAgoraSource,
      this.isLiveSource});

  @JsonKey(name: 'url')
  final String? url;

  @JsonKey(name: 'uri')
  final String? uri;

  @JsonKey(name: 'startPos')
  final int? startPos;

  @JsonKey(name: 'autoPlay')
  final bool? autoPlay;

  @JsonKey(name: 'enableCache')
  final bool? enableCache;

  @JsonKey(name: 'enableMultiAudioTrack')
  final bool? enableMultiAudioTrack;

  @JsonKey(name: 'isAgoraSource')
  final bool? isAgoraSource;

  @JsonKey(name: 'isLiveSource')
  final bool? isLiveSource;

  factory MediaSource.fromJson(Map<String, dynamic> json) =>
      _$MediaSourceFromJson(json);

  Map<String, dynamic> toJson() => _$MediaSourceToJson(this);
}
