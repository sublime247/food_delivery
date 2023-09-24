import 'package:food_delivery/features/home/domain/entities/resturants.dart';

class ResturantModel extends Resturants{
  const ResturantModel({required super.image, required super.resturantName, required super.time});

  factory ResturantModel.fromJson(Map<String, dynamic> json) {
    return ResturantModel(
      image: json['image'],
      resturantName: json['resturantName'],
      time: json['time'],
    );
  }

}