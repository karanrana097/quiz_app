import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'quiz_logic_state.dart';

class QuizLogicCubit extends Cubit<QuizLogicState> {
  QuizLogicCubit() : super(QuizLogicInitial());
}
