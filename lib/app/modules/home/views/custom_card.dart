import 'package:easy_health/static/color/all_color.dart';
import 'package:easy_health/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.image,
    this.nameText,
    this.categoryText,
    this.numberText,
    this.onTap,
  });

  final String image;
  final String? nameText;
  final String? categoryText;
  final String? numberText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap ?? () {},
      child: SizedBox(
        height: size.height * 0.200,
        width: size.width * 0.65,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.074,
                  width: size.width * 0.20,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(image),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.05,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: nameText ?? "Dr. Peater Parker",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomText(
                        text: categoryText ?? "Physiatrist",
                        color: AllColors.blackColor.withOpacity(0.5),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.call,
                            size: 14,
                            color: AllColors.blueColor,
                          ),
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          CustomText(
                            text: numberText ?? "017417542354",
                            color: AllColors.blueColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
