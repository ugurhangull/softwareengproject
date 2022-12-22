import 'package:flutter/material.dart';

Widget button(
    {required BuildContext context, required String label, buttonWidth}) {
  return Container(
      padding: const EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
          color: Colors.cyan, borderRadius: BorderRadius.circular(30)),
      alignment: Alignment.center,
      width: buttonWidth != null
          ? buttonWidth
          : MediaQuery.of(context).size.width - 48,
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ));
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = Colors.black;
  return ListTile(
    leading: Icon(
      icon,
      color: color,
    ),
    title: Text(
      text,
      style: TextStyle(color: color),
    ),
    onTap: onClicked,
  );
}

Widget buildHeader({
  required String name,
  required String eposta,
}) =>
    InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 10)),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Text(
                "U",
                style: TextStyle(color: Colors.cyan, fontSize: 25),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  eposta,
                  style: TextStyle(fontSize: 10, color: Colors.white),
                )
              ],
            ),
          ],
        ),
      ),
    );
