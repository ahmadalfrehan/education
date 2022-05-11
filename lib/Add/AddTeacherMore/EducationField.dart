import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/cubit.dart';
import '../../Cubit/states.dart';

class EducationField extends StatelessWidget {
  EducationField({Key? key}) : super(key: key);

  Widget text(String t) {
    return CircleAvatar(
      child: Text(t),
      backgroundColor: const Color(0xFF0b4972),
    );
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Education()..createDataBase(),
      child: BlocConsumer<Education, Educational>(
        listener: (context, state) {},
        builder: (context, state) {
          var E = Education.get(context);
          return Column(children: [
            const Divider(color: Colors.black, thickness: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('المجال التربوي والتقويم :',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18)),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.education1 +
                '\t' +
                E.markEducationField1.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField1 =
                          E.ChangeStingVar(
                              E.markEducationField1
                                  .toString(),
                              '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField1 =
                          E.ChangeStingVar(
                              E.markEducationField1
                                  .toString(),
                              '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField1 =
                          E.ChangeStingVar(
                              E.markEducationField1
                                  .toString(),
                              '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField1 =
                          E.ChangeStingVar(
                              E.markEducationField1
                                  .toString(),
                              '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField1 =
                          E.ChangeStingVar(
                              E.markEducationField1
                                  .toString(),
                              '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.education2 +
                '\t' +
                E.markEducationField2.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField2 =
                          E.ChangeStingVar(
                              E.markEducationField2
                                  .toString(),
                              '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField2 =
                          E.ChangeStingVar(
                              E.markEducationField2
                                  .toString(),
                              '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField2 =
                          E.ChangeStingVar(
                              E.markEducationField2
                                  .toString(),
                              '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField2 =
                          E.ChangeStingVar(
                              E.markEducationField2
                                  .toString(),
                              '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField2 =
                          E.ChangeStingVar(
                              E.markEducationField2
                                  .toString(),
                              '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.education3 +
                '\t' +
                E.markEducationField3.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField3 =
                          E.ChangeStingVar(
                              E.markEducationField3
                                  .toString(),
                              '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField3 =
                          E.ChangeStingVar(
                              E.markEducationField3
                                  .toString(),
                              '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField3 =
                          E.ChangeStingVar(
                              E.markEducationField3
                                  .toString(),
                              '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField3 =
                          E.ChangeStingVar(
                              E.markEducationField3
                                  .toString(),
                              '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField3 =
                          E.ChangeStingVar(
                              E.markEducationField3
                                  .toString(),
                              '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.education4 +
                '\t' +
                E.markEducationField4.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField4 =
                          E.ChangeStingVar(
                              E.markEducationField4
                                  .toString(),
                              '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField4 =
                          E.ChangeStingVar(
                              E.markEducationField4
                                  .toString(),
                              '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField4 =
                          E.ChangeStingVar(
                              E.markEducationField4
                                  .toString(),
                              '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField4 =
                          E.ChangeStingVar(
                              E.markEducationField4
                                  .toString(),
                              '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField4 =
                          E.ChangeStingVar(
                              E.markEducationField4
                                  .toString(),
                              '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.education5 +
                '\t' +
                E.markEducationField5.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField5 =
                          E.ChangeStingVar(
                              E.markEducationField5
                                  .toString(),
                              '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField5 =
                          E.ChangeStingVar(
                              E.markEducationField5
                                  .toString(),
                              '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField5 =
                          E.ChangeStingVar(
                              E.markEducationField5
                                  .toString(),
                              '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField5 =
                          E.ChangeStingVar(
                              E.markEducationField5
                                  .toString(),
                              '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField5 =
                          E.ChangeStingVar(
                              E.markEducationField5
                                  .toString(),
                              '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.education6 +
                '\t' +
                E.markEducationField6.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField6 =
                          E.ChangeStingVar(
                              E.markEducationField6
                                  .toString(),
                              '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField6 =
                          E.ChangeStingVar(
                              E.markEducationField6
                                  .toString(),
                              '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField6 =
                          E.ChangeStingVar(
                              E.markEducationField6
                                  .toString(),
                              '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField6 =
                          E.ChangeStingVar(
                              E.markEducationField6
                                  .toString(),
                              '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField6 =
                          E.ChangeStingVar(
                              E.markEducationField6
                                  .toString(),
                              '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.education7 +
                '\t' +
                E.markEducationField7.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField7 =
                          E.ChangeStingVar(
                              E.markEducationField7
                                  .toString(),
                              '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField7 =
                          E.ChangeStingVar(
                              E.markEducationField7
                                  .toString(),
                              '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField7 =
                          E.ChangeStingVar(
                              E.markEducationField7
                                  .toString(),
                              '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField7 =
                          E.ChangeStingVar(
                              E.markEducationField7
                                  .toString(),
                              '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField7 =
                          E.ChangeStingVar(
                              E.markEducationField7
                                  .toString(),
                              '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.education8 +
                '\t' +
                E.markEducationField8.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField8 =
                          E.ChangeStingVar(
                              E.markEducationField8
                                  .toString(),
                              '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField8 =
                          E.ChangeStingVar(
                              E.markEducationField8
                                  .toString(),
                              '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField8 =
                          E.ChangeStingVar(
                              E.markEducationField8
                                  .toString(),
                              '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField8 =
                          E.ChangeStingVar(
                              E.markEducationField8
                                  .toString(),
                              '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField8 =
                          E.ChangeStingVar(
                              E.markEducationField8
                                  .toString(),
                              '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.education9 +
                '\t' +
                E.markEducationField9.toString()),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField9 =
                          E.ChangeStingVar(
                              E.markEducationField9
                                  .toString(),
                              '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField9 =
                          E.ChangeStingVar(
                              E.markEducationField9
                                  .toString(),
                              '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField9 =
                          E.ChangeStingVar(
                              E.markEducationField9
                                  .toString(),
                              '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField9 =
                          E.ChangeStingVar(
                              E.markEducationField9
                                  .toString(),
                              '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markEducationField9 =
                          E.ChangeStingVar(
                              E.markEducationField9
                                  .toString(),
                              '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const Divider(color: Colors.black, thickness: 1),

          ],);
        },
      ),
    );
  }
}
