import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'beverages_state.dart';

class BeveragesCubit extends Cubit<BeveragesState> {
  BeveragesCubit() : super(BeveragesInitial());
}
