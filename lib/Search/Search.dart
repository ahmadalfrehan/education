import 'package:education_evaluation/DetailsScreens/TeacherDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Cubit/cubit.dart';
import '../Cubit/states.dart';
import '../DetailsScreens/DetailsSchools.dart';

class SearcH extends StatelessWidget {
  const SearcH({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Education()..createDataBase(),
      child: BlocConsumer<Education, Educational>(
        listener: (context, state) {},
        builder: (context, state) {
          var c = Education.get(context);
          return Scaffold(
            body: SafeArea(
              child: Container(
                color: const Color(0xFFECF0F3),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide:
                                  BorderSide(color: c.Color1, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide:
                                  BorderSide(color: c.Color1, width: 2.0),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(
                              Icons.search,
                              color: c.Color1,
                            ),
                            labelText: " بحث "),
                        onChanged: (String text) {
                          text.length == 0 ? c.ty = true : c.ty = false;
                          c.search.clear();
                          c.searchInTableSchool(text);
                          c.searchInTableTeacher(text);
                        },
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        height: 1555,
                        child: (c.search.isEmpty || c.ty == true)
                            ? const Center(
                                child: Text('No element Found !'),
                              )
                            : ListView.separated(
                                separatorBuilder: (context, index) =>
                                    const SizedBox(height: 15),
                                itemCount: c.search.length,
                                itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              c.search[index]['item'] == null
                                                  ? Details(
                                                      c.search,
                                                      index,
                                                      c.search[index]
                                                          ['idSchool'],
                                                    )
                                                  : TeacherDetails(
                                                      list: c.search,
                                                      index: index,
                                                    ),
                                        ),
                                      );
                                    },
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                c.search[index]['item'] == null
                                                    ? Details(
                                                        c.search,
                                                        index,
                                                        c.search[index]
                                                            ['idSchool'],
                                                      )
                                                    : TeacherDetails(
                                                        list: c.search,
                                                        index: index,
                                                      ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          color: Color(0xFFECF0F3),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(0, 5),
                                              blurRadius: 5,
                                            ),
                                            BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(0, -5),
                                              blurRadius: 5,
                                            ),
                                            BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(-5, -5),
                                              blurRadius: 5,
                                            ),
                                            BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(5, -5),
                                              blurRadius: 10,
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CircleAvatar(
                                                          backgroundColor:
                                                              const Color(
                                                                  0xFF0b4972),
                                                          child: Icon(
                                                            c.search[index][
                                                                        'item'] ==
                                                                    null
                                                                ? Icons.school
                                                                : Icons.person,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Expanded(
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                c.search[index]
                                                                    ['name'],
                                                                style:
                                                                    const TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 20,
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Text(
                                                                c.search[index][
                                                                            'address'] ==
                                                                        null
                                                                    ? c.search[
                                                                            index]
                                                                            [
                                                                            'item']
                                                                        .toString()
                                                                    : c.search[
                                                                            index]
                                                                            [
                                                                            'address']
                                                                        .toString(),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      ),
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
