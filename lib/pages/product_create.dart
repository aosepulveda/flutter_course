import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String titleValue = '';
  String descriptionValue = '';
  double priceValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
            hintText: 'Please enter a title'
          ),
          onChanged: (String value) {
            setState(() {
              titleValue = value;
            });
          },
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Please enter a description'
          ),
          maxLines: 4,
          keyboardType: TextInputType.multiline,
          onChanged: (String value) {
            setState(() {
              descriptionValue = value;
            });
          },
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Please enter a price'
          ),
          keyboardType: TextInputType.number,
          onChanged: (String value) {
            setState(() {
              priceValue = double.parse(value);
            });
          },
        ),
      ],
    );
  }
}
