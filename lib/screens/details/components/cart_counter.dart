import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int num = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(
          icon: Icons.remove,
          press: () {
            if(num >1){
              setState(() {
                num--;
              });
            }

          },
        ),
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            num.toString().padLeft(2,'0'),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        buildOutlinedButton(
          icon: Icons.add,
          press: () {
            setState(() {
              num++;
            });
          },
        ),
      ],
    );
  }

  SizedBox buildOutlinedButton({
    required IconData icon,
    required VoidCallback press,
  }) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          alignment: Alignment.center,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        child: Icon(icon),
      ),
    );
  }
}
