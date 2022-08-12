import 'dart:convert';

class Item {
  String? label;
  String? symbol;
  String? id;
  bool? boxTwo;
  int? color;

  Item({
    this.label,
    this.symbol,
    this.id,
    this.boxTwo,
    this.color,
  });

  Item.colorBoxes({
    this.id,
    this.label,
    this.symbol,
    this.boxTwo = true,
    this.color,
  });

  Item.colors({
    this.id,
    this.boxTwo = false,
    this.color,
  });

  Item.symbols({
    this.id,
    this.boxTwo = false,
    this.symbol,
  });

  Item copyWith({
    String? label,
    String? symbol,
    String? id,
    bool? boxTwo,
    int? color,
  }) {
    return Item(
      label: label ?? this.label,
      symbol: symbol ?? this.symbol,
      id: id ?? this.id,
      boxTwo: boxTwo ?? this.boxTwo,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'label': label,
      'symbol': symbol,
      'id': id,
      'boxTwo': boxTwo,
      'color': color,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      label: map['label'],
      symbol: map['symbol'],
      id: map['id'],
      boxTwo: map['boxTwo'],
      color: map['color'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(label: $label, symbol: $symbol, id: $id, boxTwo: $boxTwo, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.label == label &&
        other.symbol == symbol &&
        other.id == id &&
        other.boxTwo == boxTwo &&
        other.color == color;
  }

  @override
  int get hashCode {
    return label.hashCode ^
        symbol.hashCode ^
        id.hashCode ^
        boxTwo.hashCode ^
        color.hashCode;
  }
}
