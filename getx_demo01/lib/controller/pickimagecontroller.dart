

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickController extends GetxController{

  RxString imgPath = "".obs;

  Future pickImage()async{
    final ImagePicker imgPicker = ImagePicker();
    final img = await imgPicker.pickImage(source: ImageSource.gallery);
    if(img != null){
      imgPath.value = img.path;
    }
  }
}