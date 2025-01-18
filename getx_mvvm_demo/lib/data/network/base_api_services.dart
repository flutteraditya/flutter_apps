

abstract class BaseApiServices{
  
  Future getApi(String url);

  Future postApi(String url, dynamic data);
}