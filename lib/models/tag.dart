import 'dart:convert';

class Tag {
  String? name;
  Tag({
    this.name,
  });

  Tag copyWith({
    String? name,
  }) {
    return Tag(
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  factory Tag.fromMap(Map<String, dynamic> map) {
    return Tag(
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Tag.fromJson(String source) => Tag.fromMap(json.decode(source));

  @override
  String toString() => 'Tag(name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Tag && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}
