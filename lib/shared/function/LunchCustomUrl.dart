import 'package:url_launcher/url_launcher.dart';

import 'custom_snack_bar.dart';
Future<void>launchCustomUrl(context,{required String url,})async{
  Uri uri=Uri.parse(url);
  if(await canLaunchUrl(uri)){
    await launchUrl(uri);
  }else{
    customSunkBar(context,text: ('can not launch this $url') );
  }

}

