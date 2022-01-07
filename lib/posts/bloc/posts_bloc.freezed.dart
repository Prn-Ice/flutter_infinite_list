// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostsEventTearOff {
  const _$PostsEventTearOff();

  _PostsFetchMore fetchMore() {
    return const _PostsFetchMore();
  }
}

/// @nodoc
const $PostsEvent = _$PostsEventTearOff();

/// @nodoc
mixin _$PostsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostsFetchMore value) fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostsFetchMore value)? fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsFetchMore value)? fetchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsEventCopyWith<$Res> {
  factory $PostsEventCopyWith(
          PostsEvent value, $Res Function(PostsEvent) then) =
      _$PostsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostsEventCopyWithImpl<$Res> implements $PostsEventCopyWith<$Res> {
  _$PostsEventCopyWithImpl(this._value, this._then);

  final PostsEvent _value;
  // ignore: unused_field
  final $Res Function(PostsEvent) _then;
}

/// @nodoc
abstract class _$PostsFetchMoreCopyWith<$Res> {
  factory _$PostsFetchMoreCopyWith(
          _PostsFetchMore value, $Res Function(_PostsFetchMore) then) =
      __$PostsFetchMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$PostsFetchMoreCopyWithImpl<$Res> extends _$PostsEventCopyWithImpl<$Res>
    implements _$PostsFetchMoreCopyWith<$Res> {
  __$PostsFetchMoreCopyWithImpl(
      _PostsFetchMore _value, $Res Function(_PostsFetchMore) _then)
      : super(_value, (v) => _then(v as _PostsFetchMore));

  @override
  _PostsFetchMore get _value => super._value as _PostsFetchMore;
}

/// @nodoc

class _$_PostsFetchMore
    with DiagnosticableTreeMixin
    implements _PostsFetchMore {
  const _$_PostsFetchMore();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostsEvent.fetchMore()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PostsEvent.fetchMore'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PostsFetchMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMore,
  }) {
    return fetchMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchMore,
  }) {
    return fetchMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostsFetchMore value) fetchMore,
  }) {
    return fetchMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostsFetchMore value)? fetchMore,
  }) {
    return fetchMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsFetchMore value)? fetchMore,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore(this);
    }
    return orElse();
  }
}

abstract class _PostsFetchMore implements PostsEvent {
  const factory _PostsFetchMore() = _$_PostsFetchMore;
}

/// @nodoc
class _$PostsStateTearOff {
  const _$PostsStateTearOff();

  _PostsInitial initial(
      {List<Post> posts = const <Post>[], bool hasReachedMax = false}) {
    return _PostsInitial(
      posts: posts,
      hasReachedMax: hasReachedMax,
    );
  }

  _PostsSuccess success(
      {List<Post> posts = const <Post>[], bool hasReachedMax = false}) {
    return _PostsSuccess(
      posts: posts,
      hasReachedMax: hasReachedMax,
    );
  }

  _PostsFailure failure(
      {List<Post> posts = const <Post>[], bool hasReachedMax = false}) {
    return _PostsFailure(
      posts: posts,
      hasReachedMax: hasReachedMax,
    );
  }
}

/// @nodoc
const $PostsState = _$PostsStateTearOff();

