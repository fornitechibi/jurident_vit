import 'package:flutter/material.dart';

import 'package:juridentt/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore _store = FirebaseFirestore.instance;

List<Info> generateRandomProfiles(int count) {
  List<Info> profiles = [];

  return profiles;
}

class TeamsPage extends StatefulWidget {
  static const String routename = 'teams';
  const TeamsPage({super.key});

  @override
  _TeamsPageState createState() => _TeamsPageState();
}

class _TeamsPageState extends State<TeamsPage> {
  var access_screen_background_color = 0xffffffff;

  var searchbar_accesspage_color = 0xfff5f5f5;
  var serach_result_tile_color = 0xff616161;
  var can_edit_button_access_page = 0xffffffff;
  var selectedValue = 'can edit';
  var casenumber = 109;
  var accesslist = [''];
  TextEditingController searchfield = TextEditingController();

  List<Info> filteredItems = [];

  @override
  void initState() {
    super.initState();
  }

  void updatelawyercases(String caseno, String mobileNumber, int mode) {
    _store
        .collection('lawyers')
        .where('mobileNumber', isEqualTo: mobileNumber)
        .get()
        .then((querySnapshot) {
      if (querySnapshot.docs.isNotEmpty) {
        if (mode == 1) {
          var id = querySnapshot.docs[0].id;
          _store.collection('lawyers').doc(id).update({
            'sharedcases': FieldValue.arrayUnion([caseno])
          });
        } else {
          var id = querySnapshot.docs[0].id;
          _store.collection('lawyers').doc(id).update({
            'sharedcases': FieldValue.arrayRemove([caseno])
          });
        }
      }
    });
  }

  void fetchSearchResults(String query) {
    if (query != '') {
      if (selectedValue == 'can edit') {
        print('entered if');
        print(accesslist);

        _store
            .collection('lawyers')
            .where('mobileNumber',
                isGreaterThanOrEqualTo: query,
                isLessThan: query.substring(0, query.length - 1) +
                    String.fromCharCode(query.codeUnitAt(query.length - 1) + 1))
            .where('mobileNumber', whereIn: accesslist)
            .get()
            .then((querySnapshot) {
          if (querySnapshot.docs.isNotEmpty) {
            setState(() {
              filteredItems = querySnapshot.docs
                  .map((document) => Info.fromDocumentSnapshot(document))
                  .toList();
            });
          } else {
            setState(() {
              filteredItems = [];
            });
          }
        });
      } else {
        print('entered else');
        _store
            .collection('lawyers')
            .where('mobileNumber',
                isGreaterThanOrEqualTo: query,
                isLessThan: query.substring(0, query.length - 1) +
                    String.fromCharCode(query.codeUnitAt(query.length - 1) + 1))
            .where('mobileNumber', whereNotIn: accesslist)
            .get()
            .then((querySnapshot) {
          if (querySnapshot.docs.isNotEmpty) {
            setState(() {
              filteredItems = querySnapshot.docs
                  .map((document) => Info.fromDocumentSnapshot(document))
                  .toList();
            });
          } else {
            setState(() {
              filteredItems = [];
            });
          }
        });
      }
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('access page'),
        backgroundColor: Color(access_screen_background_color),
      ),
      backgroundColor: Color(access_screen_background_color),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: const BoxDecoration(color: Color(0xfff5f5f5)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 200,
                        child: TextField(
                          autocorrect: true,
                          controller: searchfield,
                          decoration: const InputDecoration(
                            hintText: 'Enter Phone number',
                            fillColor: Color(0xfff5f5f5),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7.0)),
                                borderSide:
                                    BorderSide(color: Color(0xfff5f5f5))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7.0)),
                                borderSide:
                                    BorderSide(color: Color(0xfff5f5f5))),
                          ),
                          onChanged: (string) {
                            fetchSearchResults(string);
                          },
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 9),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffffffff),
                        ),
                        child: DropdownButton(
                          dropdownColor: const Color(0xffffffff),
                          value: selectedValue,
                          items: const <DropdownMenuItem>[
                            DropdownMenuItem(
                              value: 'can edit',
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('can edit'),
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'cannot edit',
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('cannot edit'),
                              ),
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                              print(searchfield.text);
                              fetchSearchResults(searchfield.text);
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
                const Icon(Icons.search_outlined)
              ],
            ),
          ),
          Expanded(
              child: filteredItems.isNotEmpty
                  ? ListView.builder(
                      itemCount: filteredItems.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Container(
                            height: 65,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: const Color(0xff616161),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                      style:
                                          const TextStyle(color: Colors.white),
                                      '${filteredItems[index].name}(${filteredItems[index].mobileNumber})'),
                                ),
                                Container(
                                  height: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: const Color(0xffffffff),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      dropdownColor: const Color(0xffffffff),
                                      value: accesslist.contains(
                                        filteredItems[index].mobileNumber,
                                      )
                                          ? 'can edit'
                                          : 'cannot edit',
                                      items: const <DropdownMenuItem>[
                                        DropdownMenuItem(
                                          value: 'can edit',
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text('can edit'),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'cannot edit',
                                          child: Text('cannot edit'),
                                        ),
                                      ],
                                      onChanged: (value) {
                                        setState(
                                          () {
                                            if (value == 'can edit') {
                                              accesslist.add(
                                                  filteredItems[index]
                                                      .mobileNumber);
                                              updatelawyercases(
                                                  casenumber.toString(),
                                                  filteredItems[index]
                                                      .mobileNumber,
                                                  1);
                                            } else {
                                              accesslist.remove(
                                                  filteredItems[index]
                                                      .mobileNumber);
                                              updatelawyercases(
                                                  casenumber.toString(),
                                                  filteredItems[index]
                                                      .mobileNumber,
                                                  2);
                                            }
                                          },
                                        );
                                        fetchSearchResults(searchfield.text);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  : const Center(child: Text('No results found'))),
        ],
      ),
    );
  }
}
