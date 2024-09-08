

import 'package:get/get.dart';

class FavouriteAppController extends GetxController{
  RxList<String> itemList=['mango','orange','banana','apple'].obs;
  RxList<dynamic> favouriteItemList=[].obs;

  // declare fuction to add fav item
  addFavouriteItem(item){
    favouriteItemList.add(item);
  }

  // declare fuction to remove fav item
  removeFavouriteItem(item){
    favouriteItemList.remove(item);
  }
}