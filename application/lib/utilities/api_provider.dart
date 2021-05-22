// import 'dart:io';
// import 'package:dio/dio.dart';
// import 'package:dira_store/models/user_model.dart';
// import 'package:dira_store/utils/exceptions.dart';
// import 'package:flutter/material.dart';
//
// import 'consts.dart';
//
// class ApiProvider {
//   static const Map<String, dynamic> apiHeaders = {
//     "Content-Type": "application/json",
//     "Accept": "application/json, text/plain, */*",
//     "X-Requested-With": "XMLHttpRequest",
//   };
//
// //////////////////////////////
// // ////////////////////////////////////////////////
// //////////////////////////////// Helpers Functions /////////////////////////////
//
//   Future<Response> getRequest(String url, {var parms}) async {
//     // Retrieving User Token
//     // Http Request
//     var userToken = await _getUserToken();
//     print("UserToken= $userToken");
//     Dio dio = Dio();
//     Response response;
//
//     try {
//       response = await dio.get('${ServerVars.Global_BASE_URL}$url',
//           options: Options(headers: {
//             HttpHeaders.authorizationHeader: "$userToken",
//             ...apiHeaders
//           }));
//     } on DioError catch (e) {
//       print('\n\n ---.Future<Response> get catch (e >>> $e\n\n\n');
//       if (e.response != null) response = e.response;
//     }
//
//     _debugApi(
//       methodName: "$url",
//       statusCode: response.statusCode,
//       response: response,
//       data: null,
//       endPoint: response.request.path,
//     );
//
//     // Response Handling
//     if (_isValidResponse(response.statusCode)) {
//       // Ok
//
//       return response;
//     } else {
//       // No Success
//
//       throw _apiExceptionGenerator(response.statusCode, response);
//     }
//   }
//
//   Future<Response> postRequest(
//     String url, {
//     @required var body,
//   }) async {
//     // Retrieving User Token
//     // Http Request
//
//     Response response;
//
//     try {
//       await dio
//           .post('${ServerVars.Global_BASE_URL}$url',
//               data: body,
//               options: Options(headers: {
//                 HttpHeaders.authorizationHeader: "$userToken",
//                 ...apiHeaders
//               }))
//           .then((value) {
//         response = value;
//       });
//     } on DioError catch (e) {
//       print('\n\n ---.Future<Response> get catch (e >>> $e\n\n\n');
//       if (e.response != null) response = e.response;
//     }
//     // Decoding Response.
//     print("Hello From Post");
//     // Debugging API response
//     _debugApi(
//       methodName: "$url",
//       statusCode: response.statusCode,
//       response: response,
//       data: body,
//       endPoint: response.request.path,
//     );
//
//     // Response Handling
//     if (_isValidResponse(response.statusCode)) {
//       // Ok
//
//       return response;
//     } else {
//       // No Success
//
//       throw _apiExceptionGenerator(response.statusCode, response);
//     }
//   }
//
//   bool _isValidResponse(int statusCode) {
//     return statusCode >= 200 && statusCode <= 302;
//   }
// }
