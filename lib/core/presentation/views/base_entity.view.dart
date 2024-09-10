
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:torus/core/presentation/base_cubits/base.cubit.dart';
// import 'package:torus/core/presentation/base_cubits/base.state.dart';

// class BaseEntityView<T extends BaseCubit<E>, E> extends StatelessWidget {
//   final T Function(BuildContext context)? cubitBuilder;
//   final Widget Function(BuildContext context, BaseCompletedState<E> state) builder;
//   final Function(BuildContext context, BaseState<E> state) listener;
//   final Widget Function(BuildContext context, BaseErrorState<E> state)? errorBuilder;
//   final Widget Function(BuildContext context, BaseState<E> state)? loadingBuilder;

//   const BaseEntityView({
//     super.key,
//     required this.cubitBuilder,
//     required this.builder,
//     required this.listener,
//     this.errorBuilder,
//     this.loadingBuilder,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       top: false,
//       child: BlocProvider(
//         create: (context) => cubitBuilder!(context),
//         child: BlocConsumer<T, BaseState<E>>(
//           listener: listener,
//           builder: (context, state) {
//             return Stack(
//               children: [
//                 if (state is BaseCompletedState<E>) builder(context, state),
//                 if (state is BaseErrorState<E>)
//                   errorBuilder != null
//                       ? errorBuilder!(context, state)
//                       : Center(
//                           child: Text(
//                             state.errorMessage ?? "Something went wrong.",
//                           ),
//                         ),
//                 if ((state is BaseLoadingState<E> && context.read<T>().isLoading) ||
//                     state is BaseInitialState<E>)
//                   loadingBuilder != null
//                       ? loadingBuilder!(context, state)
//                       : const Center(child: CircularProgressIndicator.adaptive()),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
