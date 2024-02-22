import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_db/application/search/search_bloc.dart';
import 'package:movie_db/domain/debounce/debounce.dart';

import '../../core/constant/constant.dart';
import 'widgets/search_idle.dart';
import 'widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});

  final _debouncer = Debouncer(milliseconds: 1000);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SearchBloc>().add(const SearchEvent.initialize());
    });
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.4),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
              style: const TextStyle(color: Colors.white),
              onChanged: (value) {
                
                _debouncer.run(() {
                  context
                      .read<SearchBloc>()
                      .add(SearchEvent.searchMovie(movieQuery: value));
                });
              },
            ),
            kHeight10,
            //const Expanded(child: SearchIdleWidget()),
            Expanded(child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                return state.searchResultData.isEmpty
                    ? const SearchIdleWidget()
                    : const SearchResultWidget();
              },
            )),
          ],
        ),
      ),
    );
  }
}
