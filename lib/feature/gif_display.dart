import 'package:challenge_app/controller/fetch_gif.dart';
import 'package:challenge_app/models/giphy_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The homepage of our application
class GifDisplay extends StatelessWidget {
  const GifDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    // FlutterGifController controller = FlutterGifController(vsync: this);
    TextEditingController _searchController = TextEditingController();

    return Consumer(
      builder: (context, ref, child) {
        final AsyncValue<List<GifElement>> gifList =
            ref.watch(fetchGifProvider);

        return Column(
          children: [
            Text('Scrollable Gifs Displayed from API'),
            Center(
              child: switch (gifList) {
                AsyncData(:final value) => SingleChildScrollView(
                    child: Column(
                      children: [
                        //TODO: implement searchbar here and pass textbox controller, so that watch will update the gif elements
                        //SearchBar with Icon
                        SearchBar(
                          hintText: 'Search for a GIF',
                          controller: _searchController,
                          leading: InkWell(
                            child: const Icon(Icons.search),
                            onTap: () {
                              //call the search api here and pass the _searchController to this 
                            },
                            ),
                        ),
                        Center(
                          child: Container(
                            height: 500,
                            width: 400,
                            child: ListView.builder(
                                itemCount: value.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                    leading: const Icon(Icons.list),
                                    title: Text(value[index].title),
                                    // trailing: Image.network(value[index].url),

                                    //wasnt sure which element from the api call is the url im supposed to use. But accessing the url is working.
                                    trailing: Image.network(
                                      value[index].url,
                                      loadingBuilder:
                                          (context, child, loadingProgress) =>
                                              (loadingProgress == null)
                                                  ? child
                                                  : CircularProgressIndicator(),
                                      errorBuilder:
                                          (context, error, stackTrace) =>
                                              Container(
                                        height: 100,
                                        color: Colors.white,
                                        child: Card(
                                          child: Text('Gif Placeholder Tile'),
                                          surfaceTintColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                    // title: Text("List item $index")
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                AsyncError() =>
                  const Text('Oops, something unexpected happened'),
                _ => const CircularProgressIndicator(),
              },
            ),
          ],
        );
      },
    );
  }
}
