import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_event.dart';

part 'calendar_state.dart';

part 'calendar_bloc.freezed.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc({
    bool minimized = false,
    DateTime? initialDate,
  }) : super(
         CalendarState(
           selectedDate: initialDate ?? DateTime.now(),
           focusedDate: DateTime.now(),
         ),
       ) {
    on<_SelectDate>(_selectDate);
    on<_Next>(_next);
    on<_Previous>(_previous);
    on<_ChangeView>(_changeView);
  }

  void _selectDate(_SelectDate event, emit) {
    emit(
      state.copyWith(
        selectedDate: event.selectedDate,
        focusedDate: event.focusedDate,
      ),
    );
  }

  void _changeView(_ChangeView event, emit) {
    emit(
      state.copyWith(
        focusedDate: event.focusedDate,
      ),
    );
  }

  DateTime _prevMonth(DateTime date) {
    return DateTime(
      date.year,
      date.month - 1,
      date.day,
    );
  }

  DateTime _nextMonth(DateTime date) {
    return DateTime(
      date.year,
      date.month + 1,
      date.day,
    );
  }

  // DateTime _prevWeek(DateTime date) {
  //   return date.subtract(
  //     const Duration(
  //       days: 7,
  //     ),
  //   );
  // }
  //
  // DateTime _nextWeek(DateTime date) {
  //   return date.add(
  //     const Duration(
  //       days: 7,
  //     ),
  //   );
  // }

  void _previous(_Previous event, emit) {
    final newDate = _prevMonth(
      state.focusedDate,
    );

    emit(
      state.copyWith(
        focusedDate: newDate,
      ),
    );
  }

  void _next(_Next event, emit) {
    final newDate = _nextMonth(
      state.focusedDate,
    );

    emit(
      state.copyWith(
        focusedDate: newDate,
      ),
    );
  }
}
