import 'package:education_evaluation/Add/AddTeacherMore/EducationField.dart';
import 'package:education_evaluation/Add/AddTeacherMore/PlanningField.dart';
import 'package:education_evaluation/Add/AddTeacherMore/calender.dart';
import 'package:education_evaluation/Add/AddTeacherMore/execution.dart';
import 'package:education_evaluation/Cubit/states.dart';
import 'package:education_evaluation/Home/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Add/AddTeacherMore/Add_FirstTeacherInfo.dart';
import '../Add/AddTeacherMore/Planning.dart';
import '../Add/AddTeacherMore/ScientificField.dart';
import '../Add/AddTeacherMore/cAhR.dart';
import '../Add/Add_School.dart';
import '../Search/Search.dart';
import '../main.dart';
import 'states.dart';
import '../Home/SeconsHomePage.dart';
import '../Home/Archive.dart';

class Education extends Cubit<Educational> {
  Education() : super(EducationalInisialState());

  static Education get(context) => BlocProvider.of(context);
  Database? database;
  int currrentIndex = 0;
  List<String> titles = ['HomePage', 'Schools', 'Add School', 'Search', 'Sent'];
  List<Widget> list = [
    const HomePage(),
    SecondHomePage(),
    Add_School(),
    const SearcH(),
    const Archive()
  ];
  List<String> titlesAdds = [
    'Planning',
    'Execution',
    'CaHr',
    'PlanningField',
    'EducationField',
    'ScientificField',
    'Calender',
  ];
  List<Widget> screensAdds = [
    Add_FirstTeacherInfo(),
    Planning(),
    Execution(),
    CaHr(),
    PlanningField(),
    EducationField(),
    ScientificField(),
    Calender(),
  ];

  void ChangeBottomNav(int index) {
    currrentIndex = index;
    emit(EducationalChangeBottomNavSuccessState());
  }

  Color Color1 = const Color(0xFF1A535C);
  Color Color2 = const Color(0xFFFFE66D);
  List<Map> schools = [];
  List<Map> teachers = [];

  Future onConfigurE(Database database) async {
    await database.execute('PRAGMA foreign_keys = ON');
  }

  createDataBase() {
    openDatabase(
      'Ahmad.db',
      version: 1,
      onConfigure: onConfigurE,
      onCreate: (database, version) async {
        print('database created');
        database.execute(
            'CREATE TABLE school (idSchool INTEGER PRIMARY KEY , name TEXT ,address TEXT , phone TEXT , manager TEXT , managerPhone TEXT , type TEXT,stage TEXT)');
        database
            .execute(
                'CREATE TABLE teacher (idTeacher INTEGER PRIMARY KEY,name TEXT , phone TEXT,class TEXT,division TEXT,date TEXT,titleOfLesson TEXT,item TEXT,planning TEXT,execution TEXT,calender TEXT,cAhR TEXT,planningField,scientificField TEXT,educationalField TEXT,idSchool INTEGER ,FOREIGN KEY (idSchool) REFERENCES school (idSchool)ON DELETE NO ACTION ON UPDATE NO ACTION)')
            .then((value) {
          print('tables created');
        }).catchError(
          (onError) {
            emit(EducationalCreateErrorState());
            print('the error happen when created database${onError}');
          },
        );
      },
      onOpen: (database) {
        print('database opened');
        getDataFromDatabase(database);
        getDataFromDatabaseWhereTableIsTeacher(database);
      },
    ).then((value) {
      emit(EducationalCreateSuccessState());
      database = value;
    });
  }

