// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fast_laugh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FastLaughEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initilize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initilize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initilize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initilize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initilize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initilize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughEventCopyWith<$Res> {
  factory $FastLaughEventCopyWith(
          FastLaughEvent value, $Res Function(FastLaughEvent) then) =
      _$FastLaughEventCopyWithImpl<$Res, FastLaughEvent>;
}

/// @nodoc
class _$FastLaughEventCopyWithImpl<$Res, $Val extends FastLaughEvent>
    implements $FastLaughEventCopyWith<$Res> {
  _$FastLaughEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$FastLaughEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeImpl implements Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'FastLaughEvent.initilize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initilize,
  }) {
    return initilize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initilize,
  }) {
    return initilize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initilize,
    required TResult orElse(),
  }) {
    if (initilize != null) {
      return initilize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initilize,
  }) {
    return initilize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initilize,
  }) {
    return initilize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initilize,
    required TResult orElse(),
  }) {
    if (initilize != null) {
      return initilize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements FastLaughEvent {
  const factory Initialize() = _$InitializeImpl;
}

/// @nodoc
mixin _$FastLaughState {
  List<Downloads> get imageList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FastLaughStateCopyWith<FastLaughState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughStateCopyWith<$Res> {
  factory $FastLaughStateCopyWith(
          FastLaughState value, $Res Function(FastLaughState) then) =
      _$FastLaughStateCopyWithImpl<$Res, FastLaughState>;
  @useResult
  $Res call({List<Downloads> imageList, bool isLoading, bool isError});
}

/// @nodoc
class _$FastLaughStateCopyWithImpl<$Res, $Val extends FastLaughState>
    implements $FastLaughStateCopyWith<$Res> {
  _$FastLaughStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      imageList: null == imageList
          ? _value.imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FastLaughStateImplCopyWith<$Res>
    implements $FastLaughStateCopyWith<$Res> {
  factory _$$FastLaughStateImplCopyWith(_$FastLaughStateImpl value,
          $Res Function(_$FastLaughStateImpl) then) =
      __$$FastLaughStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Downloads> imageList, bool isLoading, bool isError});
}

/// @nodoc
class __$$FastLaughStateImplCopyWithImpl<$Res>
    extends _$FastLaughStateCopyWithImpl<$Res, _$FastLaughStateImpl>
    implements _$$FastLaughStateImplCopyWith<$Res> {
  __$$FastLaughStateImplCopyWithImpl(
      _$FastLaughStateImpl _value, $Res Function(_$FastLaughStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$FastLaughStateImpl(
      imageList: null == imageList
          ? _value._imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FastLaughStateImpl implements _FastLaughState {
  const _$FastLaughStateImpl(
      {required final List<Downloads> imageList,
      required this.isLoading,
      required this.isError})
      : _imageList = imageList;

  final List<Downloads> _imageList;
  @override
  List<Downloads> get imageList {
    if (_imageList is EqualUnmodifiableListView) return _imageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'FastLaughState(imageList: $imageList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FastLaughStateImpl &&
            const DeepCollectionEquality()
                .equals(other._imageList, _imageList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_imageList), isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FastLaughStateImplCopyWith<_$FastLaughStateImpl> get copyWith =>
      __$$FastLaughStateImplCopyWithImpl<_$FastLaughStateImpl>(
          this, _$identity);
}

abstract class _FastLaughState implements FastLaughState {
  const factory _FastLaughState(
      {required final List<Downloads> imageList,
      required final bool isLoading,
      required final bool isError}) = _$FastLaughStateImpl;

  @override
  List<Downloads> get imageList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$FastLaughStateImplCopyWith<_$FastLaughStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
