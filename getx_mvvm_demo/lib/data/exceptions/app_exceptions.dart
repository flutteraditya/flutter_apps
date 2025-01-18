

class AppExceptions implements Exception{

  // ignore: prefer_typing_uninitialized_variables
  final _massage;
  // ignore: prefer_typing_uninitialized_variables
  final _prefix;

  AppExceptions([this._prefix,this._massage]);


  @override
  String toString(){
    return "$_prefix $_massage";
  }
}

class InternetException extends AppExceptions{

  InternetException([String? massage]):super("No Internet",massage);
}

class TimeOutException extends AppExceptions{

  TimeOutException([String? massage]):super("Request TimeOut",massage);
}

class ServerException extends AppExceptions{

  ServerException([String? massage]):super("Server Error",massage);
}

class InvalidUrlException extends AppExceptions{

  InvalidUrlException([String? massage]):super("Invalid URL",massage);
}

class FetchDataException extends AppExceptions{

  FetchDataException([String? massage]):super("Error while Communication",massage);
}