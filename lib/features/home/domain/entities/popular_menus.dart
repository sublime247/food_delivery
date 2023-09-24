import 'package:equatable/equatable.dart';

class PopularMenu extends Equatable {
  final String image;
  final String menuName;
  final String price;
  final String menuTittle;

 const  PopularMenu({required this.image, required this.menuName, required this.price, required this.menuTittle});
  @override
  List<Object?> get props => [
        image,
        menuName,
        price,
        menuTittle,
  ];
  factory PopularMenu.fromJson(Map<String, dynamic> json) {
    return PopularMenu(
      image: json['image'],
      menuName: json['menuName'],
      price: json['price'],
      menuTittle: json['menuTittle'],
    );
  }
}
