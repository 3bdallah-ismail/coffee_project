import 'package:flutter/material.dart';

class SizeSelector extends StatefulWidget {
  final Function(String) onSizeSelected;

  const SizeSelector({super.key, required this.onSizeSelected});

  @override
  _SizeSelectorState createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  String selectedSize = 'M';

  @override
  void initState() {
    super.initState();
    widget.onSizeSelected(selectedSize);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          ['S', 'M', 'L'].map((size) {
            bool isSelected = size == selectedSize;
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSize = size;
                  });
                  widget.onSizeSelected(size);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.orange[100] : Colors.white,
                    border: Border.all(
                      color: isSelected ? Colors.orange : Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      size,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isSelected ? Colors.orange : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
    );
  }
}
