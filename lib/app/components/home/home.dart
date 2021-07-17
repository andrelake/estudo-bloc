import 'package:bloc_estudos/app/components/home/home-bloc.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  var bloc;

  @override
  void initState() { 
    super.initState();
    
    bloc = HomeBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            child: StreamBuilder(
              stream: bloc.getCount,
              initialData: 0,
              builder: (context, snapshot) {
                return Text('Contador: ${snapshot.data}');
            },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: bloc.increment, 
              child: Text('+')
            ),
            SizedBox(width: 20,),
            ElevatedButton(
              onPressed: bloc.decrement, 
              child: Text('-')
            ),
            SizedBox(width: 20,),
            ElevatedButton(
              onPressed: bloc.reset, 
              child: Text('reset')
            ),
          ],
        ),
      ],
    );
  }
}