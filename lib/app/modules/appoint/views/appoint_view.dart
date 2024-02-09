import 'package:easy_health/static/color/all_color.dart';
import 'package:easy_health/widgets/bottom/custom_bottom.dart';
import 'package:easy_health/widgets/text/custom_text.dart';
import 'package:easy_health/widgets/textfield/custom_textfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/appoint_controller.dart';

class AppointView extends GetView<AppointController> {
  const AppointView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AllColors.appBarColor,
          elevation: 0.0,
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              controller.back();
            },
            child: const Padding(
              padding: EdgeInsets.only(
                left: 10,
                top: 10,
              ),
              child: CircleAvatar(
                backgroundColor: AllColors.whiteColor,
                child: Icon(
                  Icons.arrow_back,
                  color: AllColors.blackColor,
                ),
              ),
            ),
          ),
          title: const CustomText(
            text: "Appoint Details",
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * .25,
                  decoration: const BoxDecoration(
                    color: AllColors.appBarColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: size.height * 0.20,
                        width: size.width * 0.35,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgU8vxCbS-oZVE_MZMeo-DF_msSyQnf_yyBw&usqp=CAU",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Name",
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: "Dr. Cameron Compton",
                            fontSize: 13,
                          ),
                          CustomText(
                            text: "Qualification",
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: "Provident ex non et",
                            fontSize: 13,
                          ),
                          CustomText(
                            text: "Institute",
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: "Omanis eyrotn",
                            fontSize: 13,
                          ),
                          CustomText(
                            text: "Mobile",
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: "+88 01452156324",
                            fontSize: 13,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 26,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        text: "Appoint Form",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      const CustomText(
                        text:
                            "We will catch you as early as we receive the appointment",
                        fontSize: 12,
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      const CustomTextFromField(
                        hintText: "Enter your name",
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      const CustomTextFromField(
                        hintText: "Enter your mobile number",
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Obx(() => Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AllColors.blackColor.withOpacity(0.5)),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            width: size.width,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DropdownButton<String>(
                                hint: CustomText(
                                  text: "Select your gender",
                                  color: AllColors.blackColor.withOpacity(0.5),
                                ),
                                value: controller.selectGender.toString() == ""
                                    ? null
                                    : controller.selectGender.toString(),
                                isExpanded: true,
                                items: <String>["Male", "Female"]
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  controller.gender(value.toString());
                                },
                              ),
                            ),
                          )),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Obx(() => Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AllColors.blackColor.withOpacity(0.5)),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            width: size.width,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DropdownButton<String>(
                                hint: CustomText(
                                  text: "Select your gender",
                                  color: AllColors.blackColor.withOpacity(0.5),
                                ),
                                value: controller.selectBlood.toString() == ""
                                    ? null
                                    : controller.selectBlood.toString(),
                                isExpanded: true,
                                items: <String>[
                                  "O+",
                                  "O-",
                                  "A+",
                                  "A-",
                                  "B+",
                                  "B-",
                                  "AB+",
                                  "AB-"
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  controller.blood(value.toString());
                                },
                              ),
                            ),
                          )),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      const CustomTextFromField(
                        hintText: "Enter age",
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      const CustomTextFromField(
                        maxLines: 5,
                        hintText: "Write your problem",
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      CustomBottom(
                        text: "Submit Form",
                        onTap: () {},
                      )
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