  insertInToSchoolTableDataBase({
    required String name,
    required String address,
    required String phone,
    required String manager,
    required String managerPhone,
    required String type,
    required String stage,
  }) async {
    await database!.transaction(
      (txn) => txn
          .rawInsert(
              'INSERT INTO school (name ,address , phone, manager, managerPhone,type ,stage) VALUES("$name","$address","$phone","$manager","$managerPhone","$type","$stage")')
          .then((value) {
        emit(EducationalAddSuccessState(value.toString()));
        print('$value inserted successfully');
        getDataFromDatabase(database);
        print(schools);
      }).catchError((onError) {
        print('error when insert to data base ${onError}');
        emit(EducationalAddErrorState());
      }),
    );
  }

  insertInToTeacherTableDataBase({
    required String name,
    required String phone,
    required String clas,
    required String division,
    required String date,
    required String titleOfLesson,
    required String item,
    required String planning,
    required String execution,
    required String calender,
    required String cAhR,
    required String planningField,
    required String scientificField,
    required String educationalField,
    required int idSchool,
  }) async {
    await database!.transaction(
      (txn) => txn
          .rawInsert(
              'INSERT INTO teacher (name, phone ,class ,division ,date ,titleOfLesson ,item ,planning ,execution ,calender ,cAhR ,planningField,scientificField ,educationalField,idSchool )VALUES("$name","$phone","$clas","$division","$date","$titleOfLesson","$item","$planning","$execution","$calender","$cAhR","$planningField","$scientificField","$educationalField","$idSchool")')
          .then((value) {
        emit(EducationalAddTeacherSuccessState(value.toString()));
        print('$value inserted successfully');
        getDataFromDatabaseWhereTableIsTeacher(database);
      }).catchError((onError) {
        print('error when insert to data base ${onError}');
        emit(EducationalAddTeacherErrorState());
      }),
    );
  }

  getDataFromDatabase(database) async {
    emit(EducationalGetLoadingState());
    schools.clear();
    await database!.rawQuery('SELECT * FROM school').then((value) {
      emit(EducationalGetSuccessState());
      value.forEach((element) {
        print(schools);
        schools.add(element);
      });
    });
  }

  getDataFromDatabaseWhereTableIsTeacher(database) async {
    emit(EducationalGetLoadingState());
    schools.clear();
    teachers.clear();
    await database!.rawQuery('SELECT * FROM teacher').then((value) {
      emit(EducationalGetSuccessState());
      value.forEach((element) {
        print(element);
        teachers.add(element);
      });
    });
  }

  deleteSchoolTableFromDataBase({required int id}) async {
    await database!
        .rawDelete('DELETE FROM School WHERE idSchool=?', [id]).then((value) {
      emit(EducationalDeleteSuccessState());
      schools.clear();
      teachers.clear();
      getDataFromDatabase(database);
      getDataFromDatabaseWhereTableIsTeacher(database);
      main();
    });
  }
  deleteFromDataBase({required int id}) async {
    await database!
        .rawDelete('DELETE FROM teacher WHERE idTeacher=?', [id]).then((value) {
      emit(EducationalDeleteSuccessState());
      schools.clear();
      teachers.clear();
      getDataFromDatabase(database);
      getDataFromDatabaseWhereTableIsTeacher(database);
      main();
    });
  }

  List<Map<dynamic, dynamic>> Search = [];

  void SearchInDelete(String text) async {
    Search.clear();
    database!
        .rawQuery(
            "SELECT * FROM school WHERE name LIKE '%${text}%' OR  address LIKE '%${text}%' OR  phone LIKE '%${text}%' OR  manager LIKE '%${text}%' OR  managerPhone LIKE '%${text}%' OR  stage LIKE '%${text}%'")
        .then((value) {
      value.forEach((element) {
        emit(EducationalSearchSuccessState());
        Search.add(element);
      });
    }).catchError(
      (onError) {
        print('error when insert to database ${onError}');
        emit(EducationalSearchErrorState());
      },
    );
  }

  bool ty = true;

