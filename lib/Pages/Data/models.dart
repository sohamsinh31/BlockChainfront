class Product {
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        orderID: json['content']);
  }
  Product(
      {required this.orderID});
  final Object? orderID;
}
class Product2 {
  factory Product2.fromJson(Map<String, dynamic> json) {
    return Product2(
        orderID: json['nswitch1']);
  }
  Product2(
      {required this.orderID});
  final bool? orderID;
}