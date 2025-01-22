class FullTime {
  String? name;
  double? salary;
  int? monthsWorked;

  void addEmployee(String name, double salary, int monthsWorked) {
    this.name = name;
    this.salary = salary;
    this.monthsWorked = monthsWorked;
  }

  void displayInfo() {
    print("Name: $name");
    print("Salary: $salary");
    print("Months Worked: $monthsWorked");
  }

  void calculateSalary() {
    double totalSalary = salary! * monthsWorked!;
    print("Total Salary: $totalSalary");
  }
}

class PartTime {
  String? name;
  double? hourlyRate;
  int? hoursWorked;

  void addEmployee(String name, double hourlyRate, int hoursWorked) {
    this.name = name;
    this.hourlyRate = hourlyRate;
    this.hoursWorked = hoursWorked;
  }

  void displayInfo() {
    print("Name: $name");
    print("Hourly Rate: $hourlyRate");
    print("Hours Worked: $hoursWorked");
  }

  void calculateSalary() {
    double totalSalary = hourlyRate! * hoursWorked!;
    print("Total Salary: $totalSalary");
  }

}

main() {
  FullTime FTemployee1 = FullTime();
  PartTime PTemployee1 = PartTime();

  FTemployee1.addEmployee("John Doe", 50000, 12);
  FTemployee1.displayInfo();
  FTemployee1.calculateSalary();

  PTemployee1.addEmployee("Jane Smith", 20, 160);
  PTemployee1.displayInfo();
  PTemployee1.calculateSalary();
}