  //(name ,address , phone, manager, managerPhone,type ,stage)
  updateInSchoolTableDataBase({
    required String name,
    required String address,
    required String phone,
    required String manager,
    required String managerPhone,
    required String stage,
    required int idSchool,
  }) {
    database?.rawUpdate(
      'UPDATE school SET name = ?,address = ? ,phone = ? ,manager = ? , managerPhone = ?,stage = ? WHERE idSchool = ?',
      [name, address, phone, manager, managerPhone, stage, idSchool],
    ).then((value) {
      emit(EducationalUpdateSuccessState());
      getDataFromDatabase(database);
      getDataFromDatabaseWhereTableIsTeacher(database);
    }).catchError((onError) {
      print(onError);
    });
  }

  updateInTeacherTableDataBase({
    required String name,
    required String phone,
    required String clas,
    required String division,
    required String date,
    required String titleOfLesson,
    required String item,
    required String planning,
    required String execution,
    required String calender,
    required String cAhR,
    required String planningField,
    required String scientificField,
    required String educationalField,
    required int idTeacher,
  }) {
    //name, phone ,class ,division ,date ,titleOfLesson ,item ,planning ,execution ,calender ,cAhR ,planningField,scientificField ,educationalField,idSchool )
    database?.rawUpdate(
      'UPDATE teacher SET name = ?,phone = ? ,class = ? ,division = ? , date = ?,titleOfLesson = ?,item = ?,planning =? ,execution =? ,calender =? ,cAhR =? ,planningField =?,scientificField =? ,educationalField =?  WHERE idTeacher = ?',
      [
        name,
        phone,
        clas,
        division,
        date,
        titleOfLesson,
        item,
        planning,
        execution,
        calender,
        cAhR,
        planningField,
        scientificField,
        educationalField,
        idTeacher
      ],
    ).then((value) {
      emit(EducationalUpdateSuccessState());
      getDataFromDatabase(database);
      getDataFromDatabaseWhereTableIsTeacher(database);
    }).catchError((onError) {
      print(onError);
    });
  }

  UpdateStatus({
    required String status,
    required int id,
  }) async {
    await database!.rawUpdate(
      'UPDATE school SET status = ? WHERE id = ?',
      [status, id],
    ).then((value) {
      emit(EducationalUpdateStatusSuccessState());
      schools.clear();
      getDataFromDatabase(database);
    });
  }

  Future<void> makePhoneCall(String phoneNumber) async {
    emit(EducationalMakePhoneCallState());
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launch(launchUri.toString());
    print(launchUri);
  }

  int selected = 0;

  changeIndex(int index) {
    selected = index;
    emit(EducationalChangeIndexState());
  }

  ChangeStingVar(String s, String y) {
    emit(EducationalChangeVarState());
    s = y;
    return s;
  }

  changeStringVarForCalender(String s, String y) {
    emit(EducationalChangeVarStateForCalender());
    s = y;
    return s;
  }

  String s1 = "1- يوفق بين الخطة السنوية و الخطة الدراسية ";
  String s2 = "2- يصوغ الأهداف التعليمية صياغة إجرائية قابلة للملاحظة";
  String s3 = "3- يصوغ وينوع أهدافاً تعليمية تراعي مستويات التفكير العليا.";
  String s4 =
      "4- يحدد استراتيجيات التدريس والأنشطة المناسبة لتنمية مهارات التعلم";
  String s5 = "5- يحدد الوسائط المتعددة والبدائل التعليمية المناسبة";
  String s6 = "6- يخطط لاساليب التقويم بمراحله المختلفة";
  String mark1 = "0";
  String mark2 = "0";
  String mark3 = "0";
  String mark4 = "0";
  String mark5 = "0";
  String mark6 = "0";

  String executions1 = "1- يستثير دافعية المتعلمين نحو التعلم";
  String executions2 = "2- يطبق الأنشطة التعليمية التي تنمي كفايات المواطن.";
  String executions3 =
      " 3- يطرح أسئلة واضحة ومتنوعة تغطي جوانب التعلم في الدرس.";
  String executions4 = " 4- يستخدم وسائط متعددة ومتنوعة ملائمة لموضوع الدرس.";
  String executions5 = "5- يظهر تمكناً من المادة العلمية التي يقدمها.";
  String executions6 = "6- يربط المادة العلمية بالواقع والحياة والعمل.";

