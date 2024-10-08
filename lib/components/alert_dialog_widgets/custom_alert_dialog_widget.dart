import 'package:flutter/material.dart';

class CustomAlertDialogWidget extends StatelessWidget {
  const CustomAlertDialogWidget(
      {super.key, this.onPressedYes, this.onPressedNo});
  final Function()? onPressedYes;
  final Function()? onPressedNo;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xffFFFFFF),
      shape: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffB98875)),
          borderRadius: BorderRadius.circular(7)),
      title: SizedBox(
        height: 120,
        width: 320,
        child: RichText(
            text: const TextSpan(children: [
          TextSpan(
              text: "Are you sure you want to delete",
              style: TextStyle(color: Colors.black, fontSize: 24)),
          TextSpan(
              text: " Espresso",
              style: TextStyle(color: Color(0xffB98875), fontSize: 24)),
          TextSpan(
              text: " from cart",
              style: TextStyle(color: Colors.black, fontSize: 24))
        ])),
      ),
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      actions: [
        ElevatedButton(
            style: const ButtonStyle(
                foregroundColor: WidgetStatePropertyAll(Color(0xffFFFFFF)),
                minimumSize: WidgetStatePropertyAll(Size(110, 50)),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Color(0xffB98875)),
                    borderRadius: BorderRadius.all(Radius.circular(24)))),
                backgroundColor: WidgetStatePropertyAll(Color(0xffB98875))),
            onPressed: onPressedYes,
            child: const Text(
              "Yes",
              style: TextStyle(fontSize: 20),
            )),
        ElevatedButton(
            style: const ButtonStyle(
                foregroundColor: WidgetStatePropertyAll(Color(0xffB98875)),
                minimumSize: WidgetStatePropertyAll(Size(110, 50)),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Color(0xffB98875)),
                    borderRadius: BorderRadius.all(Radius.circular(24)))),
                backgroundColor: WidgetStatePropertyAll(Color(0xffFFFFFF))),
            onPressed: onPressedNo,
            child: const Text(
              "No",
              style: TextStyle(fontSize: 20),
            )),
      ],
    );
  }
}
