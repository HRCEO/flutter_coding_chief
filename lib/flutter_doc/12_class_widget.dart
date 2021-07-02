class Person{
  String? name = '';
  int? age = 0;
  String? sex = '';

  Person({String? name, int? age, String? sex}){
    this.name = name;
    this.age = age;
    this.sex = sex;
  }
}

int addNumber(int num1, int num2){
  return num1 + num2;
}

void main(){

  Person p1 = new Person(age:30);
  Person p2 = new Person(age:20);

  print(p1.age);
  print(p2.age);

}