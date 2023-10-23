import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
      name: 'We sell quality hijabs',
      imageUrl:
        'https://i.pinimg.com/236x/cc/a3/b3/cca3b3b05fad76f2714f019f1d138d53.jpg'
    ),
    Category(
        name: 'Abaya set',
        imageUrl:
        'https://i.pinimg.com/564x/c7/05/46/c70546bb2a39ffe38c3e46ea4f60caee.jpg'
    ),
    Category(
      name: 'Satin Fits',
      imageUrl:
        'https://i.pinimg.com/564x/74/c8/a4/74c8a4a14d9fd633a6a4229aca158b83.jpg'
    ),
    Category(
      name: 'And other essentials',
      imageUrl:
        'https://i.pinimg.com/564x/e3/0c/09/e30c0935ef49244af10961529e7d278d.jpg',
    ),
  ];
}