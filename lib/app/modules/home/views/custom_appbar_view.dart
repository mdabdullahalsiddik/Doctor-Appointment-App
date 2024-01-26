import 'package:easy_health/static/color/all_color.dart';
import 'package:easy_health/widgets/bottom/custom_bottom.dart';
import 'package:easy_health/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final void Function()? onTap;
  const CustomAppBar({super.key, this.onPressed, this.onTap});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height * .50,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        gradient: LinearGradient(
          colors: [
            AllColors.whiteColor,
            AllColors.appBarColor,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            ListTile(
              leading: SizedBox(
                height: 50,
                width: 50,
                child: Image.asset("assets/images/logo.png"),
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Current Location',
                    fontSize: 20,
                    color: AllColors.blackColor.withOpacity(0.5),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: AllColors.blueColor,
                      ),
                      CustomText(
                        text: 'Sylhet, BD',
                        color: AllColors.blackColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  )
                ],
              ),
              trailing: InkWell(
                onTap: onPressed ?? () {},
                child: const CircleAvatar(
                  backgroundColor: AllColors.whiteColor,
                  child: Icon(
                    Icons.menu,
                    color: AllColors.blackColor,
                  ),
                ),
              ),
            ),
            CustomText(
              maxLines: 20,
              text:
                  "স্বদেশ সাতক্ষীরার একটি এনজিওI স্বদেশ তার গ্রাহকদের একটি সম্পূর্ণ স্বাস্থ্য সুরক্ষা পরিষেবা দেওয়ার জন্য মাই স্মার্ট হেলথকেয়ার লিমিটেডের সাথে চুক্তি স্বাক্ষর করেছে। স্বদেশ এর গ্রাহকরা 'স্মার্ট ক্লিনিক' চিহ্নযুক্ত হাসপাতালে নগদের মাধ্যমে আউটডোর বিল পেমেন্ট করলে বিনামুল্যে অথবা ইএমআই (মাসিক কিস্তিতে) সিস্টেমে পাবেন একটি স্মার্ট স্বাস্থ্য কার্ড যা দিয়ে পরবর্তী এক বছর উক্ত হাসপাতালে বিভিন্ন রকম স্বাস্থ্য পরিষেবা উপভোগ করতে পারবেন।",
              color: AllColors.blackColor.withOpacity(
                0.7,
              ),
              textAlign: TextAlign.center,
              fontSize: 18,
            ),
            CustomBottom(
              onTap: onTap,
              text: "More",
            )
          ],
        ),
      ),
    );
  }
}
