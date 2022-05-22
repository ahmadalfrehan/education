abstract class Educational {}

class EducationalInisialState extends Educational {}

class EducationalCreateLoadingState extends Educational {}

class EducationalCreateSuccessState extends Educational {}

class EducationalCreateErrorState extends Educational {}

class EducationalGetLoadingState extends Educational {}

class EducationalGetSuccessState extends Educational {}

class EducationalGetErrorState extends Educational {}

class EducationalAddLoadingState extends Educational {}

class EducationalAddSuccessState extends Educational {
  String num;

  EducationalAddSuccessState(this.num);
}

class EducationalAddErrorState extends Educational {}

class EducationalAddTeacherLoadingState extends Educational {}

class EducationalAddTeacherSuccessState extends Educational {
  String num;

  EducationalAddTeacherSuccessState(this.num);
}

class EducationalAddTeacherErrorState extends Educational {}

class EducationalUpdateLoadingState extends Educational {}

class EducationalUpdateSuccessState extends Educational {}

class EducationalUpdateErrorState extends Educational {}

class EducationalUpdateStatusLoadingState extends Educational {}

class EducationalUpdateStatusSuccessState extends Educational {}

class EducationalUpdateStatusErrorState extends Educational {}

class EducationalSearchSuccessState extends Educational {}

class EducationalSearchErrorState extends Educational {}

class EducationalChangeBottomNavSuccessState extends Educational {}

class EducationalDeleteLoadingState extends Educational {}

class EducationalDeleteSuccessState extends Educational {}

class EducationalDeleteErrorState extends Educational {}

class EducationalMakePhoneCallState extends Educational {}

class EducationalChangeIndexState extends Educational {}

class EducationalChangeVarState extends Educational {}

class EducationalChangeVarStateForCalender extends Educational {}


class EducationalCollectMarksSuccessState extends Educational {}
class EducationalCollectMarksErrorState extends Educational {}
