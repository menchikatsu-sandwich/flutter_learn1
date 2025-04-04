import 'package:flutter/material.dart';

class HomeLVtext extends StatelessWidget {
  const HomeLVtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
      title: Text("Flutter Widget: Penggunaan ListView Class"),
      centerTitle: true,
      ),
      body: ListView(
      children: <Widget>[
        Container(
        padding: EdgeInsets.all(15),
        child: Text('ListView Indonesia CEMAS 2045, Oleh Santo Evorius Jehu',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        ),
        Container(
        padding: EdgeInsets.all(15),
        child: Text(
          'Indonesia Cemas 2045\n\n'
          'Indonesia menghadapi berbagai tantangan serius menuju tahun 2045 yang dapat menimbulkan rasa cemas. Salah satu masalah utama adalah ketidakstabilan politik yang sering kali diwarnai oleh konflik kepentingan, korupsi, dan lemahnya penegakan hukum. Ketidakstabilan ini dapat menghambat proses pembangunan dan menciptakan ketidakpastian di berbagai sektor.\n\n'
          'Ekonomi Indonesia juga menghadapi ancaman besar, termasuk ketergantungan pada sumber daya alam yang tidak terbarukan dan kurangnya diversifikasi ekonomi. Ketimpangan ekonomi yang semakin melebar antara daerah perkotaan dan pedesaan menambah kompleksitas masalah. Selain itu, rendahnya produktivitas tenaga kerja dan minimnya inovasi dapat membuat Indonesia tertinggal dalam persaingan global.\n\n'
          'Sistem pendidikan di Indonesia masih menghadapi banyak kendala, seperti kualitas yang tidak merata, kurangnya akses di daerah terpencil, dan kurikulum yang belum relevan dengan kebutuhan zaman. Hal ini dapat menghasilkan generasi yang kurang kompetitif dan tidak siap menghadapi tantangan masa depan. Ketimpangan dalam pendidikan juga memperburuk kesenjangan sosial.\n\n'
          'Masalah sosial seperti kemiskinan, pengangguran, dan kesenjangan sosial masih menjadi momok yang sulit diatasi. Ketidakadilan dalam distribusi sumber daya dan layanan publik sering kali memicu ketidakpuasan masyarakat. Selain itu, lemahnya sistem kesehatan dan tingginya angka stunting menunjukkan bahwa kualitas hidup masyarakat masih jauh dari ideal.\n\n'
          'Di kancah internasional, Indonesia menghadapi tantangan dalam mempertahankan kedaulatan dan pengaruhnya. Konflik regional, tekanan dari negara-negara besar, dan kurangnya strategi diplomasi yang efektif dapat membuat posisi Indonesia melemah. Selain itu, isu-isu global seperti perubahan iklim dan bencana alam yang semakin sering terjadi menambah beban yang harus ditanggung oleh negara ini.\n\n',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
        ),
      ],
      ),
    );
    }
  }