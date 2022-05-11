class ExamModel {
  String? value;
  bool isSelected = false;

  ExamModel({
    this.value,
  });
}

List<ExamModel> mQuestionList = [
  ExamModel(
    value: 'shape',
  ),
  ExamModel(
    value: 'area',
  ),
  ExamModel(
    value: 'baring',
  ),
  ExamModel(
    value: 'distance',
  ),
];
