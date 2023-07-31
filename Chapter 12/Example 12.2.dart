class MyClass {
  final String value;

  const MyClass({required this.value});

  factory MyClass.fromJson(Map<String, dynamic> json) {
    return MyClass(
      value: json["value"],
    );
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      value,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyClass &&
        other.runtimeType == runtimeType &&
        other.value == value;
  }

  MyClass copyWith({
    required String value,
  }) {
    return MyClass(
      value: value,
    );
  }

  Map<String, dynamic> toJson(MyClass myClass) {
    return <String, dynamic>{
      "value": myClass.value,
    };
  }

  @override
  String toString() {
    return 'MyClass('
        'value: $value'
        ')';
  }
}
