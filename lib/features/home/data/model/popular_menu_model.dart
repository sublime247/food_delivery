import 'package:food_delivery/features/home/domain/entities/popular_menus.dart';

class PopularMenus extends PopularMenu{
 const PopularMenus({required super.image, required super.menuName, required super.price, required super.menuTittle});

factory PopularMenus.fromJson(Map<String, dynamic> json) {
    return PopularMenus(
      image: json['image'],
      menuName: json['menuName'],
      price: json['price'],
      menuTittle: json['menuTittle'],
    );
  }

}