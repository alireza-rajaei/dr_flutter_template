import '../../data/models/doctor.dart';
import '../../data/models/specialty.dart';

class AppData {
  static final List<Specialty> specialties = [
    Specialty(name: "Otology", iconPath: "assets/icons/otology.png"),
    Specialty(
        name: "Gastroenterology",
        iconPath: "assets/icons/gastroenterology.png"),
    Specialty(name: "Pulmonology", iconPath: "assets/icons/pulmonology.png"),
    Specialty(name: "Gynecology", iconPath: "assets/icons/gynecology.png"),
    Specialty(name: "Show All", iconPath: ""),
  ];
  static final List<Doctor> doctors = [
    Doctor('Brittany Andreoli, MD', '\$20.50', '08:00 AM - 01:00 PM',
        "Otology - Gastroenterology", 'assets/imgs/d1.png', "f"),
    Doctor('Hendrick Arnold, MD', '\$15.40', '02:00 PM - 08:00 PM',
        "Pulmonology - Gastroenterology", 'assets/imgs/d2.png', "m"),
    Doctor('Joyce Bellin, PA-C', '10.50', '08:00 AM - 12:00 AM',
        "Gynecology - Pulmonology", 'assets/imgs/d3.png', "f"),
    Doctor('Michael Burke, MD', '14.50', '08:00 AM - 12:00 AM',
        "Gynecology - Pulmonology", 'assets/imgs/d4.png', "m"),
    Doctor('Michael Burke, MD', '14.50', '08:00 AM - 12:00 AM',
        "Gynecology - Pulmonology", 'assets/imgs/d5.png', "m"),
  ];

  static final List<String> pics = [
    "assets/imgs/rome_colosseum.jpeg",
    "assets/imgs/rome_colosseum.jpeg",
    "assets/imgs/rome_colosseum.jpeg",
    "assets/imgs/rome_colosseum.jpeg",
    "assets/imgs/rome_colosseum.jpeg"
  ];
}
