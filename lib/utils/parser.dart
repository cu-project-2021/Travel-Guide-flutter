import 'package:learn_flutter/models/touristspot.dart';

List<TouristSpot> parseTourists(Map<String, dynamic> spots) {
  final List<TouristSpot> touristSpots = [];
  for (int i = 0; i < spots["allTouristSpots"].length; i++) {
    touristSpots.add(TouristSpot.fromJson(spots["allTouristSpots"][i]));
  }

  return touristSpots;
}
