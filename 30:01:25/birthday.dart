import 'dart:io';

void writeFile(){

  File file = File('birthday.txt');
  if(!file.existsSync()){
    file.createSync();
  }

  stdout.write("Enter name to Store in birthday: ");
  String? name = stdin.readLineSync();

  if(name!=null && name.isNotEmpty){
    stdout.write("Enter birthday for $name: ");
    String? birthday = stdin.readLineSync();
    if(birthday!=null && birthday.isNotEmpty){
      file.writeAsStringSync('$name:$birthday\n',mode: FileMode.append);
      print("$name's Birthday Saved");
    }
  }
}

void readFile(){
  File file = File('birthday.txt');
  stdout.write("Enter name to get birthday: ");
  String? name = stdin.readLineSync();
  if(name!=null && name.isNotEmpty){
    List<String> birthday = file.readAsLinesSync();
    bool found = false;

    for(String data in birthday) {
      List<String> splitData = data.split(':');
      if(splitData[0] == name){
        print("$name's birthday ${splitData[1]}");
        found = true;
        break;
      }
    }
    if(!found){
      print("Not found");
    }
  }
}

void main() {
  while(true) {
    print("1. Save Birthday \n2. Get Birthday \n3. Exit");
    stdout.write("Enter your choice: ");

    try {
      int choice = int.parse(stdin.readLineSync()!);
      switch (choice) {
        case 1:
          writeFile();
          break;
        case 2:
          readFile();
          break;
        case 3:
          exit(0);
        default:
          "Enter Your Choice Again";
      }
    }catch(e){
      print("Invalid Input");
    }
  }
}