// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CalendarEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CalendarEvent()';
}


}

/// @nodoc
class $CalendarEventCopyWith<$Res>  {
$CalendarEventCopyWith(CalendarEvent _, $Res Function(CalendarEvent) __);
}


/// Adds pattern-matching-related methods to [CalendarEvent].
extension CalendarEventPatterns on CalendarEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Next value)?  next,TResult Function( _Previous value)?  previous,TResult Function( _SelectDate value)?  selectDate,TResult Function( _ChangeView value)?  changeView,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Next() when next != null:
return next(_that);case _Previous() when previous != null:
return previous(_that);case _SelectDate() when selectDate != null:
return selectDate(_that);case _ChangeView() when changeView != null:
return changeView(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Next value)  next,required TResult Function( _Previous value)  previous,required TResult Function( _SelectDate value)  selectDate,required TResult Function( _ChangeView value)  changeView,}){
final _that = this;
switch (_that) {
case _Next():
return next(_that);case _Previous():
return previous(_that);case _SelectDate():
return selectDate(_that);case _ChangeView():
return changeView(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Next value)?  next,TResult? Function( _Previous value)?  previous,TResult? Function( _SelectDate value)?  selectDate,TResult? Function( _ChangeView value)?  changeView,}){
final _that = this;
switch (_that) {
case _Next() when next != null:
return next(_that);case _Previous() when previous != null:
return previous(_that);case _SelectDate() when selectDate != null:
return selectDate(_that);case _ChangeView() when changeView != null:
return changeView(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  next,TResult Function()?  previous,TResult Function( DateTime focusedDate,  DateTime selectedDate)?  selectDate,TResult Function( DateTime focusedDate)?  changeView,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Next() when next != null:
return next();case _Previous() when previous != null:
return previous();case _SelectDate() when selectDate != null:
return selectDate(_that.focusedDate,_that.selectedDate);case _ChangeView() when changeView != null:
return changeView(_that.focusedDate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  next,required TResult Function()  previous,required TResult Function( DateTime focusedDate,  DateTime selectedDate)  selectDate,required TResult Function( DateTime focusedDate)  changeView,}) {final _that = this;
switch (_that) {
case _Next():
return next();case _Previous():
return previous();case _SelectDate():
return selectDate(_that.focusedDate,_that.selectedDate);case _ChangeView():
return changeView(_that.focusedDate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  next,TResult? Function()?  previous,TResult? Function( DateTime focusedDate,  DateTime selectedDate)?  selectDate,TResult? Function( DateTime focusedDate)?  changeView,}) {final _that = this;
switch (_that) {
case _Next() when next != null:
return next();case _Previous() when previous != null:
return previous();case _SelectDate() when selectDate != null:
return selectDate(_that.focusedDate,_that.selectedDate);case _ChangeView() when changeView != null:
return changeView(_that.focusedDate);case _:
  return null;

}
}

}

/// @nodoc


class _Next implements CalendarEvent {
  const _Next();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Next);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CalendarEvent.next()';
}


}




/// @nodoc


class _Previous implements CalendarEvent {
  const _Previous();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Previous);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CalendarEvent.previous()';
}


}




/// @nodoc


class _SelectDate implements CalendarEvent {
  const _SelectDate({required this.focusedDate, required this.selectedDate});
  

 final  DateTime focusedDate;
 final  DateTime selectedDate;

/// Create a copy of CalendarEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectDateCopyWith<_SelectDate> get copyWith => __$SelectDateCopyWithImpl<_SelectDate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectDate&&(identical(other.focusedDate, focusedDate) || other.focusedDate == focusedDate)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate));
}


@override
int get hashCode => Object.hash(runtimeType,focusedDate,selectedDate);

@override
String toString() {
  return 'CalendarEvent.selectDate(focusedDate: $focusedDate, selectedDate: $selectedDate)';
}


}

