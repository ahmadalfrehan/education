import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Cubit/cubit.dart';
import '../Cubit/states.dart';
import '../HomeLayout.dart';
import '../main.dart';

class AddTeacher extends StatelessWidget {
  final int index;
  final List list;
  final nameController = TextEditingController();
  var phoneController = TextEditingController();
  final classController = TextEditingController();
  final divisionController = TextEditingController();
  final dateController = TextEditingController();
  final titleOfLessonController = TextEditingController();
  final itemController = TextEditingController();

  AddTeacher(this.index, this.list, {Key? key}) : super(key: key);
  var far = GlobalKey<FormState>();
  double heights = 40;
  double widths = 350;
  int idSchool = 0;

  /*
  *
        if (state is EducationalAddTeacherSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('successfully added the ' + state.num.toString()),
            ),
          );
          Timer(const Duration(seconds: 2), () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomeLayout()));
          });
        }
        if (state is EducationalAddTeacherErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('An error occurred try again'),
              backgroundColor: Colors.red,
            ),
          );
        }*/
  @override
  Widget build(BuildContext context) {
    idSchool = list[index]['idSchool'];
    var E = Education.get(context);
    phoneController.text = list[index]['name'];
    print(idSchool.toString());
    print(phoneController.text);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      backgroundColor: const Color(0xFFECF0F3),
      body: Form(
        key: UniqueKey(),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white54,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              TextFormF(
                                  "الاسم", Icons.person, nameController, E),
                              TextFormF(
                                  "الصف", Icons.person, classController, E),
                              TextFormF("الشعبة", Icons.info_outline,
                                  divisionController, E),
                              TextFormF("اسم المدرسة", Icons.phone,
                                  phoneController, E),
                              TextFormF("التاريخ", Icons.price_check,
                                  dateController, E),
                              TextFormF("عنوان الدرس", Icons.price_check,
                                  titleOfLessonController, E),
                              TextFormF("المادة", Icons.price_change,
                                  itemController, E),
                            ],
                          ),
                        ),
                        BlocConsumer<Education,Educational>(
                          listener: (context, state) {},
                          builder: (context, state) {
                            return Column(
                              children: [
                                const SizedBox(height: 20),
                                const Divider(
                                    color: Colors.black, thickness: 1),
                                const Text('cAhR'),
                                Text(
                                  E.cAhR1 + E.markCaHr1.toString(),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr1 = E.ChangeStingVar(
                                              E.markCaHr1.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr1 = E.ChangeStingVar(
                                              E.markCaHr1.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr1 = E.ChangeStingVar(
                                              E.markCaHr1.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr1 = E.ChangeStingVar(
                                              E.markCaHr1.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr1 = E.ChangeStingVar(
                                              E.markCaHr1.toString(), '5');
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
                                          E.markCaHr2 = E.ChangeStingVar(
                                              E.markCaHr2.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr2 = E.ChangeStingVar(
                                              E.markCaHr2.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr2 = E.ChangeStingVar(
                                              E.markCaHr2.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr2 = E.ChangeStingVar(
                                              E.markCaHr2.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr2 = E.ChangeStingVar(
                                              E.markCaHr2.toString(), '5');
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
                                          E.markCaHr3 = E.ChangeStingVar(
                                              E.markCaHr3.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr3 = E.ChangeStingVar(
                                              E.markCaHr3.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr3 = E.ChangeStingVar(
                                              E.markCaHr3.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr3 = E.ChangeStingVar(
                                              E.markCaHr3.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr3 = E.ChangeStingVar(
                                              E.markCaHr3.toString(), '5');
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
                                          E.markCaHr4 = E.ChangeStingVar(
                                              E.markCaHr4.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr4 = E.ChangeStingVar(
                                              E.markCaHr4.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr4 = E.ChangeStingVar(
                                              E.markCaHr4.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr4 = E.ChangeStingVar(
                                              E.markCaHr4.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr4 = E.ChangeStingVar(
                                              E.markCaHr4.toString(), '5');
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
                                          E.markCaHr5 = E.ChangeStingVar(
                                              E.markCaHr5.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr5 = E.ChangeStingVar(
                                              E.markCaHr5.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr5 = E.ChangeStingVar(
                                              E.markCaHr5.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr5 = E.ChangeStingVar(
                                              E.markCaHr5.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr5 = E.ChangeStingVar(
                                              E.markCaHr5.toString(), '5');
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
                                          E.markCaHr6 = E.ChangeStingVar(
                                              E.markCaHr6.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr6 = E.ChangeStingVar(
                                              E.markCaHr6.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr6 = E.ChangeStingVar(
                                              E.markCaHr6.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr6 = E.ChangeStingVar(
                                              E.markCaHr6.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr6 = E.ChangeStingVar(
                                              E.markCaHr6.toString(), '5');
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
                                          E.markCaHr7 = E.ChangeStingVar(
                                              E.markCaHr7.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr7 = E.ChangeStingVar(
                                              E.markCaHr7.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr7 = E.ChangeStingVar(
                                              E.markCaHr7.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr7 = E.ChangeStingVar(
                                              E.markCaHr7.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr7 = E.ChangeStingVar(
                                              E.markCaHr7.toString(), '5');
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
                                          E.markCaHr8 = E.ChangeStingVar(
                                              E.markCaHr8.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr8 = E.ChangeStingVar(
                                              E.markCaHr8.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr8 = E.ChangeStingVar(
                                              E.markCaHr8.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr8 = E.ChangeStingVar(
                                              E.markCaHr8.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr8 = E.ChangeStingVar(
                                              E.markCaHr8.toString(), '5');
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
                                          E.markCaHr9 = E.ChangeStingVar(
                                              E.markCaHr9.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr9 = E.ChangeStingVar(
                                              E.markCaHr9.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr9 = E.ChangeStingVar(
                                              E.markCaHr9.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr9 = E.ChangeStingVar(
                                              E.markCaHr9.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCaHr9 = E.ChangeStingVar(
                                              E.markCaHr9.toString(), '5');
                                        },
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                    color: Colors.black, thickness: 1),
                                const Text('Calender'),
                                Text(E.calender1 + E.markCalender1.toString()),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender1 =
                                              E.changeStringVarForCalender(
                                                  E.markCalender1.toString(),
                                                  '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender1 = E.ChangeStingVar(
                                              E.markCalender1.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender1 = E.ChangeStingVar(
                                              E.markCalender1.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender1 = E.ChangeStingVar(
                                              E.markCalender1.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender1 = E.ChangeStingVar(
                                              E.markCalender1.toString(), '5');
                                        },
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.calender2 + E.markCalender2.toString()),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender2 = E.ChangeStingVar(
                                              E.markCalender2.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender2 = E.ChangeStingVar(
                                              E.markCalender2.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender2 = E.ChangeStingVar(
                                              E.markCalender2.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender2 = E.ChangeStingVar(
                                              E.markCalender2.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender2 = E.ChangeStingVar(
                                              E.markCalender2.toString(), '5');
                                        },
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.calender3 + E.markCalender3.toString()),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender3 = E.ChangeStingVar(
                                              E.markCalender3.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender3 = E.ChangeStingVar(
                                              E.markCalender3.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender3 = E.ChangeStingVar(
                                              E.markCalender3.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender3 = E.ChangeStingVar(
                                              E.markCalender3.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender3 = E.ChangeStingVar(
                                              E.markCalender3.toString(), '5');
                                        },
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.calender4 + E.markCalender4.toString()),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender4 = E.ChangeStingVar(
                                              E.markCalender4.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender4 = E.ChangeStingVar(
                                              E.markCalender4.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender4 = E.ChangeStingVar(
                                              E.markCalender4.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender4 = E.ChangeStingVar(
                                              E.markCalender4.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markCalender4 = E.ChangeStingVar(
                                              E.markCalender4.toString(), '5');
                                        },
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                    color: Colors.black, thickness: 1),
                                const Text('المجال التربوي'),
                                Text(E.education1 +
                                    E.markEducationField1.toString()),
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
                                        child: const Text('1'),
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
                                        child: const Text('2'),
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
                                        child: const Text('3'),
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
                                        child: const Text('4'),
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
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.education2 +
                                    E.markEducationField2.toString()),
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
                                        child: const Text('1'),
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
                                        child: const Text('2'),
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
                                        child: const Text('3'),
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
                                        child: const Text('4'),
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
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.education3 +
                                    E.markEducationField3.toString()),
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
                                        child: const Text('1'),
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
                                        child: const Text('2'),
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
                                        child: const Text('3'),
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
                                        child: const Text('4'),
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
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.education4 +
                                    E.markEducationField4.toString()),
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
                                        child: const Text('1'),
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
                                        child: const Text('2'),
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
                                        child: const Text('3'),
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
                                        child: const Text('4'),
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
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.education5 +
                                    E.markEducationField5.toString()),
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
                                        child: const Text('1'),
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
                                        child: const Text('2'),
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
                                        child: const Text('3'),
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
                                        child: const Text('4'),
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
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.education6 +
                                    E.markEducationField6.toString()),
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
                                        child: const Text('1'),
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
                                        child: const Text('2'),
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
                                        child: const Text('3'),
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
                                        child: const Text('4'),
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
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.education7 +
                                    E.markEducationField7.toString()),
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
                                        child: const Text('1'),
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
                                        child: const Text('2'),
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
                                        child: const Text('3'),
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
                                        child: const Text('4'),
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
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.education8 +
                                    E.markEducationField8.toString()),
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
                                        child: const Text('1'),
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
                                        child: const Text('2'),
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
                                        child: const Text('3'),
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
                                        child: const Text('4'),
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
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.education9 +
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
                                        child: const Text('1'),
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
                                        child: const Text('2'),
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
                                        child: const Text('3'),
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
                                        child: const Text('4'),
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
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                    color: Colors.black, thickness: 1),
                                const Text('التنفيذ'),
                                Text(E.executions1 +
                                    E.markExecution1.toString()),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution1 = E.ChangeStingVar(
                                              E.markExecution1.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution1 = E.ChangeStingVar(
                                              E.markExecution1.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution1 = E.ChangeStingVar(
                                              E.markExecution1.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution1 = E.ChangeStingVar(
                                              E.markExecution1.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution1 = E.ChangeStingVar(
                                              E.markExecution1.toString(), '5');
                                        },
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.executions2 +
                                    E.markExecution2.toString()),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution2 = E.ChangeStingVar(
                                              E.markExecution2.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution2 = E.ChangeStingVar(
                                              E.markExecution2.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution2 = E.ChangeStingVar(
                                              E.markExecution2.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution2 = E.ChangeStingVar(
                                              E.markExecution2.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution2 = E.ChangeStingVar(
                                              E.markExecution2.toString(), '5');
                                        },
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.executions3 +
                                    E.markExecution3.toString()),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution3 = E.ChangeStingVar(
                                              E.markExecution3.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution3 = E.ChangeStingVar(
                                              E.markExecution3.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution3 = E.ChangeStingVar(
                                              E.markExecution3.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution3 = E.ChangeStingVar(
                                              E.markExecution3.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution3 = E.ChangeStingVar(
                                              E.markExecution3.toString(), '5');
                                        },
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.executions4 +
                                    E.markExecution4.toString()),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution4 = E.ChangeStingVar(
                                              E.markExecution4.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution4 = E.ChangeStingVar(
                                              E.markExecution4.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution4 = E.ChangeStingVar(
                                              E.markExecution4.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution4 = E.ChangeStingVar(
                                              E.markExecution4.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution4 = E.ChangeStingVar(
                                              E.markExecution4.toString(), '5');
                                        },
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.executions5 +
                                    E.markExecution5.toString()),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution5 = E.ChangeStingVar(
                                              E.markExecution5.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution5 = E.ChangeStingVar(
                                              E.markExecution5.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution5 = E.ChangeStingVar(
                                              E.markExecution5.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution5 = E.ChangeStingVar(
                                              E.markExecution5.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution5 = E.ChangeStingVar(
                                              E.markExecution5.toString(), '5');
                                        },
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.executions6 +
                                    E.markExecution6.toString()),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution6 = E.ChangeStingVar(
                                              E.markExecution6.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution6 = E.ChangeStingVar(
                                              E.markExecution6.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution6 = E.ChangeStingVar(
                                              E.markExecution6.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution6 = E.ChangeStingVar(
                                              E.markExecution6.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markExecution6 = E.ChangeStingVar(
                                              E.markExecution6.toString(), '5');
                                        },
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                    color: Colors.black, thickness: 1),
                                const Text('planning'),
                                Text(E.s1 + E.mark1.toString()),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark1 = E.ChangeStingVar(
                                              E.mark1.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark1 = E.ChangeStingVar(
                                              E.mark1.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark1 = E.ChangeStingVar(
                                              E.mark1.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark1 = E.ChangeStingVar(
                                              E.mark1.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark1 = E.ChangeStingVar(
                                              E.mark1.toString(), '5');
                                        },
                                        child: const Text('5'),
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
                                          E.mark2 = E.ChangeStingVar(
                                              E.mark2.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark2 = E.ChangeStingVar(
                                              E.mark2.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark2 = E.ChangeStingVar(
                                              E.mark2.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark2 = E.ChangeStingVar(
                                              E.mark2.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark2 = E.ChangeStingVar(
                                              E.mark2.toString(), '5');
                                        },
                                        child: const Text('5'),
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
                                          E.mark3 = E.ChangeStingVar(
                                              E.mark3.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark3 = E.ChangeStingVar(
                                              E.mark3.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark3 = E.ChangeStingVar(
                                              E.mark3.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark3 = E.ChangeStingVar(
                                              E.mark3.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark3 = E.ChangeStingVar(
                                              E.mark3.toString(), '5');
                                        },
                                        child: const Text('5'),
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
                                          E.mark4 = E.ChangeStingVar(
                                              E.mark4.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark4 = E.ChangeStingVar(
                                              E.mark4.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark4 = E.ChangeStingVar(
                                              E.mark4.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark4 = E.ChangeStingVar(
                                              E.mark4.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark4 = E.ChangeStingVar(
                                              E.mark4.toString(), '5');
                                        },
                                        child: const Text('5'),
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
                                          E.mark5 = E.ChangeStingVar(
                                              E.mark5.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark5 = E.ChangeStingVar(
                                              E.mark5.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark5 = E.ChangeStingVar(
                                              E.mark5.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark5 = E.ChangeStingVar(
                                              E.mark5.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark5 = E.ChangeStingVar(
                                              E.mark5.toString(), '5');
                                        },
                                        child: const Text('5'),
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
                                          E.mark6 = E.ChangeStingVar(
                                              E.mark6.toString(), '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark6 = E.ChangeStingVar(
                                              E.mark6.toString(), '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark6 = E.ChangeStingVar(
                                              E.mark6.toString(), '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark6 = E.ChangeStingVar(
                                              E.mark6.toString(), '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.mark6 = E.ChangeStingVar(
                                              E.mark6.toString(), '5');
                                        },
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                    color: Colors.black, thickness: 1),
                                const Text('planning Field'),
                                Text(E.planningField1 +
                                    E.markPlanningField1.toString()),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markPlanningField1 =
                                              E.ChangeStingVar(
                                                  E.markPlanningField1
                                                      .toString(),
                                                  '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markPlanningField1 =
                                              E.ChangeStingVar(
                                                  E.markPlanningField1
                                                      .toString(),
                                                  '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markPlanningField1 =
                                              E.ChangeStingVar(
                                                  E.markPlanningField1
                                                      .toString(),
                                                  '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markPlanningField1 =
                                              E.ChangeStingVar(
                                                  E.markPlanningField1
                                                      .toString(),
                                                  '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markPlanningField1 =
                                              E.ChangeStingVar(
                                                  E.markPlanningField1
                                                      .toString(),
                                                  '5');
                                        },
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.planningField2 +
                                    E.markPlanningField2.toString()),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markPlanningField2 =
                                              E.ChangeStingVar(
                                                  E.markPlanningField2
                                                      .toString(),
                                                  '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markPlanningField2 =
                                              E.ChangeStingVar(
                                                  E.markPlanningField2
                                                      .toString(),
                                                  '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markPlanningField2 =
                                              E.ChangeStingVar(
                                                  E.markPlanningField2
                                                      .toString(),
                                                  '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markPlanningField2 =
                                              E.ChangeStingVar(
                                                  E.markPlanningField2
                                                      .toString(),
                                                  '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markPlanningField2 =
                                              E.ChangeStingVar(
                                                  E.markPlanningField2
                                                      .toString(),
                                                  '5');
                                        },
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.planningField3 +
                                    E.markPlanningField3.toString()),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markPlanningField3 =
                                              E.ChangeStingVar(
                                                  E.markPlanningField3
                                                      .toString(),
                                                  '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markPlanningField3 =
                                              E.ChangeStingVar(
                                                  E.markPlanningField3
                                                      .toString(),
                                                  '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markPlanningField3 =
                                              E.ChangeStingVar(
                                                  E.markPlanningField3
                                                      .toString(),
                                                  '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markPlanningField3 =
                                              E.ChangeStingVar(
                                                  E.markPlanningField3
                                                      .toString(),
                                                  '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markPlanningField3 =
                                              E.ChangeStingVar(
                                                  E.markPlanningField3
                                                      .toString(),
                                                  '5');
                                        },
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                    color: Colors.black, thickness: 1),
                                const Text('التخطيط العلمي '),
                                Text(E.scientificField1 +
                                    E.markScientificField1.toString()),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markScientificField1 =
                                              E.ChangeStingVar(
                                                  E.markScientificField1
                                                      .toString(),
                                                  '1');
                                          print(E.markScientificField1);
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markScientificField1 =
                                              E.ChangeStingVar(
                                                  E.markScientificField1
                                                      .toString(),
                                                  '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markScientificField1 =
                                              E.ChangeStingVar(
                                                  E.markScientificField1
                                                      .toString(),
                                                  '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markScientificField1 =
                                              E.ChangeStingVar(
                                                  E.markScientificField1
                                                      .toString(),
                                                  '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markScientificField1 =
                                              E.ChangeStingVar(
                                                  E.markScientificField1
                                                      .toString(),
                                                  '5');
                                        },
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.scientificField2 +
                                    E.markScientificField2.toString()),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markScientificField2 =
                                              E.ChangeStingVar(
                                                  E.markScientificField2
                                                      .toString(),
                                                  '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markScientificField2 =
                                              E.ChangeStingVar(
                                                  E.markScientificField2
                                                      .toString(),
                                                  '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markScientificField2 =
                                              E.ChangeStingVar(
                                                  E.markScientificField2
                                                      .toString(),
                                                  '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markScientificField2 =
                                              E.ChangeStingVar(
                                                  E.markScientificField2
                                                      .toString(),
                                                  '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markScientificField2 =
                                              E.ChangeStingVar(
                                                  E.markScientificField2
                                                      .toString(),
                                                  '5');
                                        },
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(E.scientificField3 +
                                    E.markScientificField3.toString()),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markScientificField3 =
                                              E.ChangeStingVar(
                                                  E.markScientificField3
                                                      .toString(),
                                                  '1');
                                        },
                                        child: const Text('1'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markScientificField3 =
                                              E.ChangeStingVar(
                                                  E.markScientificField3
                                                      .toString(),
                                                  '2');
                                        },
                                        child: const Text('2'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markScientificField3 =
                                              E.ChangeStingVar(
                                                  E.markScientificField3
                                                      .toString(),
                                                  '3');
                                        },
                                        child: const Text('3'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markScientificField3 =
                                              E.ChangeStingVar(
                                                  E.markScientificField3
                                                      .toString(),
                                                  '4');
                                        },
                                        child: const Text('4'),
                                      ),
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          E.markScientificField3 =
                                              E.ChangeStingVar(
                                                  E.markScientificField3
                                                      .toString(),
                                                  '5');
                                        },
                                        child: const Text('5'),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                    color: Colors.black, thickness: 1),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          elevation: 20,
                                          onPressed: () {
                                            E.saveAndInitialiseVariables();
                                            E.insertInToTeacherTableDataBase(
                                              name: nameController.text,
                                              phone: phoneController.text,
                                              clas: classController.text,
                                              date: dateController.text,
                                              division: divisionController.text,
                                              item: itemController.text,
                                              titleOfLesson:
                                                  titleOfLessonController.text,
                                              cAhR: E.cAhR.toString(),
                                              calender: E.calender.toString(),
                                              educationalField:
                                                  E.educationField.toString(),
                                              execution: E.execution.toString(),
                                              planning: E.planning.toString(),
                                              planningField:
                                                  E.planningField.toString(),
                                              scientificField:
                                                  E.scientificField.toString(),
                                              idSchool: idSchool,
                                            );
                                          },
                                          child: const Text(
                                            'Save',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          color: Colors.blueAccent,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget TextFormF(String lab, IconData Ic, var x, var c) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: c.Color1, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: c.Color1, width: 2.0),
          ),
          fillColor: Colors.white,
          filled: true,
          labelText: lab,
        ),
        maxLines: lab == 'Information' ? 14 : 1,
        minLines: 1,
        controller: x,
        keyboardType:
            lab == 'Information' ? TextInputType.multiline : TextInputType.text,
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'the field must not be empty';
          }
          return null;
        },
      ),
    );
  }
}
/*
* Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      height: MediaQuery.of(context).size.height / 1.7,
                      child: Card(
                        margin: const EdgeInsets.all(5),
                        elevation: 30,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: E.screensAdds[index]);
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(width: 15),
                            itemCount: E.screensAdds.length),
                      ),
                    ),
                  ),
* */
