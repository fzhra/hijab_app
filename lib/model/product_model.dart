import 'package:equatable/equatable.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product extends Equatable{
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;
  final List<String> images;
  //final  List<String> availableSizes;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isPopular,
    required this.isRecommended,
    required this.images,
    //required this.availableSizes,
  });

  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isPopular, isRecommended,]; //availableSizes];

  Widget buildSizedButton({title, isSelected}){
    return MaterialButton(
      height: 40,
      minWidth: 40,
      elevation: 0,
      color: isSelected ? Color(0xffa78a7b) : Color(0xffffffff),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Color(0xffa78a7b) : Color(0xffffffff),
          ),
        ),
      ),
      onPressed: () {},
    );
  }

  static List<Product> products = [
    Product(
      name: 'Abaya 1',
      category: 'Abaya set',
      imageUrl: 'https://i.pinimg.com/236x/a9/eb/13/a9eb1308ef3576228c3c2b4a0e64a076.jpg',
      images: [
        'https://i.pinimg.com/236x/01/81/00/018100d4c266914f338e6d4e93d90dd0.jpg',
        'https://i.pinimg.com/236x/64/75/fd/6475fd6fe05de648ad03aab319dbc174.jpg',
        'https://i.pinimg.com/236x/00/08/ee/0008eef19cfca2f7d80f5d2fdead5e6f.jpg',
      ],
      price: 1700,
      isPopular: true,
      isRecommended: true,
      //availableSizes: ['S', 'M', 'L', 'XL'],
    ),
    Product(
      name: 'Abaya 2',
      category: 'Abaya set',
      imageUrl: 'https://i.pinimg.com/236x/e6/ae/96/e6ae96edaee6586aef180a6ad9279f19.jpg',
      images: [
        'https://i.pinimg.com/236x/cc/af/62/ccaf62989aecceef2f8962487a111c28.jpg',
        'https://i.pinimg.com/236x/f2/c6/d2/f2c6d2c766dd116eb44e403d5d9cbad4.jpg',
        'https://i.pinimg.com/236x/e5/75/67/e57567671bd684e65d428b71c1952739.jpg',
      ],
      price: 500,
      isPopular: true,
      isRecommended: true,
      //availableSizes: ['S', 'M', 'L', 'XL'],
    ),
    Product(
      name: 'Abaya 3',
      category: 'Abaya set',
      imageUrl: 'https://i.pinimg.com/736x/13/da/08/13da0876e2a78cf8974237d7943e4695.jpg',
      images: [
        'https://i.pinimg.com/236x/31/7e/eb/317eeb525ba85ec4bf4828ec1dd127a4.jpg',
        'https://i.pinimg.com/236x/4a/b7/29/4ab7290359313643abd8143bb75a9f15.jpg',
      ],
      price: 250,
      isPopular: true,
      isRecommended: true,
      //availableSizes: ['S', 'M', 'L', 'XL'],
    ),
    Product(
      name: 'Abaya 4',
      category: 'Abaya set',
      imageUrl: 'https://i.pinimg.com/564x/c1/5a/e1/c15ae1255ac2a7b2ebfb7a015575cf40.jpg',
      images: [
        'https://i.pinimg.com/474x/51/b8/c2/51b8c2f43fd096fc30165acb35ea9843.jpg',
        'https://i.pinimg.com/236x/7a/5d/6d/7a5d6d1afb64fa6af73db587f3ba32b1.jpg',
        'https://i.pinimg.com/564x/32/4e/6b/324e6bc471900029779364bfa5c533eb.jpg',
      ],
      price: 2000,
      isPopular: false,
      isRecommended: false,
      // availableSizes: ['S', 'M', 'L', 'XL'],
    ),
    Product(
      name: 'Jersey Hijabs',
      category: 'We sell quality hijabs',
      imageUrl: 'https://i.pinimg.com/564x/bc/68/57/bc68578c4e77720bcfc95e3c2dcd5071.jpg',
      images: [
        'https://i.pinimg.com/564x/bc/68/57/bc68578c4e77720bcfc95e3c2dcd5071.jpg',
        'https://i.pinimg.com/236x/5b/e1/72/5be1726ce453d035debdcfdca46f6991.jpg',
        'https://i.pinimg.com/236x/19/35/ec/1935ec895ab0559f48d30ab442bd502d.jpg',
        'https://i.pinimg.com/236x/41/af/cb/41afcb24c8ed7d6862165574622d98c3.jpg',
      ],
      price: 30,
      isPopular: true,
      isRecommended: true,
      //availableSizes: [],
    ),
    Product(
      name: 'Chiffon Hijabs',
      category: 'We sell quality hijabs',
      imageUrl: 'https://i.pinimg.com/236x/1e/52/01/1e520199aec6420fd4ef22c61df25c52.jpg',
      images: [
        'https://i.pinimg.com/236x/b2/55/06/b2550624b5690121d2bc634d2693a770.jpg',
        'https://i.pinimg.com/236x/1c/b7/01/1cb701e21a92743d16ab8b81453c2ffc.jpg',
        'https://i.pinimg.com/236x/ed/86/75/ed86753a12e754985615f79e43548706.jpg',
      ],
      price: 30,
      isPopular: false,
      isRecommended: true,
      //availableSizes: [],
    ),
    Product(
      name: 'Crinkle Hijabs',
      category: 'We sell quality hijabs',
      imageUrl: 'https://i.pinimg.com/236x/6c/71/07/6c71073cb29e8d0425b5afafe9d0185d.jpg',
      images: [
        'https://i.pinimg.com/236x/33/62/cb/3362cb1a84bf4779314f5f56a81e9951.jpg',
        'https://i.pinimg.com/236x/49/a8/f4/49a8f4a2952fbce2b6df793c163ffd56.jpg',
        'https://i.pinimg.com/236x/14/a8/97/14a89771bcf0c73cd8b06991cd0ed44d.jpg',
      ],
      price: 30,
      isPopular: true,
      isRecommended: true,
      //availableSizes: [],
    ),
    Product(
      name: 'Satin Hijabs',
      category: 'We sell quality hijabs',
      imageUrl: 'https://i.pinimg.com/236x/99/fa/bb/99fabbe8b087163b446635b64434a09d.jpg',
      images: [
        'https://i.pinimg.com/236x/a4/ee/6b/a4ee6b8f237ef3c964a9474457fd64b3.jpg',
        'https://i.pinimg.com/236x/40/60/39/4060398a3d0b2713e7935b863c76fb68.jpg',
        'https://i.pinimg.com/236x/f7/d3/99/f7d3992ef2238ed7c6465e404ac09645.jpg',
      ],
      price: 30,
      isPopular: true,
      isRecommended: true,
      //availableSizes: [],
    ),
    Product(
      name: 'Magnet',
      category: 'And other essentials',
      imageUrl: 'https://i.pinimg.com/236x/a8/25/89/a825898c58ccbbaead657d9788507ea9.jpg',
      images: [
        'https://i.pinimg.com/236x/d6/8b/b0/d68bb0194899da478deee770fe558854.jpg',
        'https://i.pinimg.com/236x/43/b6/27/43b627f3eb7189880b52459b8b440033.jpg',
        'https://i.pinimg.com/236x/21/56/1b/21561b44f9e71dc61daa5ef94d8d866e.jpg',
        'https://i.pinimg.com/564x/59/aa/53/59aa53ea6856626c4d38b006ffd99dab.jpg',
      ],
      price: 10,
      isPopular: false,
      isRecommended: false,
     // availableSizes: []
    ),
    Product(
      name: 'Pins',
      category: 'And other essentials',
      imageUrl: 'https://i.pinimg.com/236x/34/6c/31/346c31a2c7705451007cda457583d7df.jpg',
      images: [
        'https://i.pinimg.com/236x/a0/79/3d/a0793d1f6691d39dc106e5c112e946d8.jpg',
        'https://i.pinimg.com/236x/3e/ac/bd/3eacbd63de6f68316745d19b71b05df1.jpg',
        'https://i.pinimg.com/236x/d6/74/78/d6747851ea68d369556582cf0010d4df.jpg',
      ],
      price: 12,
      isPopular: false,
      isRecommended: false,
      //availableSizes: [],
    ),
    Product(
      name: 'Undercap',
      category: 'And other essentials',
      imageUrl: 'https://i.pinimg.com/564x/6e/34/d6/6e34d6bfae197624724965e0f057dc7d.jpg',
      images: [
        'https://i.pinimg.com/236x/9f/2f/31/9f2f31ed3a8fc99c3a019682286eebe0.jpg',
        'https://i.pinimg.com/236x/05/7c/f0/057cf04e0ddf6c81d2e434259d42f41c.jpg',
        'https://i.pinimg.com/236x/8c/cf/d7/8ccfd769250f95249ba6f722f2df1c00.jpg',
      ],
      price: 200,
      isPopular: false,
      isRecommended: false,
      //availableSizes: [],
    ),
    Product(
      name: 'fit 1',
      category: 'Satin Fits',
      imageUrl: 'https://i.pinimg.com/736x/f4/42/6b/f4426be09a8ceee61158206fa81966ad.jpg',
      images: [
        'https://i.pinimg.com/236x/a4/b1/fd/a4b1fd548956d1ad133ea24a8e4d72ab.jpg',
        'https://i.pinimg.com/236x/ed/0e/26/ed0e26141e719f03fab18c66c59a8364.jpg',
        'https://i.pinimg.com/236x/35/8d/80/358d80da2d886762fe086927c9a25c24.jpg',
      ],
      price: 200,
      isPopular: false,
      isRecommended: false,
     // availableSizes: ['S', 'M', 'L', 'XL'],
    ),
    Product(
      name: 'fit 2',
      category: 'Satin Fits',
      imageUrl: 'https://i.pinimg.com/236x/ce/dd/d1/ceddd1112e862e9f6d5531414f307aaa.jpg',
      images: [
        'https://i.pinimg.com/236x/1b/f8/19/1bf819ba84b36dca75f2f674ab438565.jpg',
        'https://i.pinimg.com/236x/77/f5/e1/77f5e173ecf6c67bde534cb11321d2b7.jpg',
        '',
      ],
      price: 200,
      isPopular: false,
      isRecommended: false,
      // availableSizes: ['S', 'M', 'L', 'XL'],
    ),

  ];
}