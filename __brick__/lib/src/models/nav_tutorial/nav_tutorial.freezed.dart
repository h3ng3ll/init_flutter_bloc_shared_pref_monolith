// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nav_tutorial.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NavTutorial {

 bool get hasShownTutorial; bool get hasCompletedFullOnboard; bool get hasCompletedOnboard;
/// Create a copy of NavTutorial
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavTutorialCopyWith<NavTutorial> get copyWith => _$NavTutorialCopyWithImpl<NavTutorial>(this as NavTutorial, _$identity);

  /// Serializes this NavTutorial to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavTutorial&&(identical(other.hasShownTutorial, hasShownTutorial) || other.hasShownTutorial == hasShownTutorial)&&(identical(other.hasCompletedFullOnboard, hasCompletedFullOnboard) || other.hasCompletedFullOnboard == hasCompletedFullOnboard)&&(identical(other.hasCompletedOnboard, hasCompletedOnboard) || other.hasCompletedOnboard == hasCompletedOnboard));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasShownTutorial,hasCompletedFullOnboard,hasCompletedOnboard);

@override
String toString() {
  return 'NavTutorial(hasShownTutorial: $hasShownTutorial, hasCompletedFullOnboard: $hasCompletedFullOnboard, hasCompletedOnboard: $hasCompletedOnboard)';
}


}

/// @nodoc
abstract mixin class $NavTutorialCopyWith<$Res>  {
  factory $NavTutorialCopyWith(NavTutorial value, $Res Function(NavTutorial) _then) = _$NavTutorialCopyWithImpl;
@useResult
$Res call({
 bool hasShownTutorial, bool hasCompletedFullOnboard, bool hasCompletedOnboard
});




}
/// @nodoc
class _$NavTutorialCopyWithImpl<$Res>
    implements $NavTutorialCopyWith<$Res> {
  _$NavTutorialCopyWithImpl(this._self, this._then);

  final NavTutorial _self;
  final $Res Function(NavTutorial) _then;

/// Create a copy of NavTutorial
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hasShownTutorial = null,Object? hasCompletedFullOnboard = null,Object? hasCompletedOnboard = null,}) {
  return _then(_self.copyWith(
hasShownTutorial: null == hasShownTutorial ? _self.hasShownTutorial : hasShownTutorial // ignore: cast_nullable_to_non_nullable
as bool,hasCompletedFullOnboard: null == hasCompletedFullOnboard ? _self.hasCompletedFullOnboard : hasCompletedFullOnboard // ignore: cast_nullable_to_non_nullable
as bool,hasCompletedOnboard: null == hasCompletedOnboard ? _self.hasCompletedOnboard : hasCompletedOnboard // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NavTutorial].
extension NavTutorialPatterns on NavTutorial {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NavTutorial value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NavTutorial() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NavTutorial value)  $default,){
final _that = this;
switch (_that) {
case _NavTutorial():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NavTutorial value)?  $default,){
final _that = this;
switch (_that) {
case _NavTutorial() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool hasShownTutorial,  bool hasCompletedFullOnboard,  bool hasCompletedOnboard)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NavTutorial() when $default != null:
return $default(_that.hasShownTutorial,_that.hasCompletedFullOnboard,_that.hasCompletedOnboard);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool hasShownTutorial,  bool hasCompletedFullOnboard,  bool hasCompletedOnboard)  $default,) {final _that = this;
switch (_that) {
case _NavTutorial():
return $default(_that.hasShownTutorial,_that.hasCompletedFullOnboard,_that.hasCompletedOnboard);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool hasShownTutorial,  bool hasCompletedFullOnboard,  bool hasCompletedOnboard)?  $default,) {final _that = this;
switch (_that) {
case _NavTutorial() when $default != null:
return $default(_that.hasShownTutorial,_that.hasCompletedFullOnboard,_that.hasCompletedOnboard);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NavTutorial extends NavTutorial {
   _NavTutorial({this.hasShownTutorial = false, this.hasCompletedFullOnboard = false, this.hasCompletedOnboard = false}): super._();
  factory _NavTutorial.fromJson(Map<String, dynamic> json) => _$NavTutorialFromJson(json);

@override@JsonKey() final  bool hasShownTutorial;
@override@JsonKey() final  bool hasCompletedFullOnboard;
@override@JsonKey() final  bool hasCompletedOnboard;

/// Create a copy of NavTutorial
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NavTutorialCopyWith<_NavTutorial> get copyWith => __$NavTutorialCopyWithImpl<_NavTutorial>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NavTutorialToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NavTutorial&&(identical(other.hasShownTutorial, hasShownTutorial) || other.hasShownTutorial == hasShownTutorial)&&(identical(other.hasCompletedFullOnboard, hasCompletedFullOnboard) || other.hasCompletedFullOnboard == hasCompletedFullOnboard)&&(identical(other.hasCompletedOnboard, hasCompletedOnboard) || other.hasCompletedOnboard == hasCompletedOnboard));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasShownTutorial,hasCompletedFullOnboard,hasCompletedOnboard);

@override
String toString() {
  return 'NavTutorial(hasShownTutorial: $hasShownTutorial, hasCompletedFullOnboard: $hasCompletedFullOnboard, hasCompletedOnboard: $hasCompletedOnboard)';
}


}

/// @nodoc
abstract mixin class _$NavTutorialCopyWith<$Res> implements $NavTutorialCopyWith<$Res> {
  factory _$NavTutorialCopyWith(_NavTutorial value, $Res Function(_NavTutorial) _then) = __$NavTutorialCopyWithImpl;
@override @useResult
$Res call({
 bool hasShownTutorial, bool hasCompletedFullOnboard, bool hasCompletedOnboard
});




}
/// @nodoc
class __$NavTutorialCopyWithImpl<$Res>
    implements _$NavTutorialCopyWith<$Res> {
  __$NavTutorialCopyWithImpl(this._self, this._then);

  final _NavTutorial _self;
  final $Res Function(_NavTutorial) _then;

/// Create a copy of NavTutorial
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasShownTutorial = null,Object? hasCompletedFullOnboard = null,Object? hasCompletedOnboard = null,}) {
  return _then(_NavTutorial(
hasShownTutorial: null == hasShownTutorial ? _self.hasShownTutorial : hasShownTutorial // ignore: cast_nullable_to_non_nullable
as bool,hasCompletedFullOnboard: null == hasCompletedFullOnboard ? _self.hasCompletedFullOnboard : hasCompletedFullOnboard // ignore: cast_nullable_to_non_nullable
as bool,hasCompletedOnboard: null == hasCompletedOnboard ? _self.hasCompletedOnboard : hasCompletedOnboard // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
