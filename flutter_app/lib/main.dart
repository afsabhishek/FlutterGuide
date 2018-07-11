import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords>{
  var _suggestions = <WordPair>[];
  var _saved = new Set<WordPair>();
  var _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _buildSuggestions(),

    );
  }

  @override
  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(14.0),
      itemBuilder: (context,i){
        if(i.isOdd) return new Divider();
        final index = i~/2;
        if(index >= _suggestions.length){
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair suggestion){
    final alreadySaved = _saved.contains(suggestion);
    return new ListTile(
      title: new  Text(suggestion.asPascalCase,style: _biggerFont,
       ),
      );
  }

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(title:'WTF',
                           home: new Scaffold(appBar: new AppBar(title: new Text('Welcome to Flutter'),),
                           body : new Center(child: new RandomWords(),
                           ),
    ),
    );


  }

}