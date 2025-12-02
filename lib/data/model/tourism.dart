class Tourism {
  final int id;
  final String name;
  final String description;
  final String address;
  final double longitude;
  final double latitude;
  final int like;
  final String image;

  Tourism({
    required this.id,
    required this.name,
    required this.description,
    required this.address,
    required this.longitude,
    required this.latitude,
    required this.like,
    required this.image,
  });

  // ==== FIX: ADD fromJson ====
  factory Tourism.fromJson(Map<String, dynamic> json) {
    return Tourism(
      id: json['id'] is int
          ? json['id']
          : int.tryParse(json['id'].toString()) ?? 0,
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      address: json['address'] ?? '',
      longitude: json['longitude'] is double
          ? json['longitude']
          : double.tryParse(json['longitude'].toString()) ?? 0.0,
      latitude: json['latitude'] is double
          ? json['latitude']
          : double.tryParse(json['latitude'].toString()) ?? 0.0,
      like: json['like'] is int
          ? json['like']
          : int.tryParse(json['like'].toString()) ?? 0,
      image: json['image'] ?? '',
    );
  }

  // ==== FIX: ADD toJson ====
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'address': address,
      'longitude': longitude,
      'latitude': latitude,
      'like': like,
      'image': image,
    };
  }
}
