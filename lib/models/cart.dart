import 'package:basic_ecommerce_app/models/sigma.dart';

class Cart {
  //list of sigmas
  List<Sigma> sigmaShop = [
    Sigma(
        name: "Alpha Wolf",
        description: "a true alpha.",
        imagePath: "assets/images/alpha_logo.png",
        price: "99999")
  ];

//list of user items
  List<Sigma> userCart = [];

//get list of sigmas for sale
  List<Sigma> getSigmas() {
    return sigmaShop;
  }

//get cart
  List<Sigma> getCart() {
    return userCart;
  }

//add items to the cart
  void addToCart(Sigma sigma) {
    userCart.add(sigma);
  }

  //remove item from cart
  void removeFromCart(Sigma sigma) {
    userCart.remove(sigma);
  }
}
