import 'package:carousel_slider/carousel_slider.dart';

import 'package:easy_health/app/modules/home/views/custom_appbar_view.dart';
import 'package:easy_health/app/modules/home/views/custom_card.dart';
import 'package:easy_health/static/color/all_color.dart';
import 'package:easy_health/widgets/bottom/custom_bottom.dart';
import 'package:easy_health/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        endDrawer: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: AllColors.blueColor,
                ),
                accountName: CustomText(
                  text: "Siddik",
                  color: AllColors.whiteColor,
                ),
                accountEmail: CustomText(
                  text: "sid@gmail.com",
                  color: AllColors.whiteColor,
                ),
              ),
              InkWell(
                onTap: () {
                  controller.profile();
                },
                child: const ListTile(
                  leading: Icon(
                    Icons.settings,
                  ),
                  title: CustomText(
                    text: "Setting",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Builder(builder: (context) {
                  return CustomAppBar(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                  );
                }),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 26,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomText(
                            text: "Committee",
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          InkWell(
                            onTap: () {},
                            child: const CustomText(
                              text: "See all",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AllColors.blueColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: size.height * 0.150,
                            width: size.width * 0.85,
                            child: ListView.builder(
                              shrinkWrap: true,
                              primary: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Row(
                                  children: [
                                    CustomCard(
                                      onTap: () {
                                        controller.appoint();
                                      },
                                      image:
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgU8vxCbS-oZVE_MZMeo-DF_msSyQnf_yyBw&usqp=CAU',
                                      nameText: "Dr. Peater Parker",
                                      categoryText: "Physiatrist",
                                      numberText: "017417542354",
                                    ),
                                    SizedBox(
                                      width: size.width * 0.02,
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.20,
                        child: ListView.builder(
                          shrinkWrap: true,
                          primary: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: const Icon(
                                Icons.stars_sharp,
                                size: 30,
                              ),
                              title: const CustomText(
                                text: "Heathcard",
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              subtitle: const CustomText(
                                text: "Free healthcard for sodesh",
                              ),
                              trailing: Container(
                                height: size.height * 0.09,
                                width: size.width * 0.09,
                                decoration: const BoxDecoration(
                                  color: AllColors.blackColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: AllColors.whiteColor,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomText(
                            text: "Notice & Update",
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          InkWell(
                            onTap: () {},
                            child: const CustomText(
                              text: "See all",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AllColors.blueColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      CarouselSlider.builder(
                        itemCount: 4,
                        itemBuilder: (context, index, realIndex) {
                          return CarouselSlider(
                            items: [
                              Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgU8vxCbS-oZVE_MZMeo-DF_msSyQnf_yyBw&usqp=CAU",
                              ),
                              Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgU8vxCbS-oZVE_MZMeo-DF_msSyQnf_yyBw&usqp=CAU",
                              ),
                            ],
                            options: CarouselOptions(
                              height: size.height * 0.15,
                            ),
                          );
                        },
                        options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          viewportFraction: 0.9,
                          aspectRatio: 2.0,
                          initialPage: 2,
                        ),
                      ),
                      Container(
                        height: size.height * .275,
                        decoration: const BoxDecoration(
                          color: AllColors.appBarColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 26,
                          ),
                          child: Column(
                            children: [
                              CustomText(
                                overflow: TextOverflow.ellipsis,
                                maxLines: size.height > 1000 ? 3 : 6,
                                text:
                                    "প্রতিটা গ্রাম এবং শহরের প্রত্যেক কমিউনিটিতে একজন করে উদ্যোক্তা তৈরীর লক্ষে কাজ শুরু করেছে নগদ এবং মাই স্মার্ট হেলথকেয়ার লিমিটেড। উদ্যোক্তা হতে আগ্রহীদের সকল রকম ট্রেনিং এবং প্রয়োজনে আমাদের সহযোগী এনজিও পার্টনার থেকে উদ্যোক্তা ঋণের ব্যবস্থা করে দেওয়া হবে। আপনি আমাদের সাথে কাজ করতে চাইলে নিবন্ধন করুন।",
                                color: AllColors.blackColor.withOpacity(
                                  0.7,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: size.height * 0.015,
                              ),
                              CustomBottom(
                                onTap: () {},
                                text: "Agent Registration",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
