import java.util.Scanner;

class PartTime {
    int employeeID;
    String employeeName;
    byte age;
    int wagesPerHour;
    String designation;
    double hoursWorked;

    
    void addEmployee() {
        System.out.println("\nAdding Part Time Employee Details");
        @SuppressWarnings("resource")
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the employee ID: ");
        employeeID = scanner.nextInt();
        scanner.nextLine();
        System.out.print("Enter the employee name: ");
        employeeName = scanner.nextLine();
        System.out.print("Enter the employee age: ");
        age = scanner.nextByte();
        scanner.nextLine();
        System.out.print("Enter the employee wages per hour: ");
        wagesPerHour = scanner.nextInt();
        scanner.nextLine();
        System.out.print("Enter the employee designation: ");
        designation = scanner.nextLine();
        System.out.print("Enter the hours worked: ");
        hoursWorked = scanner.nextDouble();
        scanner.nextLine();
    }

    void displayDetails() {
        System.out.println("\nEmployee ID: " + employeeID);
        System.out.println("Employee Name: " + employeeName);
        System.out.println("Employee Age:" + age);
        System.out.println("Employee Wages per hour: " + wagesPerHour);
        System.out.println("Employee Designation: " + designation);
        System.out.println("Hours Worked: " + hoursWorked);
    }

    void calculateSalary() {
        double totalSalary = wagesPerHour * hoursWorked;
        System.out.println("Total Salary: " + totalSalary);
    }    
}