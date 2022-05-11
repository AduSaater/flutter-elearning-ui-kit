class SearchModel {
  String? value;

  SearchModel({
    this.value,
  });
}

List<SearchModel> searchList = [
  SearchModel(
    value: 'Robotic',
  ),
  SearchModel(
    value: 'Eco Campus',
  ),
  SearchModel(
    value: 'Live discussion',
  ),
];

class FilterModel {
  String? value;
  bool isSelected = false;

  FilterModel({
    this.value,
  });
}

List<FilterModel> mFilterList = [
  FilterModel(
    value: 'Robotic',
  ),
  FilterModel(
    value: 'Eco Campus',
  ),
  FilterModel(
    value: 'Live discussion',
  ),
];
