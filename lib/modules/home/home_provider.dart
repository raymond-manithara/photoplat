import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:photoplat/modules/home/domain/home_repository.dart';

class HomeProvider with ChangeNotifier {
  HomeRepository homeRepo;
  HomeProvider({this.homeRepo});

  /// States
  String response;
  bool isSearchVisible = false;
  TextEditingController searchController = TextEditingController();

  dowloadFromApi() async {
    response = await homeRepo.downloadDataFromApi();
    print(response);
    notifyListeners();
  }

  onClickSearchVisible(bool _isSearchVisible) {
    isSearchVisible = _isSearchVisible;
    notifyListeners();
  }
}
