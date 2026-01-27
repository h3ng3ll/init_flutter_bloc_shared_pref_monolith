import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../bloc/calendar_bloc/calendar_bloc.dart';
import '../../resources/colors/app_colors.dart';
import '../../resources/text/app_typography_theme.dart';
import '../../../../routes/app_routes_paths.dart';
import '../../../../utils/extensions/period_ext.dart';
import '../../../../utils/extensions/today_check_in_ext.dart';
import 'widgets/custom_header.dart';
import 'widgets/day_default_builder.dart';
import 'widgets/day_outside_builder.dart';
import 'widgets/day_selected_builder.dart';

class BuildCalendar extends StatefulWidget {
  final Widget? Function(
    BuildContext,
    DateTime,
    DateTime,
  )?
  defaultBuilder;

  const BuildCalendar({
    super.key,
    this.defaultBuilder,
  });

  @override
  State<BuildCalendar> createState() => _BuildCalendarState();
}

class _BuildCalendarState extends State<BuildCalendar> {
  Future<void> onPickDate() async {
    // final calendarBloc = context.read<CallendarBloc>();
    // final DateTime? res = await showDialog(
    //   context: context,
    //   builder: (_) => CustomDatePickerDialog(
    //     firstDate: DateTime.now().copyWith(
    //       year: DateTime.now().year - 25,
    //     ),
    //     lastDate: DateTime.now().copyWith(
    //       year: DateTime.now().year + 25,
    //     ),
    //     currentDate: calendarBloc.state.focusedDate,
    //   ),
    // );
    // if (res == null || !context.mounted) return;
    //
    // calendarBloc.add(
    //   CallendarEvent.changeView(
    //     focusedDate: calendarBloc.state.focusedDate.copyWith(
    //       month: res.month,
    //       year: res.year,
    //     ),
    //   ),
    // );
  }

  void onNextMonth() {
    context.read<CalendarBloc>().add(
      CalendarEvent.next(),
    );
  }

  void onPrevious() {
    context.read<CalendarBloc>().add(
      CalendarEvent.previous(),
    );
  }

  void onDaySelected(
    BuildContext context,
    DateTime focusedDay,
    DateTime selectedDay,
  ) {
    context.goNamed(
      AppRoutesPaths.calendar,
      extra: selectedDay,
    );
    context.read<CalendarBloc>().add(
      CalendarEvent.selectDate(
        focusedDate: focusedDay,
        selectedDate: selectedDay,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTypographyTheme.of(context);
    final weekdayStyle = textTheme.r16;
    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) {
        return GestureDetector(
          child: Container(
            height: 500,
            padding: .symmetric(
              vertical: 15.0,
            ),
            // borderRadius: .circular(
            //   25.0,
            // ),
            child: Column(
              children: [
                Gap(20.0),
                CustomHeader(
                  month:
                      DateFormat(
                        'MMMM yyyy',
                      ).format(
                        state.focusedDate,
                      ),
                  onPickDate: onPickDate,
                  onNextMonth: onNextMonth,
                  onPreviousMonth: onPrevious,
                ),

                TableCalendar(
                  headerVisible: false,
                  daysOfWeekVisible: true,
                  selectedDayPredicate: (day) {
                    return isSameDay(
                      day,
                      state.focusedDate,
                    );
                  },
                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekdayStyle: weekdayStyle,
                    dowTextFormatter: (day, _) => DateFormat('EEE')
                        .format(
                          day,
                        )
                        .toLowerCase(),
                    weekendStyle: weekdayStyle,
                    decoration: BoxDecoration(
                      // color: AppColors.black,
                      border: Border(
                        bottom: BorderSide(
                          color: AppColors.metroBlue,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                  daysOfWeekHeight: 36,
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  rowHeight: 50.0,
                  onPageChanged: (DateTime focusedDay) {
                    context.read<CalendarBloc>().add(
                      CalendarEvent.changeView(
                        focusedDate: focusedDay,
                      ),
                    );
                  },
                  onDaySelected: (selectedDate, focusedDay) => onDaySelected(
                    context,
                    focusedDay,
                    selectedDate,
                  ),
                  availableGestures: AvailableGestures.verticalSwipe,
                  focusedDay: state.focusedDate,
                  firstDay: DateTime.now().subtract(
                    Duration(
                      days: 1250,
                    ),
                  ),
                  lastDay: DateTime.now().add(
                    Duration(
                      days: 1250,
                    ),
                  ),
                  calendarBuilders: CalendarBuilders(
                    todayBuilder:
                        (
                          context,
                          day,
                          focused,
                        ) => DayDefaultBuilder(
                          day: day,
                        ),
                    defaultBuilder:
                        widget.defaultBuilder ??
                        (
                          context,
                          day,
                          focused,
                        ) => DayDefaultBuilder(
                          day: day,
                        ),
                    outsideBuilder:
                        (
                          context,
                          day,
                          focused,
                        ) => DayOutsideBuilder(
                          day: day,
                        ),
                    selectedBuilder:
                        (
                          context,
                          day,
                          focused,
                        ) => DaySelectedBuilder(
                          day: day,
                        ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
