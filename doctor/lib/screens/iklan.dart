import 'package:flutter/material.dart';

class iklan extends StatelessWidget {
  final List<Map<String, dynamic>> promosi = [
    {
      "Nama": "Dr. Andi",
      "Doktor": "Specialist Dencitist",
    },
    {
      "Nama": "Dr. Wade Brune",
      "Doktor": "Specialist Neurology",
    },
    {
      "Nama": "Dr. Al Lif",
      "Doktor": "Specialist Tooth",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: promosi.map((data) {
            return Card(
              margin: const EdgeInsets.only(left: 20, top: 20, right: 5),
              child: Column(
                children: [
                  Container(
                    width: 330,
                    height: 130,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(218, 221, 252, 1.0),
                        image: DecorationImage(
                          image: AssetImage("images/ads.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                  )
                ],
              ),
            );
          }).toList(),
        ));
  }
}
