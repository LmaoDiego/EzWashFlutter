class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Golden CarWash",
        desc: "Lavado en minutos",
        price: 9.00,
        color: "#33505a",
        address: "av.venezuela n°123",
        schedule: "6:00 a 15:00",
        image:
        "https://www.eluniverso.com/resizer/SyC-RcpnxhtJ_XWUf8wFBkKMN_I=/1198x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/RRJLQQFPBBD7TFKDX63Z2VIAKQ.jpg"),
    Item(
        id: 2,
        name: "VIP CarWash",
        desc: "Lo mejor en tecnologia",
        price: 10.50,
        color: "#33505a",
        address: "av.la marina n°123",
        schedule: "6:00 a 15:00",
        image:
        "https://lavaderodeautoscarwash.com/wp-content/uploads/2019/02/3-ma%CC%81quinas-para-lavado-de-autos-en-Peru.jpg"),
    Item(
        id: 3,
        name: "Joselito CarWash",
        desc: "Servicio Personalizado",
        price: 12.99,
        color: "#33505a",
        address: "av.javier prado n°123",
        schedule: "6:00 a 15:00",
        image:
        "https://www.portafolio.co/files/article_multimedia/uploads/2019/03/06/5c7ff801de718.jpeg"),
    Item(
        id: 4,
        name: "ABB CarWash",
        desc: "Atencion Personalizada",
        price: 8.00,
        color: "#33505a",
        address: "av.peru n°123",
        schedule: "6:00 a 15:00",
        image:
        "https://2.bp.blogspot.com/-2Mk7MebFcPg/WpVt2TE35KI/AAAAAAAAXvQ/vYYS6xeuDvsEDfi3DxCJC6o6zt-uXNYBACLcBGAs/s1600/car%2Bwash2J.jpg"),
    Item(
        id: 5,
        name: "CarWash Peralta",
        desc: "Mejores en Lavados de Camionetas",
        price: 7.88,
        color: "#33505a",
        address: "av.canada n°123",
        schedule: "6:00 a 15:00",
        image:
        "https://lavaderodeautoscarwash.com/wp-content/uploads/2021/10/lavado-de-autos-las-condes-nunoa-providencia-santiago-centro-chile-1010x641.jpg"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;
  final String address;
  final String schedule;

  Item(
      {required this.id,
        required this.name,
        required this.desc,
        required this.price,
        required this.color,
        required this.address,
        required this.schedule,
        required this.image});
}