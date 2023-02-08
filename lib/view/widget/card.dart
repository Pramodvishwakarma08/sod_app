import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Helper/colors.dart';
import '../../Helper/widgets.dart';

Widget availabilityCard(context, model, i, onPress) {
  return InkWell(
    onTap: onPress,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Stack(
        children: [
          Card(
            elevation: 3,
            shape: const StadiumBorder(),
            child: Container(
              padding: const EdgeInsets.only(left: 85, right: 20),
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        model[i]['name'],
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(model[i]['date']),
                    ],
                  ),
                  Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                        color: colors.primary,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Center(
                      child: Text(
                        "View",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
          CircleAvatar(
            radius: 40,
            child: Image.asset(model[i]['image']),
          ),
        ],
      ),
    ),
  );
}


Widget jobDetailsCard(context, model, i,  onPress, bool isNote) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15.0),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3,
      child: Container(
        padding: const EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Card(
                    color: colors.secondary1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        "${model[i]['day']}",
                        style: const TextStyle(
                            color: colors.secondary,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "Time",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subTitleText("${model[i]['time']}", context, 14),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Hours",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subTitleText("${model[i]['hours']}", context, 14),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Date",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subTitleText("${model[i]['date']}", context, 13),
                  ],
                ),
              ],
            ),
            subTitleText("Description", context, 13),
            const SizedBox(
              height: 10,
            ),
            Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                      "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content",
                      maxLines: 4,
                      style: TextStyle(color: colors.subTxtClr, fontSize: 13),
                    ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: onPress,
                    child: Row(
                      children:  [
                        isNote ?  const Text(
                          "View Notes",
                          style: TextStyle(color: colors.secondary,
                              fontWeight: FontWeight.w600),
                        ):
                        const Text(
                          "Submit Notes",
                          style: TextStyle(
                              color: colors.secondary,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: colors.secondary,
                          size: 18,
                        )
                      ],
                    )
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}

