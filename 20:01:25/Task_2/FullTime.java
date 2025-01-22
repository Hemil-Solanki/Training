import java.util.Scanner;

class FullTime {
    int employeeID;
    String employeeName;
    byte age;
    int salary;
    String designation;
    byte monthsWorked;

    void addEmployee() {
        System.out.println("\nAdding Full Time Employee Details");
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
        System.out.print("Enter the employee salary: ");
        salary = scanner.nextInt();
        scanner.nextLine();
        System.out.print("Enter the employee designation: ");
        designation = scanner.nextLine();
        System.out.print("Enter the months worked: ");
        monthsWorked = scanner.nextByte();
        scanner.nextLine();
    }

    void displayDetails() {
        System.out.println("\nEmployee ID: " + employeeID);
        System.out.println("Employee Name: " + employeeName);
        System.out.println("Employee Age:" + age);
        System.out.println("Employee Salary: " + salary);
        System.out.println("Employee Designation: " + designation);
        System.out.println("Months Worked: " + monthsWorked);
    }

    void calculateSalary() {
        int annualSalary = salary * monthsWorked;
        System.out.println("Annual Salary: " + annualSalary);
    }
}