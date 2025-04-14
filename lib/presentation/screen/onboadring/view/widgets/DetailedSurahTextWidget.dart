import 'package:flutter/material.dart';
class detailedSurahText extends StatelessWidget {
  final String surahNo;
  final String arbicSurahText;
  final String surahTranslationText;

  const detailedSurahText({
    super.key, required this.surahNo, required this.arbicSurahText, required this.surahTranslationText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                width: 27,
                height: 27,
                decoration: BoxDecoration(
                    color: Colors.green.shade700,
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Text(
                    surahNo,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Spacer(),
              Icon(Icons.share_outlined, color:Colors.green.shade700,size: 24,),
              SizedBox(width: 10,),
              Icon(Icons.play_arrow_outlined, color:Colors.green.shade700,size: 28,),
              SizedBox(width: 10,),
              Icon(Icons.bookmark_border_outlined, color:Colors.green.shade700,size: 24,),
            ],
          ),
          SizedBox(height: 22,),
          Text(arbicSurahText,style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),),
          SizedBox(height: 18,),
          Text(surahTranslationText,style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 16),)
        ],
      ),
    );
  }
}