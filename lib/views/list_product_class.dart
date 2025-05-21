class ProductModel {
  final String name;
  final String image;
  final String price;
  final String? description;
  final String? productNutritons;
  final String piceis;
  final bool isPopular;
  bool isFavorite;
  final String? category;
  final String? brand;

  ProductModel({
    this.description,
    this.productNutritons,
    required this.name,
    required this.image,
    required this.price,
    required this.piceis,
    this.isPopular = false,
    this.isFavorite = false,
    this.category,
    this.brand,
  });
}

final List<ProductModel> products = [
  ProductModel(
    name: 'Organic Banana',
    image: 'assets/product_details1.png',
    price: '\$4.99',
    description: 'They are a good source of potassium...',
    productNutritons: '358 mg',
    piceis: '7pcs, Priceg',
    isPopular: true,
  ),
  ProductModel(
    name: 'Natural Red Apple',
    image: 'assets/product_details2.png',
    price: '\$4.99',
    description: 'Apple is a sweet and delicious fruit...',
    piceis: '1kg, Priceg',
    productNutritons: '107 mg',
    isPopular: true,
  ),
  ProductModel(
    name: 'Bell Pepper Red',
    image: 'assets/home_product3.png',
    price: '\$4.99',
    description: 'Red bell peppers are a vibrant...',
    piceis: '1kg, Priceg',
    productNutritons: 'Vitm:A: 31%',
    isPopular: false,
  ),
  ProductModel(
    name: 'Ginger',
    image: 'assets/home_product4.png',
    price: '\$4.99',
    description: 'Ginger is a rhizome...',
    piceis: '250gm, Priceg',
    productNutritons: '43 mg',
    isPopular: true,
  ),
  ProductModel(
    name: 'Beef Bone',
    image: 'assets/home_product5.png',
    price: '\$4.99',
    description: 'Beef bones offer a wealth of nutrients...',
    piceis: '1kg, Priceg',
    productNutritons: '0.5–2 g',
  ),
  ProductModel(
    name: 'Chicken Brioller',
    image: 'assets/home_product6.png',
    price: '\$4.99',
    description: 'Chicken delivers vital nutrients...',
    piceis: '1kg, Priceg',
    productNutritons: '24 mcg',
    isPopular: true,
  ),
  ProductModel(
    name: 'Diet Cake',
    image: 'assets/bevegares_product1.png',
    price: '\$1.99',
    piceis: '355ml, Price',
    productNutritons: 'Apple',
    description: 'Apple is a sweet and delicious fruit...',
  ),
  ProductModel(
    name: 'Sprite Can',
    image: 'assets/bevegares_product2.png',
    price: '\$1.50',
    piceis: '325ml, Price',
    productNutritons: 'Apple',
    description: 'Apple is a sweet and delicious fruit...',
    isPopular: true,
  ),
  ProductModel(
    name: 'Apple & Grape Juice',
    image: 'assets/bevegares_product3.png',
    price: '\$15.99',
    piceis: '2L, Price',
    productNutritons: 'Apple',
    description: 'Apple is a sweet and delicious fruit...',
  ),
  ProductModel(
    name: 'Orenge Juice',
    image: 'assets/bevegares_product4.png',
    price: '\$1.99',
    piceis: '2L, Price',
    productNutritons: 'Apple',
    description: 'Apple is a sweet and delicious fruit...',
    isPopular: true,
  ),
  ProductModel(
    name: 'Coca Cala Can',
    image: 'assets/bevegares_product5.png',
    price: '\$4.99',
    piceis: '325ml, Price',
    productNutritons: 'Apple',
    description: 'Apple is a sweet and delicious fruit...',
  ),
  ProductModel(
    name: 'Pepsi Can',
    image: 'assets/bevegares_product6.png',
    price: '\$4.99',
    piceis: '330ml, Price',
    productNutritons: 'Apple',
    description: 'Apple is a sweet and delicious fruit...',
  ),
  ProductModel(
    name: 'Egg Chicken Red',
    image: 'assets/egg_chickenwhite.png',
    price: '\$1.99',
    piceis: '4Pcs, Priceg',
    productNutritons: 'Apple',
    description: 'Apple is a sweet and delicious fruit...',
  ),
];
