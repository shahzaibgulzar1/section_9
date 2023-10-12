import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:section_9/data/dummy_data.dart';
//creating a provider for data that is static i.e doesnot change
  final mealProvider = Provider((ref) {
    return dummyMeals;
  });