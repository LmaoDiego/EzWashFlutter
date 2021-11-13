class Group{
  static final employees = [
    Employee(id: 1, name: "Joquin Perez", age: 21, image: "https://www.portafolio.co/files/article_multimedia/uploads/2019/03/06/5c7ff801de718.jpeg"),
    Employee(id: 2, name: "Rodolfo Watterson", age: 32, image: "https://www.portafolio.co/files/article_multimedia/uploads/2019/03/06/5c7ff801de718.jpeg"),
    Employee(id: 3, name: "Reiad Quispe", age: 40, image: "https://www.portafolio.co/files/article_multimedia/uploads/2019/03/06/5c7ff801de718.jpeg"),
  ];
}

class Employee{
  final int id;
  final String name;
  final int age;
  final String image;

  Employee({
    required this.id,
    required this.name,
    required this.age,
    required this.image});
}