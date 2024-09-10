import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nomo_app/core/presentation/base_cubits/base.state.dart';

abstract class BaseCubit<T> extends Cubit<BaseState<T>> {
  final BuildContext? context;

  BaseCubit(this.context) : super(BaseInitialState<T>()) {
    load();
  }

  bool _isLoading = false;
  bool _isDisposed = false;

  FutureOr<void> _initState;

  FutureOr<void> init();

  void load() async {
    if (context != null && context!.mounted) {
      if (!_isDisposed && state is! BaseLoadingState) {
        isLoading = true;
        _initState = init();
        await _initState;
        if (!_isDisposed) {
          isLoading = false;
        }
      }
    }
  }

  // Getters
  bool get isLoading => _isLoading;
  bool get isDisposed => _isDisposed;

  T? get data;

  // Setters
  set isLoading(bool value) {
    _isLoading = value;
    if (!_isDisposed && _isLoading) emit(BaseLoadingState<T>());
  }

  @override
  Future<void> close() async {
    _isDisposed = true;
    super.close();
  }
}
