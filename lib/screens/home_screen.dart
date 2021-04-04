import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }


  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Theme.of(context).accentColor,
          primaryColor: Colors.white,
          textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Colors.white54)
          )
        ),
        child: BottomNavigationBar(
          currentIndex: _page,
          onTap: (p) {
            _pageController.animateToPage(p, duration: Duration(milliseconds: 500), curve: Curves.ease);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Clientes")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text("Pedidos")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.list),
                title: Text("Produtos")
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (p) {
          setState(() {
            _page = p;
          });
        },
        children: [
          Container(color: Colors.red,),
          Container(color: Colors.green,),
          Container(color: Colors.blue,),
        ],
      ),
    );
  }
}
