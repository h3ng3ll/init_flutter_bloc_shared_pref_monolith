// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nav_tutorial_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NavTutorialState {

 NavTutorial get navTutorial;
/// Create a copy of NavTutorialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavTutorialStateCopyWith<NavTutorialState> get copyWith => _$NavTutorialStateCopyWithImpl<NavTutorialState>(this as NavTutorialState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavTutorialState&&(identical(other.navTutorial, navTutorial) || other.navTutorial == navTutorial));
}


@override
int get hashCode => Object.hash(runtimeType,navTutorial);

@override
String toString() {
  return 'NavTutorialState(navTutorial: $navTutorial)';
}


}

/// @nodoc
abstract mixin class $NavTutorialStateCopyWith<$Res>  {
  factory $NavTutorialStateCopyWith(NavTutorialState value, $Res Function(NavTutorialState) _then) = _$NavTutorialStateCopyWithImpl;
@useResult
$Res call({
 NavTutorial navTutorial
});


$NavTutorialCopyWith<$Res> get navTutorial;

}
/// @nodoc
class _$NavTutorialStateCopyWithImpl<$Res>
    implements $NavTutorialStateCopyWith<$Res> {
  _$NavTutorialStateCopyWithImpl(this._self, this._then);

  final NavTutorialState _self;
  final $Res Function(NavTutorialState) _then;

/// Create a copy of NavTutorialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? navTutorial = null,}) {
  return _then(_self.copyWith(
navTutorial: null == navTutorial ? _self.navTutorial : navTutorial // ignore: cast_nullable_to_non_nullable
as NavTutorial,
  ));
}
/// Create a copy of NavTutorialState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NavTutorialCopyWith<$Res> get navTutorial {
  
  return $NavTutorialCopyWith<$Res>(_self.navTutorial, (value) {
    return _then(_self.copyWith(navTutorial: value));
  });
}
}


/// Adds pattern-matching-related methods to [NavTutorialState].
extension NavTutorialStatePatterns on NavTutorialState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NavTutorialState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NavTutorialState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NavTutorialState value)  $default,){
final _that = this;
switch (_that) {
case _NavTutorialState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NavTutorialState value)?  $default,){
final _that = this;
switch (_that) {
case _NavTutorialState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NavTutorial navTutorial)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NavTutorialState() when $default != null:
return $default(_that.navTutorial);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NavTutorial navTutorial)  $default,) {final _that = this;
switch (_that) {
case _NavTutorialState():
return $default(_that.navTutorial);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NavTutorial navTutorial)?  $default,) {final _that = this;
switch (_that) {
case _NavTutorialState() when $default != null:
return $default(_that.navTutorial);case _:
  return null;

}
}

}

/// @nodoc


class _NavTutorialState implements NavTutorialState {
  const _NavTutorialState({required this.navTutorial});
  

@override final  NavTutorial navTutorial;

/// Create a copy of NavTutorialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NavTutorialStateCopyWith<_NavTutorialState> get copyWith => __$NavTutorialStateCopyWithImpl<_NavTutorialState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NavTutorialState&&(identical(other.navTutorial, navTutorial) || other.navTutorial == navTutorial));
}


@override
int get hashCode => Object.hash(runtimeType,navTutorial);

@override
String toString() {
  return 'NavTutorialState(navTutorial: $navTutorial)';
}


}

/// @nodoc
abstract mixin class _$NavTutorialStateCopyWith<$Res> implements $NavTutorialStateCopyWith<$Res> {
  factory _$NavTutorialStateCopyWith(_NavTutorialState value, $Res Function(_NavTutorialState) _then) = __$NavTutorialStateCopyWithImpl;
@override @useResult
$Res call({
 NavTutorial navTutorial
});


@override $NavTutorialCopyWith<$Res> get navTutorial;

}
/// @nodoc
class __$NavTutorialStateCopyWithImpl<$Res>
    implements _$NavTutorialStateCopyWith<$Res> {
  __$NavTutorialStateCopyWithImpl(this._self, this._then);

  final _NavTutorialState _self;
  final $Res Function(_NavTutorialState) _then;

/// Create a copy of NavTutorialState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? navTutorial = null,}) {
  return _then(_NavTutorialState(
navTutorial: null == navTutorial ? _self.navTutorial : navTutorial // ignore: cast_nullable_to_non_nullable
as NavTutorial,
  ));
}

/// Create a copy of NavTutorialState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NavTutorialCopyWith<$Res> get navTutorial {
  
  return $NavTutorialCopyWith<$Res>(_self.navTutorial, (value) {
    return _then(_self.copyWith(navTutorial: value));
  });
}
}

// dart format on
