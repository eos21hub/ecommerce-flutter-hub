import 'package:ecommreceapp/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale 
  List<Shoe> shoeShop = [
    Shoe(name: 'AIR', prices: '363', description: 'The signature shoe.', imagePath: 'lib/images/brownish air.jpg'),
     Shoe(name: 'JORDANS', prices: '530', description: 'Enhances your wear .', imagePath: 'lib/images/jordan.jpg'),
      Shoe(name: 'PUMA', prices: '260', description: 'A secure midfoot strap', imagePath: 'lib/images/puma.jpg'),
       Shoe(name: 'AIR FORCE', prices: '420', description: 'Paired with soft walk', imagePath: 'lib/images/black ari.jpg')
  ];

  // list of items user put in cart
  List<Shoe> userCart = [];
  
  //get list of shoe for sale 
  List<Shoe> getShoeList () {
    return shoeShop;
  }

  // get carts
  List<Shoe> getUserCart () {
    return userCart;
  }

  // add items to cart
  void addItemToCart (Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removerItemFromCart (Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}