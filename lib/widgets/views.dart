import 'package:flutter/material.dart';
import 'package:ramadanapp/model/item_model.dart';

class Views extends StatelessWidget {
  final ItemModel itemModel;
  Views({required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset: const Offset(-1, -1),
            blurRadius: 3,
            spreadRadius: 2,
            color: Colors.grey.shade500,
          ),
          const BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 5,
            spreadRadius: 1,
            color: Colors.white,
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              itemModel.image.toString(),
              // fit: BoxFit.fill,
              scale: 2,
            ),
          ),
          // const SizedBox(
          //   height: 2,
          // ),
          Expanded(
            flex: 1,
            child: Text(
              itemModel.title.toString(),
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
