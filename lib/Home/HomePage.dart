import 'package:education_evaluation/Cubit/cubit.dart';
import 'package:education_evaluation/DetailsScreens/DetailsSchools.dart';
import 'package:education_evaluation/constant.dart';
import 'package:education_evaluation/sharedHELper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Add/Add_Teacher.dart';
import '../Cubit/states.dart';
import '../DetailsScreens/TeacherDetails.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery
        .of(context)
        .size
        .height);
    print(MediaQuery
        .of(context)
        .size
        .width);
    return BlocConsumer<Education, Educational>(
      listener: (context, state) {},
      builder: (context, state) {
        var e = Education.get(context);
        return Scaffold(
          body: Stack(
            children: [
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height >= 440 ? MediaQuery
                    .of(context)
                    .size
                    .height / 3.3 : MediaQuery
                    .of(context)
                    .size
                    .height / 4,
                decoration: const BoxDecoration(
                  color: Color(0xFF0b4972),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(130),
                    bottomRight: Radius.circular(100),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 20, top: 20, left: 0, bottom: 0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width >= 400 ? 60 : 20,
                      ),
                      Image.asset('assets/logo.png',),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          'الجمهورية العربية السورية \n وزارة التربية ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery
                                .of(context)
                                .size
                                .width <= 350
                                ? 12
                                : 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: homeScreenLikeMe ? Padding(
                  padding: EdgeInsets.all(
                      MediaQuery
                          .of(context)
                          .size
                          .height >= 666 ? 10 : 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: MediaQuery
                                .of(context)
                                .size
                                .height > 764
                                ? 20
                                : 0),
                        height: 30,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: Education
                              .get(context)
                              .schools
                              .length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onLongPress: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Details(
                                          Education
                                              .get(context)
                                              .schools,
                                          index,
                                          Education
                                              .get(context)
                                              .schools[index]
                                          ['idSchool'],
                                        ),
                                  ),
                                );
                              },
                              onTap: () {
                                Education.get(context).changeIndex(index);
                                e.idSchool = Education
                                    .get(context)
                                    .schools[index]
                                ['idSchool'];
                                e.indeX = index;
                              },
                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(left: 15),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                ),
                                child: Text(
                                  Education
                                      .get(context)
                                      .schools[index]['name']
                                      .toString(),
                                  style: TextStyle(
                                      color: index ==
                                          Education
                                              .get(context)
                                              .selected
                                          ? const Color(0xFFd5b614)
                                          : Colors.white,
                                      fontSize: index ==
                                          Education
                                              .get(context)
                                              .selected
                                          ? 20
                                          : 11),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        height: MediaQuery
                            .of(context)
                            .size
                            .height <= 400 && MediaQuery
                            .of(context)
                            .size
                            .width < 1000 ? MediaQuery
                            .of(context)
                            .size
                            .height / 2.3 : MediaQuery
                            .of(context)
                            .size
                            .height / 2.1,
                        child: Center(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: Education
                                .get(context)
                                .teachers
                                .length,
                            itemBuilder: (context, index) {
                              return e.idSchool ==
                                  Education
                                      .get(context)
                                      .teachers[index]
                                  ['idSchool']
                                  ? InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          TeacherDetails(
                                              list: Education
                                                  .get(context)
                                                  .teachers,
                                              index: index),
                                    ),
                                  );
                                },
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(20)),
                                      borderOnForeground: true,
                                      elevation: 20,
                                      child: Container(
                                        height: MediaQuery
                                            .of(context)
                                            .size
                                            .height <
                                            500
                                            ? MediaQuery
                                            .of(context)
                                            .size
                                            .height /
                                            2.5
                                            : MediaQuery
                                            .of(context)
                                            .size
                                            .height /
                                            2.5,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width /
                                            1.2,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                        ),
                                        child: Padding(
                                          padding:
                                          const EdgeInsets.all(8.0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                              children: [
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
                                                  height: 50,
                                                  width: MediaQuery
                                                      .of(
                                                      context)
                                                      .size
                                                      .width /
                                                      1.2,
                                                  decoration:
                                                  BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                        Colors.black),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(10),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        'اسم المدرس : ' +
                                                            Education
                                                                .get(
                                                                context)
                                                                .teachers[
                                                            index]['name'],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 4),
                                                Container(
                                                  height: 50,
                                                  width: MediaQuery
                                                      .of(
                                                      context)
                                                      .size
                                                      .width /
                                                      1.2,
                                                  decoration:
                                                  BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                        Colors.black),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(10),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text('المدرسة : ' +
                                                          Education
                                                              .get(
                                                              context)
                                                              .teachers[
                                                          index]['phone']),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 4),
                                                Container(
                                                  height: 50,
                                                  width: MediaQuery
                                                      .of(
                                                      context)
                                                      .size
                                                      .width /
                                                      1.2,
                                                  decoration:
                                                  BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                        Colors.black),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(10),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text('المادة : ' +
                                                          Education
                                                              .get(
                                                              context)
                                                              .teachers[
                                                          index]['item']),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 4),
                                                Container(
                                                  height: 50,
                                                  width: MediaQuery
                                                      .of(
                                                      context)
                                                      .size
                                                      .width /
                                                      1.2,
                                                  decoration:
                                                  BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                        Colors.black),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(10),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text('الصف : ' +
                                                          Education
                                                              .get(
                                                              context)
                                                              .teachers[
                                                          index]['class']),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 4),
                                                Container(
                                                  height: 50,
                                                  width: MediaQuery
                                                      .of(
                                                      context)
                                                      .size
                                                      .width /
                                                      1.2,
                                                  decoration:
                                                  BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                        Colors.black),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(10),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text('الشعبة : ' +
                                                          Education
                                                              .get(context)
                                                              .teachers[
                                                          index][
                                                          'division']),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 4),
                                                Container(
                                                  height: 50,
                                                  width: MediaQuery
                                                      .of(
                                                      context)
                                                      .size
                                                      .width /
                                                      1.2,
                                                  decoration:
                                                  BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                        Colors.black),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(10),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text('المجموع : ' +
                                                          Education
                                                              .get(context)
                                                              .teachers[
                                                          index][
                                                          'marks'].toString()),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 4),
                                                Container(
                                                  height: 50,
                                                  width: MediaQuery
                                                      .of(
                                                      context)
                                                      .size
                                                      .width /
                                                      1.2,
                                                  decoration:
                                                  BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                        Colors.black),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(10),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text('التاريخ : ' +
                                                          Education
                                                              .get(
                                                              context)
                                                              .teachers[
                                                          index]['date']),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 4),
                                                Container(
                                                  height: 50,
                                                  width: MediaQuery
                                                      .of(
                                                      context)
                                                      .size
                                                      .width /
                                                      1.2,
                                                  decoration:
                                                  BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                        Colors.black),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(10),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text('عنوان الدرس : ' +
                                                          Education
                                                              .get(context)
                                                              .teachers[
                                                          index][
                                                          'titleOfLesson']),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 4),
                                                Container(
                                                  width: MediaQuery
                                                      .of(
                                                      context)
                                                      .size
                                                      .width /
                                                      1.2,
                                                  decoration:
                                                  BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                        Colors.black),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(10),
                                                  ),
                                                  child: Text(
                                                    "التخطيط : \n" +
                                                        Education
                                                            .get(
                                                            context)
                                                            .teachers[
                                                        index]['planning'],
                                                  ),
                                                ),
                                                const SizedBox(height: 4),
                                                Container(
                                                  width: MediaQuery
                                                      .of(
                                                      context)
                                                      .size
                                                      .width /
                                                      1.2,
                                                  decoration:
                                                  BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                        Colors.black),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(10),
                                                  ),
                                                  child: Text(
                                                      "التنفيذ(طرق التدريس والتمكن من المادة ) : \n" +
                                                          Education
                                                              .get(
                                                              context)
                                                              .teachers[index]
                                                          ['execution']),
                                                ),
                                                const SizedBox(height: 4),
                                                Container(
                                                  width: MediaQuery
                                                      .of(
                                                      context)
                                                      .size
                                                      .width /
                                                      1.2,
                                                  decoration:
                                                  BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                        Colors.black),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(10),
                                                  ),
                                                  child: Text(
                                                      "التقويم البنائي والنهائي والغلق : \n" +
                                                          Education
                                                              .get(
                                                              context)
                                                              .teachers[index]
                                                          ['calender']),
                                                ),
                                                const SizedBox(height: 4),
                                                Container(
                                                  width: MediaQuery
                                                      .of(
                                                      context)
                                                      .size
                                                      .width /
                                                      1.2,
                                                  decoration:
                                                  BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                        Colors.black),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(10),
                                                  ),
                                                  child: Text(
                                                      "إدارة الصف والعلاقات الإنسانية : \n" +
                                                          Education
                                                              .get(
                                                              context)
                                                              .teachers[
                                                          index]['cAhR']),
                                                ),
                                                const SizedBox(height: 4),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                     const CircleAvatar(
                                       child : Icon(Icons.person),
                                      backgroundColor: Color(0xFF0b4972),
                                    ),
                                  ],
                                ),
                              )
                                  : Container();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ) : Padding(
                  padding: EdgeInsets.all(MediaQuery
                      .of(context)
                      .size
                      .height >= 666 ? 10 : 0),
                  child: Column(

                    ///crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              color: const Color(0xFF0b4972),
                              onPressed: () {
                                Education.get(context).ChangeBottomNav(2);
                              },
                              height: 45,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Text(
                                'اضافة مدرسة',
                                //textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      const SizedBox(height: 10),
                      if (Education
                          .get(context)
                          .schools
                          .isNotEmpty)
                        Row(
                          children: [
                            Expanded(
                              child: MaterialButton(
                                color: const Color(0xFF0b4972),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          AddTeacher(
                                              e.indeX, Education
                                              .get(context)
                                              .schools),
                                    ),
                                  );
                                },
                                height: 45,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: const Text(
                                  'اضافة معلم',
                                  //textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: homeScreenLikeMe ? Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 10),
                Expanded(
                  child: MaterialButton(
                    color: const Color(0xFF0b4972),
                    onPressed: () {
                      Education.get(context).ChangeBottomNav(2);
                    },
                    height: 45,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text(
                      'اضافة مدرسة',
                      //textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                if (Education
                    .get(context)
                    .schools
                    .isNotEmpty)
                  Expanded(
                    child: MaterialButton(
                      color: const Color(0xFF0b4972),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AddTeacher(
                                    e.indeX, Education
                                    .get(context)
                                    .schools),
                          ),
                        );
                      },
                      height: 45,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: const Text(
                        'اضافة معلم',
                        //textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                const SizedBox(width: 5),
                if (Education
                    .get(context)
                    .teachers
                    .isNotEmpty)
                  Expanded(
                    child: MaterialButton(
                      color: const Color(0xFF0b4972),
                      onPressed: () {
                        /*Education.get(context).updateInTeacherTableDataBase(
                            name: 'name',
                            phone: 'phone',
                            clas: 'clas',
                            division: 'division',
                            date: 'date',
                            titleOfLesson: 'titleOfLesson',
                            item: 'item',
                            planning: 'planning',
                            execution: 'execution',
                            calender: 'calender',
                            cAhR: 'cAhR',
                            finalMarks:2333,
                            idTeacher: 1,
                            idSchool: 1,
                        );*/
                        //  isAllowedToShown = null;
                        //  Shard.sharedprefrences?.remove('isAllow');
                      },
                      height: 45,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: const Text(
                        'ارسال',
                        //textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ) : Container(),
        );
      },
    );
  }
}
