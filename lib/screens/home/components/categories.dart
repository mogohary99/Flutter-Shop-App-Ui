import 'package:flutter/material.dart';

import '../../../constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 40,
        child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return buildCategory(index);
          },
        ),
      ),
    );
  }

  Widget buildCategory(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          currentIndex=index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              categories[index],
              style: TextStyle(
                color: currentIndex==index ? kTextColor : kTextLightColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Container(
              height: 2,
              width: 30,
              margin: const EdgeInsets.only(top: kDefaultPadding/4),
              color: currentIndex==index ? Colors.black : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
