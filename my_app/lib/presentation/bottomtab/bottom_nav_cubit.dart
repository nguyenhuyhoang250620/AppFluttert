// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavCubit extends Cubit<int> {
  BottomNavCubit() : super(0);

  /// update index function to update the index onTap in BottomNavigationBar
  void updateIndex(int index) => emit(index);

  /// for navigation button on single page
  void FeedScreen() => emit(0);
  void ContentScreen() => emit(1);
  void MarketScreen() => emit(2);
  void SearchScreen() => emit(3);
  void CalendarScreen() => emit(4);
}
