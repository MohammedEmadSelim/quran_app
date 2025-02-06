import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/features/quran/presentation/controller/quran_cubit/quran_cubit.dart';

class ViewQuran extends StatelessWidget {
  ViewQuran({super.key});

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<QuranCubit, QuranState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<QuranCubit>().getQuran();
                  },
                  child: Text('call'))
            ],
          );
        },
      ),
    );
  }
}
