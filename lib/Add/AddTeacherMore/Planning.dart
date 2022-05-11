import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/cubit.dart';
import '../../Cubit/states.dart';

class Planning extends StatelessWidget {

  Planning({Key? key}) : super(key: key);

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
                Text(
                  'التخطيط :',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.s1 + '\t' + E.mark1.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark1 = E.ChangeStingVar(
                          E.mark1.toString(), '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark1 = E.ChangeStingVar(
                          E.mark1.toString(), '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark1 = E.ChangeStingVar(
                          E.mark1.toString(), '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark1 = E.ChangeStingVar(
                          E.mark1.toString(), '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark1 = E.ChangeStingVar(
                          E.mark1.toString(), '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.s2 + '\t' + E.mark2.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark2 = E.ChangeStingVar(
                          E.mark2.toString(), '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark2 = E.ChangeStingVar(
                          E.mark2.toString(), '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark2 = E.ChangeStingVar(
                          E.mark2.toString(), '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark2 = E.ChangeStingVar(
                          E.mark2.toString(), '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark2 = E.ChangeStingVar(
                          E.mark2.toString(), '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.s3 + '\t' + E.mark3.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark3 = E.ChangeStingVar(
                          E.mark3.toString(), '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark3 = E.ChangeStingVar(
                          E.mark3.toString(), '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark3 = E.ChangeStingVar(
                          E.mark3.toString(), '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark3 = E.ChangeStingVar(
                          E.mark3.toString(), '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark3 = E.ChangeStingVar(
                          E.mark3.toString(), '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.s4 + '\t' + E.mark4.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark4 = E.ChangeStingVar(
                          E.mark4.toString(), '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark4 = E.ChangeStingVar(
                          E.mark4.toString(), '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark4 = E.ChangeStingVar(
                          E.mark4.toString(), '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark4 = E.ChangeStingVar(
                          E.mark4.toString(), '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark4 = E.ChangeStingVar(
                          E.mark4.toString(), '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.s5 + '\t' + E.mark5.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark5 = E.ChangeStingVar(
                          E.mark5.toString(), '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark5 = E.ChangeStingVar(
                          E.mark5.toString(), '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark5 = E.ChangeStingVar(
                          E.mark5.toString(), '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark5 = E.ChangeStingVar(
                          E.mark5.toString(), '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark5 = E.ChangeStingVar(
                          E.mark5.toString(), '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.s6 + '\t' + E.mark6.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark6 = E.ChangeStingVar(
                          E.mark6.toString(), '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark6 = E.ChangeStingVar(
                          E.mark6.toString(), '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark6 = E.ChangeStingVar(
                          E.mark6.toString(), '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark6 = E.ChangeStingVar(
                          E.mark6.toString(), '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.mark6 = E.ChangeStingVar(
                          E.mark6.toString(), '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(color: Colors.black, thickness: 1),
          ],);
        },
      ),
    );
  }
}