

import 'package:e6/profilepage.dart';
import 'package:flutter/material.dart';


class canncel extends StatelessWidget {

int _currentIndex = 0;
    final List<Widget> _pages = [
    Center(child: Text('Page 1')),
    Center(child: Text('Page 2')),
    Center(child: Text('Page 3')),
   
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
      return DefaultTabController(
      length: 3,
      child: Scaffold (
        backgroundColor: Color(12),
        appBar: AppBar(
          backgroundColor: (Colors.white),
          title: Text(
            "YAZZME",
            style: TextStyle(
              color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.bold,
              
            ),
          ),
          actions:const <Widget> [
           Padding(padding: EdgeInsets.only(right: 20.0),
            child:Icon(Icons.notifications),
           ),
                   Padding(padding: const EdgeInsets.only(right: 20.0),
            child:Icon(Icons.more_vert),
           ),
           ],
           bottom: TabBar(
           labelColor: Colors.black,
           tabs: const [
            Tab(
              child: Text("Active"),
               ),
               Tab(
                child:Text("Connected"),
               ),
                Tab(
                child:Text("Cancelled"),
               ),
           ],
           ),
          ),
          
          bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {

          setState(() {
            _currentIndex = index;
          });
        },
        
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            
            
          ),
        ],
      ),


          body: 
          ListView(
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 160)),
                  Text('15 March 2022', style: TextStyle(
                    color: Colors.blue,
                  ),),
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Image.network('data:image/jpeg;base64,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'),
                radius: 70,
                
                ),
                

                title: Text('MCLAREN', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),),
                subtitle: Row(
                  children: [
                    Icon(Icons.location_on),
                    Expanded(child:     Text('RC 4/60 badami masjid near bohrapir karachi pakistan', style: TextStyle(
                      fontSize: 15,
                    ),
                    ),
                     )
                    
                  ],
                  
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                tileColor: Colors.white,
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 40)),
                    Text('AED 159 797', style: TextStyle(
                      color: Colors.green,
                    ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 150)),
                    ElevatedButton(onPressed: (){}, child: Text('CANNCEL')),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 160)),
                    Text('14 Feb 2022',style: TextStyle(
                      color: Colors.red,
                    ),)
                  ],
                ),
                   ListTile(
                leading: CircleAvatar(
                  child: Image.network("data:image/jpeg;base64,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"),
                radius: 70,
                
                ),
                

                title: Text('Mclain', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),),
                subtitle: Row(
                  children: [
                    Icon(Icons.location_on),
                    Expanded(child:     Text('RC 4/60 badami masjid near bohrapir karachi pakistan', style: TextStyle(
                      fontSize: 15,
                    ),
                    ),
                     )
                  ],
                  
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                tileColor: Colors.white,
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 40)),
                    Text('AEO 123 789', style: TextStyle(
                      color: Colors.green,
                    ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 150)),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => Profile())));
                    }, child: Text('CANNCEL')),
                  ],
                ),
                Divider(),
                             Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 160)),
                    Text('14 Feb 2022',style: TextStyle(
                      color: Colors.red,
                    ),)
                  ],
                ),
                   ListTile(
                leading: CircleAvatar(
                  child: Image.network("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFBcVFRUYFxcaGxodGxsbGyIcGx0gIB0aGhobIR0dISwkGx0pIBoaJjYlKS4wMzMzGyI5PjkyPSwyMzABCwsLEA4QHRISHjIqJCkyMjIyMjQyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjI0MjIyMjIyMjIyMjIyMjIyMjIyMv/AABEIAKgBKwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAEAAIDBQYBBwj/xABBEAACAAMFBQYEAwYFBAMAAAABAgADEQQSITFBBVFhcYEGEyIykaFCsdHwUmLBBxQjcpLhM1OCovEVFiRDVLLS/8QAGQEAAwEBAQAAAAAAAAAAAAAAAQIDAAQF/8QAKhEAAgICAgEEAgEEAwAAAAAAAAECEQMhEjFBBCJRcRNhsZGh0fAUMkL/2gAMAwEAAhEDEQA/ADbfYp4r45cwbmQo39atT/ZGYt9lObSMTmUZW92ut6CPSrbIzihtFlxxESiy8keeWiSgzZ0/nBA9XFD0MCmxkioKsOH1BMb+ZYKxW2/Yg80tVWauKmlK71anwnLhnpDpk3Ey9hsi3wGGB8u69pX7zpBdv2YVHlpBryFZO8AopqHU5owwNeRwPQ5Z29nYTZZlv/iIP6hoeYyPQ6xmzJXo8+nyKHCGS1IqCpdD5l/UbmGkX9vs4Q4xFYJ7zH7uUAo+NqZDnoYN6FXZQpZZcuZ/EmVS6HW74i4OQ/K2FDepSkeidg2sdtlTLNc7q0CrIpaquo6CrjX1FBUDEdoNnAm+gxGBA1AyPOkUdktLynV5bFHUgqwNCCMiDGcVJbCpcXo23aHYRlMwK0IrGSmYGkezbNtcvbFjvC6LYi0mIML1ML4G4+xw3V8y25sZpbHA1GkLCX/ljTSfuRtOyO2JdulCxWpv4i17qYcWNBlXVgBiPiUV8yktk+0uxnss5kYYj0IOIIOoIxrFFYlmXqpWq+IEGhBBqCDo1aUprHoq2xdrWMq5CWyQpNbpuugxPkUkA6KB4WwAusAM1xdip2qPOHGFccfv1h1lsrzKlQAozZjRRzJzPAVJ0EGGQqCreOugwAPPPLl7RG84UuqAtNBqN/OG5PwBx+TqJJl51msN9VQcl8zc2I4rDJtqLmtAvIAZCgwAAGG4CBW4ZQlMNXyJZKjGJ5QrjAwEHWJCSILMjQ7Ds1SDTnGus1qRD3b1uNdqV8yMDVJiHR0bEdRrFVsiUESpip2rtDxRzu29HSqUdnqdrsonymLBe/RQWK+V1I8M1R+FgK8CCNI8p29JAY1yjVdjtvuxWTgJqV7q8aBgT4pDH8L0wPwtQ4xW/tBsyhFny691MLUBFCrqSHlt+F1IIpwO4xl3Zm/bTPPJ5xpAzV0hTXx3RDfrlWOhHOyZHwhVMRCp1A94mQhaEi9zP0jGRLLwpWp4RvuwFjdWmTfEiXblKkX60ahGoGBodSIzlklmd3ayQFqQrBRQ1314x6ZYLMJUtZa5KKV3nU+sc2TI6o6MWNXYTabUktHmuaIilm5DTmcusZvsdZ2fvLdNH8W0sbo/DLBoAMK0NB0RTrEfamYbROk7PQkKxEyeR8KLiF4HXmUjVyJAwCrRQAAAMAAKAAbqD2iPS+y/b+v5JrOgJqTdRAWY6AAVJPIVMeT9ptpG0Tnm43SaINyDBBzpieJMbzt7tLuLMshTR53mGolg+L+pqLxAePM3Ffv26xTGvLJ5H4QCVOCr5mN0cN56Kf8Adwjm0iAwRfKgujn8R9cOkE2Q+ed+HwJzxqw9z6iBbLZ+8mBa0XMncBifpzMVT3b8EGDXwEoM2OPIZDqanosRR21HxsQKAnAbhoOmUR1iy6Js+mrUIr5ksQbPbGBWaOY6gRpMQzJOEFO8CTpwxgozM7taUJTmaPI1BNHAYCZTeBgd6/yiKmfMMtxdOWKHePw8aDDiDzjQW60YGMZaWunuq+HOWd2tzppww0iiIyH29jOICKWZiAFGJqdOMbazdnFsVmutQzXFZh46IOA9z0jz2RayjhsQajEGhUgghgRiKGhrGrbtS01bk/FwKK+Hj3Vphe45GBJN9GhJK2yj2q2Jp974ydus+JZctfrGht8ypPOKqdjFEibYPsbak2zTUnSXKTENQdDvUjVSMCI9gSfZ9rSRNl3ZdoAPeyyaYgYlSfMDmPfGPGWsxwpqcueUarYq90l4EjAqKZE/E3KvhG+hO6JzVr9lMb2bbY2zrHLss2XMBLOwLTFUuRiESgUE3QW9yYxe2Jc3Z9qvA3Jit4WGTcaZEEVDDUE74tdn7RIZSxwqD6Ygn9OVYzHbjtG1ttF/JEW4nEDNjxY+wETgpXsrkca0aW1bPS3SmtllW64H/kSRmpzLrvU0JrwrmGpibRLKGCezW35tjnLNlHEYMp8rqc0P6HQgGL/tPYZUxVtdm/wJpxWmMt/iQgZZ5foVLXSp/og9oyS4w5EpCuFTSCe7FBuOu6GEoZLSL7YljLMAIqbOhJoAT/KPsRqdhiYpAUJLqcz426DIHnWJ5JUimONsvbfKKS7oGkY21bNnsxAlvxqKe5oI9Ls3dWd5c6aXnNkzMahQcCwQUQEV0H6RZ9pbMe7vyiCrCoZdQRUYxzKbStHS4Rbpnk0mVMl+N2Cld+fvSvSI9s7aMwNemMxZrx4tQLexwDUUeICuGcP2tZnqSYz85KHjFoRvbIzk17QCYPFv4nEwrsTMkcAxi5EaqQ+kdKwVsqxmbMWWBmf+YDdKzJGy7B2EqrTSKXsF/U+nz4Rr7Ta0ky3mzPIiljx/Co4k0HWBLLLCBUUUCgAfqfXHrFV2kP7zaZOz0PgWk20EH4RiqYHcR1dTpHI/c9nbH2xpEvZCxsyvapv+LaWvU3JXwgcDnyCxubDKUAs1AqgsxOQAFSTwAxgbZ9lqa0A0AAwAyA4AUil/altX93si2dDSZaMG3iWPP/UaLyvQtOcqC2oRPOu0G2TbLVMnZKTRAfhlrgg50xPFmgC2khQq+ZzQdcPYH/csC2dsRFsUukzmHhRbqfmmHzeh03DhFm+NIgtqwDaLBAstckFOvxH73GBbPahLVsKl8D/KP1LU/oEMIeY91FZmOQUFj6DExZP2VtlLzyGlLh4ppWUoGmMxlh1FVTEk23aKa0+LH7PHrAlY0cvY0tcJlrs68ELzm30/hoVP9UMOzrH/APItB4izJQ8qzwYdMSj2+fPpWA5toprEM+fvyiunzvaIpHRYVNtUV9ptUCT7RTMwBPtNTnDJAJbTaM4obat6tf8Ag6HnBsx661iF0hkBxspWB18wwI37iPveI6r1F09PpE9rTGoGI9xugRhu1xh0SaokM74WPJtRwO8e/OI5cu9rgPfhBNnsxmkKox14bzygi1ywt2WgJyFB5jU0AH5mOHqdI1goHsNlMx86DMkaLkSPzNio/wBR0EWsxwfDgEUUIGgyCjd9IkNn7tAgoXY1amALUpQbkUCg4DeTFfbZglrnWn+5j9+kTbtlEuKA9sWw0KKcW83AbvvTnFEViZ2JqTmYiLw6VCN2ORDWNH2c2oZDMjUaTMAWYjVIpkHAGN9c8KVGGBoRn5TVglFbQGCwGv7R9lDKpMlkzJDhSkwUatRXMAAA5jeONQKWRdl5oGrnex9so1PYrtWkmW9mtYLWdwaYXihzIA3E48Djqa57ajyzMburzS6m6SKEjSo0if6Y1+UTBe9IuGinQYXTuw0jR9n9nsHo4oVz+sZOwW8y2vd0zjdiK+0X9p7dTG8tkZfDdzJPA+T2hZRfSQ8JJbbJtv7U8ZWuG6NL2B26rg2ScRdbGWToTmuO8mo4848stNqMw3mWaDX/AC6j1LCDLDMl1FZgTdfV1IO+oBHvB/Gkgc22b/tbsIoThhv0MecW6z0Me1bA2glss3dznls6iisHViw0JFahtDUcY8v7W2JlntLRWa6SDRSflAhp0Gb5KzIskJZVYsBs6ZqoX+chT6MaxOlgGZmKP5QzH5Ae8WtEqKgJGw7I2C6pmHNvLy1P6esVUiwSmcLWY1TicEAGp+KNjYJNANAKADhuieR6opjW7LJ7YkiVMnzB4UWoGrNki8yaDrAXYjZr3GtE3GdaG7xjuWpurwGJNNxUaQZO2ZLnoJcwFkDXrt4gE0IFaEE5nDLGNPsyQFpWg54RCXRdd2WlgswUXmoABUncBiY8B7b7bNrtk2Z8IN1BuRcF9czxJj1j9o/aVJFlMiVMUzZgobrAlU1JplXL1jwuYlScRFccK2QnPkyIPCee1KVNM6ac4cJa6seg/vDWVT5QTziuhNhWzLTMlBnlzHllhQlGKkitcbpGFRHJ8+8153vMcyxq3vjALITC7rjGATNOWudeQMR/vI/N99YZ3Y4mFcG6MY9cn2rDPKAHtlMdYGn2oh7s1bjNW7qrbrrb+BofnDnsxujAVOVc4npF1FvoFnz6muB5QMTrEz2Ug1Pp/aIXIGBrzjWPwa7GgYxxxgOPWCLlB+In2hlwbsxA5FFAFmy89YrpqgHDI58DFqxoMxX/AJx4wFbiMj1IgxkJkx6sGsFreXMF0VJ8JH4gdOBrSL3ZkggGe+JNbm46M+OlPCv5QT8UQdndhma3iBu0vOdVlmoC10d6EDcoc6iL/alkbu3nMtyQgJGl6lFVEXUVoK5YUgSmronGFRtlJ3mbHXLgN/MxU2+yuzVmMspdL5oeYQeL2ETHajTGIl0lUVmeYTec0GKocAtagADxfmpFYNoy1AIs6M2rTHdyTqaKyDoQYZWTlKyWXYpBNDNZjwW6PckxNa7BLlEVQ4iq5UYbwxJryphEW0jNCIZkqXLlzAGUrLlqG5OgvdC3OLzsdtKW5FntCI6k1S+AwViKDPKoNIWTcd9ryCvBQ/vQGUug35/LCOVmsKgEj8tD7Lj7RuNs9lLO1TIZ5EypqpJdOIKkkjHUGnCMXtLZU+RjMS8v40NR1IoV6gRSPF9COwStT4icM9/pHf3soRcvL1IiWzW808VJi7nzH8rjERYydn2aePBOWTM/BON1ekzIdR1hroFEWz+0k+Wa3r40DYj6n1iyl9rJ+bqhHDw+2O6M7abMJbFQ6sQaG6wYdGUkMOIjiPQVzNfaNo2zc2HtKkw0LUO5gAPXKLhLYhzRT0EeYm1OfwqOf6AQ+RPnKPDMKq24ChxIr4uIMBoJ6W72cjGUo33fCfaBLTa1Ufwrb3VKi5MuFTvGQNOdYwjza+YK3Fizn0YkRHMnuRQMANygIP8AaBE2l5DZaz7el5gUVs/HLJCk8ARd9oI2bYFm1Pfd0ul9LxPQOMOMZ5nObEZUxCj9IvLDsG3TJAtEqS8yWSwDJQk3cCQtbzCtRUA5GJzdL2ugouf3KVJ8Szu9OGa3acqVg2z7VlAY3j1FPkIxE6e6sUcMrDNWBVhzBxEMl2pgagxNcvLsblXRuZna2UmAlvUb6/JjELdtT8Er1oIpNnT5cw0Zb29a0PNTlXnhv3xcWjY3d2Y2mpdO8ZFVRRqAA1YVwOOIGVDF4KMvszyNGe25antMzvGS6boXDhX6xWfup3RanaKfDJY8z/YxC1rY5SgObE/KkUqhW72BBIaJfCJZzudFHKIrkwjzfSDoUY0obqczHGUAYDHjX+0PEpgMWiJpQzrBMM9Pb9YbDWFIZUbvnGNZ6VaJqupveIHChWo3awIJjSxUEzFGasRfXfdJ8w4Njx0iuNpAHLSONavFX5GI8TvjkQa1sluCwxHHMcCMwecDO4vYgEc/vWBncDxYBjgThXXDpA7zATWp1wgqIJ5L7CDawDUHHHCIJ1pxOe6BJriu6HJZ3bJWI3gGnrlBpEHkb6JpLXmVTWhYDAAnHQVpGrSZZpAoLCzMBi85TMINK/4YuqBXXGKawyHkSmngDvHJSWahigFL7imTYgA6eLhFZNs02t8zDezreNYlOSbpC835PQ9mWO0WlhOMyWlkwLrLKhyQoFxhLUFBvqSwXAUziq7TbX/eA0taBSjKigADUy1pSmBujLIRj7F2snWaaJks1YC7MBPhmCvlZcic/EMa46mpNrtKT2MyVgrYlDmjary3GJShKLT8Gc7QbZtn2KUl21zAJqk4I18Mpp/lj2MNtdq2TcdVlzCSDRklgMDowLEZHfFfVq+NQ38wBPqYdaFlsjAS7rXTShoK0OYyhk4uW2/66FsqJFrmpLZA1Zb+ZDRlqfiAPlbiMYZs2yTXmDulJau8LjzYgQUux2ZUC4sda+E55fXKLDZrWaW4DWhSwwwU3QeDnAjjgIvPIkmoqxUm3s1G1J1qCS79nmS5pTxuy3ka7gG8JoDTDEjACKgzprEXrQyV0uBVpvvXcR1jfbJ2rcS4xWZLI8pxUjkYh2psZWRpllw1MsC/libqmocflu3t2MckMt+26/gpKD7MGOzCt4hR641BqMetIa3Z8rkAOQAPrSLqzWqysavJmSjWneyPGldbyqxMsjcxrwi6s1gaYP8Ax7RKn/kbB6fymjxpyyx7sCUWYCdsZtannAj7KppHo0+UyGk6Q6HeBeHpgfnEQ2dLmeRgeGvocYl+aXkPA83exERF+7kGozj0G0bC4RWT9iHdDLOBwMgZjsSoCrqMCSfXCOGzOc3bpgPaLq3bHcC8g8S4jjvHWDLJZBNlq6jBh6HUdDFvzJK0DizLrYwNPWLGwbRnyD/CmzZfBHKj+kGh6iLZ9m8IgfZp0EL+VS7NxZYJ22nuoS1S5NrTdNQB+joBQ8aGImlbNn+Rptic6P8AxpNeY8a8zgIrDZIjeykcYCS8a+v8dGt+Qu19nrRKHeIFmyxiJshu8Trd8SdQIJsO0e+W4xaudFal6nxLoJgAw30pyrLLPmSmvy3aW34kJU8sMxwg2ZbUmms6WA+feygEeu9lHgc9AeMUjOUXYGk1QQdnmgcUZW8kxR4Zhzulf/XM/KcDmOI7yyM/eLvszea0LLR0my5pAnKMARXF2TNG+KuhBIOMc29ISXMmJLYuoYgM2JI46kx0pqSTQqtaZnyq6/SIyoOQJ94nZlHw0+90QPMOgHp+kEJAwp8JPIj9MogKHcBzaCfFTXoKD3iKbLORFK/fCGACPL4ffziLuzugllAwJryBP6Ry7w9jBMObaS8T7Q0W8/hgOXJidE0EINZI1qbd7w6VaSPhXrU/Mw1JYiRUEY1jv3yZobv8oA9wKw0szeZmbmSfnHAMYlCRjWXFglq9nIYkd3fuUrgSVdmwOijjmYKs7EHGl9Go26oofQih6xBscqktnd7qhwrVBK0dcCaZUK5kU0JFY5MIR5dHDq6lbwyLKSVpQmopeW9hW7lv58iu68bHcVxTM72ksAlzby+R/EvCua8wa/YiusdpaWwZTTfuI3EaiNlb7KJyFDnmh/Nu41/sPNGImIVJBFCMCIrjmpx2TPQbDtSzTAA9UbCuFR0Ix9otV2XJmD+HMRuAIr6Zx5lZpxU45b4vrLPqI5MmGnpjqfyjTbdsDJZ7iedhcG/EgGnEjw/6saCpjN2GzyZQcNNYkNLvlLoUKXCuAzKxJAZjeFMaYERYT5ziSXF5qEAZsqXqqG1C1oyHKocxRUDmaFqSVI4kh1enOiGm8cRjbEnFUNxTVlpYNpXC0kd4HRmFGIcYVqLwVacBTrkI0uye0bKRUxjlRnKsgZ2dA3hW8byKVOAxJJVG6mLCZYZq+Iy3A3hSRxFRgDwhMuNN2bk4np+zLHZbRPS0gBZtRfpgJg/MPxcdcjpSL9o62VJQMsos2uS0r1GnWPPdm7YeUwo1KaVi/wBqpK2jLqDdtCjwnK+PwnjuJ5cRXDm4NKXROceSfHsrrF2j2vJQTAv7xZyMQ92YoH5ipvy+TEDhFzYu2uzpxC2uzvZJh+IAlOYoKj+mnGPNT39lmXlZ5bqTR0YoajMVFCDhiDFtI7UJM8NslLMrnMlFZc3H4mWndzTl5lrxh8uCE3dV9AjKSR63I2b3iiZZbTLnSzkGIYcr641jjWUjCbKZPzDxp6rl1EedbP2MWPe7MtN98+7Qmz2gU0MtmuzANaNQ/hi/2X2w2rLF2bYJtpp8QkzJb4Z3qSyteQEcOT0cl/13/ZloZF5Ncux5bCooQdRiIy0nY4sttaR/6rSC8rcrr506jH0ixk9rLSfE+yZ8o6m+E9b6pXrFV2k7ay+7RmkFZsuYjoDOksbwORCOWCkVBN2kSjgyptNd/RRzi1ZdTdgcIFfYHCMraf2vWjEJZpKn8xZvkVrFdP8A2pW9shJT+VCf/sxgx9Jm/wBYHOBsLT2cqKgUPzipmbNKgqUAaoxxqAAajOmOBrjlhhGQtHbvaD1raCOCoi/JaxTWvas+bXvJ0x6/idiPQmL4/S5F3JE5Ti+kavaQkJW9MQNuBqfQVMZy1bSLYSwQN+vQaRWKhOQJh4QDPHgMffL5x1RwqPeybdl1s7a0yTKeUEILsr1NQcKVGO8DDnFlKtIdQVc478+o0MZZUmNkG940GyrI6AtMQoWyqRRuN3MHjxilroBO9d5PpT0pWIXRs6/X5VgpzXT0oP1iNhTT3/v9I1mBxLOVa8q/KEEIrXPL73RIf5h6YRFMULixA6Y+5wjWYT0H0ER3a6CHls86fe+G1HD76wQAdwCJUUUiO9CBwgBJ7gpDYiAiZJZOYjBqyREgiXJh8kKBmPWJ1dVOAr0+6wljqKXZbbHs+Dinw3iLoYEDzAqcGFGrT8tcwIqe0Eh1lS5rLcY3ZiLhgLxArQAXiSSaKBkAIsLHayjhxliCK4kEFWGe4mIO1Fp/8SVJdldlaYVdSCCjOHAK1qhvF8Gp7QEnZSbjx0VybYlmgbw1yOY+ogfbtkWYvfyyCcA9Na4A4b/nhh4Qa+eJL5VQ+q/2HpAklmRvCeBpQqQcwa4EcDGji4u0c5pNn7PNARShA0BU8wcDFvL2JLbQym3p4k6oTUdD0jKS7cFNaXWNKsjNKY8xQofQRd2HtG608aONzpcblel3l6sBHPkxZO4jRryWFqs3cJQzZisbgEyUzXQLz0vy/CWFX31FMAakGtC2wAhmWfLrUkutw3TnfYqUYY50I1EXcm2pbCsppbIWDLeDK6BjgtHU+YNkDTOKO2WaZZS0+aiMzsyqHUFVcMwe8mALrdrjVTfU4xTHdLl2dEUuOjkm3I7JKeqq15WZDRwGuu5vYKQxUYkHCpgacos57qW8yuLE1otDkFIpfAFKsMCThhmZapjiUJ5/iWhTLaYz1YhZhe6G/ClxZa0wA7ygpUVGtwDTGSWl1Ho8sKSAVYVFVaoDAgqSt3xKYo18EpdbK2a8CNPYeViORp8oOm7Pm/5bHkKwI+z53+VM/ob6Qsa+SVMhmWqYQSZjknOrE/rE2y9nzrTMWVKDO7GgAqevAcY5/wBPnVCmVMFDiLjD9I2Gx9n2uZJ7iTK/dUcUmzMe8mY+WpAKy6U8AoDqTpV5IxVth4t9HX2hZdli7IuWm2jN/NKkmlDdP/sfj5RzGOeNqt9qYlps5yxJN52pU4mgrQDgBHomyf2eSUALVdt5+8Idt/a9k2aLiqs2fogOC7i5HlHDM8BjHNL1XJ8YK2UWJpXJmLXskkmX39smmWmir53P4VBzPy1pFQJEuY5ZU7qStaVJLEfiZjmeWG4RLabRNtcwz7S5I0GSgblGSqPf3gO2WhpngQEIOlePLcIvBNbk9/2Ek14BrQELG5RVGVTUnjTE9Ii7tfxV/lBPzpFhZdhTZmIViOCk+8Gytmy5RDvPRGUg4MHcEH8K1xroacaQzmvAtFBVdxPWn6Q9AT5VHpX51EHzNoywxKWeWMSQWqxz3AhAOF3CIW2xOyVyg3IBL9bgFesG2YKfY8yil2EtSAf4huUOoCti2VfCDgRrUDqTrPJBukzmIxpVE3ipbxNiBgAvOKZmJNTiTDYHG+zF1K2+61upLUnIhMV5XiR61hq24s1WYsxzZjUxTiDLJZrxgqKXRi8s9pqak9dfl84lvhsiSd5NOmsDyZITUY8MR1rEjOu6vt+mMZow6cv5sOGP61gYqB5cTvOeMdJrm1BwNPWOd4u/TCg+zGRhF/xDd95Ry+u//bHUUFSQMvUjWIujesMgEK1hZZxxHrnHWlajEcIS/kdRvocj4wSppAKPEyORnBAGy5lNDE6TMKkQDKmCu/3g1KnLDnh8qwDE8kltDyygbadnBAHjoMhjrzg+xzFUhqXuAOHrFm7y2lkMqiuniB60zhHJoeMU0YGZZuBpEBkRrLYss0/hjDcxx44U94rJqDQAe8Op2I1RUd0aYGGMh1+UWZUa4/e6GlF/4whrAQWS2vLKkDFTUHEH1jePaZO0lVrrNaES8ZS0AnuLq1JrRSEUBsASKUqBGIZBu++cM7lwwKVBFCDWmOh4GuRgSjY0ZcS8eTapLF3Q32L3ldSoYMUDI6GngIJpwFQRQUnnz5chEwqzeKUjnxS1YnvFZqYreBuMM7zEjMQ2TtPacxApM50Uauun5nBb3jMWyXMvEzFa8aVLEkk0ArUk1hFG9MeU1WkaJO0zDzSvRvqIsLP22Vc5b9KH9YwZlmOXDuhXgg/Aqm0enSf2gyR5pE09F/8A1E5/aZKX/Dsjn+Zwg9gY8qundCundA/4uP4D+VnoW1/2l2mYhSSiWeuBcNecDgcLvOld1IwgcXrzG8a1OZJOZqT84hKGO90YrDHGCqKFlNy7D5207xFEW4PgYkg7qlSpoN3zjp21NHkuSxoFRQR/qILepiu7sxwrDUvItk1otcyZ/iTHen4mLfMwPDwkSLJO6NRiCFBDSSMxHCggmIQIcJZidANAYkVNKiMYjkyccot7HZ6a0+/WILLZqnOn36RfWXZ2GY/qXD5wGzAVymh6mIJiE6UG6LG0KAQAd+tfYZ9YEmsdKmmdMPkIFmBZkscTwH94aLK1K0pxz+zD+9pwr1jjOeJ6dd1YJiNyNxPKG1T8I9f7w12JwoTz+6R3vF+6/SCArxgcxzgiTPpkTESqvMxHlUitPlAavsZOtouJay5mB8Db9PSILTY2Q41I3qKr65CAFeLOwbWZMD4lyIOIiUoyhtb/AEWUoz09P5OSmI3wZKfjXhnBybPk2gVltcc5oTgeVMoDmbOmymulSvPXlTD3hY5oy09M0sEo7W0PD6aZnM+wwg6WQR5qDgPp9RAEsEbqjLh9YkWctKYnkKQ7RNMJuy6GlSRnUY+lT7mI2lrSt2vFjSvICOK4U+UY8a49fpHHVWqQpbnWFrZmDTJSnIegBiFbJXLD/T9n2h1XrQXQOZ9oIl2XKsxqa5UHy9YfpCnJGyr3xAbqg/oYN/6XcUFHW8eBHDP0jqWpVBBYsOJr75QWLelwXQQDhhUV+99InykPFR8lFbknDwswA/mr+uJhtnsYZamhORNMj6YwU5lh60IO9vFjyBMSLbAAKmmZNBReGf1h7dA0UU+yj4SIFaXQ+YHqB7Z+0bCy25CLl5jyFd9d2HUxFMksxN0VA9Rpy3ZxvyPyheJklkscseWMSmxtvp0jQTJiyiL1SwxoDiPSEm2HU0EvDif7w3N+EakUIsYGQJ6Ex1JQ1NI0P/XK4vLBHIV9eETHaMthii0pqPpC85LtGpfJnks6b8YZMkgZ0pFrPSS3kGPA/dIGeynRhTdX6ZwykmaivDVHhFOlIaymDp0u6MV5GsChxoK84ZAB2XrDkkV0+/0g2UjsfCABrxgiz7Pr5qA7qg9YDkkaiuWVBkmSaeWvr+kWc2zy5eQvtStDz4wntJGN1ANABjjnWmeGWMLzb6DQOlmAHiw4ZU+ukRu9MAPaJbXaqmoUgcd3KB++GeJgpPyAY9oGOnWGpaNMfen9ukPMsHE160gdzoow3nIcv7QxiV2poI4j8qfKI2mCmNOkDmaRr6QaMFd5XLCG333/ACiAzqxzvOUagAwcZfKJEDfDURAz7vaEJp/5ghJWkNoMoSkRGZ53wy9AMWFntJUgg5ZUjW7O7QGYO7nAMnKrc8cukYZGpBC2lhkPX6RHLgjP7+S+HPLG/wBfB6B/2yswGZKmNMGdxiARy3jgfeKS2SO6JGRGYoKiK7ZO25kprwc4aaHp9I9B2ZtuzWwBJqKHGTZHof09o4JSzYH7tr5O1QxeoXt0/g88e2MGJAoDTzH7G7KOzLbpmdwy9hG52z2NYC/KpMXevnHTUcoxVqsLqcVw5x1YvUQn12cWTBKH0ANaX0IHLE/rD0RmpUseBNI6Wod0O/eN3ppHQQLez0VcR+h+sNmXZhAJwG41+ZiqmTQB4j0Jr6f2jqWsDwhaAfen6wvHyGyzlylU+FRXSuJPqaD0iRbKHa9MOIOALVFMNAc+gitNrXIHoB9I7IBqWvEV0BHzIp6iDTNZeSnuDwrgMsMN/wB1iaZNwAwXDAe+QoIpP3qmY9TX+0NmzSxW6W540x5AUhXEPIJtNkqb3eVrpQfKKlrPMxrUUGGusWrvo7XScyQAP0gcICCwNbvA06V5QYsDGyJ6oMVBw1APTh0ghdmyZoF0shwwJwpwA+dY7YXlkgFguHmIqOn94t/+6JMgBZUtThiWNKnfUYkwzbXRkl5K2Z2fYLWWyEU/GK8gM4il7Fm1oFxHX5H5mDB2wmOx8KqvCtMt5GJryhk/b7keagp8I0zxOsTcp9JBqI4bGFP4pJYVJXAfWImlyUBogx+6RXzdpls3p7k+8QtNB09RBUZPtgteCw75Kkhc8CNPQZQPdUElQak1PipToM4EefXXLdh8oY7/APH3rDKCBZMxNaihw3Ycq51jqTCaZewgNpopXH5/WFLmClKiHoAUXp7xGHqMABxIzgZ59dYY84nCsEwTeAJ1PLD6RC80nOp6xBehhmQTDy+ccV9IbfO6E1N8Yw4xykK+OcK+eHpGMDCHCFCgGY4GHq9IUKCY6zltMd+URsx1hQoATqtBUm1ldYUKFlFPsaMnF2jZdme27ySFIvrrXPpHoaWWx7QS9UK5GYoDX8w+Lr6woUeN6vGsMlKHk9THN5cblLswna/sk9lUzKX5Y+NcQMdR8PWMFNnsTRcOUKFHb6OblHZw+oik0MCH/nGJwFFL2PsPSFCjtOcnFvFAFUAenyhyWond+vzjkKMAclopiQONYc+1MDdAG7hChQGEhW1E4ucOAz6nDhlA860k0ABAGVT784UKMjDO9Y6nkBQYZdIarUPlq3PKOQoJiVZhxJ9MIiaYa0HvChRgEqTG1MPdt+PX9IUKCYjadhlQRxHrqfWFCjBHmZTAYRE7Y8YUKMA5WGs8KFBMNrHQ0KFACcrCvQoUEwr0drChQAH/2Q=="),
                radius: 70,
                
                ),
                

                title: Text('PORCHUE', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),),
                subtitle: Row(
                  children: [
                    Icon(Icons.location_on),
                    Expanded(child:     Text('RC 4/60 badami masjid near bohrapir karachi pakistan', style: TextStyle(
                      fontSize: 15,
                    ),
                    ),
                     )
                  ],
                  
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                tileColor: Colors.white,
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 40)),
                    Text('AEF 153 769', style: TextStyle(
                      color: Colors.green,
                    ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 150)),
                    ElevatedButton(onPressed: (){}, child: Text('CANNCEL')),
                  ],
                ),
                 ],
                 
          )
      ),
      );
  }

  void setState(Null Function() param0) {}
}