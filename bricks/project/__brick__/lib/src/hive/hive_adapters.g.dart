// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class ProfileAdapter extends TypeAdapter<Profile> {
  @override
  final typeId = 2;

  @override
  Profile read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Profile(
      avatar: fields[0] as Uint8List?,
      username: fields[3] == null ? '' : fields[3] as String,
      birthday: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, Profile obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.avatar)
      ..writeByte(3)
      ..write(obj.username)
      ..writeByte(4)
      ..write(obj.birthday);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HeartCollectionAdapter extends TypeAdapter<HeartCollection> {
  @override
  final typeId = 4;

  @override
  HeartCollection read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HeartCollection(
      id: fields[0] == null ? 0 : (fields[0] as num).toInt(),
      name: fields[2] == null ? '' : fields[2] as String,
      price: fields[3] == null ? 0 : (fields[3] as num).toInt(),
      hearts: fields[1] == null ? [] : (fields[1] as List).cast<Heart>(),
    );
  }

  @override
  void write(BinaryWriter writer, HeartCollection obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.hearts)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HeartCollectionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HeartAdapter extends TypeAdapter<Heart> {
  @override
  final typeId = 5;

  @override
  Heart read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Heart(
      path: fields[0] == null ? '' : fields[0] as String,
      stage: fields[1] == null ? 0 : (fields[1] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, Heart obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.path)
      ..writeByte(1)
      ..write(obj.stage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HeartAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NavTutorialAdapter extends TypeAdapter<NavTutorial> {
  @override
  final typeId = 6;

  @override
  NavTutorial read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NavTutorial(
      hasShownTutorial: fields[3] == null ? false : fields[3] as bool,
      hasCompletedOnboard: fields[4] == null ? false : fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, NavTutorial obj) {
    writer
      ..writeByte(2)
      ..writeByte(3)
      ..write(obj.hasShownTutorial)
      ..writeByte(4)
      ..write(obj.hasCompletedOnboard);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NavTutorialAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HeartHistoryAdapter extends TypeAdapter<HeartHistory> {
  @override
  final typeId = 7;

  @override
  HeartHistory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HeartHistory(
      day: fields[0] as DateTime,
      longestSession: fields[1] == null ? Duration.zero : fields[1] as Duration,
      bestStage: fields[2] == null ? 0 : (fields[2] as num).toInt(),
      totalSessions: fields[3] == null ? 0 : (fields[3] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, HeartHistory obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.day)
      ..writeByte(1)
      ..write(obj.longestSession)
      ..writeByte(2)
      ..write(obj.bestStage)
      ..writeByte(3)
      ..write(obj.totalSessions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HeartHistoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserAchievementAdapter extends TypeAdapter<UserAchievement> {
  @override
  final typeId = 8;

  @override
  UserAchievement read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserAchievement(
      badges: fields[0] == null ? [] : (fields[0] as List).cast<int>(),
      achievementProgresses: fields[1] == null
          ? []
          : (fields[1] as List).cast<AchievementProgress>(),
    );
  }

  @override
  void write(BinaryWriter writer, UserAchievement obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.badges)
      ..writeByte(1)
      ..write(obj.achievementProgresses);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAchievementAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BadgeAdapter extends TypeAdapter<Badge> {
  @override
  final typeId = 9;

  @override
  Badge read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Badge(
      id: fields[4] == null ? 0 : (fields[4] as num).toInt(),
      path: fields[0] == null ? '' : fields[0] as String,
      stage: fields[1] == null ? 0 : (fields[1] as num).toInt(),
      description: fields[2] == null ? '' : fields[2] as String,
      threshold: fields[3] == null ? 0 : (fields[3] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, Badge obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.path)
      ..writeByte(1)
      ..write(obj.stage)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.threshold)
      ..writeByte(4)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BadgeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AchievementAdapter extends TypeAdapter<Achievement> {
  @override
  final typeId = 10;

  @override
  Achievement read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Achievement(
      type: fields[4] as EAchievementType,
      id: fields[0] == null ? 0 : (fields[0] as num).toInt(),
      badges: fields[3] == null ? [] : (fields[3] as List).cast<Badge>(),
    );
  }

  @override
  void write(BinaryWriter writer, Achievement obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.badges)
      ..writeByte(4)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AchievementAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AchievementProgressAdapter extends TypeAdapter<AchievementProgress> {
  @override
  final typeId = 11;

  @override
  AchievementProgress read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AchievementProgress(
      type: fields[2] as EAchievementType,
      progress: fields[1] == null ? 0.0 : (fields[1] as num).toDouble(),
      stage: fields[3] == null ? 0 : (fields[3] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, AchievementProgress obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.progress)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.stage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AchievementProgressAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SettingsAdapter extends TypeAdapter<Settings> {
  @override
  final typeId = 12;

  @override
  Settings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Settings(soundStatus: fields[0] == null ? true : fields[0] as bool);
  }

  @override
  void write(BinaryWriter writer, Settings obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.soundStatus);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SettingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
