
import 'package:get/get.dart';

class ListController extends GetxController{

  RxList colorList = [
    "red","green","blue"
  ].obs; 
  RxList favColorList = [
    
  ].obs;

  addColorList(String colorName){
    colorList.add(colorName);
  }
  addFavColorList(String colorName){
    favColorList.add(colorName);
  }
  rmFavColorList(String colorName){
    favColorList.remove(colorName);
  }
  rmColorList(String colorName){
    colorList.remove(colorName);
  }
}