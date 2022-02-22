import 'package:cryptox/apifolder/services/remote_services.dart';
import 'package:cryptox/models/coindata_model.dart';
import 'package:get/get.dart';


class CoinController extends GetxController {
  var isLoadiing = true.obs;
  var coinList = <CoinAlbum> [].obs;
  


  // void fetchCoinData() async {
  
  //     RemoteServices remoteServices  = RemoteServices();
  //     var mycoinlist = await remoteServices.fetchCoin();
  //     coinList.value = mycoinlist;
  // }
  
}

