class Whale {
  final int id;
  final String name;
  final String address;
  final String length;
  final String weight;
  final String worldwide;
  final String imageUrl;
  final String about;

  const Whale({
    required this.id,
    required this.name,
    required this.address,
    required this.length,
    required this.weight,
    required this.worldwide,
    required this.imageUrl,
    required this.about,
  });

  factory Whale.fromJson(Map<String, dynamic> json) {
    return Whale(
      id: json['id'] as int,
      name: json['name'] as String,
      address: json['address'] as String,
      length: json['length'] as String,
      weight: json['weight'] as String,
      worldwide: json['worldwide'] as String,
      imageUrl: json['imageUrl'] as String,
      about: json['about'] as String,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Whale &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name;

  @override
  int get hashCode => Object.hash(id, name, address, length, weight, worldwide, imageUrl, about);

  @override
  String toString() => name;

  Whale copyWith({
    int? id,
    String? name,
    String? address,
    String? length,
    String? weight,
    String? worldwide,
    String? imageUrl,
    String? about,
  }) {
    return Whale(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      length: length ?? this.length,
      weight: weight ?? this.weight,
      worldwide: worldwide ?? this.worldwide,
      imageUrl: imageUrl ?? this.imageUrl,
      about: about ?? this.about,
    );
  }
}