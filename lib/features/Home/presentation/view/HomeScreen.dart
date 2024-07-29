import 'package:book_store/core/Theme/AppAssets.dart';
import 'package:book_store/core/Theme/AppColor.dart';
import 'package:book_store/core/Theme/AppSizes.dart';
import 'package:book_store/core/Ui/Widget/CustomBackgroundImage.dart';
import 'package:book_store/features/Home/presentation/Logic/GetBook/get_book_bloc.dart';
import 'package:book_store/features/Home/presentation/view/Widget/CustomGrid.dart';
import 'package:book_store/features/Home/presentation/view/Widget/CustomSearchBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeP extends StatefulWidget {
  const HomeP({super.key});

  @override
  State<HomeP> createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
  @override
  void initState() {
    super.initState();
    // Trigger the GetBook event to fetch the books
    context.read<GetBookBloc>().add(GetBook());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackGroundImg(
        child: Column(
          children: [
            const SizedBox(height: AppSizes.bar),
            const CustomSearchBar(),
            const SizedBox(height: AppSizes.hsearch),
            const Text(
              'Hand-picked for you',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'IbarraRealNova',
                  color: AppColor.textColor),
            ),
            const SizedBox(
              height: AppSizes.grid,
            ),
            BlocListener<GetBookBloc, GetBookState>(
              listener: (context, state) {
                if (state is GetBookError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error: ${state.error}'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              child: BlocBuilder<GetBookBloc, GetBookState>(
                builder: (context, state) {
                  if (state is GetBookLoding) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is GetBookSuccess) {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: state.books.length,
                        itemBuilder: (context, index) {
                          final book = state.books[index];
                          return CustomGrid(
                            tap: () {
                              Navigator.pushNamed(context, '/get');
                            },
                            ImgN: AppAssets.Bookimg,
                            title: book.name,
                            author: book.author,
                          );
                        },
                      ),
                    );
                  } else if (state is GetBookError) {
                    return Center(child: Text('Error: ${state.error}'));
                  } else {
                    return const Center(child: Text('No books found'));
                  }
                },
              ),
            ),
            const SizedBox(height: AppSizes.LR),
          ],
        ),
      ),
    );
  }
}
