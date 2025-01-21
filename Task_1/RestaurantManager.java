import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

class Restaurant {
    String name;
    String cuisine;
    double rating;

    public Restaurant(String name, String cuisine, double rating) {
        this.name = name;
        this.cuisine = cuisine;
        this.rating = rating;
    }

    public void displayDetails() {
        System.out.println("\nRestaurant Name: " + name);
        System.out.println("Cuisine: " + cuisine);
        System.out.println("Rating: " + rating);
    }
}

public class RestaurantManager {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        List<Restaurant> restaurants = new ArrayList<>();
        int choice;

        do {
            System.out.println("\nMenu:");
            System.out.println("1. Add Restaurant");
            System.out.println("2. Delete Restaurant");
            System.out.println("3. Exit");
            System.out.print("Enter your choice: ");
            choice = scanner.nextInt();
            scanner.nextLine();

            switch (choice) {
                case 1:
                    System.out.print("Enter the name of the restaurant: ");
                    String name = scanner.nextLine();
                    System.out.print("Enter the cuisine of " + name + ": ");
                    String cuisine = scanner.nextLine();
                    System.out.print("Enter the rating of " + name + ": ");
                    double rating = scanner.nextDouble();
                    scanner.nextLine();

                    Restaurant newRestaurant = new Restaurant(name, cuisine, rating);
                    restaurants.add(newRestaurant);
                    System.out.println("Restaurant added successfully!");
                    break;

                case 2:
                    if (restaurants.isEmpty()) {
                        System.out.println("No restaurants to delete.");
                    } else {
                        System.out.println("\nList of Restaurants:");
                        for (int i = 0; i < restaurants.size(); i++) {
                            System.out.println((i + 1) + ". " + restaurants.get(i).name);
                        }
                        System.out.print("Enter the number of the restaurant to delete: ");
                        int deleteIndex = scanner.nextInt();
                        scanner.nextLine();

                        if (deleteIndex > 0 && deleteIndex <= restaurants.size()) {
                            restaurants.remove(deleteIndex - 1);
                            System.out.println("Restaurant deleted successfully!");
                        } else {
                            System.out.println("Invalid selection. Try again.");
                        }
                    }
                    break;

                case 3:
                    System.out.println("Exiting the program. Goodbye!");
                    break;

                default:
                    System.out.println("Invalid choice. Please try again.");
            }

            if (!restaurants.isEmpty()) {
                System.out.println("\nCurrent List of Restaurants:");
                for (Restaurant restaurant : restaurants) {
                    restaurant.displayDetails();
                }
            } else {
                System.out.println("\nNo restaurants available.");
            }
        } while (choice != 3);

        scanner.close();
    }
}


// import java.util.Scanner;

// class Restaurant {
//     String name;
//     String cuisine;
//     double rating;

//     public Restaurant(String name, String cuisine, double rating) {
//         this.name = name;
//         this.cuisine = cuisine;
//         this.rating = rating;
//     }

//     public void displayDetails() {
//         System.out.println("Restaurant Name: " + name);
//         System.out.println("Cuisine: " + cuisine);
//         System.out.println("Rating: " + rating);
//         System.out.println();
//     }

//     public static void main(String[] args) {
//         Scanner scanner = new Scanner(System.in);

//         System.out.println("\nEnter details for 3 restaurants:");

//         System.out.print("Enter name of restaurant 1: ");
//         String name1 = scanner.nextLine();
//         System.out.print("Enter cuisine of "+ name1 +":  ");
//         String cuisine1 = scanner.nextLine();
//         System.out.print("Enter rating of "+ name1 +":  ");
//         double rating1 = scanner.nextDouble();
//         scanner.nextLine();

//         System.out.print("Enter name of restaurant 2: ");
//         String name2 = scanner.nextLine();
//         System.out.print("Enter cuisine of "+ name2 +":  ");
//         String cuisine2 = scanner.nextLine();
//         System.out.print("Enter rating of "+ name2 +":  ");
//         double rating2 = scanner.nextDouble();
//         scanner.nextLine(); 

//         System.out.print("Enter name of restaurant 3: ");
//         String name3 = scanner.nextLine();
//         System.out.print("Enter cuisine of "+ name3 +":  ");
//         String cuisine3 = scanner.nextLine();
//         System.out.print("Enter rating of "+ name3 +":  ");
//         double rating3 = scanner.nextDouble();

//         Restaurant restaurant1 = new Restaurant(name1, cuisine1, rating1);
//         Restaurant restaurant2 = new Restaurant(name2, cuisine2, rating2);
//         Restaurant restaurant3 = new Restaurant(name3, cuisine3, rating3);

//         restaurant1.displayDetails();
//         restaurant2.displayDetails();
//         restaurant3.displayDetails();

//         scanner.close();
//     }
// }