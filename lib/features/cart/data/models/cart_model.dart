class CartModel {
  final String imageUrl;
  final String name;
  final String weight;
  final double price;

  CartModel({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.weight,
  });
}
