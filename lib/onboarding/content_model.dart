class UnbordingContent {
  String? image;
  String? title;
  String? discription;
  String? stackimage;
  UnbordingContent({ this.image, this.stackimage,  this.title,  this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'E Shopping',
    image: 'assets/images/Group 2807.svg',
    stackimage: 'assets/images/Group 2809.svg',
    discription: "Explore top organic fruits & grab them"
  ),
  UnbordingContent(
    title: 'Delivery on the way',
    image: 'assets/images/onb2.svg',
    discription: "Get your order by speed delivery"
  ),
  UnbordingContent(
    title: 'Delivery Arrived',
    image: 'assets/images/onb3.svg',
    discription: "Order is arrived at your Place"
  ),
];