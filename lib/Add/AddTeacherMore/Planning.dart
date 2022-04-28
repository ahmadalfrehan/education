import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/cubit.dart';
import '../../Cubit/states.dart';

class Planning extends StatelessWidget {

  Planning({Key? key}) : super(key: key);

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
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text('planning'),
                      Text(E.s1 + E.mark1.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark1 = E.ChangeStingVar(E.mark1.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark1 = E.ChangeStingVar(E.mark1.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark1 = E.ChangeStingVar(E.mark1.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark1 = E.ChangeStingVar(E.mark1.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark1 = E.ChangeStingVar(E.mark1.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.s2 + E.mark2.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark2 = E.ChangeStingVar(E.mark2.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark2 = E.ChangeStingVar(E.mark2.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark2 = E.ChangeStingVar(E.mark2.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark2 = E.ChangeStingVar(E.mark2.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark2 = E.ChangeStingVar(E.mark2.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.s3 + E.mark3.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark3 = E.ChangeStingVar(E.mark3.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark3 = E.ChangeStingVar(E.mark3.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark3 = E.ChangeStingVar(E.mark3.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark3 = E.ChangeStingVar(E.mark3.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark3 = E.ChangeStingVar(E.mark3.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.s4 + E.mark4.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark4 = E.ChangeStingVar(E.mark4.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark4 = E.ChangeStingVar(E.mark4.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark4 = E.ChangeStingVar(E.mark4.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark4 = E.ChangeStingVar(E.mark4.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark4 = E.ChangeStingVar(E.mark4.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.s5 + E.mark5.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark5 = E.ChangeStingVar(E.mark5.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark5 = E.ChangeStingVar(E.mark5.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark5 = E.ChangeStingVar(E.mark5.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark5 = E.ChangeStingVar(E.mark5.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark5 = E.ChangeStingVar(E.mark5.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.s6 + E.mark6.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark6 = E.ChangeStingVar(E.mark6.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark6 = E.ChangeStingVar(E.mark6.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark6 = E.ChangeStingVar(E.mark6.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark6 = E.ChangeStingVar(E.mark6.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.mark6 = E.ChangeStingVar(E.mark6.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}