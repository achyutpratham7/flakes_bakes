import 'package:flutter/material.dart';

class PopularList extends StatelessWidget {
  const PopularList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Wrap(
      children: List.generate(10, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: Image.asset(
                            "assets/images/cakes/cartoon_cake.png",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            "Birthday Cake",
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        );
      }),
    );
  }
}
