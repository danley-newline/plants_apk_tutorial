class Plant {
  final int plantId;
  final int price;
  final String category;
  final String plantName;
  final String size;
  final double rating;
  final int humidity;
  final String temperature;
  final String imageUrl;
  bool isFavorited;
  final String description;
  bool isSelected;

  Plant(
      {required this.plantId,
      required this.price,
      required this.category,
      required this.plantName,
      required this.size,
      required this.rating,
      required this.humidity,
      required this.temperature,
      required this.imageUrl,
      required this.isFavorited,
      required this.description,
      required this.isSelected});

  static List<Plant> plantList = [
    Plant(
      plantId: 0,
      price: 22,
      category: 'Indoor',
      plantName: 'Sanseviera',
      size: 'Small',
      rating: 4.5,
      humidity: 46,
      temperature: '21 - 25',
      imageUrl: 'assets/images/plant-one.png',
      isFavorited: true,
      description:
          'Plants are essential to life on Earth. They produce oxygen through photosynthesis, which humans',
      isSelected: false,
    ),
    Plant(
      plantId: 1,
      price: 38,
      category: 'Outdoor',
      plantName: 'Philandrop',
      size: 'Medium',
      rating: 4.7,
      humidity: 34,
      temperature: '23 - 25',
      imageUrl: 'assets/images/plant-two.png',
      isFavorited: false,
      description:
          'and animals need to breathe. There are many types of plants, from towering trees to small grasses',
      isSelected: false,
    ),
    Plant(
      plantId: 2,
      price: 38,
      category: 'Indoor',
      plantName: 'Beach Daisy',
      size: 'Large',
      rating: 4.7,
      humidity: 34,
      temperature: '23 - 25',
      imageUrl: 'assets/images/plant-three.png',
      isFavorited: false,
      description:
          'and animals need to breathe. There are many types of plants, from towering trees to small grasses',
      isSelected: false,
    ),
    Plant(
      plantId: 3,
      price: 38,
      category: 'Outdoor',
      plantName: 'Big Nuances',
      size: 'Small',
      rating: 4.2,
      humidity: 66,
      temperature: '23 - 28',
      imageUrl: 'assets/images/plant-one.png',
      isFavorited: false,
      description:
          'and animals need to breathe. There are many types of plants, from towering trees to small grasses',
      isSelected: false,
    ),
    Plant(
      plantId: 4,
      price: 32,
      category: 'Recommended',
      plantName: 'Big Bluestream',
      size: 'Large',
      rating: 4.1,
      humidity: 66,
      temperature: '12 - 16',
      imageUrl: 'assets/images/plant-four.png',
      isFavorited: false,
      description:
          'and animals need to breathe. There are many types of plants, from towering trees to small grasses',
      isSelected: false,
    ),
    Plant(
      plantId: 5,
      price: 19,
      category: 'Outdoor',
      plantName: 'Big Makil',
      size: 'Medium',
      rating: 4.5,
      humidity: 34,
      temperature: '10 - 13',
      imageUrl: 'assets/images/plant-five.png',
      isFavorited: false,
      description:
          'and animals need to breathe. There are many types of plants, from towering trees to small grasses',
      isSelected: false,
    ),
    Plant(
      plantId: 6,
      price: 19,
      category: 'Garden',
      plantName: 'Plumango',
      size: 'Medium',
      rating: 4.5,
      humidity: 34,
      temperature: '21 - 25',
      imageUrl: 'assets/images/plant-six.png',
      isFavorited: false,
      description:
          'and animals need to breathe. There are many types of plants, from towering trees to small grasses',
      isSelected: false,
    ),
    Plant(
      plantId: 7,
      price: 23,
      category: 'Garden',
      plantName: 'Tritonia',
      size: 'Medium',
      rating: 4.5,
      humidity: 34,
      temperature: '21 - 25',
      imageUrl: 'assets/images/plant-seven.png',
      isFavorited: false,
      description:
          'and animals need to breathe. There are many types of plants, from towering trees to small grasses',
      isSelected: false,
    ),
    Plant(
      plantId: 8,
      price: 46,
      category: 'Recommended',
      plantName: 'Tritonia',
      size: 'Medium',
      rating: 4.7,
      humidity: 46,
      temperature: '28 - 35',
      imageUrl: 'assets/images/plant-eight.png',
      isFavorited: false,
      description:
          'and animals need to breathe. There are many types of plants, from towering trees to small grasses',
      isSelected: false,
    ),
  ];

  //Get the favorites items
  static List<Plant> getFavoritedPlants() {
    List<Plant> _travelList = Plant.plantList;
    return _travelList.where((element) => element.isFavorited == true).toList();
  }

  //Get the cart items
  static List<Plant> addedToCartPlant() {
    List<Plant> _selectedPlants = Plant.plantList;
    return _selectedPlants.where((element) => element.isSelected == true).toList();
  }

}
