import 'package:flutter/material.dart';

final String imgLink = 'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80';

class CardSliders extends StatelessWidget {
  const CardSliders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      height: 183,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: 88,
                      child: Image.network(
                          imgLink,fit: BoxFit.cover
                      ),
                    ),
                    Column(
                       children: [
                         Text('Maya is interested in'),
                         Text('Sr. Business manager'),
                         Text('Chief of Staff'),
                         Text('London, Remotely'),
                       ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
