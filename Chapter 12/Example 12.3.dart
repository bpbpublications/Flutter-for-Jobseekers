import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_class.freezed.dart';
part 'my_class.g.dart';

@freezed
class MyClass with _$MyClass {
  const factory MyClass({
    required String value,
  }) = _MyClass;

  factory MyClass.fromJson(Map<String, dynamic> json) =>
      _$MyClassFromJson(json);
}
