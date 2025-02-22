import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';


abstract class NetworkInfo{

  Future<bool> get isConnected;
}

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo{
  final InternetConnectionChecker internetConnectionChecker;

  NetworkInfoImpl(this.internetConnectionChecker);
  @override
  // TODO: implement isConnected
  Future<bool> get isConnected async=> await internetConnectionChecker.hasConnection;

}