import 'reflector.dart';

@reflector
class FormDeclaration {
  @DynamicFieldAttribute(label: 'Name and Surname', order: 1)
  String? name;
  @DynamicFieldAttribute(label: 'Age', order: 1)
  int? age;
  @DynamicFieldAttribute(label: 'Are you married?', order: 1)
  bool? isMarried;
}

class DynamicFieldAttribute {
  final String label;
  final int order;
  const DynamicFieldAttribute({
    required this.order,
    required this.label,
  });
}
