import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'menu_event.dart';
part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc() : super(MenuState(selectedMenu: menuItems[0])) {
    on<MenuItemClick>(onMenuItemClick);
  }

  void onMenuItemClick(MenuItemClick event, Emitter<MenuState> emit) {
    emit(MenuState(selectedMenu: event.selectedItem));
    return;
  }
}
