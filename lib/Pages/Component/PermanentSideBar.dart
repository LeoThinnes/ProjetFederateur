import 'package:flutter/material.dart';
import 'package:untitled/Routes/route.dart';
import 'package:untitled/Styles/colors.dart';

class PermanentSideBar extends StatelessWidget {
  final String routing;

  PermanentSideBar({this.routing = home});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: AppColors.darkGray,
      child: Column(
        children: <Widget>[
          SizedBox(height: 70),
          Text(
            'App conseiller',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.none),
          ),
          SizedBox(height: 70),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 50,
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, home);
                      },
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                            if (this.routing == home)
                              return AppColors.greenbtn;
                            return AppColors
                                .darkGray; // Use the component's default.
                          },
                        ),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                  right: 9.5, top: 1.6),
                              child: Icon(Icons.home, color: Colors.white),
                            ),
                            Text("Home",
                                style: TextStyle(color: Colors.white)),
                          ]),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 50,
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, folders);
                      },
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                            if (this.routing == folders)
                              return AppColors.green;
                            return AppColors
                                .darkGray; // Use the component's default.
                          },
                        ),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const <Widget>[
                            Padding(
                              padding:
                              EdgeInsets.only(right: 9.5, top: 1.6),
                              child: Icon(Icons.account_circle,
                                  color: Colors.white),
                            ),
                            Text("Gestion des dossiers",
                                style: TextStyle(color: Colors.white)),
                          ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
