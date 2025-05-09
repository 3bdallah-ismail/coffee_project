class CoffeeData {
  final String name;
  final String type;
  final String imagePath;
  final double rating;
  final double price;
  final String description;

  CoffeeData({
    required this.name,
    required this.type,
    required this.imagePath,
    required this.rating,
    required this.price,
    required this.description,
  });
}

class CoffeeList {
  static final List<CoffeeData> coffeeList = [
    CoffeeData(
      name: "Caffe Mocha",
      type: "Deep Foam",
      imagePath: "assets/images/mocha.png",
      rating: 4.8,
      price: 4.53,
      description:
          "A Caffe Mocha blends espresso, steamed milk, and chocolate syrup, topped with whipped cream for a rich, dessert-like drink.",
    ),
    CoffeeData(
      name: "Flat White",
      type: "Espresso",
      imagePath: "assets/images/flat.png",
      rating: 4.8,
      price: 3.53,
      description:
          "A Flat White consists of a shot of espresso with micro-foamed milk, creating a smooth texture and strong coffee flavor.",
    ),
    CoffeeData(
      name: "Latte",
      type: "Milk Foam",
      imagePath: "assets/images/latte.png",
      rating: 4.6,
      price: 3.99,
      description:
          "A Latte is made with espresso and steamed milk, topped with a light layer of foam. It's smooth, creamy, and lightly caffeinated.",
    ),
    CoffeeData(
      name: "Cappuccino",
      type: "Steamed Milk",
      imagePath: "assets/images/cappuccino.png",
      rating: 4.7,
      price: 4.25,
      description:
          "A Cappuccino features equal parts espresso, steamed milk, and foam. It’s bold yet balanced, perfect for espresso lovers.",
    ),
    CoffeeData(
      name: "Americano",
      type: "Hot Water",
      imagePath: "assets/images/americano.png",
      rating: 4.5,
      price: 2.99,
      description:
          "An Americano is simply espresso diluted with hot water, giving it a lighter taste and higher volume than a straight espresso.",
    ),
    CoffeeData(
      name: "Macchiato",
      type: "Foamed Milk",
      imagePath: "assets/images/macchiato.png",
      rating: 4.4,
      price: 3.75,
      description:
          "A Macchiato is a bold shot of espresso 'stained' with a small amount of foamed milk. Ideal for strong coffee drinkers.",
    ),
    CoffeeData(
      name: "Irish Coffee",
      type: "Whiskey & Cream",
      imagePath: "assets/images/irish.png",
      rating: 4.3,
      price: 5.50,
      description:
          "Irish Coffee combines hot coffee with Irish whiskey and sugar, topped with thick cream. A warming and indulgent drink.",
    ),
    CoffeeData(
      name: "Cold Brew",
      type: "Iced Coffee",
      imagePath: "assets/images/coldbrew.png",
      rating: 4.6,
      price: 3.20,
      description:
          "Cold Brew is made by steeping coffee grounds in cold water for 12+ hours, producing a smooth, low-acid iced coffee.",
    ),
    CoffeeData(
      name: "Affogato",
      type: "Vanilla Ice Cream",
      imagePath: "assets/images/affogato.png",
      rating: 4.9,
      price: 4.95,
      description:
          "An Affogato is a dessert drink made by pouring a shot of hot espresso over a scoop of vanilla ice cream.",
    ),
    CoffeeData(
      name: "Mocha Latte",
      type: "Chocolate Mix",
      imagePath: "assets/images/mocha_latte.png",
      rating: 4.7,
      price: 4.65,
      description:
          "Mocha Latte is a mix of espresso, steamed milk, and chocolate flavoring. A sweet twist on a traditional latte.",
    ),
    CoffeeData(
      name: "Espresso",
      type: "Strong & Black",
      imagePath: "assets/images/espresso.png",
      rating: 4.2,
      price: 2.80,
      description:
          "Espresso is a concentrated shot of coffee with a rich flavor and creamy crema. The foundation of many coffee drinks.",
    ),
    CoffeeData(
      name: "Flat Mocha",
      type: "Creamy",
      imagePath: "assets/images/flat_mocha.png",
      rating: 4.5,
      price: 4.10,
      description:
          "Flat Mocha combines the richness of mocha with the smooth milk texture of a flat white. Creamy and chocolaty.",
    ),
    CoffeeData(
      name: "Iced Latte",
      type: "Cold & Light",
      imagePath: "assets/images/iced_latte.png",
      rating: 4.4,
      price: 3.80,
      description:
          "An Iced Latte features chilled milk and espresso over ice. Refreshing and light with a strong coffee base.",
    ),
    CoffeeData(
      name: "Turkish Coffee",
      type: "Strong Ground",
      imagePath: "assets/images/turkish.png",
      rating: 4.6,
      price: 3.50,
      description:
          "Turkish Coffee is unfiltered and made by boiling finely ground coffee beans, often with sugar, for a thick, intense cup.",
    ),
    CoffeeData(
      name: "Café au Lait",
      type: "French Style",
      imagePath: "assets/images/cafeaulait.png",
      rating: 4.3,
      price: 3.95,
      description:
          "Café au Lait is made with brewed coffee and steamed milk in equal parts. It's a mild, comforting French-style drink.",
    ),
    CoffeeData(
      name: "Ristretto",
      type: "Concentrated Shot",
      imagePath: "assets/images/ristretto.png",
      rating: 4.1,
      price: 2.60,
      description:
          "A Ristretto is a short shot of espresso made with less water. It’s more concentrated and sweeter than regular espresso.",
    ),
    CoffeeData(
      name: "Doppio",
      type: "Double Espresso",
      imagePath: "assets/images/doppio.png",
      rating: 4.5,
      price: 3.25,
      description:
          "Doppio is a double shot of espresso, offering a strong flavor and double the caffeine of a single shot.",
    ),
    CoffeeData(
      name: "Vienna",
      type: "Whipped Cream",
      imagePath: "assets/images/vienna.png",
      rating: 4.4,
      price: 4.30,
      description:
          "Vienna coffee is made with two shots of espresso topped with whipped cream, instead of milk. Rich and indulgent.",
    ),
    CoffeeData(
      name: "Cortado",
      type: "Equal Milk & Espresso",
      imagePath: "assets/images/cortado.png",
      rating: 4.2,
      price: 3.40,
      description:
          "A Cortado is an even mix of espresso and steamed milk, balancing strength and smoothness without foam.",
    ),
    CoffeeData(
      name: "Iced Americano",
      type: "Cold & Bitter",
      imagePath: "assets/images/iced_americano.png",
      rating: 4.3,
      price: 3.10,
      description:
          "Iced Americano is espresso poured over cold water and ice, delivering a refreshing, bold coffee with a bitter edge.",
    ),
  ];
}
