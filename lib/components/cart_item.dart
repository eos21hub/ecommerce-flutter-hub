import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  final dynamic shoe;

  const CartItem({super.key,required this.shoe });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.shoe.imagePath),
      title: Text(widget.shoe.name),
      subtitle: Text(widget.shoe.prices),
    );
  }
}