import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nomo_app/core/presentation/base_cubits/base.cubit.dart';
import 'package:nomo_app/core/presentation/base_cubits/base.state.dart';

class BaseView<T extends BaseCubit> extends StatelessWidget {
  final T Function(BuildContext context)? cubitBuilder;
  final Widget Function(BuildContext context, BaseState state) builder;
  final Function(BuildContext context, BaseState state) listener;
  final Widget Function(BuildContext context, BaseErrorState state)?
      errorBuilder;
  final Widget Function(BuildContext context, BaseState state)? loadingbuilder;

  const BaseView({
    super.key,
    required this.cubitBuilder,
    required this.builder,
    required this.listener,
    this.errorBuilder,
    this.loadingbuilder,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: BlocProvider(
        create: (context) => cubitBuilder!(context),
        child: BlocConsumer<T, BaseState>(
          listener: listener,
          builder: (context, state) {
            return Stack(
              children: [
                if (state is BaseCompletedState) builder(context, state),
                if (state is BaseErrorState)
                  errorBuilder != null
                      ? errorBuilder!(context, state)
                      : Center(
                          child: Text(
                          state.errorMessage ?? "Something wrong.",
                        )),
                if ((state is BaseLoadingState && context.read<T>().isLoading) ||
                    state is BaseInitialState)
                  loadingbuilder != null
                      ? loadingbuilder!(context, state)
                      : const Center(child: CircularProgressIndicator.adaptive()),
              ],
            );
          },
        ),
      ),
    );
  }
}
