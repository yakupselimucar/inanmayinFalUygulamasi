import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const FalciApp());
}

class FalciApp extends StatelessWidget {
  const FalciApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'GÜNÜN FALI',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          backgroundColor: Colors.amberAccent,
        ),
        body: const SafeArea(child: UygulamaGovdesi()),
      ),
    );
  }
}

class UygulamaGovdesi extends StatefulWidget {
  const UygulamaGovdesi({super.key});

  @override
  State<UygulamaGovdesi> createState() => _UygulamaGovdesiState();
}

int yanitIndex = 0;

class _UygulamaGovdesiState extends State<UygulamaGovdesi> {
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  //widget build kısmından önce değişkenleri tanımla
  //metotları yaz
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const AspectRatio(
            aspectRatio: 5 / 2,
            child: Image(
              fit: BoxFit.contain,
              image: AssetImage('images/falci.png'),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          //UNUTMA GENELLİKLE CARD LISTTILE İLE BİRLİKTE KULLANILIR!!!
          //Listtile padding ile birlikte gelir.
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(40, 0, 40, 25),
            child: ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    yanitIndex = Random().nextInt(5) + 1;
                  },
                );
              },

              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 15,
                  padding: const EdgeInsets.symmetric(vertical: 7)),
              //color: Colors.white,
              //margin: EdgeInsets.symmetric(horizontal: 40),

              child: const ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 35,
                ),
                title: Text('AŞK DURUMU'),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 25),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  yanitIndex = Random().nextInt(5) + 6;
                });
              },
              style: ElevatedButton.styleFrom(
                  elevation: 15,
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 7)),
              child: const ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                  size: 35,
                ),
                title: Text('PARA DURUM'),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 25),
            child: ElevatedButton(
              //margin: EdgeInsets.symmetric(horizontal: 40),
              onPressed: () {
                setState(() {
                  yanitIndex = Random().nextInt(5) + 11;
                });
              },

              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 15,
                  padding: const EdgeInsets.symmetric(vertical: 7)),

              child: const ListTile(
                leading: Icon(
                  Icons.explore,
                  color: Colors.red,
                  size: 35,
                ),
                title: Text(
                  'GÜNLÜK TAVSİYE',
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            height: 150,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
              child: Text(
                yanitlar[yanitIndex],
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
