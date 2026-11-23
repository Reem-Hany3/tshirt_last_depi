import 'package:notifications/Home_Nav/Screens/search_screen.dart';
import 'package:notifications/helpers/app_button.dart';
import 'package:notifications/helpers/parallel_import.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppSizes.size8,
      children: [
        Expanded(flex: 5,
          child: AppField(
            prefixIcon: Icon(Icons.search),
            hint: 'Search',
            enabled: true,
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => SearchScreen()));
            },
          ),
        ),
        Expanded(
          child:AppButton(
            onPressed:(){} ,
            child: Icon(Icons.tune_outlined,color: AppColors.whitecolor,size: AppSizes.size30,),)
        ),
      ],
    );
  }
}
