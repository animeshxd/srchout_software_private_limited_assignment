class Bike {
  final String image;
  final String name;
  final String company;
  final double pricePerDay;
  final bool isAvailable;
  final String category;
  final String displacement;
  final String maxSpeed;

  const Bike({
    required this.image,
    required this.name,
    required this.company,
    required this.pricePerDay,
    this.isAvailable = false,
    this.category = '',
    this.displacement = '',
    this.maxSpeed = '',
  });
}

class User {
  final String name;
  final String image;

  const User({required this.name, required this.image});
}

class Accessory {
  final String image;
  final String name;
  final double pricePerDay;
  final int inCart;

  const Accessory({
    required this.image,
    required this.name,
    required this.pricePerDay,
    this.inCart = 0,
  });
}
