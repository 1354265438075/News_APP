import 'package:flutter/material.dart';
import 'package:news_app9/models/article_models.dart';

class NewsTile extends StatelessWidget {

  const NewsTile({super.key,required this.arc});
  final ArticleModels arc;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(25),
          child: ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:arc.image!=null? Image.network(
              arc.image!
              ,
              height:200,
              width: double.infinity,
              fit:BoxFit.cover,

            ):Image.asset("asssets/error.gif",width: 800,height:100),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25,right:25),
          child: Text("${arc.title!=null?arc.title!:"empty..."}",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,

          ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 25,right:25),
          child: Text("${arc.subtitle!=null?arc.subtitle!:"Error"}",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.bold,

          ),
          ),
        ),



      ],
    );
  }
}