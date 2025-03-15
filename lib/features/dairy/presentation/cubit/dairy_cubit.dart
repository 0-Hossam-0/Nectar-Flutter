import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'dairy_state.dart';

class DairyCubit extends Cubit<DairyState> {
  DairyCubit() : super(DairyInitial());
}
