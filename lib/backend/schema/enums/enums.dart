import 'package:collection/collection.dart';

enum Options {
  Sustainability,
  Risk,
  LeadTime,
  Price,
  None,
}

enum UnitEnum {
  Pcs,
  t,
  kg,
  g,
  mg,
  l,
  ml,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Options):
      return Options.values.deserialize(value) as T?;
    case (UnitEnum):
      return UnitEnum.values.deserialize(value) as T?;
    default:
      return null;
  }
}
