import 'package:bloc/bloc.dart';
import 'package:oro_task/model/selection_model.dart';

class ChangeCubit extends Cubit<ValueModel> {
  ChangeCubit() : super(rampResult);

  void change(ValueModel val) {
    rampResult = val;
    emit(val);
  }
}
