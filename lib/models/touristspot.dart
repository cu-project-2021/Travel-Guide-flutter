class TouristSpot {
  String id;
  String name;
  String description;
  String bestTime;
  List<Object> images;
  String state;
  double rating;
  List<String> type;

  TouristSpot(
      {this.id,
      this.name,
      this.description,
      this.bestTime,
      this.images,
      this.rating,
      this.state,
      this.type});

  factory TouristSpot.fromJson(Map<String, dynamic> json) {
    return TouristSpot(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        bestTime: json['bestTime'],
        images: json['images'],
        rating: json['rating'],
        state: json['state'],
        type: json['type']);
  }
}