  String markExecution1 = "0";
  String markExecution2 = "0";
  String markExecution3 = "0";
  String markExecution4 = "0";
  String markExecution5 = "0";
  String markExecution6 = "0";

  String calender1 = " 1- يغطي التقويم أهداف الدرس جميعها";
  String calender2 = "2- ينوع أساليب وأدوات التقويم.";
  String calender3 = "3- يوظف نتائج التقويم في تحسين أداء المتعلمين";
  String calender4 = "4- يختار الشكل المناسب لغلق الدرس";

  String markCalender1 = "0";
  String markCalender2 = "0";
  String markCalender3 = "0";
  String markCalender4 = "0";

  String cAhR1 = "1- يهيئ بيئة صفية مادية ونفسية آمنة";
  String cAhR2 = "2- يستعمل مهارات التواصل المناسبة مع المتعلمين";
  String cAhR3 =
      "3- يوزع الاهتمام بين المتعلمين ويتعامل بمحبة (بديمقراطية وانسانية)";
  String cAhr4 = "4- يضبط الصف بطريقة إيجابية";
  String cAhr5 = "5- يلتزم مواعيد العمل والبرامج الدرسي.";
  String cAhr6 =
      "6- يحافظ على علاقة تربوية صحيحة مع الإدارة والزملاء والاولياء أمور والمجتمع المحلي";
  String cAhr7 = "7- يتمتع بالثقافة الشخصية ويقدم مبادرات إبداعية.";
  String cAhr8 =
      "8-يتعامل بالامانة والاتزان الانفعالي يتقبل النقد والتوجيه ويتحمل ضغط العمل";
  String cAhr9 =
      "9- يتعامل بديمقراطية وإنسانية مع المتعلمين بما ينمي الشخصية المتكاملة";

  String markCaHr1 = "0";
  String markCaHr2 = "0";
  String markCaHr3 = "0";
  String markCaHr4 = "0";
  String markCaHr5 = "0";
  String markCaHr6 = "0";
  String markCaHr7 = "0";
  String markCaHr8 = "0";
  String markCaHr9 = "0";

  String planningField1 =
      "1- يشارك مع مجلس المادة في المدرسة في وضع خطة سنوية لتنفيذ المنهاج بعناصره الأساسية.";
  String planningField2 =
      "2- يخطط لتنفيذ الأنشطة اللاصفية (معارض- مسابقات- مشروعات - أبحاث مبادرات)";
  String planningField3 =
      "3- يقوم خططه ويعادلها وفقاً للمستجدات والظروف واحتياجات المتعلمين.";

  String markPlanningField1 = "0";
  String markPlanningField2 = "0";
  String markPlanningField3 = "0";

  String scientificField1 =
      "1- يقدم ملاحظات علمية ونقدية حول المنهاج للمشرف أو للقائمين على تطوير المناهج";
  String scientificField2 =
      "2- يوظف المعارف الأساسية الخاصة بتكنولوجيا المعلومات والاتصالات";
  String scientificField3 =
      "3- يواكب المستجدات العلمية (أبحاث - ورشات عمل وجاهية أو افتراضية)";

  String markScientificField1 = "0";
  String markScientificField2 = "0";
  String markScientificField3 = "0";

