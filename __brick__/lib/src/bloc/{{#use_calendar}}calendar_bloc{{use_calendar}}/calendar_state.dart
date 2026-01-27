part of 'calendar_bloc.dart';

@freezed
sealed class CalendarState with _$CalendarState {
  const factory CalendarState({
   required DateTime selectedDate,
   required DateTime focusedDate,
  }) = _CalendarState;
}
