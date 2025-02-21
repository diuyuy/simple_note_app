// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class NoteModelAdapter extends TypeAdapter<NoteModel> {
  @override
  final int typeId = 0;

  @override
  NoteModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NoteModel(
      id: fields[0] as String,
      title: fields[1] as String,
      content: fields[2] as String?,
      createDate: fields[3] as String,
      updateDate: fields[4] as String?,
      isFavorite: fields[5] as bool,
      category: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, NoteModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.content)
      ..writeByte(3)
      ..write(obj.createDate)
      ..writeByte(4)
      ..write(obj.updateDate)
      ..writeByte(5)
      ..write(obj.isFavorite)
      ..writeByte(6)
      ..write(obj.category);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NoteOrderAdapter extends TypeAdapter<NoteOrder> {
  @override
  final int typeId = 1;

  @override
  NoteOrder read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NoteOrder(
      order: (fields[0] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, NoteOrder obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.order);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteOrderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AppSettingModelAdapter extends TypeAdapter<AppSettingModel> {
  @override
  final int typeId = 2;

  @override
  AppSettingModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppSettingModel(
      isExitOnHome: fields[1] as bool,
      themeColor: (fields[2] as num).toInt(),
      fontSize: (fields[0] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, AppSettingModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.fontSize)
      ..writeByte(1)
      ..write(obj.isExitOnHome)
      ..writeByte(2)
      ..write(obj.themeColor);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppSettingModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NoteCategoryModelAdapter extends TypeAdapter<NoteCategoryModel> {
  @override
  final int typeId = 3;

  @override
  NoteCategoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NoteCategoryModel(
      id: fields[0] as String,
      categoryName: fields[1] as String,
      iconCode: (fields[2] as num).toInt(),
      categoryColorA: (fields[4] as num).toDouble(),
      categoryColorR: (fields[5] as num).toDouble(),
      categoryColorG: (fields[6] as num).toDouble(),
      categoryColorB: (fields[7] as num).toDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, NoteCategoryModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.categoryName)
      ..writeByte(2)
      ..write(obj.iconCode)
      ..writeByte(4)
      ..write(obj.categoryColorA)
      ..writeByte(5)
      ..write(obj.categoryColorR)
      ..writeByte(6)
      ..write(obj.categoryColorG)
      ..writeByte(7)
      ..write(obj.categoryColorB);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteCategoryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
