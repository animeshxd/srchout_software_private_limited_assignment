const categories = [
  'Adventure',
  'Cruiser',
  'Sportsbike',
  'Tourer',
];

const popularItems = [
  Bike(
    image: 'assets/images/meteor.jpg',
    name: 'Meteore',
    company: 'Royal Enfield',
    pricePerDay: 699,
  ),
  Bike(
    image: 'assets/images/Indian-Scout-Bobber-2.jpg',
    name: 'Scout Bobber',
    company: 'Indian',
    pricePerDay: 1499,
  ),
  Bike(
    image: 'assets/images/2021-Honda-Rebel-1100.jpg',
    name: 'Rebel 1100',
    company: 'Honda',
    pricePerDay: 1199,
  ),
];

const recentlyViewed = [
  Bike(
    image: 'assets/images/hayabusa.jpg',
    name: 'Hayabusa',
    company: 'Suzuki',
    pricePerDay: 2000,
    isAvailable: true,
  ),
  Bike(
    image: 'assets/images/Classic 350.png',
    name: 'Classic 350',
    company: 'Royal Enfield',
    pricePerDay: 1500,
    isAvailable: false,
  ),
  Bike(
    image: 'assets/images/Ninja ZX-10r.jpg',
    name: 'Ninja ZX-10r',
    company: 'Kawasaki',
    pricePerDay: 2000,
    isAvailable: true,
  ),
];

const accessories = [
  Accessory(
    image: 'assets/images/bike jacket.jpg',
    name: 'Riding Jacket',
    pricePerDay: '800',
  ),
  Accessory(
    image: 'assets/images/Riding Gloves.jpg',
    name: 'Riding Gloves',
    pricePerDay: '800',
  ),
  Accessory(
    image: 'assets/images/Riding Boots.jpg',
    name: 'Riding Boots',
    pricePerDay: '800',
  ),
];

const bikeDetails = Bike(
  image: 'assets/images/Scout Bobber.jpg',
  name: 'Scout Bobber',
  company: 'Indian',
  pricePerDay: 1499,
  category: 'Cruiser',
  displacement: '1133 cc',
  maxSpeed: '124 km/h',
);

const user = User(name: 'Abhi Tiwari', image: 'assets/images/profile.png');

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
  final String pricePerDay;

  const Accessory({
    required this.image,
    required this.name,
    required this.pricePerDay,
  });
}
