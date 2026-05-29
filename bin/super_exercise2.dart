class Product {
  String name;
  double price;
  bool inStock;

  Product({required this.name, required this.price, required this.inStock});

  @override
  String toString() {
    return "Product name: $name | Product Price: $price | Instock: $inStock";
  }
}

Future<List<Product>> fetchProducts() async {
  await Future.delayed(Duration(seconds: 2));

  return [
    Product(name: "Chocolate", price: 12.5, inStock: true),
    Product(name: "Humburger", price: 18.8, inStock: true),
    Product(name: "HotDog", price: 8.3, inStock: false),
    Product(name: "Papalorri", price: 28.9, inStock: true),
    Product(name: "Brocoli", price: 5.6, inStock: true),
    Product(name: "Carrot", price: 4.7, inStock: false),
  ];
}

Future<Product> fetchAffordable(double budget) async {
  List<Product> products = await fetchProducts();

  Product? foundProduct = products
      .where((product) => product.price <= budget && product.inStock == true)
      .firstOrNull;

  if (foundProduct == null) {
    throw Exception("product not found");
  }

  return foundProduct;
}

Future<void> main() async {
  print("Fetching products");
  List<Product> allProducts = await fetchProducts();

  for (Product product in allProducts) {
    print(product.toString());
  }

  print("-------------");

  try {
    Product product = await fetchAffordable(20.0);
    print("Found product: $product");
  } catch (e) {
    print("Searching failed! Erro: $e");
  }

  print("--------------------");
  try {
    Product product = await fetchAffordable(5.0);
    print("Found product: $product");
  } catch (e) {
    print("Searching failed! Erro: $e");
  }
}
