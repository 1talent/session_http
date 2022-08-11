// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addonvo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AddOnAdapter extends TypeAdapter<AddOnVO> {
  @override
  final int typeId = 0;

  @override
  AddOnVO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AddOnVO(
      info1: fields[0] as String?,
      info2: fields[1] as String?,
      info3: fields[2] as String?,
      serviceIndex: fields[3] as int?,
      planName: fields[5] as String?,
      serviceName: fields[4] as String?,
      serviceStatus: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AddOnVO obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.info1)
      ..writeByte(1)
      ..write(obj.info2)
      ..writeByte(2)
      ..write(obj.info3)
      ..writeByte(3)
      ..write(obj.serviceIndex)
      ..writeByte(4)
      ..write(obj.serviceName)
      ..writeByte(5)
      ..write(obj.planName)
      ..writeByte(6)
      ..write(obj.serviceStatus);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddOnAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
