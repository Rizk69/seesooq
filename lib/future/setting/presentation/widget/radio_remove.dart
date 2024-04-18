import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/hex_color.dart';

class RadioRemove extends StatefulWidget {
  @override
  _RadioRemoveState createState() => _RadioRemoveState();
}

class _RadioRemoveState extends State<RadioRemove> {
  String? _selectedResone;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15)
            ),
            child: ListTile(
              title:  Text('ضع سبب الحذف هنا',style: TextStyle(color:HexColor('200E32'),fontSize: 14),),
              leading: Radio(
                value: '1',
                groupValue: _selectedResone,
                onChanged: (value) {
                  setState(() {
                    _selectedResone = value as String?;
                  });
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),

            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15)
            ),
            child: ListTile(
              title:  Text('ضع سبب الحذف هنا',style: TextStyle(color:HexColor('200E32'),fontSize: 14),),
              leading: Radio(
                value: '2',
                groupValue: _selectedResone,
                onChanged: (value) {
                  setState(() {
                    _selectedResone = value as String?;
                  });
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),

            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15)
            ),
            child: ListTile(
              title:  Text('ضع سبب الحذف هنا',style: TextStyle(color:HexColor('200E32'),fontSize: 14),),
              leading: Radio(
                value: '3',
                groupValue: _selectedResone,
                onChanged: (value) {
                  setState(() {
                    _selectedResone = value as String?;
                  });
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),

            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15)
            ),
            child: ListTile(
              title:  Text('ضع سبب الحذف هنا',style: TextStyle(color:HexColor('200E32'),fontSize: 14),),
              leading: Radio(
                value: '4',
                groupValue: _selectedResone,
                onChanged: (value) {
                  setState(() {
                    _selectedResone = value as String?;
                  });
                },
              ),
            ),
          ),

        ],
      ),
    );
  }
}
