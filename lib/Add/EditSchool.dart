import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Cubit/cubit.dart';
import '../Cubit/states.dart';
import '../HomeLayout.dart';
import '../Search/Search.dart';

class EditSchool extends StatelessWidget {
  var index;
  List list = [];

  EditSchool(this.index, this.list, {Key? key}) : super(key: key);
  var Far = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Education, Educational>(
      listener: (context, state) {
        if (state is EducationalUpdateSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('updated successfully'),
            ),
          );
          Timer(
            const Duration(seconds: 1),
                () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) =>  HomeLayout(),
              ),
                  (route) => false,
            ),
          );
        }
      },
      builder: (context, state) {
        var c = Education.get(context);
        return Scaffold(
          backgroundColor: const Color(0xFFECF0F3),
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: const Color(0xFF0b4972),
            title: const Text(
              'Edit School',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                //fontSize: 18,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearcH(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.search,
                ),
              )
            ],
          ),
          body: Directionality(
            textDirection: TextDirection.rtl,
            child: Form(
              key: Far,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormF("تعديل الاسم ", Icons.person,
                        c.nameEditSchoolController, c, list[index]['name']),
                    TextFormF(
                        "تعديل العنوان ",
                        Icons.person,
                        c.addressEditSchoolController,
                        c,
                        list[index]['address']),
                    TextFormF(
                        "تعديل المدير ",
                        Icons.person,
                        c.managerEditSchoolController,
                        c,
                        list[index]['manager']),
                    textFormF("تعديل الهاتف ",
                        c.phoneEditSchoolController, c, list[index]['phone']),
                    textFormF(
                        "تعديل هاتف المدير ",
                        c.managerPhoneEditSchoolController,
                        c,
                        list[index]['managerPhone']),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              menuMaxHeight:
                                  MediaQuery.of(context).size.height / 2,
                              alignment: Alignment.center,
                              elevation: 15,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15),
                              ),
                              hint: Text(
                                c.editStage,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              items: Education.get(context)
                                  .stage
                                  .map((String value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value.toString()),
                                );
                              }).toList(),
                              onChanged: (newValue) async {
                                String l = '';
                                c.editStage = Education.get(context)
                                    .changeStringV(l, newValue.toString());
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              menuMaxHeight:
                                  MediaQuery.of(context).size.height / 2,
                              alignment: Alignment.center,
                              elevation: 15,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15),
                              ),
                              hint: Text(
                                c.editType,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              items: Education.get(context)
                                  .types
                                  .map((String value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value.toString()),
                                );
                              }).toList(),
                              onChanged: (newValue) async {
                                String l = '';
                                c.editType = Education.get(context)
                                    .changeStringV(l, newValue.toString());
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: c.Color1,
                          width: 2,
                        ),
                        elevation: 0.0,
                        primary: const Color(0xFF0b4972),
                        fixedSize: const Size(350, 40),
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {
                        if (Far.currentState!.validate()) {
                          if (!Education.get(context)
                              .stage
                              .contains(c.editStage)) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('اختر المرحلة'),
                              ),
                            );
                          }
                          if (!Education.get(context)
                              .types
                              .contains(c.editType)) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('اختر النوع'),
                              ),
                            );
                          }
                          if ((Education.get(context).stage.contains(c.editStage)) && (Education.get(context).types.contains(c.editType))) {
                            c.updateInSchoolTableDataBase(
                              name: c.nameEditSchoolController.text,
                              phone: c.phoneEditSchoolController.text,
                              address: c.addressEditSchoolController.text,
                              stage: c.editStage,
                              type: c.editType,
                              manager: c.managerEditSchoolController.text,
                              managerPhone:
                                  c.managerPhoneEditSchoolController.text,
                              idSchool: list[index]['idSchool'],
                            );
                          }
                        }
                      },
                      child: const Text(
                        ' Edit School ?',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget textFormF(String lab, var x, var c, String hint) {
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
          hintText: hint,
        ),
        controller: x,
      ),
    );
  }

  Widget TextFormF(String lab, IconData Ic, var x, var c, String hint) {
    //x.text = hint;
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
          hintText: hint,
        ),
        minLines: 1,
        controller: x,
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'this field must not be empty';
          }
          return null;
        },
      ),
    );
  }
}
