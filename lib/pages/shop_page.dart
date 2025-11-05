import 'package:ecommreceapp/models/cart.dart';
import 'package:ecommreceapp/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //method to add new shoe to cart
  void addShoeToCart(Shoe shoe) {
   Provider.of<Cart> (context, listen: false).addItemToCart(shoe);

    //alert users show was successfully added
    showDialog(context: context, 
    builder: (context) => AlertDialog(
      title: Text("Successfully added"),
      content: Text('Check your cart'),
    ),
    
    );
  }
  @override
  Widget build(BuildContext context) {
    return Consumer <Cart>(builder: (context, value, child) =>  
    Column(
      children: [
        // Search bar
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        // Message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            'Everyone flies... some fly longer than others',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),

        // Hot picks
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Picks 🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),

        // Shoe list for sale 
        Expanded(
          child: ListView.builder(
            itemCount: value.getShoeList().length, // Example count
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              // Example shoe data from  shop list
              Shoe shoe = value.getShoeList()[index];

              //return the shoe 
              return ShoeTile(
                shoe: shoe,
                onTap:() => addShoeToCart(shoe),
                );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25 , right: 25),
          child: Divider( color: Colors.grey[100],
          ),
        )
      ],
    )
    );
  }
}