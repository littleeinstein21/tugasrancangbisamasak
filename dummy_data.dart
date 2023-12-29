import 'dart:core';

class Data {
  String nama, imageUrl, keterangan, videoUrl;
  List<String> cara;
  List<String> resep;
 

  Data(
    {
      required this.nama,
      required this.resep,
      required this.cara,
      required this.imageUrl,
      required this.keterangan,
      required this.videoUrl,
    }
  );
}

List<Data> dataMasak = [
  Data(
    nama: 'Ayam Betutu',
    resep: [
    '1 ekor (1 kg) ayam utuh',
    '3 batang serai, memarkan',
    '4 lembar daun salam',
    '1 liter air',
    '15 butir bawang merah',
    '7 siung bawang putih',
    '2 buah cabe besar',
    '13 buah cabe merah keriting',
    '4 buah kemiri',
    '3 cm jahe',
    '3 cm kunyit',
    '3 cm lengkuas',
    '3 cm kencur',
    '1 sdt merica utuh',
    '1 sdt ketumbar',
    '1 sdm garam',
    '10 g gula merah',
    '1 sdt terasi',
    ],
    cara: [
  'Cuci ayam di bawah air mengalir hingga benar-benar bersih lalu tiriskan hingga airnya kering.',
  'Bumbu Halus: Blender atau ulek kasar bawang merah bawang putih dan cabe merah.',
  'Tumbuk halus kunyit, jahe, kencur, lengkuas, 1 batang serai, kemiri, merica, ketumbat, terasi, garam dan gula merah.',
  'Tumis bumbu halus hingga wangi dan matang.',
  'Tambahkan daun salam, 2 batang serai, aduk hingga layu.',
  'Masukkan bumbu yang telah ditumbuk kasar, aduk hingga matang.',
  'Tambahkan air kemudian masukkan ayam utuh.',
  'Masak denngan api kecil selama kurang lebih 90 menit hingga air rebusan bersisa susut menjadi sekitar 200ml dan ayam empuk.',
  'Hidangkan ayam betutu beserta Pelengkap.',
    ],
    imageUrl: 'https://i.pinimg.com/564x/95/0f/ce/950fce5b89c3f7c0c401223f675a5b57.jpg',
    keterangan: 'Ayam Betutu adalah makanan tradisional khas Bali yang terbuat dari ayam atau bebek utuh yang berisi bumbu, kemudian dipanggang dalam api sekam.',
    videoUrl: 'https://youtu.be/TsJQRaLthwk?si=UUHY6ucABea3htnD'),
  Data(
    nama: 'Ayam Goreng Kalasan',
    resep: [
    '1 ekor (1.2 kg) ayam kampung yang gemuk',
    '1 liter air kelapa',
    '2 lembar daun salam',
    '1 liter air kelapa',
    '2 batang serai, memarkan',
    '1 liter air kelapa',
    '3 cm lengkuas, memarkan',
    '1 liter air kelapa',
    '50 g gula aren, iris halus',
    '8 butir bawang merah',
    '5 siung bawang putih',
    '3 butir kemiri',
    '2 cm jahe',
    '1 sdt merica butiran',
    '2 sdt garam',
    '5 buah cabe merah besar',
    '5 buah cabe rawit merah',
    '5 butir bawang merah',
    '2 siung bawang putih',
    '1 potong terasi',
    '1 sdt gula pasir',
    '1 sdt garam',

    ],
    cara: [
      'Potong-potong ayam menjadi 4 atau 8 bagian. Cuci bersih dan tiriskan.',
      'Taruh potongan ayam di dalam wajan atau panci. Tambahkan bumbu halus, daun salam, serai dan lengkuas.',
      'Tuangi air kelapa dan masak dengan api sedang hingga bumbu meresap dan ayam empuk. Angkat ayam, tiriskan.',
      'Panaskan minyak banyak dengan api sedang. Goreng ayam hingga kuning kecokelatan dan kering. Tiriskan.',
      'Sambal Goreng: Rebus cabe merah, cabe rawit, bawang merah dan bawang putih hingga lunak. Angkat dan tiriskan.',
      'Haluskan cabe dan bawang bersama terasi, gula dan garam.',
      'Tumis sambal hingga matang dan berminyak. Angkat dan dinginkan.',
      'Sajikan ayam goreng dengan Sambal Goreng dan lalapan.',
    ],
    imageUrl: 'https://i.pinimg.com/564x/be/c8/72/bec8721104681a2d2a0c8490cf54457b.jpg',
    keterangan: 'Ayam Goreng Kalasan adalah masakan ayam goreng dengan bumbu khusus yang berasal dari daerah Kalasan, Sleman Yogyakarta. ',
    videoUrl: 'https://youtu.be/RYcYf-2i4gY?si=ZZg-PmEQMqVIVE-k'),
  Data(
    nama: 'Ayam Penyet',
    resep:  [
    '1 kg ayam',
    'Minyak goreng secukupnya', 
    '4 helai daun salam', 
    '1 batang serai', 
    '4 helai daun cengkeh', 
    '4 helai daun kayu manis',  
    '3 helai daun jeruk',  
    '10 siung bawang merah', 
    '5 siung bawah putih', 
    '3 cm jahe',  
    '2 cm lengkuas',  
    '2 cm kunyit', 
    'Garam secukupnya', 
    '10 cabai merah', 
    '1 terasi cabai rawit sesuai selera',
    '1 buah tomat garam secukupnya',
    'Gula merah secukupnya',
    ],
    cara: [
      'Campurkan ayam dengan bumbu halus, daun salam, serai, daun cengkeh, daun kayu manis, daun jeruk, dan air secukupnya.', 
      'Masak dengan atas api kompor sedang hingga air berkurang.',
      'Setelah ayam ungkep matang, panaskan minyak goreng, goreng ayam dengan api sedang hingga matang. Kemudian tiriskan.', 
      'Goreng cabai, terasi, cabai rawit, bawang merah, bawang putih dan tomat dengan api kecil selama satu menit.', 
      'Setelah bahan sambal digoreng, ulek semua bahan hingga halus, tambahkan garam dan gula merah sesuai selera.', 
      'Penyet ayam goreng dengan sambal yang sudah diulek. Ayam penyet siap disantap.',
    ],
    imageUrl: 'https://i.pinimg.com/564x/45/b3/77/45b377ead33f9fca09734ca3f615cb0a.jpg',
    keterangan: 'Ayam penyet adalah hidangan Ayam goreng Indonesia, khususnya Jawa, yang terdiri dari ayam goreng yang diulek memakai ulekan untuk melembutkannya, disajikan dengan sambal, potongan-potongan timun, tahu goreng dan tempe. ',
    videoUrl: 'https://youtu.be/H9V5DGGVI6s?si=0n3UohoCrHVMMdFv'),
  Data(
    nama: 'Bakso',
    resep:  [
    '750 g daging iga sapi giling',
    '2 sdm bawang merah goreng',
    '2 sdm bawang putih goreng',
    '1 sdt baking powder',
    '2 sdt garam',
    '1 sdt gula pasir',
    '1 sdt lada bubuk',
    '4 sdm tepung sagu',
    '1 butir putih telur',
    '100 -150 g es batu, memarkan',
    '1 kg Iga Sapi',
    '1,5 L air',
    '3 siung bawang putih, cincang halus',
    '1,5 sdm garam',
    '1 sdt lada bubuk',
    '1 sdm gula',
    '1 batang Seledri, iris halus',
    '2 sdm bawang merah goreng',
    'Bihun',
    'Mie telur',
    'Sawi Tauge seledri',
    ],
    cara: [
      'Bakso: Masukkan daging iga sapi giling ke dalam food processor.',
      'Tambahkan bawang putih goreng, bawang merah goreng, baking powder, garam, gula, lada, putih telur dan tepung sagu, lalu giling sampai halus.',
      'Masukkan es batu secukupnya, kemudian haluskan kembali sampai benar-benar rata dan kalis.',
      'Masak air secukupnya dalam panci hingga hangat. Matikan api dan angkat.',
      'Bentuk adonan daging menjadi bola-bola dengan menekan adonan dengan telunjuk dan jempol. Keruk dengan sendok masukkan ke dalam air hangat.',
      'Setelah adonan habis terbentuk menjadi bakso. Masak hingga bakso mengapung lalu angkat dan tiriskan. Rendam bakso dalam air dingin.',
      'Kuah Bakso: Siapkan panci yang agak besar, kemudian tuangkan air, masukkan iga sapi, seledri, bawang merah goreng dan bawang putih cincang.',
      'Didihkan dengan api kecil agar kaldunya bening.',
      'Masak hingga daging iga sapi empuk.',
      'Masukkan garam, gula,dan lada, aduk rata. Tambahkan bola-bola bakso dan didihkan.',
      'Siapkan mangkuk, susun mie, bihun, sawi hijau, dan tauge, masukkan bakso sesuai selera dan iga sapi di dalam mangkuk.',
      'Beri taburan seledri, dan bawang goreng.',
      'Sajikan dengan sambal dan kecap. Untuk 10 porsi.',
    ],
    imageUrl: 'https://i.pinimg.com/564x/b2/8f/2f/b28f2f027c80ab7e39a6d5a91e780b78.jpg',
    keterangan: 'Bakso adalah jenis bola daging yang lazim ditemukan pada masakan Indonesia. Bakso umumnya dibuat dari campuran daging sapi giling dan tepung tapioka, tetapi ada juga bakso yang terbuat dari daging ayam, babi, ikan, udang bahkan daging kerbau.',
    videoUrl: 'https://youtu.be/bBFnOS5wNuM?si=7Pf-QiMSBJpyNZh9'),
Data(
    nama: 'Bebek Goreng',
    resep:  [
    '1 ekor bebek',
    '1 sdt garam',
    '1/2 sdt merica bubuk',
    '1 sdt ketumbar bubuk',
    '1 sdt bawang putih bubuk',
    '1 sdt jahe bubuk',
    '1/2 sdt gula merah',
    '1/4 sdt kaldu bubuk',
    '1/4 sdt penyedap rasa',
    'Minyak goreng secukupnya',
    ],
    cara: [
    'Cuci bersih bebek dan potong sesuai selera.',
    'Lumuri bebek dengan garam, merica bubuk, ketumbar bubuk, bawang putih bubuk, jahe bubuk, gula merah, kaldu bubuk, dan penyedap rasa.',
    'Diamkan selama 30 menit agar bumbu meresap.',
    'Panaskan minyak goreng hingga panas.',
    'Goreng bebek hingga matang dan berwarna kecokelatan.',
    'Angkat dan sajikan dengan sambal dan lalapan.'
    ],
    imageUrl: 'https://i.pinimg.com/564x/ff/55/8d/ff558ddcbeb068f550193cdf5d85119b.jpg',
    keterangan: 'Bebek goreng adalah daging bebek yang digoreng dan dihidangkan dengan lalapan. Bebek goreng dapat ditemui di warung-warung kaki lima sampai di restoran dan hotel mewah.',
    videoUrl: 'https://youtu.be/8L2FdhuVbQM?si=yoeYMsiu1WL2E67t'),
  Data(
    nama: 'Bubur Ayam',
    resep:  [
   '500 gram beras',
  '1 liter air',
  '1/2 sdt garam',
  '1/4 sdt merica bubuk',
  '1 sdm minyak goreng',
  '1 sdm bawang putih goreng',
  '1/2 sdt merica bubuk',
  '1/4 sdt kaldu bubuk',
  '1/4 sdt penyedap rasa',
  '100 gram suwiran ayam',
  '100 gram kacang kedelai goreng',
  '100 gram kerupuk emping',
  '100 gram bawang goreng',
  '1 ikat daun seledri, iris halus',
  '1 ikat daun bawang, iris halus',
  'Sambal kacang',
  'Lalapan (timun, kol, tomat)',
    ],
  cara: [
  'Cuci bersih beras dan rendam selama 30 menit.',
  'Siapkan panci dan masukkan beras, air, garam, dan merica bubuk.',
  'Masak dengan api kecil hingga beras mengembang dan menjadi bubur.',
  'Panaskan minyak goreng dan tumis bawang putih goreng, merica bubuk, kaldu bubuk, dan penyedap rasa hingga harum.',
  'Tuang tumisan bumbu ke dalam bubur dan aduk rata.',
  'Masukkan suwiran ayam, kacang kedelai goreng, kerupuk emping, bawang goreng, daun seledri, dan daun bawang.',
  'Aduk rata dan masak hingga matang.',
  'Sajikan bubur ayam dengan sambal kacang dan lalapan',
    ],
    imageUrl: 'https://i.pinimg.com/564x/f2/fb/1f/f2fb1f15bd88d6e7f4b74bc6fefb38b9.jpg',
    keterangan: 'Bubur ayam adalah salah satu jenis makanan dari Indonesia. Bubur nasi adalah beras yang dimasak dengan air yang banyak sehingga memiliki tekstur yang lembut dan berair. Bubur biasanya disajikan dalam suhu panas atau hangat.',
    videoUrl: 'https://youtu.be/Mt03AY4x3D8?si=Ju9OU_rnDPo9149n'),
  Data(
    nama: 'Gado-Gado',
    resep:  [
    '100 gram kacang tanah, goreng hingga matang',
    '5 siung bawang merah, goreng hingga harum',
    '5 buah cabai merah, goreng hingga harum',
    '2 buah cabai rawit, goreng hingga harum',
    '1 sendok makan air asam jawa',
    '1 sendok makan gula merah, sisihkan',
    '1 sendok makan gula pasir',
    '1 sendok teh garam',
    '1 sendok teh kaldu bubuk',
    '1 lembar daun jeruk, simpulkan',
    '200 ml air',
    '100 gram tauge, rebus sebentar',
    '100 gram kol, potong-potong',
    '100 gram wortel, potong dadu',
    '100 gram kentang, potong dadu',
    '100 gram tahu putih, goreng',
    '100 gram tempe, goreng',
    '2 buah telur rebus, potong-potong',
    '50 gram emping',
    '100 gram kerupuk',
    '1 sendok makan kecap manis',
    '1 sendok makan saus sambal',
    '1 sendok makan air jeruk nipis',
    ],
   cara: [
  'Haluskan kacang tanah, bawang merah, cabai merah, cabai rawit, air asam jawa, gula merah, gula pasir, garam, dan kaldu bubuk.',
  'Masukkan daun jeruk dan air, aduk rata.',
  'Rebus tauge, kol, wortel, dan kentang hingga matang.'
  'Tata tauge, kol, wortel, kentang, tahu, tempe, telur rebus, emping, dan kerupuk di atas piring.',
  'Siram dengan bumbu kacang dan beri kecap manis, saus sambal, dan air jeruk nipis.',
  'Gado-gado siap disajikan.',
    ],
    imageUrl: 'https://i.pinimg.com/564x/e9/b6/5b/e9b65b09e0c7c0e75dd634360abb2a43.jpg',
    keterangan: 'Gado-gado adalah makanan yang terdiri atas sayur-sayuran, kentang, tempe, tahu, telur rebus, dan lain-lain diberi bumbu sambal kacang dan sebagainya.',
    videoUrl: 'https://youtu.be/Jm1ThTdVgwo?si=E4MnKtwKv1RDPIh4'),
  Data(
    nama: 'Ikan Bakar',
    resep:  [
    '1 kg ikan nila, cuci bersih',
    '1 sendok makan garam',
    '1/2 sendok teh merica bubuk',
    '1/4 sendok teh ketumbar bubuk',
    '1/4 sendok teh bawang putih bubuk',
    '1/4 sendok teh jahe bubuk',
    '1 sendok makan kecap manis',
    '1 sendok makan air jeruk nipis',
    '2 sendok makan minyak goreng',
    ],
    cara: [
    ' Lumuri ikan dengan garam, merica bubuk, ketumbar bubuk, bawang putih bubuk, dan jahe bubuk. '
    ' Diamkan selama 15 menit.',
    ' Olesi ikan dengan kecap manis dan air jeruk nipis. ',
    ' Panaskan minyak goreng di atas wajan. ',
    ' Panggang ikan di atas wajan hingga matang. ',
    ' Ikan bakar siap disajikan. ',
    ],
    imageUrl: 'https://i.pinimg.com/564x/c1/50/a0/c150a0e3b3f9b3f72b26e30058d73ada.jpg',
    keterangan: 'Ikan bakar adalah hidangan ikan yang dibakar atau dipanggang di atas api atau bara api. Hidangan ikan yang dibakar, muncul secara universal di berbagai belahan dunia',
    videoUrl: 'https://youtu.be/ytg0nSt6k4k?si=K6nPfrxmh0PJanpJ'),
Data(
    nama: 'Ikan Goreng',
    resep:  [
    '1 kg ikan nila, bersihkan',
    '1 sdm garam',
    '1 sdt gula pasir',
    '1/2 sdt merica bubuk',
    '1/2 sdt ketumbar bubuk',
    '1/4 sdt bawang putih bubuk',
    '1/4 sdt bawang merah bubuk',
    '1 sdt air jeruk nipis',
    '2 sdm minyak goreng untuk menggoreng',
    ],
    cara: [
      'Campurkan garam, gula pasir, merica bubuk, ketumbar bubuk, bawang putih bubuk, dan bawang merah bubuk dalam mangkuk.'
      'Aduk rata.'
      'Lumuri ikan dengan bumbu hingga rata.'
      'Diamkan selama 15 menit.'
      'Panaskan minyak goreng dalam wajan.'
      'Goreng ikan hingga matang dan berwarna keemasan.'
      'Angkat dan tiriskan.'
      'Sajikan ikan goreng dengan sambal dan lalapan.'
    ],
    imageUrl: 'https://i.pinimg.com/564x/49/b0/44/49b04475b913e06215247d0db5756002.jpg',
    keterangan: 'Ikan goreng atau iwak goreng adalah istilah umum yang merujuk pada berbagai jenis hidangan Indonesia dan Malaysia yang dibuat dengan cara menggoreng ikan atau makanan laut lainnya. Ikan goreng sangat terkenal di Indonesia. Biasanya ikan dibumbu celup dengan cara dimarinasi dengan campuran bumbu rempah.',
    videoUrl: 'https://youtu.be/n15fRhTDxpY?si=WBe3-orZTaxfAEgG'),

Data(
    nama: 'Ketoprak',
    resep:  [
    '1 ikat tauge, rebus',
    '1 bungkus bihun, rebus',
    '1 buah tahu putih, goreng',
    '1 buah lontong, iris',
    '100 gram kerupuk',
    'Bawang goreng secukupnya',
    'Kecap manis secukupnya',
    'Bumbu kacang ketoprak',
    '200 gram kacang tanah, goreng, haluskan',
    '10 buah cabai rawit, haluskan',
    '5 siung bawang putih, haluskan',
    '1/2 sendok teh garam',
    '1 sendok teh gula merah, sisir halus',
    '1 sendok teh air asam Jawa dari 1 sendok teh asam Jawa dan 2 sendok makan',
    '200 ml air'
    ],
    cara: [
    'Siapkan semua bahan.',
    'Sambal kacang ketoprak: ulek cabai rawit, bawang putih, garam, dan gula merah. Masukkan kacang tanah. Ulek rata.',
    'Tata lontong, tahu, tauge, dan bihun di piring.',
    'Siram dengan bumbu kacang ketoprak.',
    'Tambahkan kerupuk dan bawang goreng.',
    'Sajikan.'
    ],
    imageUrl: 'https://i.pinimg.com/564x/08/ec/15/08ec150588cfc0fb1503f35504e4169f.jpg',
    keterangan: 'Ketoprak merupakan makanan khas Indonesia yang menggunakan ketupat sebagai bahan utamanya. Biasanya, ketoprak dijajakan menggunakan kereta dorong di jalan-jalan atau kaki lima. Makanan khas ini banyak ditemui di kota Jakarta. ',
    videoUrl: 'https://youtu.be/iBMAWbLykB0?si=2d7M_0gJxf854Qdb'),
  Data(
    nama: 'Lontong Sayur',
    resep:  [
    '250 gram nangka muda',
    '100 gram buncis',
    '100 gram labu siam',
    '4 butir telur ayam',
    '200 ml santan kental',
    '1 lembar daun kunyit',
    '2 lembar daun salam',
    '2 cm lengkuas',
    '2 batang serai',
    '1 sdt gula pasir',
    '1/2 sdt garam',
    '1/4 sdt merica bubuk',
    '10 siung bawang merah',
    '6 siung bawang putih',
    '4 butir kemiri',
    '1 ruas kunyit',
    '1/2 sdt ketumbar',
    '1/4 sdt jinten',
    ],
    cara: [
      ' Tumis bumbu halus sampai harum,',
      ' Masukkan nangka muda, buncis, dan labu siam, masak sampai setengah matang,',
      ' Masukkan nangka muda, buncis, dan labu siam untuk lontong sayur,',
      ' Tambahkan santan, daun kunyit, daun salam, lengkuas, serai, gula pasir, garam, dan merica bubuk, masak sampai mendidih,',
      ' Masak sampai sayur empuk dan kuah mengental,',
      ' Masak sayur sampai empuk dan kuah mengental untuk lontong sayur,',
      ' Sajikan lontong sayur dengan taburan bawang goreng dan kerupuk.',
    ],
    imageUrl: 'https://i.pinimg.com/564x/8d/e4/79/8de479525ddc56a30287330efede1cf0.jpg',
    keterangan: 'Lontong gulai atau lontong sayur adalah makanan Indonesia yang berasal dari Minangkabau, Sumatera Barat. Lontong ini identik dengan kuah santan yang memiliki bumbu kental khas masakan Minang. Kuah santan yang kaya bumbu rempah sudah dikenal sebagai salah satu cara memasak ala masakan Minang.',
    videoUrl: 'https://youtu.be/2uBYico3Ln8?si=n0Vx_LkZunqFKbZW'),
  Data(
    nama: 'Mie Aceh',
    resep:  [
    '250 gram mie kuning/mie telor',
    '200 gram daging sapi',
    '2 batang daun bawang',
    '100 gram kol iris',
    '100 gram toge',
    '2 sdm sambal ulek',
    '2-3 cabai rawit',
    '4 buah bawang merah',
    '3 siung bawang putih',
    '4 butir kemiri',
    '1 buah tomat',
    '1/4 cup minyak goreng',
    '2 sdm ketumbar bubuk',
    '1 sdm jintan bubuk',
    '1 sdm merica bubuk',
    '1 sdt garam',
    ],
    cara: [
      'Tumis bumbu halus, bawang merah, dan bawang putih hingga harum,',
      'Masukkan daging sapi dan masak hingga berubah warna,',
      'Tambahkan tomat, sambal ulek, dan cabai rawit,',
      'Masak hingga tomat layu,',
      'Tuang air secukupnya dan masak hingga mendidih,',
      'Masukkan mie, daun bawang, dan kol,',
      'Masak hingga mie matang,',
      'Sajikan dengan taburan bawang goreng dan perasan jeruk nipis.',
    ],
    imageUrl: 'https://i.pinimg.com/564x/fc/ef/20/fcef207c38b18647b396d3ebe707819f.jpg',
    keterangan: 'Mie aceh adalah masakan mi pedas khas Aceh di Indonesia. Mi kuning tebal dengan irisan daging sapi, daging kambing atau makanan laut disajikan dalam sup sejenis kari yang gurih dan pedas.',
    videoUrl: 'https://youtu.be/OGtn3u23Yjw?si=n_ZcV4VV1LR4VG2Z'),
Data(
    nama: 'Mie Goreng',
    resep:  [
    'Bungkus mie telur pipih',
    '3 sdm minyak goreng',
    '4 siung bawang putih, cincang halus',
    '100 gr ayam fillet, potong-potong',
    '5 buah bakso, potong-potong',
    '1 buah wortel, potong korek api',
    '100 gr sawi hijau, potong-potong',
    '2 butir telur, kocok lepas',
    '2 sdm kecap manis',
    '1 sdm saus tiram',
    '1 sdt kecap asin',
    '1 sdt garam',
    '1/2 sdt gula pasir',
    ],
    cara: [
      'Rebus mie telur sesuai petunjuk kemasan',
      'Tiriskan dan sisihkan',
      'Panaskan minyak goreng dalam wajan',
      'Tumis bawang putih hingga harum',
      'Masukkan ayam fillet dan bakso',
      'Masak hingga berubah warna',
      'Tambahkan wortel dan sawi hijau',
      'Masak hingga layu',
      'Masukkan telur kocok, aduk rata',
      'Masukkan mie telur, kecap manis, saus tiram, kecap asin, garam, gula pasir, dan lada bubuk',
      'Aduk rata hingga bumbu meresap',
    ],
    imageUrl: 'https://i.pinimg.com/564x/74/e6/66/74e66635b6386750a1153937bbacc3ad.jpg',
    keterangan: 'Mie goreng berarti "mie yang digoreng" adalah hidangan mie yang dimasak dengan digoreng tumis khas Indonesia. Mi goreng juga populer dan juga digemari di Malaysia, dan Singapura. ',
    videoUrl: 'https://youtu.be/Aya8KOd4DNo?si=cySJPeplcsZmjhJo'),
  Data(
    nama: 'Mie Nyemek',
    resep:  [
    '1 bungkus mie instan rasa apa saja,'
    '1 butir telur,'
    '1 batang daun bawang,'
    '2 lembar sawi hijau, '
    '2 siung bawang merah, '
    '1 siung bawang putih,'
    '3 buah cabai rawit,'
    '1 sdm kecap manis,'
    '1 sdt saus sambal,'
    '1/2 sdt garam,'
    '1/4 sdt lada bubuk,'
    '1 sdm minyak goreng,'
    ],
    cara: [
      'Masukkan mie instan sesuai petunjuk kemasan,'
      'Tiriskan mie instan, lalu tambahkan kecap manis, saus sambal, garam, dan lada bubuk. Aduk rata,'
      'Panaskan minyak goreng dalam wajan.'
      'Tumis bawang merah dan bawang putih,'
      'Masukkan cabai rawit. Tumis sampai layu.'
      'Tumis cabai rawit.'
      'Masukkan telur. Orak-arik sampai matang.'
      'Masukkan sawi hijau. Tumis sampai layu.'
      'Tumis sawi hijau.'
      'Tuangkan mie instan yang sudah dibumbui ke dalam wajan. Aduk rata.'
      'Tambahkan daun bawang. Aduk rata.'
      'Mie nyemek siap disajikan.'
    ],
    imageUrl: 'https://i.pinimg.com/564x/b2/bc/e8/b2bce8c2f59bf8c15ec1350aa1179b7f.jpg',
    keterangan: 'Mie nyemek adalah masakan bakmi khas Yogyakarta yang disajikan dengan kuah yang kental dan sedikit. Istilah nyemek sendiri berasal dari bahasa Jawa yang berarti tidak basah dan tidak kering. Mungkin tengah-tengahnya antara bakmi kuah dan bakmi goreng.',
    videoUrl: 'https://youtu.be/V89dtR3pWDY?si=RxKw2s5-vWdjP3FQ'),
  Data(
    nama: 'Nasi Goreng',
    resep:  [
    '2 piring nasi putih',
    '2 butir telur',
    '2 sdm bawang merah',
    '2 siung bawang putih',
    '1 buah cabai merah besar',
    '1 sdm kecap manis',
    '1 sdt saus tiram',
    '1/2 sdt garam',
    '1/4 sdt merica bubuk',
    'Minyak goreng secukupnya',
    ],
   cara: [
      'Panaskan minyak goreng dalam wajan.',
      'Tumis bawang merah dan bawang putih hingga harum,'
      'Masukkan cabai merah besar.',
      'Tumis cabai merah besar hingga layu,'
      'Masukkan telur.',
      'Orak-arik hingga matang.',
      'Masukkan nasi putih dan aduk rata,'
      'Tambahkan kecap manis, saus tiram, garam, dan merica bubuk.',
      'Aduk rata hingga bumbu meresap.'
      'Tambahkan kecap manis, saus tiram, garam, dan merica bubuk,'
      'Angkat dan sajikan.',
    ],
    imageUrl: 'https://i.pinimg.com/564x/94/82/ab/9482ab2e248d249e7daa7fd6924c8d3b.jpg',
    keterangan: 'Nasi goreng adalah makanan berupa nasi yang digoreng dan dicampur dalam minyak goreng, margarin, atau mentega. Biasanya ditambah dengan kecap manis, bawang merah, bawang putih, asam jawa, lada dan bahan lainnya; seperti telur, daging ayam, dan kerupuk. ',
    videoUrl: 'https://youtu.be/V8xOJVq43As?si=TW7ixLk8rlZKUx3B'),
  Data(
    nama: 'Nasi Padang',
    resep:  [
    '500 gram beras',
    '400 gram daging sapi',
    '200 ml santan kental',
    '200 ml air',
    '2 batang serai, geprek',
    '4 lembar daun jeruk',
    '2 lembar daun salam',
    '1 lembar daun kunyit',
    '1 buah bunga lawang',
    '1 sendok teh ketumbar bubuk',
    '1 sendok teh lada bubuk',
    '1 sendok makan garam',
    '10 siung bawang merah',
    '5 siung bawang putih',
    '10 buah cabai merah keriting',
    '5 buah cabai rawit merah',
    '2 cm jahe',
    '2 cm lengkuas',
    ],
    cara: [
      'Cuci beras hingga bersih,'
      'Rebus daging sapi dengan santan, air, serai, daun jeruk, daun salam, daun kunyit, dan bunga lawang hingga empuk.'
      'Haluskan bawang merah, bawang putih, cabai merah keriting, cabai rawit merah, jahe, dan lengkuas.'
      'Masukkan bumbu halus ke dalam rebusan daging,'
      'Tambahkan ketumbar bubuk, lada bubuk, dan garam,'
      'Masak hingga bumbu meresap dan kuah mengental,'
      'Masak beras dengan air hingga matang,'
      'Sajikan nasi padang dengan rendang, lauk-pauk lainnya, dan sambal.'
    ],
    imageUrl: 'https://i.pinimg.com/564x/4b/94/68/4b94680222487b212836a9e2e5e3a541.jpg',
    keterangan: 'Nasi padang adalah nasi putih yang disajikan dengan berbagai macam lauk-pauk khas Minangkabau, Indonesia. Kata padang merujuk pada ibu kota Provinsi Sumatera Barat, Padang. ',
    videoUrl: 'https://youtu.be/VXMVxsOducM?si=1swxUKT9NVyDX0Sd'),
Data(
    nama: 'Pepes Ikan',
    resep: [
    '500 gram ikan kembung, bersihkan',
    '1 buah jeruk nipis, ambil airnya',
    '1 ikat kemangi',
    '2 buah tomat, iris tipis',
    '4 lembar daun salam',
    '2 lembar daun jeruk',
    '2 batang serai',
    '10 buah cabai rawit utuh',
    '6 siung bawang merah',
    '4 siung bawang putih',
    '5 buah cabai merah',
    '2 buah cabai rawit',
    '4 butir kemiri',
    '2 cm kunyit',
    '2 cm jahe',
    '1 sendok teh ketumbar',
    ],
    cara: [
      'Lumuri ikan dengan air jeruk nipis dan garam.'
      'Diamkan selama 15 menit.'
      'Haluskan bumbu-bumbu.'
      'Campurkan bumbu halus dengan ikan, tomat, daun salam, daun jeruk, serai, dan cabai rawit. Aduk rata.'
      'Ambil selembar daun pisang, letakkan ikan yang telah dibumbui.'
      'Bungkus rapat.'
      'Kukus pepes ikan selama 30 menit.'
      'Angkat dan sajikan.'
    ],
    imageUrl: 'https://i.pinimg.com/564x/00/2c/b8/002cb8be246e7d774c83466db9799c1d.jpg',
    keterangan: 'Pepes atau pais adalah makanan yang sudah ada sejak zaman kuno, seperti yang tercatat pada Prasasti Trunyan AI, dari Bali tahun dan Prasasti Turunyan B tahun. Makanan ini dibungkus dengan daun pisang.',
    videoUrl: 'https://youtu.be/PbYENZf81uw?si=0BHGGKZJgEHMEBS1'),
  Data(
    nama: 'Rawon',
    resep: [
    '500 gram daging sandung lamur sapi',
    '5 lembar daun jeruk purut segar',
    '2 batang serai, memarkan',
    '1 sdm air asam jawa',
    '5 siung bawang putih',
    '10 siung bawang merah',
    '5 buah keluak',
    '4 butir kemiri',
    '1 cm kunyit',
    '50 ml minyak goreng',
    ],
    cara: [
      'Rebus air hingga mendidih.' 
      'Masukkan daging sapi, rebus hingga empuk'
      'Rebus daging sapi hingga empuk,'
      'Haluskan bumbu halus dengan blender.' 
      'Tumis bumbu halus, serai, dan daun jeruk hingga harum dan matang.' 
      'Tambahkan air asam jawa, garam, gula, dan kaldu sapi,'
      'Masukkan daging sapi yang telah direbus, masak hingga bumbu meresap dan daging empuk,'
      'Koreksi rasa.' 
      'Sajikan hangat beserta pelengkap seperti nasi, emping, telur asin, dan sambal,'
    ],
    imageUrl: 'https://i.pinimg.com/564x/2c/2e/92/2c2e9253c7d4cb4f2393300c326ba9f4.jpg',
    keterangan: 'Rawon adalah masakan khas Indonesia yang berasal dari Kabupaten Ponorogo yang berupa sup daging berkuah hitam dengan campuran bumbu khas yang menggunakan kluwek, Makanan ini telah berusia lebih dari 1.000 Tahun.',
    videoUrl: 'https://youtu.be/3ZC3U0TYOhs?si=wZznJtuHZm0-mIY2'),
  Data(
    nama: 'Rendang',
    resep: [
    '500 gram daging sapi, potong-potong,'
    '500 ml santan kental,'
    '250 ml santan cair,'
    '10 buah cabai merah keriting,'
    '10 buah cabai merah besar,'
    '10 siung bawang merah,'
    '5 siung bawang putih,'
    '5 cm jahe,'
    '2 cm kunyit,'
    '2 cm lengkuas,'
    '1 sdt ketumbar,'
    '1 sdt jinten,'
    '1 sdt kemiri,'
    '1 sdt garam,'
    '1/2 sdt gula pasir,'
    '1/2 sdt kaldu bubuk,'
    '2 lembar daun salam,'
    '2 batang serai, memarkan,'
    '2 lembar daun jeruk,'
    ],
    cara: [
     'Haluskan cabai merah keriting, cabai merah besar, bawang merah, bawang putih, jahe, kunyit, dan lengkuas.'
      'Tumis bumbu halus bersama ketumbar, jinten, dan kemiri hingga harum.'
      'Masukkan daging sapi, aduk rata.'
      'Tuang santan kental, aduk kembali.'
      'Masak hingga mendidih, lalu kecilkan api.'
      'Masak hingga daging empuk dan santan menyusut.'
      'Tambahkan santan cair, garam, gula pasir, dan kaldu bubuk.'
      'Masak hingga kuah mengental dan warna rendang kecoklatan.'
      'Angkat dan sajikan.'
    ],
    imageUrl: 'https://i.pinimg.com/564x/16/d9/5d/16d95d52811b1256b73511a7d86e8fa3.jpg',
    keterangan: 'Rendang adalah hidangan berbahan dasar daging yang dihasilkan dari proses memasak suhu rendah dalam waktu lama dengan menggunakan aneka rempah-rempah dan santan. Proses memasaknya memakan waktu berjam-jam hingga yang tinggal hanyalah potongan daging berwarna hitam pekat dan dedak.',
    videoUrl: 'https://youtu.be/DMcFqtm1lfY?si=7dLCJBfvzJZ4WHMC'),
  Data(
    nama: 'Soto',
    resep:[
    '1 ekor ayam kampung'
    '2 liter air',
    '2 batang serai'
    '3 lembar daun salam',
    '2 lembar daun jeruk',
    '1 sdt garam',
    '1/2 sdt gula pasir',
    '1/4 sdt merica bubuk',
    '6 siung bawang merah',
    '3 siung bawang putih',
    '3 cm jahe',
    '1 ruas lengkuas',
    '1/2 sdt ketumbar',
    '1/4 sdt jinten',
    'Soun, bihun, atau nasi putih',
    'Kerupuk udang',
    'Emping',
    'Daun bawang'
    'Seledri'
    'Jeruk nipis'
    'Sambal rawit',
    ],
    cara: [
    'Rebus ayam dalam air mendidih hingga matang.' ,
    'Angkat dan tiriskan.',
    'Tumis bumbu halus hingga harum.',
    'Masukkan bumbu tumis ke dalam rebusan ayam.', 
    'Tambahkan serai, daun salam, daun jeruk, garam, gula pasir, dan merica bubuk.', 
    'Masak hingga kuah mendidih.',
    'Angkat ayam dari kuah soto.', 
    'Suwir-suwir daging ayam.',
    'Sajikan soto dengan suwiran ayam, soun, bihun, atau nasi putih, kerupuk udang, emping, daun bawang, seledri, jeruk nipis, dan sambal rawit.'
    ],
    imageUrl: 'https://i.pinimg.com/564x/1d/e4/a1/1de4a19e2d70724d71ad912cec05885d.jpg',
    keterangan: 'Soto adalah makanan khas Indonesia seperti sop yang terbuat dari kaldu daging dan sayuran. Daging yang paling sering digunakan adalah daging sapi dan daging ayam, tetapi ada pula yang menggunakan daging babi, daging kuda atau daging kambing.',
    videoUrl: 'https://youtu.be/dXYnMdfHXjo?si=XPETTx-MJ7gQiuha'),
];