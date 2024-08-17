import 'package:flutter/material.dart';

class QuranListPage extends StatelessWidget {
  const QuranListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List of Surah names in Arabic
    final List<Map<String, String>> surahDetails = [
  {'number': '001', 'name': 'الفاتحة'},
  {'number': '002', 'name': 'البقرة'},
  {'number': '003', 'name': 'آل عمران'},
  {'number': '004', 'name': 'النساء'},
  {'number': '005', 'name': 'المائدة'},
  {'number': '006', 'name': 'الأنعام'},
  {'number': '007', 'name': 'الأعراف'},
  {'number': '008', 'name': 'الأنفال'},
  {'number': '009', 'name': 'التوبة'},
  {'number': '010', 'name': 'يونس'},
  {'number': '011', 'name': 'هود'},
  {'number': '012', 'name': 'يوسف'},
  {'number': '013', 'name': 'الرعد'},
  {'number': '014', 'name': 'إبراهيم'},
  {'number': '015', 'name': 'الحجر'},
  {'number': '016', 'name': 'النحل'},
  {'number': '017', 'name': 'الإسراء'},
  {'number': '018', 'name': 'الكهف'},
  {'number': '019', 'name': 'مريم'},
  {'number': '020', 'name': 'طه'},
  {'number': '021', 'name': 'الأنبياء'},
  {'number': '022', 'name': 'الحج'},
  {'number': '023', 'name': 'المؤمنون'},
  {'number': '024', 'name': 'النور'},
  {'number': '025', 'name': 'الفرقان'},
  {'number': '026', 'name': 'الشعراء'},
  {'number': '027', 'name': 'النمل'},
  {'number': '028', 'name': 'القصص'},
  {'number': '029', 'name': 'العنكبوت'},
  {'number': '030', 'name': 'الروم'},
  {'number': '031', 'name': 'لقمان'},
  {'number': '032', 'name': 'السجدة'},
  {'number': '033', 'name': 'الأحزاب'},
  {'number': '034', 'name': 'سبأ'},
  {'number': '035', 'name': 'فاطر'},
  {'number': '036', 'name': 'يس'},
  {'number': '037', 'name': 'الصافات'},
  {'number': '038', 'name': 'ص'},
  {'number': '039', 'name': 'الزمر'},
  {'number': '040', 'name': 'غافر'},
  {'number': '041', 'name': 'فصلت'},
  {'number': '042', 'name': 'الشورى'},
  {'number': '043', 'name': 'الزخرف'},
  {'number': '044', 'name': 'الدخان'},
  {'number': '045', 'name': 'الجاثية'},
  {'number': '046', 'name': 'الأحقاف'},
  {'number': '047', 'name': 'محمد'},
  {'number': '048', 'name': 'الفتح'},
  {'number': '049', 'name': 'الحجرات'},
  {'number': '050', 'name': 'ق'},
  {'number': '051', 'name': 'الذاريات'},
  {'number': '052', 'name': 'الطور'},
  {'number': '053', 'name': 'النجم'},
  {'number': '054', 'name': 'القمر'},
  {'number': '055', 'name': 'الرحمن'},
  {'number': '056', 'name': 'الواقعة'},
  {'number': '057', 'name': 'الحديد'},
  {'number': '058', 'name': 'المجادلة'},
  {'number': '059', 'name': 'الحشر'},
  {'number': '060', 'name': 'الممتحنة'},
  {'number': '061', 'name': 'الصف'},
  {'number': '062', 'name': 'الجمعة'},
  {'number': '063', 'name': 'المنافقون'},
  {'number': '064', 'name': 'التغابن'},
  {'number': '065', 'name': 'الطلاق'},
  {'number': '066', 'name': 'التحريم'},
  {'number': '067', 'name': 'الملك'},
  {'number': '068', 'name': 'القلم'},
  {'number': '069', 'name': 'الحاقة'},
  {'number': '070', 'name': 'المعارج'},
  {'number': '071', 'name': 'نوح'},
  {'number': '072', 'name': 'الجن'},
  {'number': '073', 'name': 'المزمل'},
  {'number': '074', 'name': 'المدثر'},
  {'number': '075', 'name': 'القيامة'},
  {'number': '076', 'name': 'الإنسان'},
  {'number': '077', 'name': 'المدثر'},
  {'number': '078', 'name': 'النبأ'},
  {'number': '079', 'name': 'النازعات'},
  {'number': '080', 'name': 'عبس'},
  {'number': '081', 'name': 'التكوير'},
  {'number': '082', 'name': 'الإنفطار'},
  {'number': '083', 'name': 'المطففين'},
  {'number': '084', 'name': 'الإنشقاق'},
  {'number': '085', 'name': 'البروج'},
  {'number': '086', 'name': 'الطارق'},
  {'number': '087', 'name': 'الأعلى'},
  {'number': '088', 'name': 'الغاشية'},
  {'number': '089', 'name': 'الفجر'},
  {'number': '090', 'name': 'البلد'},
  {'number': '091', 'name': 'الشمس'},
  {'number': '092', 'name': 'الليل'},
  {'number': '093', 'name': 'الضحى'},
  {'number': '094', 'name': 'الشرح'},
  {'number': '095', 'name': 'التين'},
  {'number': '096', 'name': 'العلق'},
  {'number': '097', 'name': 'القدر'},
  {'number': '098', 'name': 'البينة'},
  {'number': '099', 'name': 'الزلزلة'},
  {'number': '100', 'name': 'العاديات'},
  {'number': '101', 'name': 'القارعة'},
  {'number': '102', 'name': 'التكاثر'},
  {'number': '103', 'name': 'العصر'},
  {'number': '104', 'name': 'الهمزة'},
  {'number': '105', 'name': 'الفيل'},
  {'number': '106', 'name': 'قريش'},
  {'number': '107', 'name': 'الماعون'},
  {'number': '108', 'name': 'الكوثر'},
  {'number': '109', 'name': 'الكافرون'},
  {'number': '110', 'name': 'النصر'},
  {'number': '111', 'name': 'المسد'},
  {'number': '112', 'name': 'الإخلاص'},
  {'number': '113', 'name': 'الفلق'},
  {'number': '114', 'name': 'الناس'},
];

    return Scaffold(
      appBar: AppBar(
        title: const Text('أسماء السور '),
      ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/background_image.jpg', // Replace with your background image asset
              fit: BoxFit.cover,
            ),
          ),
          // List of Surahs
          ListView.builder(
            itemCount: surahDetails.length,
            itemBuilder: (context, index) {
              final surah = surahDetails[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor:
                        Colors.deepPurple.withOpacity(0.8), // Button color
                    foregroundColor: Colors.white, // Text color
                  ),
                  onPressed: () async {
                    // Navigate to the sound player page, passing the Surah number and name
                    await Navigator.pushNamed(
                      context,
                      '/soundPlayer',
                      arguments: {
                        'number': surah['number']!,
                        'name': surah['name']!,
                      },
                    );
                  },
                  child: Text(
                    '${surah['number']} - ${surah['name']}',
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
