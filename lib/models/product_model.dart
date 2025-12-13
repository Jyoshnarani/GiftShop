// For demo only
import 'package:e_commerce/constants/constants.dart';


class ProductModel {
  final String image, brandName, title;
  final double price;
  final double? priceAfetDiscount;
  final int? dicountpercent;

  ProductModel({
    required this.image,
    required this.brandName,
    required this.title,
    required this.price,
    this.priceAfetDiscount,
    this.dicountpercent,
  });
}

List<ProductModel> demoPopularProducts = [
  ProductModel(
    image: productImg1,
    title: "New Gift",
    brandName: "XCopy",
    price: 540,
    priceAfetDiscount: 420,
    dicountpercent: 20,
  ),
  ProductModel(
    image: productImg1,
    title: "New Gift",
    brandName: "XCopy",
    price: 800,
  ),
  ProductModel(
    image: productImg1,
    title: "New Gift",
    brandName: "XCopy",
    price: 650.62,
    priceAfetDiscount: 390.36,
    dicountpercent: 40,
  ),
  ProductModel(
    image: productImg1,
    title: "New Gift",
    brandName: "XCopy",
    price: 1264,
    priceAfetDiscount: 1200.8,
    dicountpercent: 5,
  ),
  ProductModel(
    image: productImg2,
    title: "New Gift",
    brandName: "XCopy",
    price: 650.62,
    priceAfetDiscount: 390.36,
    dicountpercent: 40,
  ),
  ProductModel(
    image: productImg2,
    title: "New Gift",
    brandName: "XCopy",
    price: 1264,
    priceAfetDiscount: 1200.8,
    dicountpercent: 5,
  ),
];
List<ProductModel> demoFlashSaleProducts = [
  ProductModel(
    image: productImg1,
    title: "New Gift",
    brandName: "XCopy",
    price: 650.62,
    priceAfetDiscount: 390.36,
    dicountpercent: 40,
  ),
  ProductModel(
    image: productImg1,
    title: "New Gift",
    brandName: "XCopy",
    price: 1264,
    priceAfetDiscount: 1200.8,
    dicountpercent: 5,
  ),
  ProductModel(
    image: productImg2,
    title: "New Gift",
    brandName: "XCopy",
    price: 800,
    priceAfetDiscount: 680,
    dicountpercent: 15,
  ),
];
List<ProductModel> demoBestSellersProducts = [
  ProductModel(
    image: productImg2,
    title: "New Gift",
    brandName: "XCopy",
    price: 650.62,
    priceAfetDiscount: 390.36,
    dicountpercent: 40,
  ),
  ProductModel(
    image: productImg2,
    title: "New Gift",
    brandName: "XCopy",
    price: 1264,
    priceAfetDiscount: 1200.8,
    dicountpercent: 5,
  ),
  ProductModel(
    image: productImg1,
    title: "New Gift",
    brandName: "XCopy",
    price: 800,
    priceAfetDiscount: 680,
    dicountpercent: 15,
  ),
];
List<ProductModel> kidsProducts = [
  ProductModel(
    image: productImg2,
    title: "New Gift",
    brandName: "XCopy",
    price: 650.62,
    priceAfetDiscount: 590.36,
    dicountpercent: 24,
  ),
  ProductModel(
    image: productImg2,
    title: "New Gift",
    brandName: "XCopy",
    price: 650.62,
  ),
  ProductModel(
    image: productImg2,
    title: "New Gift",
    brandName: "XCopy",
    price: 400,
  ),
  ProductModel(
    image: productImg2,
    title: "New Gift",
    brandName: "XCopy",
    price: 400,
    priceAfetDiscount: 360,
    dicountpercent: 20,
  ),
  ProductModel(
    image: productImg1,
    title: "New Gift",
    brandName: "XCopy",
    price: 654,
  ),
  ProductModel(
    image: productImg2,
    title: "New Gift",
    brandName: "XCopy",
    price: 250,
  ),
];
