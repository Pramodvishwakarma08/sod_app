import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Helper/colors.dart';
import '../../models/catelog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: ListTile(
          leading: Image.asset('assets/images/niraj.png'),
          title: Text(item.name),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.price,
                style: TextStyle(color: colors.golden, fontSize: 15),
              ),
              Text(
                item.desc,
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
