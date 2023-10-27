final categories = [
  'Adventure',
  'Cruiser',
  'Sportsbike',
  'Tourer',
];

final popularItems = [
  const Bike(
    image: 'assets/images/meteor.jpg',
    name: 'Meteore',
    company: 'Royal Enfield',
    pricePerDay: 699,
  ),
  const Bike(
    image: 'assets/images/Indian-Scout-Bobber-2.jpg',
    name: 'Scout Bobber',
    company: 'Indian',
    pricePerDay: 1499,
  ),
  const Bike(
    image: 'assets/images/2021-Honda-Rebel-1100.jpg',
    name: 'Rebel 1100',
    company: 'Honda',
    pricePerDay: 1199,
  ),
];

final recentlyViewed = [
  const Bike(
    image: 'assets/images/hayabusa.jpg',
    name: 'Hayabusa',
    company: 'Suzuki',
    pricePerDay: 2000,
    isAvailable: true,
  ),
  const Bike(
    image: 'assets/images/Classic 350.png',
    name: 'Classic 350',
    company: 'Royal Enfield',
    pricePerDay: 1500,
    isAvailable: false,
  ),
  const Bike(
    image: 'assets/images/Ninja ZX-10r.jpg',
    name: 'Ninja ZX-10r',
    company: 'Kawasaki',
    pricePerDay: 2000,
    isAvailable: true,
  ),
];

const user = User(name: 'Abhi Tiwari', image: 'assets/images/profile.png');

class Bike {
  final String image;
  final String name;
  final String company;
  final double pricePerDay;
  final bool isAvailable;
  const Bike({
    required this.image,
    required this.name,
    required this.company,
    required this.pricePerDay,
    this.isAvailable = false,
  });

  @override
  String toString() {
    return 'Bike(name: $name, company: $company, pricePerDay: $pricePerDay, isAvailable: $isAvailable)';
  }
}

class User {
  final String name;
  final String image;

  const User({required this.name, required this.image});
}
