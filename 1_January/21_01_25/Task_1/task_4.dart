import 'dart:io';

class Restaurant {
  String? name;
  String? cuisine;
  double? rating;

  Restaurant(this.name, this.cuisine, this.rating);

  void displayInfo() {

    print('\nName: $name');
    print('\tCuisine: $cuisine');
    print('\tRating: $rating');
    print("-------------");
  }
}

main() {
  List<Restaurant> restaurants = [];
  void addRestaurant(Restaurant restaurant) {
    restaurants.add(restaurant);
  }

  while (true) {
    print("\nMenu:");
    print("1. Add Restaurant");
    print("2. Delete Restaurant");
    print("3. Show Restaurants");
    print("4. Exit");
    print("Enter your choice: ");
    int choice = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    switch (choice) {
      case 1:
        print("Enter Restaurant name: ");
        String name = stdin.readLineSync()!;
        print("Enter Restaurant cuisine: ");
        String cuisine = stdin.readLineSync()!;
        print("Enter Restaurant rating: ");
        double rating = double.parse(stdin.readLineSync()!);
        addRestaurant(Restaurant(name, cuisine, rating));
        break;

      case 2:
        if (restaurants.isEmpty) {
          print("No restaurants to delete.");
        } else {
          print("Enter Restaurant name to delete: ");
          String name = stdin.readLineSync()!;
          if (restaurants.any((restaurant) => restaurant.name == name)) {
            restaurants.removeWhere((restaurant) => restaurant.name == name);
            print("Restaurant deleted.");
          } else {
            print("Restaurant not found.\nEnter a valid name. ");
          }

        }
        break;

      case 3:
        if (restaurants.isEmpty) {
          print("No restaurants available.");
        } else {
          print("Restaurants:");
          for (Restaurant restaurant in restaurants) {
            restaurant.displayInfo();
          }
        }
        break;

      case 4:
        print("Exiting...");
        return;

      default:
        print("Invalid choice. Please try again.");
    }
  }
}
