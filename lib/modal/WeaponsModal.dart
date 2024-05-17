class Weapons {
  String uuid;
  String displayName;
  String category;
  String defaultSkinUuid;
  String displayIcon;
  String killStreamIcon;
  String assetPath;
  WeaponStats weaponStats;
  ShopData shopData;
  List<Skin> skins;

  Weapons({
    required this.uuid,
    required this.displayName,
    required this.category,
    required this.defaultSkinUuid,
    required this.displayIcon,
    required this.killStreamIcon,
    required this.assetPath,
    required this.weaponStats,
    required this.shopData,
    required this.skins,
  });

  factory Weapons.fromJson(Map<String, dynamic> json) => Weapons(
        uuid: json["uuid"],
        displayName: json["displayName"],
        category: json["category"],
        defaultSkinUuid: json["defaultSkinUuid"],
        displayIcon: json["displayIcon"],
        killStreamIcon: json["killStreamIcon"],
        assetPath: json["assetPath"],
        weaponStats: WeaponStats.fromJson(json["weaponStats"] ?? {}),
        shopData: ShopData.fromJson(json["shopData"] ?? {}),
        skins: List<Skin>.from(json["skins"].map((x) => Skin.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "category": category,
        "defaultSkinUuid": defaultSkinUuid,
        "displayIcon": displayIcon,
        "killStreamIcon": killStreamIcon,
        "assetPath": assetPath,
        "weaponStats": weaponStats.toJson(),
        "shopData": shopData.toJson(),
        "skins": List<dynamic>.from(skins.map((x) => x.toJson())),
      };
}

class ShopData {
  int cost;
  String category;
  int shopOrderPriority;
  String categoryText;
  GridPosition gridPosition;
  bool canBeTrashed;
  dynamic image;
  String newImage;
  dynamic newImage2;
  String assetPath;

  ShopData({
    required this.cost,
    required this.category,
    required this.shopOrderPriority,
    required this.categoryText,
    required this.gridPosition,
    required this.canBeTrashed,
    required this.image,
    required this.newImage,
    required this.newImage2,
    required this.assetPath,
  });

  factory ShopData.fromJson(Map<String, dynamic> json) => ShopData(
        cost: json["cost"] ?? 0,
        category: json["category"] ?? "",
        shopOrderPriority: json["shopOrderPriority"] ?? 0,
        categoryText: json["categoryText"] ?? "",
        gridPosition: GridPosition.fromJson(json["gridPosition"] ?? {}),
        canBeTrashed: json["canBeTrashed"] ?? false,
        image: json["image"],
        newImage: json["newImage"] ?? "",
        newImage2: json["newImage2"],
        assetPath: json["assetPath"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "cost": cost,
        "category": category,
        "shopOrderPriority": shopOrderPriority,
        "categoryText": categoryText,
        "gridPosition": gridPosition.toJson(),
        "canBeTrashed": canBeTrashed,
        "image": image,
        "newImage": newImage,
        "newImage2": newImage2,
        "assetPath": assetPath,
      };
}

class GridPosition {
  int row;
  int column;

  GridPosition({
    required this.row,
    required this.column,
  });

  factory GridPosition.fromJson(Map<String, dynamic> json) => GridPosition(
        row: json["row"] ?? 0,
        column: json["column"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "row": row,
        "column": column,
      };
}

class Skin {
  String uuid;
  String displayName;
  String themeUuid;
  String? contentTierUuid;
  String? displayIcon;
  String? wallpaper;
  String assetPath;
  List<Chroma> chromas;
  List<Level> levels;

  Skin({
    required this.uuid,
    required this.displayName,
    required this.themeUuid,
    required this.contentTierUuid,
    required this.displayIcon,
    required this.wallpaper,
    required this.assetPath,
    required this.chromas,
    required this.levels,
  });

  factory Skin.fromJson(Map<String, dynamic> json) => Skin(
        uuid: json["uuid"],
        displayName: json["displayName"],
        themeUuid: json["themeUuid"],
        contentTierUuid: json["contentTierUuid"],
        displayIcon: json["displayIcon"],
        wallpaper: json["wallpaper"],
        assetPath: json["assetPath"],
        chromas:
            List<Chroma>.from(json["chromas"].map((x) => Chroma.fromJson(x))),
        levels: List<Level>.from(json["levels"].map((x) => Level.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "themeUuid": themeUuid,
        "contentTierUuid": contentTierUuid,
        "displayIcon": displayIcon,
        "wallpaper": wallpaper,
        "assetPath": assetPath,
        "chromas": List<dynamic>.from(chromas.map((x) => x.toJson())),
        "levels": List<dynamic>.from(levels.map((x) => x.toJson())),
      };
}

class Chroma {
  String uuid;
  String displayName;
  String? displayIcon;
  String fullRender;
  String? swatch;
  String? streamedVideo;
  String assetPath;

  Chroma({
    required this.uuid,
    required this.displayName,
    required this.displayIcon,
    required this.fullRender,
    required this.swatch,
    required this.streamedVideo,
    required this.assetPath,
  });

  factory Chroma.fromJson(Map<String, dynamic> json) => Chroma(
        uuid: json["uuid"],
        displayName: json["displayName"],
        displayIcon: json["displayIcon"],
        fullRender: json["fullRender"],
        swatch: json["swatch"],
        streamedVideo: json["streamedVideo"],
        assetPath: json["assetPath"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "displayIcon": displayIcon,
        "fullRender": fullRender,
        "swatch": swatch,
        "streamedVideo": streamedVideo,
        "assetPath": assetPath,
      };
}

class Level {
  String uuid;
  String displayName;
  String? levelItem;
  String? displayIcon;
  String? streamedVideo;
  String assetPath;

  Level({
    required this.uuid,
    required this.displayName,
    required this.levelItem,
    required this.displayIcon,
    required this.streamedVideo,
    required this.assetPath,
  });

  factory Level.fromJson(Map<String, dynamic> json) => Level(
        uuid: json["uuid"],
        displayName: json["displayName"],
        levelItem: json["levelItem"],
        displayIcon: json["displayIcon"],
        streamedVideo: json["streamedVideo"],
        assetPath: json["assetPath"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "levelItem": levelItem,
        "displayIcon": displayIcon,
        "streamedVideo": streamedVideo,
        "assetPath": assetPath,
      };
}

class WeaponStats {
  int fireRate;
  int magazineSize;
  double runSpeedMultiplier;
  double equipTimeSeconds;
  int reloadTimeSeconds;
  double firstBulletAccuracy;
  int shotgunPelletCount;
  String wallPenetration;
  String feature;
  dynamic fireMode;
  String altFireType;
  AdsStats adsStats;
  dynamic altShotgunStats;
  dynamic airBurstStats;
  List<DamageRange> damageRanges;

  WeaponStats({
    required this.fireRate,
    required this.magazineSize,
    required this.runSpeedMultiplier,
    required this.equipTimeSeconds,
    required this.reloadTimeSeconds,
    required this.firstBulletAccuracy,
    required this.shotgunPelletCount,
    required this.wallPenetration,
    required this.feature,
    required this.fireMode,
    required this.altFireType,
    required this.adsStats,
    required this.altShotgunStats,
    required this.airBurstStats,
    required this.damageRanges,
  });

  factory WeaponStats.fromJson(Map<String, dynamic> json) => WeaponStats(
        fireRate: (json["fireRate"] ?? 0).toInt(),
        magazineSize: json["magazineSize"] ?? 0,
        runSpeedMultiplier: (json["runSpeedMultiplier"] ?? 0).toDouble(),
        equipTimeSeconds: (json["equipTimeSeconds"] ?? 0).toDouble(),
        reloadTimeSeconds: (json["reloadTimeSeconds"] ?? 0).toInt(),
        firstBulletAccuracy: (json["firstBulletAccuracy"] ?? 0).toDouble(),
        shotgunPelletCount: json["shotgunPelletCount"] ?? 0,
        wallPenetration: json["wallPenetration"] ?? "",
        feature: json["feature"] ?? "",
        fireMode: json["fireMode"],
        altFireType: json["altFireType"] ?? "",
        adsStats: AdsStats.fromJson(json["adsStats"] ?? {}),
        altShotgunStats: json["altShotgunStats"],
        airBurstStats: json["airBurstStats"],
        damageRanges: List<DamageRange>.from(
            (json["damageRanges"] ?? <DamageRange>{})
                .map((x) => DamageRange.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "fireRate": fireRate,
        "magazineSize": magazineSize,
        "runSpeedMultiplier": runSpeedMultiplier,
        "equipTimeSeconds": equipTimeSeconds,
        "reloadTimeSeconds": reloadTimeSeconds,
        "firstBulletAccuracy": firstBulletAccuracy,
        "shotgunPelletCount": shotgunPelletCount,
        "wallPenetration": wallPenetration,
        "feature": feature,
        "fireMode": fireMode,
        "altFireType": altFireType,
        "adsStats": adsStats.toJson(),
        "altShotgunStats": altShotgunStats,
        "airBurstStats": airBurstStats,
        "damageRanges": List<dynamic>.from(damageRanges.map((x) => x.toJson())),
      };
}

class AdsStats {
  double zoomMultiplier;
  double fireRate;
  double runSpeedMultiplier;
  int burstCount;
  double firstBulletAccuracy;

  AdsStats({
    required this.zoomMultiplier,
    required this.fireRate,
    required this.runSpeedMultiplier,
    required this.burstCount,
    required this.firstBulletAccuracy,
  });

  factory AdsStats.fromJson(Map<String, dynamic> json) => AdsStats(
        zoomMultiplier: (json["zoomMultiplier"] ?? 0).toDouble(),
        fireRate: (json["fireRate"] ?? 0).toDouble(),
        runSpeedMultiplier: (json["runSpeedMultiplier"] ?? 0).toDouble(),
        burstCount: json["burstCount"] ?? 0,
        firstBulletAccuracy: (json["firstBulletAccuracy"] ?? 0).toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "zoomMultiplier": zoomMultiplier,
        "fireRate": fireRate,
        "runSpeedMultiplier": runSpeedMultiplier,
        "burstCount": burstCount,
        "firstBulletAccuracy": firstBulletAccuracy,
      };
}

class DamageRange {
  int rangeStartMeters;
  int rangeEndMeters;
  double headDamage;
  int bodyDamage;
  double legDamage;

  DamageRange({
    required this.rangeStartMeters,
    required this.rangeEndMeters,
    required this.headDamage,
    required this.bodyDamage,
    required this.legDamage,
  });

  factory DamageRange.fromJson(Map<String, dynamic> json) => DamageRange(
        rangeStartMeters: json["rangeStartMeters"],
        rangeEndMeters: json["rangeEndMeters"],
        headDamage: (json["headDamage"] ?? 0).toDouble(),
        bodyDamage: json["bodyDamage"],
        legDamage: (json["legDamage"] ?? "").toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "rangeStartMeters": rangeStartMeters,
        "rangeEndMeters": rangeEndMeters,
        "headDamage": headDamage,
        "bodyDamage": bodyDamage,
        "legDamage": legDamage,
      };
}
