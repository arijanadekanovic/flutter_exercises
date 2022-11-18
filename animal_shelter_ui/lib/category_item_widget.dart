import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
    required this.text,
    required this.imagePath,
    this.isSelected = false,
    this.onTap,
  });

  final String text, imagePath;
  final bool isSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        decoration: BoxDecoration(
          color: isSelected ? const Color.fromARGB(255, 238, 200, 246) : const Color.fromRGBO(245, 241, 255, 70),
          border: Border.all(color: Colors.purple),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Text(text),
            const SizedBox(width: 15),
            Image.asset(
              imagePath,
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
