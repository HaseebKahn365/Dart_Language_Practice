//shopping map from collection:

void main() {
  const bananas = 5;
  const apples = 3;
  const Map<String, String> grains = {
    'rice': '1kg',
    'wheat': '2kg',
    'corn': '3kg',
  };

  Map<String, String> shoppingList = {
    if (bananas > 0) 'bananas': '$bananas',
    if (apples > 0) 'apples': '$apples',
    //  for (var item in grains.keys) item: grains[item]!,
    ...grains,
  };

  print(shoppingList);
}
