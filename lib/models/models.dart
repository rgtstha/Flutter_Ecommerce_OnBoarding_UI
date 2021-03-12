class Onboarding {
  final String titleText;
  final String descriptionText;
  final String imageURL;

  Onboarding(
    this.titleText,
    this.descriptionText,
    this.imageURL,
  );
}

final List<Onboarding> onboardingData = [
  Onboarding(
    "Online shopping",
    "Women Fashion Shopping Online - Shop from a huge range of latest women clothing, shoes, makeup Kits, Watches, footwear and more for women at best price",
    "assets/images/onboardingimage1.svg",
  ),
  Onboarding(
    "Add to cart",
    "Add to cart button works on product pages. The customizations in this section  compatible with dynamic checkout buttons",
    "assets/images/onboardingimage2.svg",
  ),
  Onboarding(
    "Payment Successful",
    "Your payment has been successfully completed. You will receive a confirmation email within a few minutes. ",
    "assets/images/onboardingimage3.svg",
  ),
];
