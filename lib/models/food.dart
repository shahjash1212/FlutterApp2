class Food {
  final int price, rating;
  final String name, discription, longdis, title, image;

  Food(
      {required this.price,
      required this.rating,
      required this.name,
      required this.discription,
      required this.title,
      required this.longdis,
      required this.image});
}

List<Food> foods = [
  Food(
      price: 12,
      title: "Pasta",
      image: "assets/images/dis1.png",
      rating: 33,
      name: "dabeli",
      longdis:
          "Pasta is a type of noodle that's traditionally made from durum wheat, water or eggs. It is formed into different noodle shapes and then cooked in boiling water. Nowadays, most products sold as pasta are made from common wheat. However, similar noodles can be made from other grains, such as rice, barley or buckwheat.",
      discription: "dabeli is amazing food to have at evening"),
  Food(
      price: 15,
      title: "Tamato Bread Salad",
      image: "assets/images/dis2.png",
      rating: 33,
      longdis:
          "Pasta is a type of noodle that's traditionally made from durum wheat, water or eggs",
      name: "dabeli",
      discription: "dabeli is amazing food to have at evening"),
  Food(
      price: 26,
      title: "Fruits Eggs Punch",
      image: "assets/images/dis3.png",
      rating: 33,
      longdis:
          "Pasta is a type of noodle that's traditionally made from durum wheat, water or eggs",
      name: "dabeli",
      discription: "dabeli is amazing food to have at evening"),
  Food(
      price: 26,
      title: "Brown Rice Chiken",
      image: "assets/images/dis4.png",
      rating: 33,
      longdis:
          "Pasta is a type of noodle that's traditionally made from durum wheat, water or eggs",
      name: "dabeli",
      discription: "dabeli is amazing food to have at evening"),
  Food(
      price: 26,
      title: "Fish Mashroom",
      image: "assets/images/dis5.png",
      rating: 33,
      longdis:
          "Pasta is a type of noodle that's traditionally made from durum wheat, water or eggs",
      name: "dabeli",
      discription: "dabeli is amazing food to have at evening"),
];
