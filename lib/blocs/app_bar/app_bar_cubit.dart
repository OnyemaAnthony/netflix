import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'app_bar_state.dart';

class AppBarCubit extends Cubit<double> {
  AppBarCubit() : super(0);

  void setOffset(double offset)=>emit(offset);
}
