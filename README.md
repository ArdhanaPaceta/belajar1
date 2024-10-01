praktikum 1
Langkah 1:
Buka VS Code, lalu tekan tombol Ctrl + Shift + P maka akan tampil Command Palette, lalu ketik Flutter. Pilih New Application Project.
![alt text](/screenshot/image-1.png)


Langkah 2:
Kemudian buat folder sesuai style laporan praktikum yang Anda pilih. Disarankan pada folder dokumen atau desktop atau alamat folder lain yang tidak terlalu dalam atau panjang. Lalu pilih Select a folder to create the project in.
![alt text](/screenshot/image-2.png)


Langkah 3:
Jika sudah selesai proses pembuatan project baru, pastikan tampilan seperti berikut. Pesan akan tampil berupa "Your Flutter Project is ready!" artinya Anda telah berhasil membuat project Flutter baru.
![alt text](/screenshot/image-3.png)


praktikum 2

Langkah 1:
Login ke akun GitHub , 
![alt text](/screenshot/image-4.png)

Langkah 3:
Kembali ke VS code, project flutter h, buka terminal pada menu Terminal > New Terminal. Lalu ketik perintah berikut untuk inisialisasi git pada project Anda dan publish menggunakan perintah tersebut
![alt text](/screenshot/image-5.png)

Langkah 3:
Lakukan push juga untuk semua file lainnya dengan pilih Stage All Changes. Beri pesan commit "project pertama . Maka akan tampil di repository GitHub Anda seperti berikut.
![alt text](/screenshot/image-6.png)


Langkah 4:
Kembali ke VS Code, ubah platform di pojok kanan bawah ke emulator atau device atau bisa juga menggunakan browser Chrome. Lalu coba running project belajar1 dengan tekan F5 atau Run > Start Debugging. Tunggu proses kompilasi hingga selesai, maka aplikasi flutter pertama Anda akan tampil seperti berikut.
![alt text](/screenshot/image7.png)

praktikum 3

Langkah 1: Text Widget
Buat folder baru widgets di dalam folder lib. Kemudian buat file baru di dalam widgets dengan nama text_widget.dart.

![alt text](/screenshot/image-9.png)


Lakukan import file text_widget.dart ke main.dart, lalu ganti bagian text widget dengan kode di atas. Maka hasilnya seperti gambar berikut

![alt text](/screenshot/image7.png)

Langkah 2: Image Widget
Buat sebuah file image_widget.dart di dalam folder basic_widgets dengan isi kode berikut.

![alt text](/screenshot/image-10.png)

Lakukan penyesuaian asset pada file pubspec.yaml dan tambahkan file logo Anda di folder assets project belajar1.

![alt text](/screenshot/image-11.png)

Jangan lupa sesuaikan kode dan import di file main.dart kemudian akan tampil gambar seperti berikut.

![alt text](/screenshot/image-8.png)


praktikum 4 

Langkah 1: Cupertino Button dan Loading Bar
Buat file di basic_widgets > loading_cupertino.dart. Import stateless widget dari material dan cupertino. Lalu isi kode di dalam method Widget build adalah sebagai berikut

![alt text](/screenshot/image-12.png)

hasil :
![alt text](/screenshot/image-13.png)

Langkah 2: Floating Action Button (FAB)
Buat file di widget > fab_widget.dart. Import stateless widget dari material. Lalu isi kode di dalam method Widget build adalah sebagai berikut.




langkah 3
Scaffold widget digunakan untuk mengatur tata letak sesuai dengan material design.

dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'My Increment App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ), 
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

hasil :

![alt text](/screenshot/image_14.png)

langkah 4
