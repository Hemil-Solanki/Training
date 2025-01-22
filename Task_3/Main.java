import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

abstract class Product {
    String name;
    double price;
    int stock;
    String category;
    String couponCode;

    public Product(String name, double price, int stock, String category, String couponCode) {
        this.name = name;
        this.price = price;
        this.stock = stock;
        this.category = category;
        this.couponCode = couponCode;
    }

    public abstract double applyDiscount(String couponCode);

    public void updateStock(int quantity) {
        if (stock >= quantity) {
            stock -= quantity;
            System.out.println("Order placed successfully. Stock updated.");
        } else {
            System.out.println("Insufficient stock.");
        }
    }

    @Override
    public String toString() {
        return name + " | Category: " + category + " | Price: " + price + " | Stock: " + stock + " | Coupon Code: " + couponCode;
    }
}

class DiscountedProduct extends Product {
    double discountPercentage;

    public DiscountedProduct(String name, double price, int stock, String category, String couponCode, double discountPercentage) {
        super(name, price, stock, category, couponCode);
        this.discountPercentage = discountPercentage;
    }

    @Override
    public double applyDiscount(String couponCode) {
        if (this.couponCode.equalsIgnoreCase(couponCode)) {
            return price - (price * discountPercentage / 100);
        } else {
            System.out.println("Invalid coupon code.");
            return price;
        }
    }
}

class InventorySystem {
    List<Product> inventory;

    public InventorySystem() {
        inventory = new ArrayList<>();
    }

    public void addProduct(Product product) {
        inventory.add(product);
        System.out.println(product.name + " added to inventory.");
    }

    public void viewProducts() {
        if (inventory.isEmpty()) {
            System.out.println("No products in inventory.");
        } else {
            for (Product product : inventory) {
                System.out.println(product);
            }
        }
    }

    public void PlaceOrder(String productName, int quantity, String couponCode) {
        for (Product product : inventory) {
            if (product.name.equalsIgnoreCase(productName)) {
                double discountedPrice = product.applyDiscount(couponCode);
                System.out.println("Discounted Price: " + discountedPrice);
                product.updateStock(quantity);
                return;
            }
        }
        System.out.println("Product not found.");
    }
}

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        InventorySystem inventorySystem = new InventorySystem();

        while (true) {
            System.out.println("\nMenu:");
            System.out.println("1. Add Product");
            System.out.println("2. View Products");
            System.out.println("3. Place Order");
            System.out.println("4. Exit");
            System.out.print("Enter your choice: ");
            int choice = scanner.nextInt();
            scanner.nextLine();

            switch (choice) {
                case 1:
                    System.out.print("Enter product name: ");
                    String name = scanner.nextLine();
                    System.out.print("Enter product category: ");
                    String category = scanner.nextLine();
                    System.out.print("Enter product price: ");
                    double price = scanner.nextDouble();
                    System.out.print("Enter product stock: ");
                    int stock = scanner.nextInt();
                    scanner.nextLine();

                    System.out.print("Enter coupon code: ");
                    String couponCode = scanner.nextLine();

                    System.out.print("Enter discount percentage: ");
                    double discountPercentage = scanner.nextDouble();

                    inventorySystem.addProduct(new DiscountedProduct(name, price, stock, category, couponCode, discountPercentage));
                    break;

                case 2:
                    inventorySystem.viewProducts();
                    break;

                case 3:
                    System.out.print("Enter product name to order: ");
                    String productName = scanner.nextLine();
                    System.out.print("Enter quantity: ");
                    int quantity = scanner.nextInt();
                    scanner.nextLine();

                    System.out.print("Enter coupon code: ");
                    String orderCouponCode = scanner.nextLine();

                    inventorySystem.PlaceOrder(productName, quantity, orderCouponCode);
                    break;

                case 4:
                    System.out.println("Exiting...");
                    scanner.close();
                    return;

                default:
                    System.out.println("Invalid choice. Please try again.");
            }
        }
    }
}
