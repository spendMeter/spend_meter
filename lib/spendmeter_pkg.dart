library spendmeter_pkg;
import 'common.dart' as common;

class SpendMeterPkg {

static  String getAuthenticationToken()
  {
    String token =common.jWToken;
    return token;
  }

 static void setAuthentiocationToken(String token){
    common.jWToken=token;
  }

 static String getDeviceID()
  {
    String deviceId = common.deviceId;
    return deviceId;
  }

 static void setDeviceId(String id){
    common.deviceId=id;
  }

 static List<String> getPinningKeys()
  {
    common.sslKeyList.add(common.FromFilePem1);
    common.sslKeyList.add(common.FromFilePem2);
  return common.sslKeyList;
  }

static void setPiningKeys(List<String> list){

  common.sslKeyList=list;
}

}
