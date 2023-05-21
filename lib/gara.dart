Scaffold(
        appBar: AppBar(

            backgroundColor: Colors.grey,
            actions: [
              
              PopupMenuButton(
                icon: Icon(Icons.settings),
                itemBuilder: (context) => [PopupMenuItem(
                value: 0,
                child: Text("Home")),
                
                ],
                onSelected: (item)=>{
                  print(item)
                })
             // DropdownButton(items: [],)
              

            ],
            
            title: Text("Ukyply\n zenan"),
            
            leading: 
            Image.asset("assets/loga.jpg"),
            ),
        body: AppBody(),),

        return Scaffold(
  appBar: AppBar(
    centerTitle: true,
    title: const Text(
      'Navigation Drawer',
    ),
    backgroundColor: const Color(0xff764abc),
  ),
  drawer: Drawer(
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const UserAccountsDrawerHeader( // <-- SEE HERE
          decoration: BoxDecoration(color: const Color(0xff764abc)),
          accountName: Text(
            "Pinkesh Darji",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          accountEmail: Text(
            "pinkesh.earth@gmail.com",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          currentAccountPicture: FlutterLogo(),
        ),
        ListTile(
          leading: Icon(
            Icons.home,
          ),
          title: const Text('Page 1'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(
            Icons.train,
          ),
          title: const Text('Page 2'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  ),
  body: Center(
    child: Column(
      children: [
        SizedBox(
          height: 50,
        ),
      ],
    ),
  ),
);