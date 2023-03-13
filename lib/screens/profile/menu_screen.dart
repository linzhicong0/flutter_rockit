import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rockit/screens/profile/bloc/menu_bloc.dart';
import 'package:rockit/screens/profile/widgets/menu_item_widget.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MenuBloc(),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF55418E),
          image: DecorationImage(
            alignment: Alignment.centerLeft,
            image: AssetImage("assets/images/background.png"),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Image(
                    image: AssetImage("assets/images/headimg.png"),
                  ),
                  const SizedBox(
                    width: 10.3,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Whitney Leon",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "+91 6787978287",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            BlocBuilder<MenuBloc, MenuState>(
              builder: (context, state) {
                return SizedBox(
                  width: 250,
                  height: 412,
                  child: ListView(
                    padding: const EdgeInsets.all(0),
                    children: [
                      for (var menu in menuItems) ...{
                        MenuItem(
                          text: menu,
                          selected: state.selectedMenu == menu,
                          onTap: () {
                            context
                                .read<MenuBloc>()
                                .add(MenuItemClick(selectedItem: menu));
                          },
                        ),
                      }
                    ],
                  ),
                );
              },
            ),
            const SizedBox(
              height: 229,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "Version 10.0.1",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
