import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articlesModel});
  final ArticlesModel articlesModel ;
  @override
  Widget build(BuildContext context) {
    return Column(
     // mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
            child: Image.network(
               articlesModel.urlToImage!,
                height: 200,
                width: double.infinity,
                fit: BoxFit.fill,
                ),
              
                ),
                const SizedBox(
                  height: 12,
                ),
                 Text(
                 articlesModel.title,
                maxLines: 2,
             //   overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),
                ),
                const SizedBox(
                  height: 8,
                ),

                 Text(
                  articlesModel.description ?? '',
                maxLines: 2,
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
                
      ],
    );
  }
}
