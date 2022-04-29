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
  final nameController = TextEditingController();
  var phoneController = TextEditingController();
  final addressController = TextEditingController();
  final managerController = TextEditingController();
  final additionController = TextEditingController();
  var Far = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var c = Education.get(context);
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
            () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeLayout(),
              ),
            ),
          );
        }
      },
      builder: (context, state) {
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
            child: Container(
              child: Form(
                key: Far,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormF("تعديل الاسم ", Icons.person, nameController, c,
                          list[index]['name']),
                      TextFormF("تعديل المحافظة ", Icons.person,
                          addressController, c, list[index]['address']),
                      TextFormF("تعديل المدير ", Icons.person, managerController,
                          c, list[index]['manager']),
                      TextFormF("تعديل الهاتف ", Icons.person, phoneController,
                          c, list[index]['phone']),
                      TextFormF("تعديل معلومات اضافية ", Icons.person,
                          additionController, c, list[index]['stage']),
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
                          c.updateInSchoolTableDataBase(
                            name: nameController.text,
                            phone: phoneController.text,
                            address: addressController.text,
                            stage: additionController.text,
                            manager: managerController.text,
                            managerPhone: phoneController.text,
                            idSchool: list[index]['idSchool'],
                          );
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
          ),
        );
      },
    );
  }

  Widget textFormF(String lab, var x, var c, String hint) {
    x.text = hint;
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
        minLines: 4,
        maxLines: 10,
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

  Widget TextFormF(String lab, IconData Ic, var x, var c, String hint) {
    x.text = hint;
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
