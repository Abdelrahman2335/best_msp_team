import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate{
  List<String> searchTerms=[
    "Data Science",
    "Software Engineering",
    "information Technology",
    "Information System",
    "Artificial Intelligence",
    "Machine Learning",
    "Cyber Security",
    "Cloud Computing",
    "Mobile App",
  ];

  Map<String, String> pageRoutes = {
    "Data Science": "/data_science",
    "Software Engineering": "/software_engineering",
    "Information Technology": "/information_technology",
    "Information System": "/information_system",
    "Artificial Intelligence": "artificial_intelligence",
    "Machine Learning": "machine_learning",
    "Cyber Security": "cyberSecurity",   //only work
    "Cloud Computing": "cloud_computing",
    "Mobile App": "mobile_app",
  };

  final BuildContext parentContext;

  CustomSearchDelegate(this.parentContext);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: (){
            query='';
          },
          icon: Icon(Icons.clear))

    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {

    return IconButton(
        onPressed: (){
          close(context, null);
        },
        icon: Icon(Icons.arrow_back)
    );

  }

  @override
  Widget buildResults(BuildContext context) {

    List<String> matchQuery = [];
    for(var item in searchTerms){
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(item);
      }

    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context,index){
        var result = matchQuery[index];
        return ListTile(
          title: TextButton(
            onPressed: (){navigateToPage(result);},
              child: Text("$result"),
          ),
        );
      },

    );

  }

  @override
  Widget buildSuggestions(BuildContext context) {

    List<String> matchQuery = [];
    for(var item in searchTerms){
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(item);
      }

    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context,index){
        var result = matchQuery[index];
        return ListTile(
          title: TextButton(
            onPressed: (){
              navigateToPage(result);
            },
            child: Text("$result"),
          ),
        );
      },

    );
  }

  void navigateToPage(String result) {
    final String? route = pageRoutes[result];
    if (route != null) {
      Navigator.pushNamed(parentContext, route);
    }
  }
}