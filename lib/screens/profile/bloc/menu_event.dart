part of 'menu_bloc.dart';

@immutable
abstract class MenuEvent {}

class MenuItemClick extends MenuEvent {
  final String selectedItem;
  MenuItemClick({required this.selectedItem});
}
