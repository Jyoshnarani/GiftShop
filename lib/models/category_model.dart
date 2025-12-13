import 'package:e_commerce/constants/icon_constants.dart';

class CategoryModel {
  final String title;
  final String? image, svgSrc;
  final List<CategoryModel>? subCategories;

  CategoryModel({
    required this.title,
    this.image,
    this.svgSrc,
    this.subCategories,
  });
}


final List<CategoryModel> demoCategories = [
  CategoryModel(
    title: "On sale",
    svgSrc: iconSale,
    subCategories: [
      CategoryModel(title: "Gift Card"),
      CategoryModel(title: "New In"),
      CategoryModel(title: "Fresh Flowers"),
      CategoryModel(title: "Diaries"),
      CategoryModel(title: "Chocolates"),
    ],
  ),
  CategoryModel(
    title: "Home and Decor",
    svgSrc: iconBag,
    subCategories: [
      CategoryModel(title: "Candles"),
      CategoryModel(title: "Photo frames"),
      CategoryModel(title: "Wall art"),
    ],
  ),
  CategoryModel(
    title: "Toys",
    svgSrc: iconBag,
    subCategories: [
      CategoryModel(title: "Soft toys"),
      CategoryModel(title: "Educational toys"),
      CategoryModel(title: "Kids accessories"),
    ],
  ),
  CategoryModel(
    title: "Festive Gifts",
    svgSrc: iconBag,
    subCategories: [
      CategoryModel(title: "Birthday gifts"),
      CategoryModel(title: "Anniversary gifts"),
      CategoryModel(title: "Christmas gifts"),
    ],
  ),
];
