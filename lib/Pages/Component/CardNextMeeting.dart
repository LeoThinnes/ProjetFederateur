import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/Pages/Component/TitleHeader.dart';
import 'package:untitled/Styles/colors.dart';

class CardNextMeeting extends StatefulWidget {
  const CardNextMeeting({Key? key}) : super(key: key);

  @override
  State<CardNextMeeting> createState() => _CardNextMeetingState();
}

class _CardNextMeetingState extends State<CardNextMeeting> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0,top: 8.0, right: 0.0, bottom: 8.0),
      child: Material(
        child: Expanded(
          child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: AppColors.lightGrey,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Rendez-vous',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.red,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    SvgPicture.asset('Images/history_appointment.svg'),
                  ],
                ),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return const ListTile(
                        title: Text(
                          'Le jeudi 10 Mars 2022 à 10h00',
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
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
