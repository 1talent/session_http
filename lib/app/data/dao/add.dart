import 'package:hive/hive.dart';

class AddOnDao {
  static final AddOnDao _singleton = AddOnDao._internal();

  factory AddOnDao() {
    return _singleton;
  }

  AddOnDao._internal();

  Future saveAllAddOn(List<AddOnVO> addOnList) async {
    return getAddOnBox()
      ..deleteAll(getAddOnBox().keys)
      ..addAll(addOnList);
  }

  List<AddOnVO> getAllAddOn() {
    return getAddOnBox().values.toList();
  }

  Future deleteAddOn() {
    return getAddOnBox().deleteAll(getAddOnBox().keys);
  }

  Box<AddOnVO> getAddOnBox() {
    return Hive.box<AddOnVO>(hAddOnBox);
  }
}