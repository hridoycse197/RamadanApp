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
            blurRadius: 5,
            spreadRadius: 1,
            color: Colors.grey.shade500,
          ),
          BoxShadow(
            offset: const Offset(-2, -2),
            blurRadius: 15,
            spreadRadius: 2,
            color: Colors.white,
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            itemModel.image.toString(),
            scale: 2,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            itemModel.title.toString(),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
    ;
  }
}
