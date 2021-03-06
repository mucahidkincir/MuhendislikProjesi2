-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Anamakine: 94.138.203.35
-- Üretim Zamanı: 17 Oca 2018, 14:48:03
-- Sunucu sürümü: 5.5.52-cll-lve
-- PHP Sürümü: 5.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `muhendislik`
--
CREATE DATABASE IF NOT EXISTS `muhendislik` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `muhendislik`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `icerik`
--

CREATE TABLE IF NOT EXISTS `icerik` (
  `pid` int(12) NOT NULL AUTO_INCREMENT,
  `kelime` varchar(123) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `anlam` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=491 ;

--
-- Tablo döküm verisi `icerik`
--

INSERT INTO `icerik` (`pid`, `kelime`, `anlam`) VALUES
(19, 'Ağıl', '1.Ahır 2.Çiftlik.'),
(18, 'Aşağı mahalle sen misin, yukarı mahalle şen misin.', 'Kedersizce boş boş gezip dolaşanlar için kullanılır.'),
(17, 'Ağartu', 'Süt, yoğurt, peynir gibi gıdaların ortak adı.'),
(20, 'Ağırşak', 'İğin dengede durmasını ve dönmesini sağlayan ortası delik tekerlek biçiminde parça.'),
(21, 'Ağruk', 'Yaylaya gönderilen veya getirilen bir kaç kg lık emanet yükler.'),
(22, 'Ağuç', 'Avuç'),
(23, 'Ağuz', 'İnek ve koyunların doğumundan sonra ikinci sütlerinin pişirilmesiyle elde edilen yiyecek. İlk sütle kandil yapılır.'),
(456, 'Sağrak', 'Yağ saklama kabı'),
(457, 'Yağrık', 'Ot doğrama kütüğü'),
(25, 'Aha', 'İşte burada.'),
(26, 'Ahpun', 'Hayvan gübresi.'),
(27, 'Ahtaracak', 'Sacın üzerinde pişirilen ekmeği çeviren alet.'),
(28, 'Akınmak', 'Kaymak. karda kaymak, yokuş aşağı kaymak gibi.'),
(29, 'Aktarma', 'Tarlanın bir kez sürülmesi.'),
(30, 'Alaca', '1. Siyah beyaz karışımı renk, renkli. 2. Bahçe kapılarına konulan ağaçtan yapılmış çit kapı.'),
(31, 'Alaf', 'Ot, saman gibi hayvan yiyeceklerinin ortak adı.'),
(32, 'Algun', 'Kanal, Kanalizasyon.'),
(33, 'Altıparmak', 'Bir tür kumaş adı.'),
(34, 'Ana bre bacı', 'Kadınların kendi aralarında konuşurken şaşkınlık ifadesi olarak kullandıkları tabir.'),
(35, 'Anaberi', 'Öteberi.'),
(36, 'Anası soğan babası sarımsak', 'Beğenilmeyen insanları küçük düşürmek için kullanılan deyim.'),
(37, 'Angut', '1. Ördek büyüklüğünde kuş 2. Aptal insan'),
(38, 'Anuk', 'Nane'),
(39, 'Apsap', 'Elbise,giysi'),
(40, 'Arabası gıcılamak', 'Sözü geçer olmak, nüfuz insan.'),
(41, 'Argaç', 'Şal, cecim vs. dokurken çözgü arasına geçirilen ip yumağı.'),
(42, 'Aruk', 'Zayıf.'),
(43, 'Assi', 'Yaramaz.'),
(44, 'Aşlanmak', 'Hayvanların doyması, canlanması, güçlenmesi.'),
(45, 'Aygül', 'Ayçiçeği'),
(46, 'Ayıfındığı', 'Cevize yakın büyüklükte yabani fındık.'),
(47, 'Baca', 'Evin damı.'),
(48, 'Bacaya tuz ekmek', 'Oyun bozan çocukların evlerinin bacalarına tuz ekilirse çocukların karnının şişeceği ile ilgili inanç ve deyim.'),
(49, 'Balak', 'Manda ve ayı yavrusu.'),
(50, 'Başbırakmak', 'Öküz arabasında koşulu öküzlerin eniş aşağı inerken bir veya ikisinin birden kafalarını yere eğerek öküz arabasının burnunun yere çakılmasına sebeb olmaları 2. Verilen sözden vazgeçilmesi, işin yarıda bırakılması durumunda kullanılır.'),
(51, 'Bek', 'Baya, Çok, Abartmak.'),
(52, 'Bel', 'İki dağ arasındaki geçit.'),
(53, 'Belemek', 'Bebekleri beşiğe yatırmak.'),
(54, 'Belertme', 'Bakışları sertleştirerek kızmak.'),
(55, 'Benim elim madımak mı deriyor', 'Elim kolum bağlı değil.'),
(56, 'Bezük', 'Pembe renk.'),
(57, 'Bıldır', 'Geçen yıl, geçen sene.'),
(58, 'Bılk olmak', 'Meyvelerin iyice olgunlaşması.'),
(59, 'Biçik', 'İnek ve buzağılar için kullanılır.'),
(60, 'Bile', '1. Beraber 2. Dahi. O bile gitmiş.'),
(61, 'Bir tamda kalmak', 'Çoluk çocuğun yuvadan ayrılması sonucu anne ve babanın yalnız kalmaları.'),
(62, 'Biyo', 'Ne olurdu yani. Onu biyo getirseydiniz.'),
(63, 'Boncuklama', '1.Öküz arabasında koşulu öküzün yolda giderken aniden kafasını gidiş yönünün aksine çevirmesi. 2. Kişilerin verdikleri sözden vazgeçilmesi.'),
(64, 'Boramut', 'Fırınlanmış armut'),
(65, 'Bostan', 'Bahçe'),
(66, 'Boyunduruk', 'Öküzlerin arabalara bağlandığı tahta.'),
(67, 'Bozağzı', 'Nadasa bırakılmış arazi'),
(68, 'Böğen', 'Irmağın önüne vurulan set, bent.'),
(69, 'Böğrün başına mıh', 'Memnuniyetsizlik veya rahatsızlık duyulan bir konuda, büyüğün küçüğü azarlaması, beddua tonunda söylenen söz.'),
(70, 'Börtmek', 'Yiyeceklerin (fasülye vb.) hafif haşlanması.'),
(71, 'Bukulgan', 'Girdap'),
(72, 'Buymak', 'Üşümek'),
(73, 'Bus', 'Sis'),
(74, 'Buzağı bağlamak', 'Çeşme sularının belirli aralıklarla yapılan dinlendirme kazanlarında yosun bağlaması.'),
(75, 'Buzağı vurmak', 'Buzağıların otlamarı için meraya gönderilmesi.'),
(76, 'Büğeleklenmek', '1. Yaz aylarında büğelek adı verilen böceğin hayvanları ısırması üzerine hayvanların kaçışmaları. 2. Heyecanlı ve telaşlı olmak'),
(77, 'Bük', 'Çalılık ve dikenli bostan, bağlı bahçe.'),
(78, 'Bünek', 'Dana ve buzağıların analarını emmemesi için burunlarına takılan demir alet.'),
(79, 'Bürük', 'Duvak'),
(80, 'Büzmük', 'Arı büyüklüğünde sarı renkli büyük yabani arı.'),
(81, 'Büzür', 'Koyun dışkısı'),
(82, 'Cağ', 'Öküz arabasının ön ve arka kısmındaki parmaklıklar.'),
(83, 'Becik', 'Fasulye tanesi'),
(84, 'Çandu', 'Ev tavanı, tavan. '),
(85, 'Can aşı', 'Ölü için komşu ve akrabalara ikram edilen yemek.'),
(86, 'Cartik', 'Sosyetik'),
(87, 'Cavramak', 'Yalvarıp yakarmak.'),
(88, 'Cecim', 'Bir tür şal.'),
(89, 'Celpük', 'Çarpık'),
(90, 'Cemek', 'Üğendürenin kalın ucuna takılı olan demir. Sabana yapışan çamur ve sarılan otları temizlemede kullanılır.'),
(91, 'Cengeri', 'Koyu mavi boya.'),
(92, 'Cerek', 'Merteklerin (hezen) üzerine konulan bir metre uzunluğundaki ağaç parçaları.'),
(93, 'Cılga', 'Patika yol.'),
(94, 'Cılkı çıkmak', 'İşten istenilen sonucun alınmaması.'),
(95, 'Cırcır', 'Fermuar.'),
(96, 'Cışgu', 'Oyun bozan.'),
(97, 'Cışmak', 'Oyun bozan, hile yapmak, çamura yatmak'),
(98, 'Cimbiş', 'Pürüzsüz, düzgün'),
(99, 'Cineyi', 'En iyi'),
(100, 'Cingözel', 'En güzel'),
(101, 'Cişmek', 'Oyun oynamaktan vazgeçmek.'),
(102, 'Cumalık', 'Cuma akşamları, fakirlere gönderilen yiyecek.'),
(103, 'Cücül', 'Küçük, değersiz buğday için kullanılır.'),
(104, 'Çağ', 'Evin bir köşesine yapılan yıkanma yeri'),
(105, 'Çakşak', 'Dağın engine doğru inen taşlık kısmı'),
(106, 'Çal', 'Taşlık tepe, dağ'),
(107, 'Çalkama', 'Ayran'),
(108, 'Çalmar', 'Etrafı taş duvarla çevrili, üstü nadiren kapalı; yaylalardaki koyun, kuzu tamlama yerleri.'),
(109, 'Çapuk çalmak', 'Alkışlamak'),
(110, 'Çebiş', 'Bir yaşını geçmiş dişi keçi'),
(111, 'Çeğil', 'İrili ufaklı taşlar'),
(112, 'Çelpeşük', 'Karmaşık'),
(113, 'Çenüleme', 'Köpeklerin acıyla ses çıkarması'),
(114, 'Çeten ', 'Kağnıların üzerine konulan hayvan gübresi taşımada kullanılan araç'),
(115, 'Çevre ', 'Etrafı oyalı veya nakış işlemeli mendil'),
(116, 'Çırpma ', 'Pancar kökünden yapılan yemek'),
(117, 'Çiğn ', 'Omuz'),
(118, 'Çipil ', 'Ormanda birbirine girmiş çalılıklar'),
(119, 'Çon ', 'Atların üşütmeyle ilgili hastalığı'),
(120, 'Çöçelemek ', 'İş yapar gibi davranmak'),
(121, 'Çörten ', 'Pınarın oluğu'),
(122, 'Çüş düşmek ', 'Düğün ve nişanlarda kadınların ani bir hareketle diğer kadınların üzerine düşmeleri hareketi'),
(123, 'Dabaz ', 'Kurdeşen hastalığı'),
(124, 'Dadanmak ', 'Vazgeçemeyecek şekilde alışmak'),
(125, 'Dağarcık ', 'Hayvan derisinden yapılmış torba'),
(126, 'Dalfes ', 'Üzerine bir şey sarılmamış fes'),
(127, 'Danışçı ', 'Düğün akşamı oğlan evi önünde toplananların davul zurna eşliğinde kız evine gitmelerine "Danışa Gitme", danışa gidenlere de "Danışçı" denir'),
(128, 'Daşköprülü ', 'Camii Kebir Mahallesinin Taşköprü mevkiinde oturanlar için kullanılan deyim.Daşköprülü olmak, kimine göre bir meziyet.Kimine göre ise ters, inat yola gelmez anlamındadır.'),
(129, 'Dede yetimi ', 'Dedesinden önce babası ölenler için kullanılır'),
(130, 'Değirmi ', 'Eni ve boyu aynı olan şekil'),
(131, 'Depmük ', 'Tekme'),
(132, 'Deri basmak ', 'Koyun derisine çökelik, peynir karışımının doldurulması'),
(133, 'Deşürmek ', 'Toplamak'),
(134, 'Dıdıs ', 'Düzenli tertipli'),
(135, 'Dığıl ', 'Kaba armudun fırınlanmasıyla elde edilen ürün'),
(136, 'Dikme ', 'Söğüt ve kavak dalından kesilmiş, dikilmeye hazır fidan'),
(137, 'Dil ', 'Ağıt'),
(138, 'Duldasına sığınmak ', 'Koruyuculuğu altına girmek'),
(139, 'Duncukmak ', 'Yemek mevsimi öncesinde çıkılan çiftlikler'),
(140, 'Dunurşu ', 'Duvak giyerek geline eşlik eden kadınlar. Dünürcüden kaynaklanan bir kelimedir'),
(141, 'Düge', 'Genç, yavru yapmamış inek'),
(142, 'Düven ', 'Buğday kökünü ezmek için kullanılan ağaçtan yapılmış araç'),
(143, 'Ecinnü tayfası ', 'Yaramaz çocuk'),
(144, 'Ecük ', '1. Az 2. Biraz'),
(145, 'Eğiş ', 'Kadınların hamur yoğururken elleri ve tekne kenarına yapışan hamurları temizlemede kullandıkları demir alet'),
(146, 'Ekin ağzı ', 'Ekim yapılacak tarlalar'),
(147, 'Ekis etmek', 'Sitem etmek'),
(148, 'Ekti ', 'Anasız oğlak'),
(149, 'Elcek ', 'Tırpan ve karasabanda el tutmak için yapılan kısım'),
(150, 'Emiş ', 'Kuzuların emzirilmesi'),
(151, 'Enemek ', 'Hayvanların kısırlaştırılması'),
(152, 'Enibela ', 'Zoraki'),
(153, 'Er gelmiş dunurşu gibi ', 'Şaşkın bekleyenler için kullanılır'),
(154, 'Eksük ', 'Eksik'),
(155, 'Fartik ', 'Olur olmaz her işe karışan'),
(156, 'Fetil ', 'Kağıt kalınlığında, sac üzerinde yapılan bazlama'),
(157, 'Fışkı ', 'Hayvanların altına serilmek için kurutulan hayvan gübresi'),
(158, 'Fisil', 'Tohumdan yetiştirilmiş ekilecek küçük soğan'),
(159, 'Fişar ', 'Ağacın bir yıl içinde uzayan kısmı'),
(160, 'Fişek atmak ', 'Kağıtlara isim yazarak veya herkesin değişik küçük madde belirleyerek bunlarla herhangi bir şeyi paylaşırken kura çekilmesi'),
(161, 'Gade', 'Kardeş'),
(162, 'Gagaç ', 'Dağların taşlık kesiminde biten çiçek. Olgunlaşan tohumlarını çocuklar boncuk dizimi yapar'),
(163, 'Gakı', 'Ekşi elmanın dilinip güneşte kurutulmasıyla elde edilen ürün'),
(164, 'Galuk ', 'Evlenme zamanı geçmiş kız'),
(165, 'Gamga ', 'Ağaç yongası'),
(166, 'Garışlamak ', 'Bedduada bulunmak'),
(167, 'Garipsemek ', 'Özlemek'),
(168, 'Gavum ', 'Akraba, Akrabalar'),
(169, 'Gaygana ', 'Yumurta,su,un karışımının kızgın sacda pişirilmesiyle elde edilen yiyecek'),
(170, 'Gayım ', '1.Sıkı 2.diri,dinç 3.canlı'),
(171, 'Gazel ', 'Dökülmüş ağaç yaprakları'),
(172, 'Geçe ', 'Karşı, öte taraf'),
(173, 'Geçgere ', 'Dört saplı,hayvan pisliğini ahırdan atmak için kullanılan araç'),
(174, 'Gelin çıkarmak ', 'Gelinin baba evinden alınarak oğlan evine getirilmesi'),
(175, 'Gercük ', 'Çok konuşan kimseye denir.'),
(176, 'Gever ', 'Eniş aşağı inerken kağnının yavaş gitmesi için ön köp ile mazı arasına konan uzun ağaç'),
(177, 'Geybek gözel ', 'Çok güzel'),
(178, 'Gıcık ', 'Çam kozası'),
(179, 'Gıdık ', '1.Koyun, kuzu 2.Küçük sele, sepet'),
(180, 'Gıdım gıdım ', 'Azar azar'),
(181, 'Gıran ', 'Dağın sırt kısmı'),
(182, 'Gırtıl ', 'Pürüzlü arazi'),
(183, 'Gidik Ali bal yemez ', 'Utandırma için kullanılır'),
(184, 'Gidişmek ', 'Kaşınmak'),
(185, 'Gil ', '-ler, lar anlamında sülale isimlerinin sonuna eklenen takı.Kıncırgil gibi'),
(186, 'Gonşi ', 'Komşu'),
(187, 'Goya ', 'Güya'),
(188, 'Gozak ', 'Kozalak'),
(189, 'Göçlik ', 'Yayladan köye göç sırasında ilk kez giyilecek olan yeni elbise'),
(190, 'Göçüköy çayı ', 'Aşırı demli çay'),
(191, 'Gödek ', 'Kısa boylu insan'),
(192, 'Göğgeçemen ', 'Kertenkeleden biraz daha iri sarı renkli canlı'),
(193, 'Göğsulu ', 'Bir çeşit armut'),
(194, 'Gölük ', 'Yük taşımada kullanılan at, eşek, katır gibi hayvanların ortak adı'),
(195, 'Görpe ', 'Kuzu sürüsü'),
(196, 'Görüşe gitmek ', 'Oğlan evinin komşu ve akrabalarıyla gelinliklerini görmeye gitmeleri'),
(197, 'Göz ', 'Göze, suyun yerden çıktığı kaynak'),
(198, 'Gubat ', 'Kaba, iri , büyük'),
(199, 'Guz ', 'Kuzey'),
(200, 'Guzlamak ', 'Koyunların yavru yapması'),
(201, 'Gülk ', 'Tavukların kuluçkaya yatmaları'),
(202, 'Gürcü ', 'Gürgen yapraklarında bulunan sarı çıkıntı'),
(203, 'Gürneş', 'Koyunların aşırı sıcakta birbirine sokulması'),
(204, 'Güyegü çıkarmak ', 'Düğün günü gelin çıkarılmadan önce damadın büyük bir kalabalık ve konvoyla ilçede dolaştırılarak ağırlanmakta olduğu eve tekrar getirilmesi olayı'),
(205, 'Güz ', 'Sonbahar mevsimi'),
(206, 'Güzlekçi ', 'Sonbaharda hayvanlarıyla birlikte çiftliklere çıkanlara verilen isim'),
(207, 'Hacat ', 'Alet, edevat'),
(208, 'Hak ügendürenin ucunda ', 'Kızın mirastan pay alabilmesi için damadın dayak yemesi veya atmasını ifade eder'),
(209, 'Halik ', 'Duvar örerken aralarda kalan boşlukları doldurmada kullanılan küçük taşlar'),
(210, 'Hamança ', 'Çobanların azık taşımada kullandıkları koyun ve keçi derisinden yapılan araç. Bele sarılır, yiyecekleri sıcak tutar'),
(211, 'Haparak ', 'Aniden'),
(212, 'Har ', 'Diken'),
(213, 'Hark ', 'Ark, su yolu'),
(214, 'Hasa ', 'Kıymetli arsa, arazi'),
(215, 'Hayat ', 'Saçak altları'),
(216, 'Haylamak ', 'Bağırmak, seslenmek'),
(217, 'Hecin ', 'İri yarı'),
(218, 'Hedik ', 'Kar ayakkabısı'),
(219, 'Herge gelmek ', 'Yayladan köye gelmek'),
(220, 'Herge gitmek ', 'Herk vakti yaylalardaki bir kısım halkın köylere inmesi'),
(221, 'Herk etmek ', 'Haziran sonu, Temmuz başında nadasa bırakılan tarlaların sürülmesi'),
(222, 'Herle ', 'Birkaç çeşidi bulunan çorba çeşidi'),
(223, 'Herle çalmak ', 'Herle çorbası pişirmek'),
(224, 'Herslenmek ', 'Azarlamak, kızmak'),
(225, 'Heyiklemek ', 'Aptal aptal bakmak'),
(226, 'Hıçır ', 'Zayıf dana'),
(227, 'Hılez ', 'Solucan'),
(228, 'Hılhit ', 'Ağaçtan yapılmış kapı anahtarı'),
(229, 'Hıllet ', 'Hayvan ve insan tiplemeleri ile oynanan köy seyirlik oyunu'),
(230, 'Hırit ', 'Zayıf, koyun kuzu'),
(231, 'Hırti ', 'Mantar çeşidi'),
(232, 'Hırtuk ', 'Bulaşık, herkese sataşan'),
(233, 'Hışır kesilmek ', 'Aşırı derecede yorulmak'),
(234, 'Hızmuk ', 'Buğday denelerini yıkarken; suyun yüzüne kalkan içi boş buğday, ot, saman çöpleri'),
(235, 'Him ', 'Evin temeli'),
(236, 'Him yılanı ', 'Saman altından su yürütenler için kullanılır'),
(237, 'Himi ', 'Tamam mı, öyle yapalım'),
(238, 'Hobiç ', 'Çocuklara sırtıma bin manasında kullanılır'),
(239, 'Honça ', 'Düğüne gelen kadınların getirdikleri hediyeler'),
(240, 'Hödele ', 'Çok küçük deri peyniri'),
(241, 'Höllük ', 'Beşiğe belenen çocuğun altına serilen toprak'),
(242, 'Hövgel ', 'Beşiklerde üçgen tipinde yatak'),
(243, 'Hülüs ', 'Kulaksız veya yarı kulaklı koyun'),
(244, 'Gilik', 'Katmer,pişi gibi yağlıların genel adı.'),
(245, 'Hazzetmek', 'Sevmek'),
(246, 'Bibi', 'Babanın kız kardeşi/Hala'),
(247, 'Ihbalagele ', 'Rastgele, belki'),
(248, 'Ilıncak ', 'Salıncak'),
(249, 'Iras gelmek ', 'Rastlamak'),
(250, 'Işgun ', 'Ağaçların bir yılda uzadıkları kısım'),
(251, 'İçgıdıruk ', 'İnsanın elinde olmayarak boğazından ses çıkarması'),
(252, 'İğdin ', 'Kokulu ot'),
(253, 'İmma ', 'Ama, fakat'),
(254, 'İnengözel ', 'Çok güzel'),
(255, 'İptil ', 'İlk önce'),
(256, 'İs depmek ', 'Halay çekmek. Oyun oynanırken isss şeklinde çıkarılan ses sebebiyle bu isimle anılmakta'),
(257, 'İşkilde kalmak ', 'Şüphelenmek'),
(258, 'İşlik ', 'Gömlek'),
(259, 'İşmar ', 'İşaret etmek'),
(260, 'İt oynamış yonca tarlası ', 'Karmakarışık hale gelmiş'),
(261, 'Kandil ', 'Doğum yapan hayvanın ilk sütünden yapılan katı yiyecek'),
(262, 'Karışlamak ', 'Beddua etmek'),
(263, 'Katık ', 'Ayran'),
(264, 'Katuklaş ', 'Katıklı Aş anlamına gelmektedir. Yarma, nane ve bazende taze fasülye ile yapılır. Üzerine sonradan da ayran ilave edilir.'),
(265, 'Kelermek ', 'Karşısındakini ısıracakmış, dövecekmiş gibi davranmak'),
(266, 'Kelete ', 'Az miktarda öğütülen un'),
(267, 'Kelik ', 'Çorabın topuğa kadar olan ayak kısmı'),
(268, 'Kelle ', 'Buğday başağı'),
(269, 'Kendek ', 'Damlara konan merteklerin damdan dışarı doğru uzanan kısmı'),
(270, 'Kerpentü ', 'Kerpeten'),
(271, 'Kertük ', 'Çendik'),
(272, 'Kerük ', 'Süt kaynatılırken kazana yapışan kısımları'),
(273, 'Kesek ', 'Arazi için kullanılan parça, bölüm'),
(274, 'Kesmük ', 'Buğday saplarının birleşim kısımları'),
(275, 'Keş ', 'Çökeleğin top haline getirildikten sonra ki kurutulmuş hali. Köz ateşinde kızartılarak yenilir.'),
(276, 'Keşen ', 'Kağnının yavaş gitmesi için arkasına bağlanan çalı, ağırlık'),
(277, 'Keşik ', 'Sıra, sırayla'),
(278, 'Kındıra ', 'Suyu kendiliğinden çıkan sulak ve bataklık yer'),
(279, 'Kırcı ', 'Dağların başındaki hafif kar veya ağaç dallarının buzlanması'),
(280, 'Kiren ', 'Kızılcık'),
(281, 'Kotarmak ', 'Aktarmak, bir kaptan başkasına boşaltmak'),
(282, 'Koyungözü ', 'Papatya'),
(283, 'Köm ', 'Yaylalarda etrafı çevrili kuzu tamlama yerleri'),
(284, 'Kömüş ', 'Manda'),
(285, 'Könez ', 'Yaşlı köpek. Hakaret olarak yaşlılara da denir'),
(286, 'Köp ', 'Kağnıda, tekerlerin ön ve arka kısımlarında dışa doğru çıkan oturulacak büyüklükteki kısımlar'),
(287, 'Körelik ', 'Demirci veya kalaycı dükkanlarına verilen isim.'),
(288, 'Köremez ', 'Küçük yağ küleği'),
(289, 'Körsegü ', 'Yarı yanmış, üzerinde kor bulunan odunlar'),
(290, 'Körsi ', 'Köstebek'),
(291, 'Körügü ', 'Baykuş'),
(292, 'Kös vermek ', 'Gece kapının dışarıdan açılmaması için taş ve ağaçla desteklenmesi'),
(293, 'Kurbağa kaşığı ', 'Yumurtadan yeni çıkmış, kurbağa yavruları'),
(294, 'Kuzlamak ', 'Koyunların yavrulaması'),
(295, 'Külek ', 'Tahta kovalara verilen isim.'),
(296, 'Künde ', 'Her gün'),
(297, 'Küpgıran ', 'Gelincik çiçeği'),
(298, 'Küskü ', 'Ağaç manila'),
(459, 'Gaga', 'Yumurta'),
(300, 'Küşümlemek', 'İrkilmek'),
(301, 'Mada ', '1.İştah, 2.Mide'),
(302, 'Madası almamak ', 'İştahsızlık'),
(303, 'Madir ', 'Kıymet'),
(304, 'Malamat ', 'Karma karışık, berbat etmek, rezil etmek'),
(305, 'Malın altını görmek ', 'Hayvanların altının temizlenmesi'),
(306, 'Mangırdamak ', 'Hayvanların bağırarak ses çıkarması'),
(307, 'Masat ', 'Tırpan taşı'),
(308, 'Mayalık ', 'Satılmayan, anaç, iyi cins hayvan'),
(309, 'Mayıl mayıl bakmak ', 'Anlamsız gözlerle süzmek'),
(310, 'Mayıs ', 'Yazın ahır tabanında biriken sulu hayvan gübresi'),
(311, 'Megel ', 'Küçük kazma'),
(312, 'Meğel Asmak ', 'Önemsemek, değer vermek'),
(313, 'Meğelsime ', 'Önemseme, değer verme'),
(314, 'Mekir ', 'İnsana musallat olduğuna inanılan kedi büyüklüğünde canlı'),
(315, 'Memesük ', 'Girişken olmayan, uyuşuk'),
(316, 'Mengür ', 'Hayvanların boğazına takılan ağaç alet'),
(317, 'Mengürlü ', 'Geçimini eşine ait arazilerden, akardan, sağlayan erkekler için kullanılır'),
(318, 'Mere ', 'Köpeklerde yaş'),
(319, 'Mırığı düşmek ', 'İnsanın ölümünün yaklaştığının yüzünden okunması'),
(320, 'Mırık ', 'Çok küçük ve ince saman parçacıkları'),
(321, 'Mocur ', 'Urubun 1/4 ü. Bkz. Urup'),
(322, 'Modul ', 'Ügendürenin ucuna çakılan çivi bkz. Ügendüre'),
(323, 'Modullamak ', '1.Hayvanın ügendüre ile dürtülmesi. 2.Kişinin iğneleyici sözlerle harekete geçirilmesi'),
(324, 'Molak ', 'Filiz, sürgün'),
(325, 'Mudara ', 'Zor zahmet, kıt kanaat'),
(326, 'Müşmük ', 'Yumruk'),
(327, 'Naçar ', 'Elinden iş gelmeyen. Naçarın adı şükür'),
(328, 'Namazlağu ', 'Seccade'),
(329, 'Navruz ', 'Kis topraklarda biten, baharın müjdecisi olan çiçek'),
(330, 'Nefti ', 'Koyu yeşil renk'),
(331, 'Nelbeki ', 'Küçük sahan'),
(332, 'Neydecük ', 'Ne yapacağız'),
(333, 'Neydek ', 'Ne yapalım'),
(334, 'Nişancı ', 'Nişan günü akşamleyin oğlan evinde toplananların, topluca kız evine gitmelerine nişana gitmek, nişana gidenlere de nişancı denir'),
(335, 'Obirisi ', 'Öbürü, diğeri'),
(336, 'Ofağıt ', 'O vakit'),
(337, 'Ohlağu', 'Hamur açmada kullanı oklova'),
(338, 'Ok ', 'Kağnıda boyunduruğun bağlandığı kısım'),
(339, 'Oluk ', '1. Hayvan yemlikleri. 2.Engebeli arazilerde karşı tarafa su geçirmede kullanılan içi oyulmuş ağaç'),
(340, 'Ortabaca ', 'Toprak damlı evlerde, evin içinin aydınlanması için bırakılan açıklık'),
(341, 'Öküzün alnı sakar ', 'Kendi kabahatlerini görmeyen insanlar için kullanılır'),
(342, 'Ölü yerine gitmek ', 'Ölen kişinin ailesine başsağlığına gitmek'),
(343, 'Önünden geçmek ', 'Danışmak, düşüncesini öğrenmek'),
(344, 'Örenlemek ', 'Aynı lafın üzerinde sürekli durmak'),
(345, 'Örme ', 'Hayvanların kılı veya bez parçalarından örülerek yapılan sicim'),
(346, 'Öyek ', 'Kıyı, kenar'),
(347, 'Pancar ', 'Lahana'),
(348, 'Pardiç ', '1. Fırının toz ve kirini temizlemek için kullanılan ucunda bez takılı uzunca çubuk'),
(349, 'Partal atmak ', 'Abartmak, bol keseden atmak'),
(350, 'Peğ', 'Yıkılmış ev, bina, yapı'),
(351, 'Peyke ', 'Peykemeç, üzerinde oturulan, yatılan; tahtadan yapılmış yer'),
(352, 'Pırmut ', 'Bir elle tutulacak kadar biçilen ekin'),
(353, 'Pırti ', 'Elbiselik bez, kumaş'),
(354, 'Pin ', 'Tavuk kümesi'),
(355, 'Pingel ', 'Tavuğun yumurtlaması için pinde bırakılan yumurta'),
(356, 'Pirçeklü ', 'Havuç'),
(357, 'Pöçük ', 'Kıyı, kenar'),
(358, 'Pöçükcü ', 'Sığırı arkadan takip eden, çoban yardımcısı'),
(359, 'Pörnek ', 'Yaylaya çıkamayanların, hayvanlarını bir başkasına vererek yaylaya göndermeleri'),
(360, 'Purç ', 'Ağaçların yaprak açmadan önceki sürgünleri'),
(361, 'Pür ', 'Çam ağacının yaprakları'),
(362, 'Sac ekmeği gibi ', 'İkiyüzlü davranan insanlar için kullanılır'),
(363, 'Sağın ', 'Süt ve süt ürünlerinin ortak adı'),
(364, 'Sağmal ', 'Sağılan hayvanlar'),
(365, 'Sahan ', 'Küçük ve derinliği az yemek kabı'),
(366, 'Sakar ', 'Hayvanın alnında beyazlık olması'),
(367, 'Sameyil cereği ', 'Eğri büğrü cerek'),
(454, 'Kömzek', 'Samanlık kapısını açmak için kullanılan kol sığacak kadar delik'),
(369, 'Samı ', 'Öküzlerin arabalara bağlanmasını sağlayan, boyunlarına takılan ve 2 parçadan oluşan eğri odun parçası'),
(370, 'Samıbağı ', 'Samilerin ucundaki özel dokunmuş, örülmüş ip'),
(371, 'Sayvan ', 'Güneş ve yağmurdan korunmak için yapılan yer'),
(372, 'Seğirtmek ', 'Koşmak'),
(373, 'Seklem ', 'Yük'),
(374, 'Sekül ', 'Hayvanların kuyruğunda beyazlık olması'),
(375, 'Selek ', 'İnsanların çocuklarını taşıdıkları eşya,araç'),
(376, 'Sergen ', 'Düvenlemek için serilen buğdayın kökü.'),
(377, 'Seten çekmek ', 'Setende buğdayın kabuğundan ayrıştırılması için yapılan işlem'),
(378, 'Sığamak', 'Elbisenin kol kısmını dirseklere kadar toplamak'),
(379, 'Sığırtmaç ', 'Sığır çobanı'),
(380, 'Sıkmaç ', 'Sac üzerinde pişirilen ekmeğin, içine peynir konulduktan sonra, avuç içinde sıkılarak yenmeye hazır duruma getirilmesi'),
(381, 'Sınuk ', 'Kırık, çıkık'),
(382, 'Sıracalu ', 'Yara bereli. Lenf düğümü şişkinliği ve hastalığı'),
(383, 'Sırımı yiye yiye göne dadanmak ', 'Herhangi bir şeyde istismar ederek alışkanlık'),
(384, 'Sinor ', 'İki tarla arasındaki sınır'),
(385, 'Sinor bekçisi ', 'Gurbete gitmeyerek ortak araziyi bekleyen kardeş için kullanılır'),
(386, 'Soğukluk suyu ', 'Hoşaf türünde içecek'),
(387, 'Sokareç ', 'Bazı yemeklerin üzerine dökülen tavada yapılmış, soğan, nane karışımı'),
(388, 'Soku dövmek ', 'Sokuda buğdayın dövülerek kabuğunun ayrıştırılması'),
(389, 'Söğüt dibinde yatmak ', 'Kişinin işinin yolunda olduğunu ifade için kullanılır'),
(390, 'Söye ', 'Şal dokumak için kullanılan ağaç kazık'),
(391, 'Sulu dereye götürüp susuz getirmek ', 'Aldatmak, kandırmak'),
(392, 'Sulusekmen ', 'Kar yağmur karışımı'),
(393, 'Suya basmak ', 'Düğünde damadın yakınlarından birinin su birikintilerine basılması'),
(394, 'Suya buzalamak ', 'Alınan karardan vazgeçmek'),
(395, 'Şal çezmek ', 'Dokunacak, şal iplerinin harmanlardaki tezgahlara döşenmesi'),
(396, 'Şallamak ', 'Kışkırtmak'),
(397, 'Şaştım aşı ', 'O ana kadar yapılmayan, yapımı kolay yemeklerden biri'),
(398, 'Şekerci göndermek ', 'Nişanda oğlan evinde hazırlanan şekerlerin ikindi vakti davul zurna eşliğinde kız evine gönderilmesi'),
(399, 'Şıp', 'Çabuk'),
(400, 'Şırnımak ', 'Şımarmak, haddini bilmemek'),
(401, 'Şire vermek ', 'Hayvan gübresinin suyla ezilerek bitki diplerine verilmesi'),
(402, 'Şişek ', 'İki yaşındaki dişi davar'),
(403, 'Şivşimek ', 'Az kenara kaymak. Oturacak olana yer açmak'),
(404, 'Tahtamaç ', 'Bkz. Peyke'),
(405, 'Tam ', 'Evin alt katında veya yanında tarım aletlerinin, yakacağın, un ve zahirenin konulduğu yer'),
(406, 'Tastar', ' Ekmek yumaklarının pişirilmeden önce konuldukları bez'),
(407, 'Tavuza tütünlüğü ', 'Uzun boylu insan anlamında'),
(408, 'Telesimek ', 'Aşırı derecede yorulmak'),
(409, 'Tellemek ', 'Bağ, bahçe, çayır sularken suyun eşit şekilde bağlanması, dağıtılması'),
(410, 'Temek ', 'Ahır penceresi'),
(411, 'Terek ', 'Evlerdeki ağaç raflar'),
(412, 'Teyin ', 'Sincap'),
(413, 'Tırşa ', 'Çubukların gövdelerinden ayrılan katmanlar. Sele sepet yapımında kullanılır'),
(414, 'Tig ', 'Düvenlenmiş buğday sapının yığılmış hali.'),
(415, 'Tille ', 'Yüklerin at, eşek sırtına sarılmasında kullanılan uzunca ip'),
(416, 'Tokatali ', 'Bordo renk'),
(417, 'Tohli ', 'Bir iki yaş arası davar'),
(418, 'Töbolsun ', '-Yemin ederim ki... Yemin etmek anlamında.'),
(419, 'Tökesimek ', 'Atın yürürken ayağının sürçmesi'),
(420, 'Töre ', 'Düğüne getirilen veya düğün evince dağıtılan hediyeler'),
(421, 'Tuluh ', 'Yayık'),
(422, 'Tünek ', 'Tavukların üzerine çıkıp geceyi geçirdikleri yer'),
(423, 'Uğut ', 'Çimlendirilen buğdaydan yapılan tatlı veya ekmek'),
(424, 'Urup ', 'Yirmi kilogramlık yağ tenekelerinin esas alındığı ölçek'),
(425, 'Uvak ', 'Odun kırarken ortaya çıkan küçük parçacıklar'),
(426, 'Ürfüt', ' Keskin kenarlı'),
(427, 'Ürüsüm ', 'Adet, gelenek'),
(428, 'Üşdek ', 'Az, azıcık, biraz'),
(429, 'Verep ', 'Düz olmayan, fazla eğimli arazi'),
(430, 'Vırgatlu ', 'Feryatla'),
(431, 'Yağırnı ', 'Vücudun sırt kısmı'),
(432, 'Yağlık ', 'Yaylalarda ev içinde toprağın kazılarak yağ karınlarının konulduğu kısım'),
(433, 'Yağluca ', 'Baharda biten bir tür çiçek'),
(434, 'Yağrık ', 'Üzerinde ot doğranan bir metre yükseklik ve kırk elli cm çapındaki ağaç kütüğü'),
(435, 'Yağrık gibi yarılmak ', 'Aşırı şişman olmak'),
(436, 'Yalamuk ', 'Rastgelenin etrafında dönüp durup, yaranmaya çalışan'),
(437, 'Yalu ', 'Atın boynundaki kıllar, yele'),
(438, 'Yamçıboya ', 'Siyah renk'),
(439, 'Yanı gara ', 'Bir çeşit beddua.Gara yanı olarakta kullanılır.'),
(440, 'Yaşar ', 'İki yaşındaki erkek sığır'),
(441, 'Yaylacı ', 'Yaz boyunca, yaylada kalacak olan kadın'),
(442, 'Yazı ', 'Çayır, köy meydanındaki büyük yeşil alan.'),
(443, 'Yeleyele ', 'Çabuk çabuk'),
(444, 'Yenide ', 'Gelecek yıl'),
(445, 'Yeşme ', 'Yaylada evlerin yakınında bulunan; koyunların sağıldığı, yatırıldıkları, kuzuların emiş edildiği düz alan'),
(446, 'Yıkılgan ', 'Heyelan olmuş, olabilecek yer'),
(447, 'Yoğurt çalmak ', 'Kaynatılan sütün mayalanması'),
(448, 'Yoz ', '1. Ayrı duran, topluma katılmayan. 2. Sürüden ayrı otlatılan davarlar'),
(449, 'Yunnuk ', 'Dere kenarında yıkanılan, çamaşır yıkanan yer'),
(450, 'Yuykuntu ', 'Yiyecek artıklarının bir kapta biriktirilmesi. Hayvanlara yedirilir'),
(451, 'Kösürelemek', 'Balta gibi kesici aletlerin ağızlarının açılması'),
(452, 'Zallak ', 'Erkekler için terbiyesiz anlamında'),
(453, 'Zırıl zırıl ağlamak ', 'Hüngür hüngür ağlamak'),
(458, 'Küşkür', 'Yapraklı dal parçası ( serinlemek ve sinek kovalamak için)'),
(460, 'İsgemi', 'İskemle,sandalye'),
(461, 'Las', 'Ağıt'),
(462, 'Lüle', 'Çeşmede su akan boru'),
(463, 'Lele', 'Lale "lele yerde biter ömrü az olur"'),
(464, 'Porsan igi', 'Çıkrık ile ip bükmede kullanılan metal çubuk'),
(465, 'Çömçe', 'Derin ve küçük kepçe'),
(466, 'Yege', 'Eğe'),
(467, 'Kürtük', 'Kar birikintisi'),
(468, 'Kırtik', 'Küçük sabun parçası'),
(469, 'Kırik', 'At yavrusu'),
(470, 'Kırçik', 'İlkbaharda kendi kendine yetişen ve sebze olarak tüketilen otsu bitki'),
(471, 'Zerze', 'Ağaç kapı mandalı'),
(472, 'Küttengü', 'Baştanın arka kısmı'),
(473, 'Küttengü', 'Baştanın arka kısmı'),
(474, 'Sıyırğu', 'Ağaç kar küreme aleti'),
(475, 'Kövrek', 'Sığır kuyruğu otu'),
(476, 'Dırmuh', 'Tırmık'),
(477, 'Peskütan', 'Ayranın çökeltilmesiyle elde edilen gıda maddesi'),
(478, 'Giden sene', 'Geçen sene'),
(480, 'Muhatere', 'Dayanıksız, çürük.Sağlam olmayan'),
(481, 'Muhkâm', 'Sağlam,dayanıklı');


