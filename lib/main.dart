import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:learn_flutter/grahql.dart';
import 'package:learn_flutter/screens/home_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: graphqlClient(),
      child: MaterialApp(
        title: "Travel Guide",
        routes: {'/': (context) => HomeScreen()},
      ),
    );
  }
}
