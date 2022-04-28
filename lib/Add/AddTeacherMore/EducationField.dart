import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/cubit.dart';
import '../../Cubit/states.dart';

class EducationField extends StatelessWidget {
  EducationField({Key? key}) : super(key: key);

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
                      Text('المجال التربوي'),
                      Text(E.education1 + E.markEducationField1.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField1 = E.ChangeStingVar(
                                    E.markEducationField1.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField1 = E.ChangeStingVar(
                                    E.markEducationField1.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField1 = E.ChangeStingVar(
                                    E.markEducationField1.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField1 = E.ChangeStingVar(
                                    E.markEducationField1.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField1 = E.ChangeStingVar(
                                    E.markEducationField1.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.education2 + E.markEducationField2.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField2 = E.ChangeStingVar(
                                    E.markEducationField2.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField2 = E.ChangeStingVar(
                                    E.markEducationField2.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField2 = E.ChangeStingVar(
                                    E.markEducationField2.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField2 = E.ChangeStingVar(
                                    E.markEducationField2.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField2 = E.ChangeStingVar(
                                    E.markEducationField2.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.education3 + E.markEducationField3.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField3 = E.ChangeStingVar(
                                    E.markEducationField3.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField3 = E.ChangeStingVar(
                                    E.markEducationField3.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField3 = E.ChangeStingVar(
                                    E.markEducationField3.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField3 = E.ChangeStingVar(
                                    E.markEducationField3.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField3 = E.ChangeStingVar(
                                    E.markEducationField3.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.education4 + E.markEducationField4.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField4 = E.ChangeStingVar(
                                    E.markEducationField4.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField4 = E.ChangeStingVar(
                                    E.markEducationField4.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField4 = E.ChangeStingVar(
                                    E.markEducationField4.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField4 = E.ChangeStingVar(
                                    E.markEducationField4.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField4 = E.ChangeStingVar(
                                    E.markEducationField4.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.education5 + E.markEducationField5.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField5 = E.ChangeStingVar(
                                    E.markEducationField5.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField5 = E.ChangeStingVar(
                                    E.markEducationField5.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField5 = E.ChangeStingVar(
                                    E.markEducationField5.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField5 = E.ChangeStingVar(
                                    E.markEducationField5.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField5 = E.ChangeStingVar(
                                    E.markEducationField5.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.education6 + E.markEducationField6.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField6 = E.ChangeStingVar(
                                    E.markEducationField6.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField6 = E.ChangeStingVar(
                                    E.markEducationField6.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField6 = E.ChangeStingVar(
                                    E.markEducationField6.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField6 = E.ChangeStingVar(
                                    E.markEducationField6.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField6 = E.ChangeStingVar(
                                    E.markEducationField6.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.education7 + E.markEducationField7.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField7 = E.ChangeStingVar(
                                    E.markEducationField7.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField7 = E.ChangeStingVar(
                                    E.markEducationField7.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField7 = E.ChangeStingVar(
                                    E.markEducationField7.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField7 = E.ChangeStingVar(
                                    E.markEducationField7.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField7 = E.ChangeStingVar(
                                    E.markEducationField7.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.education8 + E.markEducationField8.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField8 = E.ChangeStingVar(
                                    E.markEducationField8.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField8 = E.ChangeStingVar(
                                    E.markEducationField8.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField8 = E.ChangeStingVar(
                                    E.markEducationField8.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField8 = E.ChangeStingVar(
                                    E.markEducationField8.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField8 = E.ChangeStingVar(
                                    E.markEducationField8.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.education9 + E.markEducationField9.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField9 = E.ChangeStingVar(
                                    E.markEducationField9.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField9 = E.ChangeStingVar(
                                    E.markEducationField9.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField9 = E.ChangeStingVar(
                                    E.markEducationField9.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField9 = E.ChangeStingVar(
                                    E.markEducationField9.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField9 = E.ChangeStingVar(
                                    E.markEducationField9.toString(), '5');
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
