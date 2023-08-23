import 'package:reflectable/reflectable.dart';

class Reflector extends Reflectable {
  const Reflector() : super(metadataCapability, declarationsCapability, topLevelInvokeCapability, invokingCapability, typeRelationsCapability, typingCapability);
}

const reflector = Reflector();
