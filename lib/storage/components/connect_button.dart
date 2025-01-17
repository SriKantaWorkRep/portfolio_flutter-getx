
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:srikanta_protfolio/storage/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectButton extends StatelessWidget {
  final String text;
  final IconData myIcon;
  const ConnectButton({super.key, required this.text, required this.myIcon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()async{
        // fetchCertificatesData();
        try {
          if(await canLaunchUrl(Uri.parse('https://web.whatsapp.com/'))) {
            launchUrl(Uri.parse('https://web.whatsapp.com/'));
          }
        }catch(e){
          print(e);
        }
      },
      child: Container(
        height: 60,
        width: 160,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurStyle: BlurStyle.solid,
                color: Colors.blue.withOpacity(.7),
                blurRadius: 15,
                spreadRadius: 1),
            BoxShadow(
                color: Colors.pink.withOpacity(.4),
                blurRadius: 15,
                spreadRadius: 1),
          ],
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.blue, Colors.pink]),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.8),
              borderRadius: BorderRadius.circular(30)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              reusableSizedBox(context, .007, false, true),
               Icon(
                  myIcon,
                color: Colors.lightGreenAccent,
              ),
              reusableSizedBox(context, .007, false, true),
              Text(
                text,
                style: GoogleFonts.roboto(fontSize: 16, color: Colors.white),
              ),
              reusableSizedBox(context, .007, false, true),
            ],
          ),
        ),
      ),
    );
  }
}
