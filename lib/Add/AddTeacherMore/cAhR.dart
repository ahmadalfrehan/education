import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/cubit.dart';
import '../../Cubit/states.dart';

class CaHr extends StatelessWidget {

  CaHr({Key? key}) : super(key: key);

  String? markCaHr1;
  String? markCaHr2;
  String? markCaHr3;
  String? markCaHr4;
  String? markCaHr5;
  String? markCaHr6;
  String? markCaHr7;
  String? markCaHr8;
  String? markCaHr9;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Education()..createDataBase(),
      child: BlocConsumer<Education, Educational>(
        listener: (context, state) {},
        builder: (context, state) {
          var E = Education.get(context);
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text('cAhR'),
                    Text(E.cAhR1 + E.markCaHr1.toString(),),
                    Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr1 = E.ChangeStingVar(markCaHr1.toString(), '1');
                            },
                            child: const Text('1'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr1 = E.ChangeStingVar(E.markCaHr1.toString(), '2');
                            },
                            child: const Text('2'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr1 = E.ChangeStingVar(E.markCaHr1.toString(), '3');
                            },
                            child: const Text('3'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr1 = E.ChangeStingVar(E.markCaHr1.toString(), '4');
                            },
                            child: const Text('4'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr1 = E.ChangeStingVar(E.markCaHr1.toString(), '5');
                            },
                            child: const Text('5'),
                          ),
                        ),
                      ],
                    ),
                    Text(E.cAhR2 + E.markCaHr2.toString()),
                    Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr2 = E.ChangeStingVar(E.markCaHr2.toString(), '1');
                            },
                            child: const Text('1'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr2 = E.ChangeStingVar(E.markCaHr2.toString(), '2');
                            },
                            child: const Text('2'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr2 = E.ChangeStingVar(E.markCaHr2.toString(), '3');
                            },
                            child: const Text('3'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr2 = E.ChangeStingVar(E.markCaHr2.toString(), '4');
                            },
                            child: const Text('4'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr2 = E.ChangeStingVar(E.markCaHr2.toString(), '5');
                            },
                            child: const Text('5'),
                          ),
                        ),
                      ],
                    ),
                    Text(E.cAhR3 + E.markCaHr3.toString()),
                    Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr3 = E.ChangeStingVar(E.markCaHr3.toString(), '1');
                            },
                            child: const Text('1'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr3 = E.ChangeStingVar(E.markCaHr3.toString(), '2');
                            },
                            child: const Text('2'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr3 = E.ChangeStingVar(E.markCaHr3.toString(), '3');
                            },
                            child: const Text('3'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr3 = E.ChangeStingVar(E.markCaHr3.toString(), '4');
                            },
                            child: const Text('4'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr3 = E.ChangeStingVar(E.markCaHr3.toString(), '5');
                            },
                            child: const Text('5'),
                          ),
                        ),
                      ],
                    ),
                    Text(E.cAhr4 + E.markCaHr4.toString()),
                    Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr4 = E.ChangeStingVar(E.markCaHr4.toString(), '1');
                            },
                            child: const Text('1'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr4 = E.ChangeStingVar(E.markCaHr4.toString(), '2');
                            },
                            child: const Text('2'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr4 = E.ChangeStingVar(E.markCaHr4.toString(), '3');
                            },
                            child: const Text('3'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr4 = E.ChangeStingVar(E.markCaHr4.toString(), '4');
                            },
                            child: const Text('4'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr4 = E.ChangeStingVar(E.markCaHr4.toString(), '5');
                            },
                            child: const Text('5'),
                          ),
                        ),
                      ],
                    ),
                    Text(E.cAhr5 + E.markCaHr5.toString()),
                    Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr5 = E.ChangeStingVar(E.markCaHr5.toString(), '1');
                            },
                            child: const Text('1'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr5 = E.ChangeStingVar(E.markCaHr5.toString(), '2');
                            },
                            child: const Text('2'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr5 = E.ChangeStingVar(E.markCaHr5.toString(), '3');
                            },
                            child: const Text('3'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr5 = E.ChangeStingVar(E.markCaHr5.toString(), '4');
                            },
                            child: const Text('4'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr5 = E.ChangeStingVar(E.markCaHr5.toString(), '5');
                            },
                            child: const Text('5'),
                          ),
                        ),
                      ],
                    ),
                    Text(E.cAhr6 + E.markCaHr6.toString()),
                    Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr6 = E.ChangeStingVar(E.markCaHr6.toString(), '1');
                            },
                            child: const Text('1'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr6 = E.ChangeStingVar(E.markCaHr6.toString(), '2');
                            },
                            child: const Text('2'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr6 = E.ChangeStingVar(E.markCaHr6.toString(), '3');
                            },
                            child: const Text('3'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr6 = E.ChangeStingVar(E.markCaHr6.toString(), '4');
                            },
                            child: const Text('4'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr6 = E.ChangeStingVar(E.markCaHr6.toString(), '5');
                            },
                            child: const Text('5'),
                          ),
                        ),
                      ],
                    ),
                    Text(E.cAhr7 + E.markCaHr7.toString()),
                    Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr7 = E.ChangeStingVar(E.markCaHr7.toString(), '1');
                            },
                            child: const Text('1'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr7 = E.ChangeStingVar(E.markCaHr7.toString(), '2');
                            },
                            child: const Text('2'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr7 = E.ChangeStingVar(E.markCaHr7.toString(), '3');
                            },
                            child: const Text('3'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr7 = E.ChangeStingVar(E.markCaHr7.toString(), '4');
                            },
                            child: const Text('4'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr7 = E.ChangeStingVar(E.markCaHr7.toString(), '5');
                            },
                            child: const Text('5'),
                          ),
                        ),
                      ],
                    ),
                    Text(E.cAhr8 + E.markCaHr8.toString()),
                    Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr8 = E.ChangeStingVar(E.markCaHr8.toString(), '1');
                            },
                            child: const Text('1'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr8 = E.ChangeStingVar(E.markCaHr8.toString(), '2');
                            },
                            child: const Text('2'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr8 = E.ChangeStingVar(E.markCaHr8.toString(), '3');
                            },
                            child: const Text('3'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr8 = E.ChangeStingVar(E.markCaHr8.toString(), '4');
                            },
                            child: const Text('4'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr8 = E.ChangeStingVar(E.markCaHr8.toString(), '5');
                            },
                            child: const Text('5'),
                          ),
                        ),
                      ],
                    ),
                    Text(E.cAhr9 + E.markCaHr9.toString()),
                    Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr9 = E.ChangeStingVar(E.markCaHr9.toString(), '1');
                            },
                            child: const Text('1'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr9 = E.ChangeStingVar(E.markCaHr9.toString(), '2');
                            },
                            child: const Text('2'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr9 = E.ChangeStingVar(E.markCaHr9.toString(), '3');
                            },
                            child: const Text('3'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr9 = E.ChangeStingVar(E.markCaHr9.toString(), '4');
                            },
                            child: const Text('4'),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              E.markCaHr9 = E.ChangeStingVar(E.markCaHr9.toString(), '5');
                            },
                            child: const Text('5'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
