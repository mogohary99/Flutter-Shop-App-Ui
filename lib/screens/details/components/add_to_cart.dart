import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/models/product.dart';

class AddToCart extends StatelessWidget {
  final Product product;

  const AddToCart({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 58,
          margin: EdgeInsets.only(right: kDefaultPadding / 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(
                color: product.color,
              )),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/add_to_cart.svg',
              color: product.color,
            ),
          ),
        ),
        Expanded(
          child: MaterialButton(
            height: 50,
            onPressed: () {},
            color: product.color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            child: const Text(
              'Buy Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        )
      ],
    );
  }
}
