library spendmeter_pkg;
import 'common.dart' as common;

class SpendMeterPkg {

  String getAuthenticationToken()
  {
    String token =common.jWToken;
    return token;
  }

  void setAuthentiocationToken(String token){
    common.jWToken=token;
  }

  String getDeviceID()
  {
    String deviceId = common.deviceId;
    return deviceId;
  }

  void setDeviceId(String id){
    common.deviceId=id;
  }

  List<String> getPinningKeys()
  {
  return common.sslKeyList;
  }

void setPiningKeys(List<String> list){
    common.sslKeyList=list;
}

}
