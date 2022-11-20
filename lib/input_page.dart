import 'package:bmi_app/result_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_app/reusable.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_app/constant.dart';
import 'package:bmi_app/hslider.dart';
import 'package:bmi_app/iconcontent.dart';
import 'buttomButton.dart';
import 'bmi_brain.dart';

enum Gender {
  male,
  female,
  non,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.non;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0a0e21),
        appBar: AppBar(
          backgroundColor: const Color(0xff0a0e21),
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? kPinkColor
                          : kInActiveColor,
                      cardChild: const IconContent(
                        icon: Icons.male,
                        label: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? kPinkColor
                          : kInActiveColor,
                      cardChild: const IconContent(
                        icon: Icons.female,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReuseableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: kTextDesign,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          kHeight.toString(),
                          style: kLargeTextDesign,
                        ),
                        const Text(
                          'cm',
                          style: kTextDesign,
                        ),
                      ],
                    ),
                    const HSlider()
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCard(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: kTextDesign,
                          ),
                          Text(
                            kWeight.toString(),
                            style: kLargeTextDesign,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedButton(
                                icon: Icons.remove,
                                onPress: () {
                                  setState(() {
                                    kWeight--;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              RoundedButton(
                                icon: Icons.add,
                                onPress: () {
                                  setState(() {
                                    kWeight++;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: kTextDesign,
                          ),
                          Text(
                            kAge.toString(),
                            style: kLargeTextDesign,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedButton(
                                icon: Icons.remove,
                                onPress: () {
                                  setState(() {
                                    kAge--;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              RoundedButton(
                                icon: Icons.add,
                                onPress: () {
                                  setState(() {
                                    kAge++;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              buttonTitle: 'CALCULATE',
              tapAction: () {
                BMIBRAIN bmiBrain = BMIBRAIN(height: kHeight, weight: kWeight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            getAnswer: bmiBrain.getAnswer(),
                            getResult: bmiBrain.getResult(),
                            calculate: bmiBrain.calculateBMI(),
                          )),
                );
              },
            )
          ],
        ));
  }
}
