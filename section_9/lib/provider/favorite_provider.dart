
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:section_9/models/meal.dart';

// creating provider for data that is dynamic i.e that changes
class FavoriteMealsNotifier extends StateNotifier
<List<Meal>>{
   FavoriteMealsNotifier() : super([]);
   bool toggleMealFavoriteStatus(Meal meal){
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state = state.where((m)=> m.id != meal.id).toList();
      return false;
    }
    else {
      state = [...state , meal ];
      return true;
    }
   }
}

final favoriteMealsProvider = StateNotifierProvider<FavoriteMealsNotifier , List<Meal>>((ref) {
return FavoriteMealsNotifier();
}
);
