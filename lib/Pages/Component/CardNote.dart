import 'package:flutter/material.dart';

class CardNote extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Card(
          child: SizedBox(
              width: 230,
              height: 100,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.calendar_today,
                              color: Colors.blue,
                            ),
                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5, left: 5, right: 5, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text("13/01/2022",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: 14)),
                        Expanded(child: Text("")),
                        Icon(Icons.delete, color: Colors.red),
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }

  void click() {}
}
