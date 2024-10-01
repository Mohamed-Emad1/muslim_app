// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AyahAdapter extends TypeAdapter<Ayah> {
  @override
  final int typeId = 1;

  @override
  Ayah read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Ayah(
      number: fields[0] as int?,
      audio: fields[1] as String?,
      audioSecondary: (fields[2] as List?)?.cast<dynamic>(),
      text: fields[3] as String?,
      numberInSurah: fields[4] as int?,
      juz: fields[5] as int?,
      manzil: fields[6] as int?,
      page: fields[7] as int?,
      ruku: fields[8] as int?,
      hizbQuarter: fields[9] as int?,
      sajda: fields[10] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, Ayah obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.number)
      ..writeByte(1)
      ..write(obj.audio)
      ..writeByte(2)
      ..write(obj.audioSecondary)
      ..writeByte(3)
      ..write(obj.text)
      ..writeByte(4)
      ..write(obj.numberInSurah)
      ..writeByte(5)
      ..write(obj.juz)
      ..writeByte(6)
      ..write(obj.manzil)
      ..writeByte(7)
      ..write(obj.page)
      ..writeByte(8)
      ..write(obj.ruku)
      ..writeByte(9)
      ..write(obj.hizbQuarter)
      ..writeByte(10)
      ..write(obj.sajda);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AyahAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
