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
      id: fields[5] as String,
      title: fields[0] as String,
      content: fields[1] as String?,
      createDate: fields[2] as String,
      editDate: fields[6] as String?,
      isPinned: fields[3] as bool,
      category: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, NoteModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.content)
      ..writeByte(2)
      ..write(obj.createDate)
      ..writeByte(3)
      ..write(obj.isPinned)
      ..writeByte(4)
      ..write(obj.category)
      ..writeByte(5)
      ..write(obj.id)
      ..writeByte(6)
      ..write(obj.editDate);
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

class AppSettingModelAdapter extends TypeAdapter<AppSettingModel> {
  @override
  final int typeId = 1;

  @override
  AppSettingModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppSettingModel(
      fontSize: (fields[0] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, AppSettingModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.fontSize);
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

class NoteOrderAdapter extends TypeAdapter<NoteOrder> {
  @override
  final int typeId = 2;

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
