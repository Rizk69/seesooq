import 'package:flutter/material.dart';

enum OfferType { date, time }

class OfferWidget extends StatefulWidget {
  const OfferWidget({super.key, required this.onChanged, required this.offerType});

  final Function(String) onChanged;
  final OfferType offerType;

  @override
  State<OfferWidget> createState() => _OfferWidgetState();
}

class _OfferWidgetState extends State<OfferWidget> {
  final TextEditingController _offerPrice = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.offerType == OfferType.date) {
          showDatePicker(
            context: context,
            firstDate: DateTime.utc(2000),
            lastDate: DateTime.now(),
            initialDate: DateTime.now(),
          ).then((value) {
            widget.onChanged(value.toString());
            _offerPrice.text = value.toString().substring(0, 10);
          });
        } else {
          showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
          ).then((value) {
            widget.onChanged(value.toString());
            _offerPrice.text = value.toString().substring(0, 10);
          });
        }
      },
      child: TextFormField(
        enabled: false,
        controller: _offerPrice,
      ),
    );
  }
}