/// @nodoc
abstract mixin class _$SelectDateCopyWith<$Res> implements $CalendarEventCopyWith<$Res> {
  factory _$SelectDateCopyWith(_SelectDate value, $Res Function(_SelectDate) _then) = __$SelectDateCopyWithImpl;
@useResult
$Res call({
 DateTime focusedDate, DateTime selectedDate
});




}
/// @nodoc
class __$SelectDateCopyWithImpl<$Res>
    implements _$SelectDateCopyWith<$Res> {
  __$SelectDateCopyWithImpl(this._self, this._then);

  final _SelectDate _self;
  final $Res Function(_SelectDate) _then;

/// Create a copy of CalendarEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? focusedDate = null,Object? selectedDate = null,}) {
  return _then(_SelectDate(
focusedDate: null == focusedDate ? _self.focusedDate : focusedDate // ignore: cast_nullable_to_non_nullable
as DateTime,selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class _ChangeView implements CalendarEvent {
  const _ChangeView({required this.focusedDate});
  

 final  DateTime focusedDate;

/// Create a copy of CalendarEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeViewCopyWith<_ChangeView> get copyWith => __$ChangeViewCopyWithImpl<_ChangeView>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeView&&(identical(other.focusedDate, focusedDate) || other.focusedDate == focusedDate));
}


@override
int get hashCode => Object.hash(runtimeType,focusedDate);

@override
String toString() {
  return 'CalendarEvent.changeView(focusedDate: $focusedDate)';
}


}

/// @nodoc
abstract mixin class _$ChangeViewCopyWith<$Res> implements $CalendarEventCopyWith<$Res> {
  factory _$ChangeViewCopyWith(_ChangeView value, $Res Function(_ChangeView) _then) = __$ChangeViewCopyWithImpl;
@useResult
$Res call({
 DateTime focusedDate
});




}
/// @nodoc
class __$ChangeViewCopyWithImpl<$Res>
    implements _$ChangeViewCopyWith<$Res> {
  __$ChangeViewCopyWithImpl(this._self, this._then);

  final _ChangeView _self;
  final $Res Function(_ChangeView) _then;

/// Create a copy of CalendarEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? focusedDate = null,}) {
  return _then(_ChangeView(
focusedDate: null == focusedDate ? _self.focusedDate : focusedDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$CalendarState {

 DateTime get selectedDate; DateTime get focusedDate;
/// Create a copy of CalendarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarStateCopyWith<CalendarState> get copyWith => _$CalendarStateCopyWithImpl<CalendarState>(this as CalendarState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarState&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.focusedDate, focusedDate) || other.focusedDate == focusedDate));
}


@override
int get hashCode => Object.hash(runtimeType,selectedDate,focusedDate);

@override
String toString() {
  return 'CalendarState(selectedDate: $selectedDate, focusedDate: $focusedDate)';
}


}

/// @nodoc
abstract mixin class $CalendarStateCopyWith<$Res>  {
  factory $CalendarStateCopyWith(CalendarState value, $Res Function(CalendarState) _then) = _$CalendarStateCopyWithImpl;
@useResult
$Res call({
 DateTime selectedDate, DateTime focusedDate
});




}
/// @nodoc
class _$CalendarStateCopyWithImpl<$Res>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._self, this._then);

  final CalendarState _self;
  final $Res Function(CalendarState) _then;

/// Create a copy of CalendarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedDate = null,Object? focusedDate = null,}) {
  return _then(_self.copyWith(
selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,focusedDate: null == focusedDate ? _self.focusedDate : focusedDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CalendarState].
extension CalendarStatePatterns on CalendarState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarState value)  $default,){
final _that = this;
switch (_that) {
case _CalendarState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarState value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime selectedDate,  DateTime focusedDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarState() when $default != null:
return $default(_that.selectedDate,_that.focusedDate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime selectedDate,  DateTime focusedDate)  $default,) {final _that = this;
switch (_that) {
case _CalendarState():
return $default(_that.selectedDate,_that.focusedDate);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime selectedDate,  DateTime focusedDate)?  $default,) {final _that = this;
switch (_that) {
case _CalendarState() when $default != null:
return $default(_that.selectedDate,_that.focusedDate);case _:
  return null;

}
}

}

/// @nodoc


class _CalendarState implements CalendarState {
  const _CalendarState({required this.selectedDate, required this.focusedDate});
  

@override final  DateTime selectedDate;
@override final  DateTime focusedDate;

/// Create a copy of CalendarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarStateCopyWith<_CalendarState> get copyWith => __$CalendarStateCopyWithImpl<_CalendarState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarState&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.focusedDate, focusedDate) || other.focusedDate == focusedDate));
}


@override
int get hashCode => Object.hash(runtimeType,selectedDate,focusedDate);

@override
String toString() {
  return 'CalendarState(selectedDate: $selectedDate, focusedDate: $focusedDate)';
}


}

/// @nodoc
abstract mixin class _$CalendarStateCopyWith<$Res> implements $CalendarStateCopyWith<$Res> {
  factory _$CalendarStateCopyWith(_CalendarState value, $Res Function(_CalendarState) _then) = __$CalendarStateCopyWithImpl;
@override @useResult
$Res call({
 DateTime selectedDate, DateTime focusedDate
});




}
/// @nodoc
class __$CalendarStateCopyWithImpl<$Res>
    implements _$CalendarStateCopyWith<$Res> {
  __$CalendarStateCopyWithImpl(this._self, this._then);

  final _CalendarState _self;
  final $Res Function(_CalendarState) _then;

/// Create a copy of CalendarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedDate = null,Object? focusedDate = null,}) {
  return _then(_CalendarState(
selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,focusedDate: null == focusedDate ? _self.focusedDate : focusedDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
