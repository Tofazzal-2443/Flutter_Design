class CarouselSliderModel {
  int? id;
  String image;
  String tital;
  String subTital;

  CarouselSliderModel({
    this.id,
    required this.image,
    required this.tital,
    required this.subTital,
  });
}

List<CarouselSliderModel> carouselList = [
  CarouselSliderModel(
    id: 1,
    image: "assets/images/on1.png",
    tital: "Gain total control of your money",
    subTital: "Become your own money manager and make every cent count",
  ),
  CarouselSliderModel(
    id: 2,
    image: "assets/images/on2.png",
    tital: "Know where your money goes",
    subTital: "Track your transaction easily, with categories and financial report ",
  ),
  CarouselSliderModel(
    id: 3,
    image: "assets/images/on3.png",
    tital: "Planning ahead",
    subTital: "Setup your budget for each category so you in control",
  ),
];
