import 'package:ahtarandakhtar/core/utils/app_color.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/Homeview.dart';
import 'package:ahtarandakhtar/features/Ingredients/presentation/veiw/IngredientsVeiw.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Customnavbar extends StatefulWidget {
  const Customnavbar({super.key, required this.selectedInd});
final int? selectedInd;
  @override
  State<Customnavbar> createState() => _CustomnavbarState();
}

class _CustomnavbarState extends State<Customnavbar> {
  
  List< String > destinations = [
     Homeview.homeViewRouteName,
     Ingredientsveiw.ingredientsveiwRoute,
  ];
  @override
  Widget build(BuildContext context) {
    int isSelected = widget.selectedInd!;  
    return NavigationBar(
      selectedIndex: isSelected,
      onDestinationSelected: (int index) {
        setState(() {
          if(isSelected != index){
            isSelected = index;
            GoRouter.of(context).pushReplacement(destinations[index]);
          }else{
            
          }
           
        });
      },
      height: 66,
      destinations: [
        NavigationDestination(
          icon: Icon(
            Icons.home,
            color: isSelected == 0 ? AppColor.kPrimaryColor : Colors.black,
          ),
          label: 'Home',
                   
        ),
        NavigationDestination(
          icon: Icon(
            Icons.restaurant,
            color: isSelected == 1 ? AppColor.kPrimaryColor : Colors.black,
          ),
          label: 'Recipes',
        ),
      ],
    );
  }
}
