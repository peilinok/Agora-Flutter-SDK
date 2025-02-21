import '/src/binding_forward_export.dart';
part 'agora_music_content_center.g.dart';

@JsonEnum(alwaysCreate: true)
enum MusicPlayMode {
  @JsonValue(0)
  kMusicPlayModeOriginal,

  @JsonValue(1)
  kMusicPlayModeAccompany,

  @JsonValue(2)
  kMusicPlayModeLeadSing,
}

extension MusicPlayModeExt on MusicPlayMode {
  /// @nodoc
  static MusicPlayMode fromValue(int value) {
    return $enumDecode(_$MusicPlayModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MusicPlayModeEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum PreloadState {
  @JsonValue(0)
  kPreloadStateCompleted,

  @JsonValue(1)
  kPreloadStateFailed,

  @JsonValue(2)
  kPreloadStatePreloading,

  @JsonValue(3)
  kPreloadStateRemoved,
}

extension PreloadStateExt on PreloadState {
  /// @nodoc
  static PreloadState fromValue(int value) {
    return $enumDecode(_$PreloadStateEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$PreloadStateEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum MusicContentCenterStateReason {
  @JsonValue(0)
  kMusicContentCenterReasonOk,

  @JsonValue(1)
  kMusicContentCenterReasonError,

  @JsonValue(2)
  kMusicContentCenterReasonGateway,

  @JsonValue(3)
  kMusicContentCenterReasonPermissionAndResource,

  @JsonValue(4)
  kMusicContentCenterReasonInternalDataParse,

  @JsonValue(5)
  kMusicContentCenterReasonMusicLoading,

  @JsonValue(6)
  kMusicContentCenterReasonMusicDecryption,

  @JsonValue(7)
  kMusicContentCenterReasonHttpInternalError,
}

extension MusicContentCenterStateReasonExt on MusicContentCenterStateReason {
  /// @nodoc
  static MusicContentCenterStateReason fromValue(int value) {
    return $enumDecode(_$MusicContentCenterStateReasonEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MusicContentCenterStateReasonEnumMap[this]!;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MusicChartInfo {
  const MusicChartInfo({this.chartName, this.id});

  @JsonKey(name: 'chartName')
  final String? chartName;

  @JsonKey(name: 'id')
  final int? id;

  factory MusicChartInfo.fromJson(Map<String, dynamic> json) =>
      _$MusicChartInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MusicChartInfoToJson(this);
}

@JsonEnum(alwaysCreate: true)
enum MusicCacheStatusType {
  @JsonValue(0)
  musicCacheStatusTypeCached,

  @JsonValue(1)
  musicCacheStatusTypeCaching,
}

extension MusicCacheStatusTypeExt on MusicCacheStatusType {
  /// @nodoc
  static MusicCacheStatusType fromValue(int value) {
    return $enumDecode(_$MusicCacheStatusTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MusicCacheStatusTypeEnumMap[this]!;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MusicCacheInfo {
  const MusicCacheInfo({this.songCode, this.status});

  @JsonKey(name: 'songCode')
  final int? songCode;

  @JsonKey(name: 'status')
  final MusicCacheStatusType? status;

  factory MusicCacheInfo.fromJson(Map<String, dynamic> json) =>
      _$MusicCacheInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MusicCacheInfoToJson(this);
}

abstract class MusicChartCollection {
  Future<int> getCount();

  Future<MusicChartInfo> get(int index);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MvProperty {
  const MvProperty({this.resolution, this.bandwidth});

  @JsonKey(name: 'resolution')
  final String? resolution;

  @JsonKey(name: 'bandwidth')
  final String? bandwidth;

  factory MvProperty.fromJson(Map<String, dynamic> json) =>
      _$MvPropertyFromJson(json);

  Map<String, dynamic> toJson() => _$MvPropertyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ClimaxSegment {
  const ClimaxSegment({this.startTimeMs, this.endTimeMs});

  @JsonKey(name: 'startTimeMs')
  final int? startTimeMs;

  @JsonKey(name: 'endTimeMs')
  final int? endTimeMs;

  factory ClimaxSegment.fromJson(Map<String, dynamic> json) =>
      _$ClimaxSegmentFromJson(json);

  Map<String, dynamic> toJson() => _$ClimaxSegmentToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Music {
  const Music(
      {this.songCode,
      this.name,
      this.singer,
      this.poster,
      this.releaseTime,
      this.durationS,
      this.type,
      this.pitchType,
      this.lyricCount,
      this.lyricList,
      this.climaxSegmentCount,
      this.climaxSegmentList,
      this.mvPropertyCount,
      this.mvPropertyList});

  @JsonKey(name: 'songCode')
  final int? songCode;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'singer')
  final String? singer;

  @JsonKey(name: 'poster')
  final String? poster;

  @JsonKey(name: 'releaseTime')
  final String? releaseTime;

  @JsonKey(name: 'durationS')
  final int? durationS;

  @JsonKey(name: 'type')
  final int? type;

  @JsonKey(name: 'pitchType')
  final int? pitchType;

  @JsonKey(name: 'lyricCount')
  final int? lyricCount;

  @JsonKey(name: 'lyricList')
  final List<int>? lyricList;

  @JsonKey(name: 'climaxSegmentCount')
  final int? climaxSegmentCount;

  @JsonKey(name: 'climaxSegmentList')
  final List<ClimaxSegment>? climaxSegmentList;

  @JsonKey(name: 'mvPropertyCount')
  final int? mvPropertyCount;

  @JsonKey(name: 'mvPropertyList')
  final List<MvProperty>? mvPropertyList;

  factory Music.fromJson(Map<String, dynamic> json) => _$MusicFromJson(json);

  Map<String, dynamic> toJson() => _$MusicToJson(this);
}

abstract class MusicCollection {
  int getCount();

  int getTotal();

  int getPage();

  int getPageSize();

  Music getMusic(int index);
}

class MusicContentCenterEventHandler {
  /// Construct the [MusicContentCenterEventHandler].
  const MusicContentCenterEventHandler({
    this.onMusicChartsResult,
    this.onMusicCollectionResult,
    this.onLyricResult,
    this.onSongSimpleInfoResult,
    this.onPreLoadEvent,
  });

  final void Function(String requestId, List<MusicChartInfo> result,
      MusicContentCenterStateReason reason)? onMusicChartsResult;

  final void Function(String requestId, MusicCollection result,
      MusicContentCenterStateReason reason)? onMusicCollectionResult;

  final void Function(String requestId, int songCode, String lyricUrl,
      MusicContentCenterStateReason reason)? onLyricResult;

  final void Function(String requestId, int songCode, String simpleInfo,
      MusicContentCenterStateReason reason)? onSongSimpleInfoResult;

  final void Function(
      String requestId,
      int songCode,
      int percent,
      String lyricUrl,
      PreloadState state,
      MusicContentCenterStateReason reason)? onPreLoadEvent;
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MusicContentCenterConfiguration {
  const MusicContentCenterConfiguration(
      {this.appId, this.token, this.mccUid, this.maxCacheSize, this.mccDomain});

  @JsonKey(name: 'appId')
  final String? appId;

  @JsonKey(name: 'token')
  final String? token;

  @JsonKey(name: 'mccUid')
  final int? mccUid;

  @JsonKey(name: 'maxCacheSize')
  final int? maxCacheSize;

  @JsonKey(name: 'mccDomain')
  final String? mccDomain;

  factory MusicContentCenterConfiguration.fromJson(Map<String, dynamic> json) =>
      _$MusicContentCenterConfigurationFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MusicContentCenterConfigurationToJson(this);
}

abstract class MusicPlayer implements MediaPlayer {
  Future<void> setPlayMode(MusicPlayMode mode);

  Future<void> openWithSongCode({required int songCode, int startPos = 0});
}

abstract class MusicContentCenter {
  Future<void> initialize(MusicContentCenterConfiguration configuration);

  Future<void> renewToken(String token);

  Future<void> release();

  void registerEventHandler(MusicContentCenterEventHandler eventHandler);

  void unregisterEventHandler();

  Future<MusicPlayer?> createMusicPlayer();

  Future<void> destroyMusicPlayer(MusicPlayer musicPlayer);

  Future<String> getMusicCharts();

  Future<String> getMusicCollectionByMusicChartId(
      {required int musicChartId,
      required int page,
      required int pageSize,
      String? jsonOption});

  Future<String> searchMusic(
      {required String keyWord,
      required int page,
      required int pageSize,
      String? jsonOption});

  Future<String> preload(int songCode);

  Future<void> removeCache(int songCode);

  Future<List<MusicCacheInfo>> getCaches(int cacheInfoSize);

  Future<bool> isPreloaded(int songCode);

  Future<String> getLyric({required int songCode, int lyricType = 0});

  Future<String> getSongSimpleInfo(int songCode);

  Future<int> getInternalSongCode(
      {required int songCode, required String jsonOption});
}
