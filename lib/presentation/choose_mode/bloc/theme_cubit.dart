import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class Themecubit extends HydratedCubit<ThemeMode> {
  Themecubit():super(ThemeMode.system);
  void updatetheme(ThemeMode themeMode)=>emit(themeMode);
  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
