class Project {
  final String name;
  final String description;
  final String image;
  final String url;
  final String iOSUrl;
  final List<String> skills;

  Project({this.name, this.description, this.image, this.url,this.iOSUrl, this.skills});
}

// ignore: non_constant_identifier_names
List<Project> PROJECTS = [
  Project(
    name: 'BoatCheck',
    description: 'BoatCheck allows you to digitally record measures and ATP measurements.',
    image: 'assets/images/projects/BoatCheck.png',
    url: 'https://play.google.com/store/apps/details?id=no.anteo.BoatCheck',
    iOSUrl: 'https://apps.apple.com/gb/app/boat-check-app/id1473264750',
    skills: [
      'Dart',
      'Flutter',
      'Git',
    ],
  ),
  Project(
    name: 'Quranic Quizzes: Learn the easy way!',
    description:
    'At Quranic Quizzes, our mission is to provide an interactive e-learning platform to help bridge the gap between reading and understanding the Quran, along with other important aspects of Islam, in a fun and interactive way.',
    image: 'assets/images/projects/QuranicQuizzes.jpg',
    url: 'https://play.google.com/store/apps/details?id=com.QuranicQuizzes',
    iOSUrl: 'https://apps.apple.com/us/app/quranic-quizzes/id1502388967',
    skills: [
      'Xamarin Forms',
      'Sql',
      'Firebase',
    ],
  ),
  Project(
    name: 'DPRS',
    description:
    'This is an application that specializes in managing your daily routines work. Work Report Helper is designed to help us to track and easily create a report on tasks we performed.',
    image: 'assets/images/projects/DPRS.jpg',
    url: 'https://play.google.com/store/apps/details?id=com.dprs.natrix.Dprs',
    iOSUrl: 'https://apps.apple.com/in/app/dprs/id1486127660',
    skills: [
      'Xamarin Forms',
      'Sql',
      'Firebase',
    ],
  ),
  Project(
    name: 'Cartelle',
    description:
        'We are on a journey to build a Cartelle of inspiring women who believe in the power of fitness. The power to transform mind, body and soul. The power to live life on your own terms.',
    image: 'assets/images/projects/Cartelle.jpg',
    url: 'https://play.google.com/store/apps/details?id=bethestance.Stance',
    iOSUrl: 'https://apps.apple.com/in/app/cartelle-1-in-women-workouts/id1231789235',
    skills: [
      'Xamarin Forms',
      'Sql',
      'Git',
      'Firebase',
    ],
  ),
  Project(
    name: 'Nabuh Energy v.2',
    description:
        'As a Nabuh Energy customer, you have the ability to top up your Gas or Electricity directly from your mobile device.Manage your energy using your mobile device, check your past payments and purchase additional top ups.',
    image: 'assets/images/projects/Nabuh.jpg',
    url: 'https://play.google.com/store/apps/details?id=uk.co.keyivr.nabuh_energy_mobile',
    iOSUrl: 'https://apps.apple.com/us/app/nabuh-energy-v-2/id1521221233',
    skills: [
      'Xamarin Forms',
      'Sql',
      'Git',
      'Firebase',
    ],
  ),
  Project(
    name: 'SureCare App',
    description:
    'This is the Surecare lifestyle application catering for Telemedicine and Insurance services. This app provides you with services ranging from purchase to policy and package management. You can make you package purchases, update your profile, make claims book your doctors appointment as well as chat with us on your needs!',
    image: 'assets/images/projects/SureCare.jpg',
    url: 'https://play.google.com/store/apps/details?id=com.app.surecare',
    iOSUrl: 'https://play.google.com/store/apps/details?id=com.app.surecare',
    skills: [
      'Flutter',
      'Sql',
      'Git',
      'Firebase',
    ],
  ),
  Project(
    name: 'IPITRS',
    description:
    'Indian project information tracking & Reporting System,This app provides Indian project information so users easily tracking and Reporting about projects.',
    image: 'assets/images/projects/IPITRS.jpg',
    url: 'https://play.google.com/store/apps/details?id=com.natrix.projectß',
    iOSUrl: 'https://apps.apple.com/in/app/ipitrs/id1545351022',
    skills: [
      'Flutter',
      'Sql',
      'Firebase',
    ],
  ),
];
