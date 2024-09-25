import '../../pages/home/index.dart';

final vmRegistry = <Type, Function>{

  HomeVM: () => HomeVM(model: HomeModel()),

};
