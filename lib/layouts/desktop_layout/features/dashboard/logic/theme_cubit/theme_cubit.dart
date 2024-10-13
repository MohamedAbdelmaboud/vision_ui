import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
  static ThemeCubit get(context) => BlocProvider.of(context);
  ThemeMode themeMode = ThemeMode.light;
  changeTheme() {
    if (themeMode == ThemeMode.light) {
      themeMode = ThemeMode.dark;
    } else if (themeMode == ThemeMode.dark) {
      themeMode = ThemeMode.light;
    }
    emit(ThemeSuccsessState());
  }

  isDarkMode() {
    return themeMode == ThemeMode.dark;
  }
}

isDarkMode(BuildContext context) {
  return ThemeCubit.get(context).isDarkMode();
}
