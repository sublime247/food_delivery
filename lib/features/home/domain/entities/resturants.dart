import 'package:equatable/equatable.dart';

class Resturants extends Equatable {
  final String image;
  final String resturantName;
  final String time;

  const Resturants(
      {required this.image, required this.resturantName, required this.time});

  @override
  List<Object?> get props => [
        image,
        resturantName,
        time,
      ];
  factory Resturants.fromJson(Map<String, dynamic> json) {
    return Resturants(
      image: json['image'],
      resturantName: json['resturantName'],
      time: json['time'],
    );
  }
}
