class HomeModels {
  String imagePaths;
  String name;
  String time;
  String location;
  String description;

  HomeModels({
    required this.imagePaths,
    required this.description,
    required this.name,
    required this.location,
    required this.time,
  });
}

List<HomeModels> homeData = [
  HomeModels(
      imagePaths: "profile1",
      description: 'I currently have an apartment, and I really\n need a roommate, interested? Pllease\n text me.',
      name: 'Adenuga David',
      location: 'Lagos',
      time: '07:45'),
  HomeModels(
      imagePaths: 'profile2',
      description: 'I need an apartment please, If you have one,\n please let me know.',
      name: 'Priscilia Aforah',
      location: '',
      time: '12:00'),
  HomeModels(
      imagePaths: 'profile3',
      description: "Apartment available. Check pictures below\n and text me if you’re interested.",
      name: "Tonia Swish",
      location: '',
      time: 'Yesterday'),
];
