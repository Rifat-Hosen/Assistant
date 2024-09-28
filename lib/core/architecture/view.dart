import 'package:flutter/material.dart';
import 'package:assistant/core/index.dart';

mixin VBaseMixin<T extends ViewModel>{
  Widget buildWidget(BuildContext context,T viewModel);
}

abstract class IView<T extends ViewModel> extends StatelessWidget with VBaseMixin<T>{
  IView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BIView<T>(
      builder: (context,model){
        return buildWidget(context,model);
      },
    );
  }
}


class BIView<T extends ViewModel> extends StatefulWidget {
  final ViewModel viewModel = vmRegistry[T]!.call();
  late Function(Function() f) setState;
  final Widget Function(BuildContext context, T model) builder;

  BIView({super.key, required this.builder});

  @override
  _BaseStatefulWidgetState<T> createState() => _BaseStatefulWidgetState<T>();


}

class _BaseStatefulWidgetState<T extends ViewModel> extends State<BIView<T>> {
  T viewModel = vmRegistry[T]!();

  @override
  void initState() {
    viewModel.stateHandler = setState;
    widget.setState = setState;
    viewModel.initState(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;
    viewModel.buildProperty(context, args);
    return Builder(
        builder: (context) {
          return widget.builder(context, viewModel);
        }
    );
  }
}
