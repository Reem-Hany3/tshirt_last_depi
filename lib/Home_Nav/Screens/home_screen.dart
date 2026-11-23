import 'package:notifications/helpers/parallel_import.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      appBar: AppBar(
        backgroundColor: AppColors.whitecolor,
        actions: [
          IconButton(
            onPressed: () {
              if (context.locale.languageCode == 'en') {
                context.setLocale(const Locale('ar'));
              } else {
                context.setLocale(const Locale('en'));
              }
            },
            icon: const Icon(Icons.language),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12).r,
        child: Column(
          children: [
            ///================================================
            ///===================  Home Header  ==================
            ///=====================================================
            HomeHeader(),
            HightSpace(AppSizes.size12),

            ///================================================
            ///=================== Search Bar  ==================
            ///=====================================================
            CustomSearchBar()

          ],
        ),
      ),

    );
  }
}