  String education1 =
      "1- ينفذ الأنشطة اللاصفية التي تنمي الكفايات الأساسية للمواطن وتتضمن مهارات التواصل";
  String education2 =
      "2- يستثير دافعية المتعلمين نحو التعليم والتعلم الذاتي والمهارات الابتكارية.";
  String education3 =
      " 3- يحفز المتعلمين على المشاركة في الأنشطة اللاصفية وينمي لديهم مهارات الحياة والعمل";
  String education4 =
      "4- ينمي مهارات الاستدامة البيئية المتعلقة بمادته(الوعي البيئي الإدارة الرشيدة للموارد).";
  String education5 = "5- يستعمل أساليب التعزيز وفق الموقف التعليمي.";
  String education6 =
      "6- يتابع سجلات المتعلمين ويحرص على متعابعة نمو شخصياتهم ويرفقها بملاحظات وتوصيات هادفة";
  String education7 = "7- يصوغ اختبارات وفقاً لجدول مواصفات يعد لذلك.";
  String education8 = "8- يطور أداء المتعلمين من خلال نتائج التقويم.";
  String education9 =
      "9- يقدم تغذية راجعة مستمرة للمتعلمين تؤثر ايجابياً في تحصيلهم.";

  String markEducationField1 = "0";
  String markEducationField2 = "0";
  String markEducationField3 = "0";
  String markEducationField4 = "0";
  String markEducationField5 = "0";
  String markEducationField6 = "0";
  String markEducationField7 = "0";
  String markEducationField8 = "0";
  String markEducationField9 = "0";

  String? name;
  String? phone;
  String? clas;
  String? division;
  String? date;
  String? titleOfLesson;
  String? item;
  String? cAhR;
  String? calender;
  String? educationField;
  String? execution;
  String? planning;
  String? planningField;
  String? scientificField;

  saveAndInitialiseVariables() {
    cAhR = cAhR1 +
        markCaHr1 +
        "\n" +
        cAhR2 +
        markCaHr2 +
        "\n" +
        cAhR3 +
        markCaHr3 +
        "\n" +
        cAhr4 +
        markCaHr4 +
        "\n" +
        cAhr5 +
        markCaHr5 +
        "\n" +
        cAhr6 +
        markCaHr6 +
        "\n" +
        cAhr7 +
        markCaHr7 +
        "\n" +
        cAhr8 +
        markCaHr8 +
        "\n" +
        cAhr9 +
        markCaHr9 +
        "\n";
    calender = calender1 +
        markCalender1 +
        "\n" +
        calender2 +
        markCalender2 +
        "\n" +
        calender3 +
        markCalender3 +
        "\n" +
        calender4 +
        markCalender4 +
        "\n";
    educationField = education1 +
        markEducationField1 +
        "\n" +
        education2 +
        markEducationField2 +
        "\n" +
        education3 +
        markEducationField3 +
        "\n" +
        education4 +
        markEducationField4 +
        "\n" +
        education5 +
        markEducationField5 +
        "\n" +
        education6 +
        markEducationField6 +
        "\n" +
        education7 +
        markEducationField7 +
        "\n" +
        education8 +
        markEducationField8 +
        "\n" +
        education9 +
        markEducationField9 +
        "\n";
    planningField = planningField1 +
        markPlanningField1 +
        "\n" +
        planningField2 +
        markPlanningField2 +
        "\n" +
        planningField3 +
        markPlanningField3 +
        "\n";
    execution = executions1 +
        markExecution1 +
        "\n" +
        executions2 +
        markExecution2 +
        "\n" +
        executions3 +
        markExecution3 +
        "\n" +
        executions4 +
        markExecution4 +
        "\n" +
        executions5 +
        markExecution5 +
        "\n" +
        executions6 +
        markExecution6 +
        "\n";
    planning = s1 +
        mark1 +
        "\n" +
        s2 +
        mark2 +
        "\n" +
        s3 +
        mark3 +
        "\n" +
        s4 +
        mark4 +
        "\n" +
        s5 +
        mark5 +
        "\n" +
        s6 +
        mark6 +
        "\n";
    scientificField = scientificField1 +
        markScientificField1 +
        "\n" +
        scientificField2 +
        markScientificField2 +
        "\n" +
        scientificField3 +
        markScientificField3 +
        "\n";
  }
}
