import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListData extends StatefulWidget {
  const ListData({Key? key}) : super(key: key);

  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<ListData> {
  Widget _buildIconButton(IconData icon, VoidCallback onTap) {
    return Flexible(
      flex: 1,
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: Icon(icon),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton2(IconData icon, VoidCallback onTap) {
    return Flexible(
      flex: 1,
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: Icon(icon),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItemData(
      String image, String text, String text2, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            fontSize: 12,
            color: Color(0xFF4C53A5),
            ),
        ),
        Icon(
          icon,
          color: Colors.red,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: 30,
                    ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/");
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Color(0xFF4C53A5),
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 60),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                    ), // This is the missing closing parenthesis
                    Container(
                      width: 95,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.white),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            "/ListPage",
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('Add Data'),
                            Icon(
                              Icons.add_outlined,
                              size: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 1)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Foto',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  'Nama Produk',
                  style: TextStyle(
                    fontSize: 10,
                    ),
                ),
                Text(
                  'Harga',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  'Aksi',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
            Divider(),
            _buildItemData('assets/images/1.png', 'Tshirt "Cursed Speech"',
                'Rp.255.000', Icons.delete_outlined),
            Divider(),
            _buildItemData(
                'assets/images/2.png',
                'Tshirt "Prince of Pride Rock" ',
                'Rp.490.000',
                Icons.delete_outlined),
            Divider(),
            _buildItemData('assets/images/5.png', 'Hoodie "Faith Industries"',
                'Rp.920.000', Icons.delete_outlined),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
