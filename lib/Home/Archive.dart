import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubit/cubit.dart';
import '../Cubit/states.dart';
import '../DetailsScreens/DetailsSchools.dart';

import 'package:flutter/material.dart';

class Archive extends StatelessWidget {
  const Archive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Education, Educational>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is EducationalGetLoadingState) {
          return const CircularProgressIndicator();
        }
        var c = Education.get(context);
        return Scaffold(
          body: Container(
            color: const Color(0xFFECF0F3),
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: c.teachers.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(4, 7),
                            blurRadius: 10,
                          ),
                        ],
                        color: Color(0xFFf7ede2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                backgroundColor: const Color(0xFF84a59d),
                                child: Text(
                                  c.teachers[index]['id'].toString(),
                                  style: const TextStyle(
                                      fontSize: 22, color: Color(0xFFf7ede2)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                c.teachers[index]['name'],
                                style: const TextStyle(fontSize: 22),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {
                                    /*Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Edit(index,c.teachers),
                                      ),
                                    );*/
                                  },
                                  child: const Icon(Icons.edit),
                                ),
                              ),
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {
                                    c.UpdateStatus(
                                        status: 'new',
                                        id: c.teachers[index]['id']);
                                  },
                                  child: const Icon(Icons.unarchive),
                                ),
                              ),
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {
                                    c.deleteFromDataBase(
                                        id: c.teachers[index]['id']);
                                  },
                                  child: const Icon(Icons.delete),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