/// @nodoc
mixin _$PostsState {
  List<Post> get posts => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Post> posts, bool hasReachedMax) initial,
    required TResult Function(List<Post> posts, bool hasReachedMax) success,
    required TResult Function(List<Post> posts, bool hasReachedMax) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Post> posts, bool hasReachedMax)? initial,
    TResult Function(List<Post> posts, bool hasReachedMax)? success,
    TResult Function(List<Post> posts, bool hasReachedMax)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Post> posts, bool hasReachedMax)? initial,
    TResult Function(List<Post> posts, bool hasReachedMax)? success,
    TResult Function(List<Post> posts, bool hasReachedMax)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostsInitial value) initial,
    required TResult Function(_PostsSuccess value) success,
    required TResult Function(_PostsFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostsInitial value)? initial,
    TResult Function(_PostsSuccess value)? success,
    TResult Function(_PostsFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsInitial value)? initial,
    TResult Function(_PostsSuccess value)? success,
    TResult Function(_PostsFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostsStateCopyWith<PostsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res>;
  $Res call({List<Post> posts, bool hasReachedMax});
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res> implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  final PostsState _value;
  // ignore: unused_field
  final $Res Function(PostsState) _then;

  @override
  $Res call({
    Object? posts = freezed,
    Object? hasReachedMax = freezed,
  }) {
    return _then(_value.copyWith(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PostsInitialCopyWith<$Res>
    implements $PostsStateCopyWith<$Res> {
  factory _$PostsInitialCopyWith(
          _PostsInitial value, $Res Function(_PostsInitial) then) =
      __$PostsInitialCopyWithImpl<$Res>;
  @override
  $Res call({List<Post> posts, bool hasReachedMax});
}

/// @nodoc
class __$PostsInitialCopyWithImpl<$Res> extends _$PostsStateCopyWithImpl<$Res>
    implements _$PostsInitialCopyWith<$Res> {
  __$PostsInitialCopyWithImpl(
      _PostsInitial _value, $Res Function(_PostsInitial) _then)
      : super(_value, (v) => _then(v as _PostsInitial));

  @override
  _PostsInitial get _value => super._value as _PostsInitial;

  @override
  $Res call({
    Object? posts = freezed,
    Object? hasReachedMax = freezed,
  }) {
    return _then(_PostsInitial(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PostsInitial extends _PostsInitial {
  const _$_PostsInitial(
      {this.posts = const <Post>[], this.hasReachedMax = false})
      : super._();

  @JsonKey(defaultValue: const <Post>[])
  @override
  final List<Post> posts;
  @JsonKey(defaultValue: false)
  @override
  final bool hasReachedMax;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostsInitial &&
            const DeepCollectionEquality().equals(other.posts, posts) &&
            const DeepCollectionEquality()
                .equals(other.hasReachedMax, hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(posts),
      const DeepCollectionEquality().hash(hasReachedMax));

  @JsonKey(ignore: true)
  @override
  _$PostsInitialCopyWith<_PostsInitial> get copyWith =>
      __$PostsInitialCopyWithImpl<_PostsInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Post> posts, bool hasReachedMax) initial,
    required TResult Function(List<Post> posts, bool hasReachedMax) success,
    required TResult Function(List<Post> posts, bool hasReachedMax) failure,
  }) {
    return initial(posts, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Post> posts, bool hasReachedMax)? initial,
    TResult Function(List<Post> posts, bool hasReachedMax)? success,
    TResult Function(List<Post> posts, bool hasReachedMax)? failure,
  }) {
    return initial?.call(posts, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Post> posts, bool hasReachedMax)? initial,
    TResult Function(List<Post> posts, bool hasReachedMax)? success,
    TResult Function(List<Post> posts, bool hasReachedMax)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(posts, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostsInitial value) initial,
    required TResult Function(_PostsSuccess value) success,
    required TResult Function(_PostsFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostsInitial value)? initial,
    TResult Function(_PostsSuccess value)? success,
    TResult Function(_PostsFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsInitial value)? initial,
    TResult Function(_PostsSuccess value)? success,
    TResult Function(_PostsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PostsInitial extends PostsState {
  const factory _PostsInitial({List<Post> posts, bool hasReachedMax}) =
      _$_PostsInitial;
  const _PostsInitial._() : super._();

  @override
  List<Post> get posts;
  @override
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  _$PostsInitialCopyWith<_PostsInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PostsSuccessCopyWith<$Res>
    implements $PostsStateCopyWith<$Res> {
  factory _$PostsSuccessCopyWith(
          _PostsSuccess value, $Res Function(_PostsSuccess) then) =
      __$PostsSuccessCopyWithImpl<$Res>;
  @override
  $Res call({List<Post> posts, bool hasReachedMax});
}

/// @nodoc
class __$PostsSuccessCopyWithImpl<$Res> extends _$PostsStateCopyWithImpl<$Res>
    implements _$PostsSuccessCopyWith<$Res> {
  __$PostsSuccessCopyWithImpl(
      _PostsSuccess _value, $Res Function(_PostsSuccess) _then)
      : super(_value, (v) => _then(v as _PostsSuccess));

  @override
  _PostsSuccess get _value => super._value as _PostsSuccess;

  @override
  $Res call({
    Object? posts = freezed,
    Object? hasReachedMax = freezed,
  }) {
    return _then(_PostsSuccess(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PostsSuccess extends _PostsSuccess {
  const _$_PostsSuccess(
      {this.posts = const <Post>[], this.hasReachedMax = false})
      : super._();

  @JsonKey(defaultValue: const <Post>[])
  @override
  final List<Post> posts;
  @JsonKey(defaultValue: false)
  @override
  final bool hasReachedMax;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostsSuccess &&
            const DeepCollectionEquality().equals(other.posts, posts) &&
            const DeepCollectionEquality()
                .equals(other.hasReachedMax, hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(posts),
      const DeepCollectionEquality().hash(hasReachedMax));

  @JsonKey(ignore: true)
  @override
  _$PostsSuccessCopyWith<_PostsSuccess> get copyWith =>
      __$PostsSuccessCopyWithImpl<_PostsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Post> posts, bool hasReachedMax) initial,
    required TResult Function(List<Post> posts, bool hasReachedMax) success,
    required TResult Function(List<Post> posts, bool hasReachedMax) failure,
  }) {
    return success(posts, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Post> posts, bool hasReachedMax)? initial,
    TResult Function(List<Post> posts, bool hasReachedMax)? success,
    TResult Function(List<Post> posts, bool hasReachedMax)? failure,
  }) {
    return success?.call(posts, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Post> posts, bool hasReachedMax)? initial,
    TResult Function(List<Post> posts, bool hasReachedMax)? success,
    TResult Function(List<Post> posts, bool hasReachedMax)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(posts, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostsInitial value) initial,
    required TResult Function(_PostsSuccess value) success,
    required TResult Function(_PostsFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostsInitial value)? initial,
    TResult Function(_PostsSuccess value)? success,
    TResult Function(_PostsFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsInitial value)? initial,
    TResult Function(_PostsSuccess value)? success,
    TResult Function(_PostsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PostsSuccess extends PostsState {
  const factory _PostsSuccess({List<Post> posts, bool hasReachedMax}) =
      _$_PostsSuccess;
  const _PostsSuccess._() : super._();

  @override
  List<Post> get posts;
  @override
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  _$PostsSuccessCopyWith<_PostsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PostsFailureCopyWith<$Res>
    implements $PostsStateCopyWith<$Res> {
  factory _$PostsFailureCopyWith(
          _PostsFailure value, $Res Function(_PostsFailure) then) =
      __$PostsFailureCopyWithImpl<$Res>;
  @override
  $Res call({List<Post> posts, bool hasReachedMax});
}

/// @nodoc
class __$PostsFailureCopyWithImpl<$Res> extends _$PostsStateCopyWithImpl<$Res>
    implements _$PostsFailureCopyWith<$Res> {
  __$PostsFailureCopyWithImpl(
      _PostsFailure _value, $Res Function(_PostsFailure) _then)
      : super(_value, (v) => _then(v as _PostsFailure));

  @override
  _PostsFailure get _value => super._value as _PostsFailure;

  @override
  $Res call({
    Object? posts = freezed,
    Object? hasReachedMax = freezed,
  }) {
    return _then(_PostsFailure(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PostsFailure extends _PostsFailure {
  const _$_PostsFailure(
      {this.posts = const <Post>[], this.hasReachedMax = false})
      : super._();

  @JsonKey(defaultValue: const <Post>[])
  @override
  final List<Post> posts;
  @JsonKey(defaultValue: false)
  @override
  final bool hasReachedMax;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostsFailure &&
            const DeepCollectionEquality().equals(other.posts, posts) &&
            const DeepCollectionEquality()
                .equals(other.hasReachedMax, hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(posts),
      const DeepCollectionEquality().hash(hasReachedMax));

  @JsonKey(ignore: true)
  @override
  _$PostsFailureCopyWith<_PostsFailure> get copyWith =>
      __$PostsFailureCopyWithImpl<_PostsFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Post> posts, bool hasReachedMax) initial,
    required TResult Function(List<Post> posts, bool hasReachedMax) success,
    required TResult Function(List<Post> posts, bool hasReachedMax) failure,
  }) {
    return failure(posts, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Post> posts, bool hasReachedMax)? initial,
    TResult Function(List<Post> posts, bool hasReachedMax)? success,
    TResult Function(List<Post> posts, bool hasReachedMax)? failure,
  }) {
    return failure?.call(posts, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Post> posts, bool hasReachedMax)? initial,
    TResult Function(List<Post> posts, bool hasReachedMax)? success,
    TResult Function(List<Post> posts, bool hasReachedMax)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(posts, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostsInitial value) initial,
    required TResult Function(_PostsSuccess value) success,
    required TResult Function(_PostsFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostsInitial value)? initial,
    TResult Function(_PostsSuccess value)? success,
    TResult Function(_PostsFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsInitial value)? initial,
    TResult Function(_PostsSuccess value)? success,
    TResult Function(_PostsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _PostsFailure extends PostsState {
  const factory _PostsFailure({List<Post> posts, bool hasReachedMax}) =
      _$_PostsFailure;
  const _PostsFailure._() : super._();

  @override
  List<Post> get posts;
  @override
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  _$PostsFailureCopyWith<_PostsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
