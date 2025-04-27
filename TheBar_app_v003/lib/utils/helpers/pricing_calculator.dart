
class TPricingCalculatorclass {
  
  /// calculate price based om tax and delivery cost
  static double calculateTotalPrice(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount+ shippingCost;

    return totalPrice;

  }

  /// Calculate shipping Cost

  static String calculateShippingCost( double productPrice, String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// Calculate tax

  static String calculateTax(double productPrice, String location){
    double taxRate= getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
  return taxAmount.toStringAsFixed(2);

  }

static double getTaxRateForLocation(String location){
  //lookup the tax rate for the given location from tax rate api or database
  //return appropriate tax rate
  return 0.15;
}
  
static double getShippingCost(String location){
  //change for the rate for each delivery
  //will need to calculate based on distance, and location
  return 50.00;
}

// sum all cart values and return total amount

//static double calculateCartTotal(CartModel cart){
  //return cart.items.map((e)=>e.price).fold(0,(previousPrice,currentPrice)=> previousPrice +(currentPrice ?? 0));
//}
}