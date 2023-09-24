import 'package:food_delivery/cores/constants/app_images.dart';
import 'package:food_delivery/features/home/data/model/resturant_model.dart';

abstract class RestaurantListDataSource {
  static List get resturantLists => _resturantLists;
  static const String resturantsTittle = ' Nearest Resturant';
  static final List<ResturantModel> _resturantLists = [
    const ResturantModel(
        image: ImageAssets.veganResto,
        resturantName: 'Vegan Resto',
        time: '12 Mins'),
    const ResturantModel(
        image: ImageAssets.healthyFood,
        resturantName: 'Healthy Food',
        time: '8 Mins'),
    const ResturantModel(
        image: ImageAssets.goodFood,
        resturantName: 'Good Food',
        time: '12 Mins'),
    const ResturantModel(
        image: ImageAssets.veganResto,
        resturantName: 'Smart Resto',
        time: '8 Mins'),
    const ResturantModel(
        image: ImageAssets.chefCity,
        resturantName: 'Chef City',
        time: '16 Mins'),
    const ResturantModel(
        image: ImageAssets.chefCity2,
        resturantName: 'Delight City',
        time: '12 Mins'),
  ];
}

abstract class ResturantLists extends RestaurantListDataSource {
  ResturantLists() : super();
}
