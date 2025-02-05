public class MainSalary{
    public static void main(String[] args) {
        FullTime employee1 = new FullTime();
        PartTime employee2 = new PartTime();

        employee1.addEmployee();
        employee1.displayDetails();
        employee1.calculateSalary();
        
        employee2.addEmployee();
        employee2.displayDetails();
        employee2.calculateSalary();
    }
}
