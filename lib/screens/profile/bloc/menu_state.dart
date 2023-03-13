part of 'menu_bloc.dart';

const List<String> menuItems = [
  "Home",
  "Profile",
  "Travel History",
  "Settings",
  "Help",
  "Privacy Policy",
  "Terms & Conditions",
  "Logout",
];

@immutable
class MenuState {
  final String selectedMenu;

  const MenuState({required this.selectedMenu});
}
