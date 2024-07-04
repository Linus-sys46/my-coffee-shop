class ProductModel {
  var id;
  var pname;
  var pdescription;
  var image;
  var price;

  ProductModel({
    required this.id,
    required this.pname,
    required this.pdescription,
    required this.image,
    required this.price,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['id'],
        pname: json['pname'],
        pdescription: json['pdescription'],
        image: json['image'],
        price: ['price']);
  }
}
