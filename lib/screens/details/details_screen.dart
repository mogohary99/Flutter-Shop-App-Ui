import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_ui/screens/details/components/add_to_cart.dart';
import 'package:shop_ui/screens/details/components/counter_with_fav_button.dart';
import '/models/product.dart';
import '/screens/details/components/product_title_with_image.dart';

import '../../constants.dart';
import 'components/color_and_size.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: size.height * 0.5,
              width: size.width,
              padding: const EdgeInsets.only(
                right: kDefaultPadding,
                left: kDefaultPadding,
                top: kDefaultPadding * 4,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const ColorAndSize(),
                  const SizedBox(height: kDefaultPadding/2),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                    child: Text(
                      product.description,
                      style: const TextStyle(
                        height: 1.5,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                  const SizedBox(height: kDefaultPadding/2),
                  CounterWithFavButton(),
                  const SizedBox(height: kDefaultPadding/2),
                  AddToCart(product: product,),
                ],
              ),
            ),
          ),
          ProductTitleWithImage(
            product: product,
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/cart.svg',
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: kDefaultPadding / 4,
        )
      ],
    );
  }
}


