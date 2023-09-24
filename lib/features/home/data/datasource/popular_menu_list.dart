import 'package:food_delivery/cores/constants/app_images.dart';
import 'package:food_delivery/features/home/data/model/popular_menu_model.dart';

abstract class MenuList{
 List get menuList => _menuList;

  final List<PopularMenus> _menuList =[
    const PopularMenus(image: ImageAssets.greenNoodles, menuName: 'Green Noodles', price: '\$15', menuTittle: 'Noodle Home'),
    const PopularMenus(image: ImageAssets.fruitSalad, menuName: 'Fruit Salad', price: '\$5', menuTittle: 'Wijie Resto'),
    const PopularMenus(image: ImageAssets.pancake, menuName: 'Herbal Pancake', price: '\$7', menuTittle: 'Warung Herbal')
  ];
}