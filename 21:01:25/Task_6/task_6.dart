import 'dart:io';

abstract class Product {
  String name;
  double price;
  int stock;
  String category;
  String couponCode;

  Product(this.name, this.price, this.stock, this.category, this.couponCode);

  double applyDiscount(String couponCode);

  void updateStock(int quantity) {
    if (stock >= quantity) {
      stock -= quantity;
      print("Order placed successfully. Stock updated.");
    } else {
      print("Insufficient stock.");
    }
  }

  @override
  String toString() {
    return "$name | Category: $category | Price: $price | Stock: $stock | Coupon Code: $couponCode";
  }
}

class DiscountedProduct extends Product {
  double discountPercentage;

  DiscountedProduct(
      String name, double price, int stock, String category, String couponCode, this.discountPercentage)
      : super(name, price, stock, category, couponCode);

  @override
  double applyDiscount(String couponCode) {
    if (this.couponCode.toLowerCase() == couponCode.toLowerCase()) {
      return price - (price * discountPercentage / 100);
    } else {
      print("Invalid coupon code.");
      return price;
    }
  }
}

class InventorySystem {
  List<Product> inventory = [];

  void addProduct(Product product) {
    inventory.add(product);
    print("${product.name} added to inventory.");
  }

  void viewProducts() {
    if (inventory.isEmpty) {
      print("No products in inventory.");
    } else {
      for (var product in inventory) {
        print(product);
      }
    }
  }

  void placeOrder(String productName, int quantity, String couponCode) {
    for (var product in inventory) {
      if (product.name.toLowerCase() == productName.toLowerCase()) {
        double discountedPrice = product.applyDiscount(couponCode);
        print("Discounted Price: $discountedPrice");
        product.updateStock(quantity);
        return;
      }
    }
    print("Product not found.");
  }
}

void main() {
  final inventorySystem = InventorySystem();

  while (true) {
    print("\nMenu:");
    print("1. Add Product");
    print("2. View Products");
    print("3. Place Order");
    print("4. Exit");
    stdout.write("Enter your choice: ");
    int? choice = int.tryParse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write("Enter product name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Enter product category: ");
        String category = stdin.readLineSync()!;
        stdout.write("Enter product price: ");
        double price = double.parse(stdin.readLineSync()!);
        stdout.write("Enter product stock: ");
        int stock = int.parse(stdin.readLineSync()!);
        stdout.write("Enter coupon code: ");
        String couponCode = stdin.readLineSync()!;
        stdout.write("Enter discount percentage: ");
        double discountPercentage = double.parse(stdin.readLineSync()!);

        inventorySystem.addProduct(
            DiscountedProduct(name, price, stock, category, couponCode, discountPercentage));
        break;

      case 2:
        inventorySystem.viewProducts();
        break;

      case 3:
        stdout.write("Enter product name to order: ");
        String productName = stdin.readLineSync()!;
        stdout.write("Enter quantity: ");
        int quantity = int.parse(stdin.readLineSync()!);
        stdout.write("Enter coupon code: ");
        String orderCouponCode = stdin.readLineSync()!;

        inventorySystem.placeOrder(productName, quantity, orderCouponCode);
        break;

      case 4:
        print("Exiting...");
        return;

      default:
        print("Invalid choice. Please try again.");
    }
  }
}
