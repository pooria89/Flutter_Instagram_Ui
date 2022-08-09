import 'package:flutter/material.dart';

class CategoryBar extends StatelessWidget {
  const CategoryBar({Key? key, required this.categories}) : super(key: key);
  final List<String> categories ;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade300,width: 1),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        categories[index],
                        style: TextStyle(fontSize: 15, color: Colors.black , fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
