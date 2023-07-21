class OnboardModel {
  String header;
  String imagePath;
  String description;

  OnboardModel(
      {required this.description,
      required this.header,
      required this.imagePath});
}

final onboardAssets = [
  OnboardModel(
    header: 'Find Your Roommate',
    description:
        "Find like-minded individuals to interact with and find the\n roommate you've been looking for or needing.",
    imagePath: 'onboard1',
  ),
  OnboardModel(
    header: 'Get Apartments/rooms close to you',
    description:
        'Get apartments easily and within your budget that are\n  close to you and wherever you want.',
    imagePath: 'onboard2',
  ),
  OnboardModel(
    header: 'Post Your Residences',
    description:
        "Find verified tenants by listing your apartments or rooms\n for rent or sale.",
    imagePath: 'onboard3',
  ),
];
