part of 'calendar_bloc.dart';

@freezed
class CalendarEvent with _$CalendarEvent {

  const factory CalendarEvent.next() = _Next;

  const factory CalendarEvent.previous() = _Previous;

  const factory CalendarEvent.selectDate({
    required DateTime focusedDate,
    required DateTime selectedDate,
  }) = _SelectDate;

  const factory CalendarEvent.changeView({
    required DateTime focusedDate,
  }) = _ChangeView;
}
