import 'package:flutter/material.dart';
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}
class _CategoriesState extends State<Categories>{
  List<String> categories=["Hotels", "paintball","Bolling","skydiving","museum","All"];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) =>
              buildCategory(index
              ),
        ),
      ),
    );
  }
  Widget buildCategory(int index){
    var kDefaultpaddin;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(categories[index],
              style: TextStyle(fontWeight: FontWeight.w500,
                  color: selectedIndex == index ? Colors.black : Colors.black54
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:5),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            ),
          ],
        ),
      ),
    );

  }
}
