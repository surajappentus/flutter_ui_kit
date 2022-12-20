
class Product{
  final String name;
  final String description;
  final int price;
  final String image;
  Product(this.name, this.description, this.price, this.image);

  static List<Product> getProducts(){
    List<Product> items = <Product>[];

    items.add(Product("IPhone", "IPhone is the most feature-full phone ever", 1200, "iphone.jpg"));
    items.add(Product("Laptop", "Laptop is most productive development tool", 35000, "laptop.jpg"));
    items.add(Product("Tablet", "Tablet is the most useful device ever for meeting", 15000, "tab.jpg"));
    items.add(Product("Pen drive", "Pen drive is useful storage medium", 800, "pendrive.jpg"));
    return items;
  }
}