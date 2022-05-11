import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/cubit.dart';
import '../../Cubit/states.dart';

class CaHr extends StatelessWidget {
  CaHr({Key? key}) : super(key: key);

  Widget text(String t) {
    return CircleAvatar(
      child: Text(t),
      backgroundColor: const Color(0xFF0b4972),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Education, Educational>(
      listener: (context, state) {},
      builder: (context, state) {
        var E = Education.get(context);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(color: Colors.black, thickness: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('إدارة الصف والعلاقات الإنسانية ',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              E.cAhR1 + '\t' + E.markCaHr1.toString(),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr1 =
                          E.ChangeStingVar(E.markCaHr1.toString(), '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr1 =
                          E.ChangeStingVar(E.markCaHr1.toString(), '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr1 =
                          E.ChangeStingVar(E.markCaHr1.toString(), '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr1 =
                          E.ChangeStingVar(E.markCaHr1.toString(), '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr1 =
                          E.ChangeStingVar(E.markCaHr1.toString(), '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.cAhR2 + '\t' + E.markCaHr2.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr2 =
                          E.ChangeStingVar(E.markCaHr2.toString(), '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr2 =
                          E.ChangeStingVar(E.markCaHr2.toString(), '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr2 =
                          E.ChangeStingVar(E.markCaHr2.toString(), '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr2 =
                          E.ChangeStingVar(E.markCaHr2.toString(), '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr2 =
                          E.ChangeStingVar(E.markCaHr2.toString(), '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.cAhR3 + '\t' + E.markCaHr3.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr3 =
                          E.ChangeStingVar(E.markCaHr3.toString(), '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr3 =
                          E.ChangeStingVar(E.markCaHr3.toString(), '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr3 =
                          E.ChangeStingVar(E.markCaHr3.toString(), '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr3 =
                          E.ChangeStingVar(E.markCaHr3.toString(), '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr3 =
                          E.ChangeStingVar(E.markCaHr3.toString(), '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.cAhr4 + '\t' + E.markCaHr4.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr4 =
                          E.ChangeStingVar(E.markCaHr4.toString(), '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr4 =
                          E.ChangeStingVar(E.markCaHr4.toString(), '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr4 =
                          E.ChangeStingVar(E.markCaHr4.toString(), '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr4 =
                          E.ChangeStingVar(E.markCaHr4.toString(), '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr4 =
                          E.ChangeStingVar(E.markCaHr4.toString(), '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.cAhr5 + E.markCaHr5.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr5 =
                          E.ChangeStingVar(E.markCaHr5.toString(), '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr5 =
                          E.ChangeStingVar(E.markCaHr5.toString(), '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr5 =
                          E.ChangeStingVar(E.markCaHr5.toString(), '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr5 =
                          E.ChangeStingVar(E.markCaHr5.toString(), '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr5 =
                          E.ChangeStingVar(E.markCaHr5.toString(), '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.cAhr6 + '\t' + E.markCaHr6.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr6 =
                          E.ChangeStingVar(E.markCaHr6.toString(), '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr6 =
                          E.ChangeStingVar(E.markCaHr6.toString(), '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr6 =
                          E.ChangeStingVar(E.markCaHr6.toString(), '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr6 =
                          E.ChangeStingVar(E.markCaHr6.toString(), '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr6 =
                          E.ChangeStingVar(E.markCaHr6.toString(), '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.cAhr7 + '\t' + E.markCaHr7.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr7 =
                          E.ChangeStingVar(E.markCaHr7.toString(), '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr7 =
                          E.ChangeStingVar(E.markCaHr7.toString(), '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr7 =
                          E.ChangeStingVar(E.markCaHr7.toString(), '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr7 =
                          E.ChangeStingVar(E.markCaHr7.toString(), '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr7 =
                          E.ChangeStingVar(E.markCaHr7.toString(), '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.cAhr8 + '\t' + E.markCaHr8.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr8 =
                          E.ChangeStingVar(E.markCaHr8.toString(), '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr8 =
                          E.ChangeStingVar(E.markCaHr8.toString(), '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr8 =
                          E.ChangeStingVar(E.markCaHr8.toString(), '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr8 =
                          E.ChangeStingVar(E.markCaHr8.toString(), '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr8 =
                          E.ChangeStingVar(E.markCaHr8.toString(), '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.cAhr9 + '\t' + E.markCaHr9.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr9 =
                          E.ChangeStingVar(E.markCaHr9.toString(), '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr9 =
                          E.ChangeStingVar(E.markCaHr9.toString(), '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr9 =
                          E.ChangeStingVar(E.markCaHr9.toString(), '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr9 =
                          E.ChangeStingVar(E.markCaHr9.toString(), '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markCaHr9 =
                          E.ChangeStingVar(E.markCaHr9.toString(), '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        );
      },
    );
  }
}
