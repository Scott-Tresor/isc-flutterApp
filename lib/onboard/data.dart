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
        image: "asstes/onboard/image1.png",
        color: Colors.green
      ),
      OnBoardingItem(
          title: "Departement de SCOFI",
          subtitle: "Nous organisons le departement des sciences commerciales et financieres",
          image: "asstes/onboard/image2.png",
          color: Colors.blue
      ),
      OnBoardingItem(
          title: "Departement Douane de  accise",
          subtitle: "Nous organisons le departement de Douane et accisse",
          image: "asstes/onboard/image3.png",
          color: Colors.orange
      ),
      OnBoardingItem(
          title: "Departement de Banque",
          subtitle: "Nous organisons le departement de  Banque et Assurance",
          image: "asstes/onboard/image4.png",
          color: Colors.pinkAccent
      ),
    ];
    return fi;
  }
}