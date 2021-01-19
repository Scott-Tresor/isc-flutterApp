import 'package:flutter/material.dart';

class OnBoardingItem {
  final String title;
  final String subtitle;
  final String image;
  final Color color;

  const  OnBoardingItem({
    this.title,
    this.subtitle,
    this.image,
    this.color
  });
}

class OnBoardingItems {
  static List<OnBoardingItem> loadOnBoardingItem(){
    const fi = <OnBoardingItem>[
      OnBoardingItem(
        title: "Departement d'informatique",
        subtitle: "Nous organisons le departement informatique",
        image: "assets/onboard/image4.png",
        color: Colors.green
      ),
      OnBoardingItem(
          title: "Departement de SCOFI",
          subtitle: "Nous organisons le departement des sciences commerciales et financieres",
          image: "assets/onboard/image2.png",
          color: Colors.blueAccent
      ),
      OnBoardingItem(
          title: "Departement Douane de  accise",
          subtitle: "Nous organisons le departement de Douane et accisse",
          image: "assets/onboard/image3.png",
          color: Colors.redAccent
      ),
      OnBoardingItem(
          title: "Departement de Banque",
          subtitle: "Nous organisons le departement de  Banque et Assurance",
          image: "assets/onboard/image1.png",
          color: Colors.cyan
      ),
    ];
    return fi;
  }
}