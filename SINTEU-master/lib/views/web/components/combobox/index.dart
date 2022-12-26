import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class ComboBox extends StatefulWidget {
  final String hint;
  final void Function(dynamic value) aoSelecionar;
  final List<DropdowItem> items;
  final TextEditingController controller;

  const ComboBox(
      {Key? key,
      required this.hint,
      required this.aoSelecionar,
      required this.items,
      required this.controller})
      : super(key: key);

  @override
  _ComboBoxState createState() => _ComboBoxState();
}

class _ComboBoxState extends State<ComboBox> {
  dynamic _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: DropdownSearch<DropdowItem>(
          mode: Mode.BOTTOM_SHEET,
          autoFocusSearchBox: true,
          showSearchBox: true,
          showSelectedItem: false,
          items: widget.items,
          //label: widget.hint,
          hint: widget.hint,
          //popupItemDisabled: (String s) => s.startsWith('I'),
          onChanged: (value) {
            _selectedValue = value;
            widget.controller.text = value!.key;
            widget.aoSelecionar(value);
          },
          selectedItem: _selectedValue,
          dropdownSearchDecoration: InputDecoration(
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
            
          )
          
          ),
    );
  }
}

class DropdowItem {
  final String key;
  final String value;

  DropdowItem({required this.key, required this.value});
  

  @override
  String toString() {
    
    return value;
  }
}
