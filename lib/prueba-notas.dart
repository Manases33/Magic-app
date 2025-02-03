import 'package:flutter/cupertino.dart';

class NotesMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: CupertinoColors.systemYellow,
      ),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Listas', style: TextStyle(fontWeight: FontWeight.bold)),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CupertinoButton(
                padding: EdgeInsets.zero,
                child: Icon(CupertinoIcons.share),
                onPressed: () {},
              ),
              SizedBox(width: 10),
              CupertinoButton(
                padding: EdgeInsets.zero,
                child: Icon(CupertinoIcons.ellipsis),
                onPressed: () {},
              ),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              CupertinoSearchTextField(),
              Expanded(
                child: CupertinoListSection.insetGrouped(
                  backgroundColor: CupertinoColors.black,
                  children: [
                    CupertinoListTile(
                      title: Text('Lista de famosos'),
                      additionalInfo: Text('13:02'),
                      subtitle: Text('1. Jim Carrey'),
                      onTap: () {},
                    ),
                    CupertinoListTile(
                      title: Text('Lista de ciudades'),
                      additionalInfo: Text('12:59'),
                      subtitle: Text('1. Bilbao'),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: Icon(
                      CupertinoIcons.pencil_circle,
                      size: 40,
                      color: CupertinoColors.systemYellow,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(NotesMenu());
}
