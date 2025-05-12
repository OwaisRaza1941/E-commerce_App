class ProductModel {
  final String name;
  final String image;
  final String price;
  final String? description;
  final String? productNutritons;
  final String piceis;

  ProductModel({
    this.description,
    this.productNutritons,
    required this.name,
    required this.image,
    required this.price,
    required this.piceis,
  });
}

final List<ProductModel> products = [
  ProductModel(
    name: 'Organic Banana',
    image: 'assets/product_details1.png',
    price: '\$4.99',
    description:
        'They are a good source of potassium, which helps regulate blood pressure and heart health, and their high fiber content aids digestion and promotes feelings of fullness. ',
    productNutritons: '358 mg',
    piceis: '7pcs, Priceg',
  ),
  ProductModel(
    name: 'Natural Red Apple',
    image: 'assets/product_details2.png',
    price: '\$4.99',
    description:
        'Apple is a sweet and delicious fruit that is very healthy. It is also a good disease-fighter and we can eat it every day.',
    piceis: '1kg, Priceg',
    productNutritons: '107 mg',
  ),
  ProductModel(
    name: 'Bell Pepper Red',
    image: 'assets/home_product3.png',
    price: '\$4.99',
    description:
        'Red bell peppers are a vibrant, sweet-flavored fruit with a crisp, firm texture. They are a smooth-skinned variety with a uniform red color. Similar to yellow or orange bell peppers, they have a mild, slightly sweet taste. ',
    piceis: '1kg, Priceg',
    productNutritons: 'Vitm:A: 31%',
  ),
  ProductModel(
    name: 'Ginger',
    image: 'assets/home_product4.png',
    price: '\$4.99',
    description:
        'Ginger is a rhizome, the underground stem, of the flower ing plant Zingiber officinale, a member of the Zingiberaceae family.',
    piceis: '250gm, Priceg',
    productNutritons: '	43 mg',
  ),
  ProductModel(
    name: 'Beef Bone',
    image: 'assets/home_product5.png',
    price: '\$4.99',
    description:
        'Beef bones offer a wealth of nutrients, particularly when used to make bone broth. They provide collagen, essential for joint health and skin elasticity.',
    piceis: '1kg, Priceg',
    productNutritons: ' 0.5–2 g',
  ),
  ProductModel(
    name: 'Chicken Brioller',
    image: 'assets/home_product6.png',
    price: '\$4.99',
    description:
        'Chicken delivers vital, under-consumed nutrients of public health importance for all age groups: Including potassium, vitamin D, iron, and calcium (all provided at various amounts by one 3.5 oz. serving of boneless, skinless chicken breast).',
    piceis: '1kg, Priceg',
    productNutritons: '24 mcg ',
  ),
  ProductModel(
    name: 'Diet Cake',
    image: 'assets/bevegares_product1.png',
    price: '\$1.99',
    piceis: '355ml, Price',
  ),
  ProductModel(
    name: 'Sprite Can',
    image: 'assets/bevegares_product2.png',
    price: '\$1.50',
    piceis: '325ml, Price',
  ),
  ProductModel(
    name: 'Apple & Grape Juice',
    image: 'assets/bevegares_product3.png',
    price: '\$15.99',
    piceis: '2L, Price',
  ),
  ProductModel(
    name: 'Orenge Juice',
    image: 'assets/bevegares_product4.png',
    price: '\$1.99',
    piceis: '2L, Price',
  ),
  ProductModel(
    name: 'Coca Cala Can',
    image: 'assets/bevegares_product5.png',
    price: '\$4.99',
    piceis: '325ml, Price',
  ),
  ProductModel(
    name: 'Pepsi Can',
    image: 'assets/bevegares_product6.png',
    price: '\$4.99',
    piceis: '330ml, Price',
  ),
];
