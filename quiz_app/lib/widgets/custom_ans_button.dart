import 'package:flutter/material.dart';

class CustomAnsButton extends StatelessWidget {
  const CustomAnsButton({
    super.key,
    required this.ansText,
    required this.onTap,
  });

  final void Function() onTap;
  final String ansText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10),
        backgroundColor: const Color.fromARGB(255, 120, 62, 170),
        foregroundColor: Colors.white,
        // fixedSize: Size(400, double.infinity),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(ansText, style: TextStyle(color: Colors.white, fontSize: 15),textAlign: TextAlign.center,),
    );
  }
}
