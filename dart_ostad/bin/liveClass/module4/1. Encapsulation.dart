import 'restaurant.dart';

main() {
  Restaurant kfc = Restaurant('KFC');
  print(kfc.name);

  print("\n");

  kfc.order('Chicken Fry');

  print("\n");

  print(kfc.restaurantId);
  kfc.setRestaurantId = 1996;
  print(kfc.restaurantId);
}
