import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:8),
      child: Form(
        key: _formKey,
        child: SizedBox(
          height: 40,
          child: Row(
            children: [
              SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Senior Project Manager, London',

                    ),

                  )),
              IconButton(
                icon: Icon(Icons.clear),
                onPressed: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
