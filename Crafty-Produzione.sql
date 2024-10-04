-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Set 02, 2024 alle 00:57
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crafty`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `category`
--

INSERT INTO `category` (`id`, `nome`) VALUES
(1, 'Arredamento per la casa'),
(2, 'Gioielli'),
(3, 'Abbigliamento Uomo'),
(4, 'Abbigliamento Donna'),
(5, 'Abbigliamento Bambino'),
(7, 'Giocattoli'),
(8, 'Scarpe'),
(9, 'Accessori per animali');

-- --------------------------------------------------------

--
-- Struttura della tabella `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) NOT NULL,
  `prezzo` double DEFAULT NULL,
  `qnt` int(11) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `ordine_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `order_details`
--

INSERT INTO `order_details` (`id`, `prezzo`, `qnt`, `product_id`, `user_id`, `ordine_id`) VALUES
(8, 20, 1, 17, 3, 1),
(9, 45, 2, 44, 3, 1),
(10, 86, 1, 86, 2, 9),
(11, 75, 2, 84, 2, 9),
(12, 33, 1, 70, 2, 9),
(13, 37.8, 3, 33, 2, 9),
(14, 14, 3, 22, 9, 10),
(15, 25.89, 1, 56, 11, 11),
(16, 11, 4, 11, 11, 11),
(17, 18.9, 1, 55, 11, 11),
(18, 6, 2, 17, 16, 17),
(19, 28.9, 4, 77, 16, 17),
(20, 121.03, 1, 5, 16, 17),
(21, 25, 2, 49, 16, 17),
(22, 24, 1, 4, 15, 16),
(23, 25, 2, 49, 15, 16),
(24, 50.89, 1, 13, 15, 16),
(25, 34, 1, 36, 8, 15),
(26, 78.88, 1, 42, 8, 15),
(27, 33, 2, 47, 3, 14),
(28, 27.05, 2, 14, 3, 14),
(29, 17.78, 1, 52, 3, 14),
(30, 134.5, 1, 86, 17, 13),
(31, 145.55, 1, 81, 17, 13),
(32, 55.8, 1, 2, 17, 13),
(33, 89.99, 2, 71, 17, 13),
(34, 129, 1, 27, 14, 12),
(35, 33.11, 1, 38, 14, 12),
(36, 15.56, 6, 58, 14, 12),
(37, 7, 5, 22, 14, 12);

-- --------------------------------------------------------

--
-- Struttura della tabella `ordine`
--

CREATE TABLE `ordine` (
  `id` bigint(20) NOT NULL,
  `data` datetime(6) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `stato` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `ordine`
--

INSERT INTO `ordine` (`id`, `data`, `user_id`, `stato`) VALUES
(1, '2023-07-25 02:00:00.000000', 3, 'In lavorazione'),
(9, '2024-08-01 12:45:35.000000', 2, 'Spedito'),
(10, '2024-07-15 09:31:32.000000', 9, 'Spedito'),
(11, '2024-08-02 07:21:22.000000', 11, 'Annullato'),
(12, '2024-06-18 00:36:28.000000', 14, 'Spedito'),
(13, '2024-04-16 00:36:28.000000', 17, 'Consegnato'),
(14, '2024-07-16 00:37:51.000000', 3, 'Consegnato'),
(15, '2024-02-13 00:37:51.000000', 8, 'Consegnato'),
(16, '2024-08-09 00:37:51.000000', 15, 'Spedito'),
(17, '2024-07-24 00:37:51.000000', 16, 'In lavorazione');

-- --------------------------------------------------------

--
-- Struttura della tabella `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `descrizione` text DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `prezzo` double DEFAULT NULL,
  `qnt` int(11) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `venditore` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `product`
--

INSERT INTO `product` (`id`, `descrizione`, `nome`, `prezzo`, `qnt`, `category_id`, `img`, `tag`, `venditore`) VALUES
(2, 'Arte da parete in vetro temperato per decorazioni per la casa-Stampa su vetro Arte-Vetro temperato Arte-Decorazioni da parete in vetro-Arazzi-Grande arte da parete rotonda-Arte delle stagioni', 'Arte da parete in vetro temperato', 55.8, 10, 1, 'arteVetro.webp, arteVetro2.webp, arteVetro3.webp, arteVetro4.webp', 'arte, parete, vetro, arredamento, colorato', 'Themagichand£DECORAZIONI PER LA CASA, IDEE E STRUMENTI REGALO DALLA FRANCIA.'),
(3, 'Tovagliette colazione personalizzate - Idea regalo - Custom Placemats - Personalized - Christmas - San Valentino - Casa', 'Tovagliette colazione personalizzate', 9.3, 10, 1, 'tovagliette.webp, tovagliette2.webp, tovagliette3.webp, tovagliette4.webp', 'tovaglietta, personalizzata, artigianale, colazione, regalo', 'GrandeAmicaLab£Prodotti personalizzati, fatti a mano per voi dall’Italia.'),
(4, 'Graziosa targa con le regole della casa, ottimo come regalo da fare con il cuore.\r\n\r\nÈ disponibile in tre dimensioni, ovviamente essendo un prodotto fatto a mano le dimensioni potrebbero variare di qualche centimetro.\r\n\r\nViene venduto con il cordino per appenderlo, come in foto.', 'Le regole della casa', 24, 10, 1, 'regoleDellaCasa.webp, regoleDellaCasa2.webp, regoleDellaCasa3.webp, regoleDellaCasa4.webp', 'regole, casa, targa, artigianale, legno, regalo', 'GrandeAmicaLab£Prodotti personalizzati, fatti a mano per voi dall’Italia.'),
(5, 'Cerchi un nuovo scaffale per aggiungere un po\' di carattere alla tua casa? Il nostro scaffale da montagna in legno a 5 picchi è la soluzione perfetta. I nostri scaffali sono realizzati in legno massello di pino e sono disponibili in una varietà di colori, quindi puoi trovarne quello che si adatta al tuo stile.\r\n\r\nScaffale in legno da montagna - 5 picchi - Arredamento rustico - Arredamento per la stanza dei bambini - Arredamento avventura', 'Scaffale in legno montagna', 121.03, 10, 1, 'scaffale.webp, scaffale2.webp, scaffale3.webp, scaffale4.webp', 'scaffale, montagna, legno, artigianale, mobili', 'EnjoyTheWood£Prodotti in legno ed epossidici di fabbricazione canadese.'),
(6, 'Fantastico portachiavi da muro, personalizzabile al 100%, tutto realizzato in legno, e molto bello da tenere a vista e fare invidia ai vostri amici.\r\n\r\nRealizzato in modo da non dover più cercare le chiavi in tutta la casa, soprattutto quando si va di fretta non si perdono mai.', 'Portachiavi da parete per famiglia', 18.03, 10, 1, 'portachiavi.webp, portachiavi2.webp, portachiavi3.webp, portachiavi4.webp', 'portachiavi, famiglia, artigianale, personalizzato, regalo', 'EnjoyTheWood£Prodotti in legno ed epossidici di fabbricazione canadese.'),
(7, 'Migliora il tuo spazio con un tocco dello stile iconico di Keith Haring. La nostra vibrante coperta cattura l\'essenza della sua arte dei graffiti, aggiungendo un\'esplosione di energia a qualsiasi stanza. Realizzato con cura e disponibile in due dimensioni, è il regalo perfetto per gli amanti dell\'arte e per coloro che apprezzano lo straordinario.\r\n\r\n•130 cm x 160 cm/ Peso: 1 000 grammi\r\n•160 cm x 220 cm / Peso 1 500 grammi\r\nSe preferisci:\r\n•51,1 pollici - 62,9 pollici / 2,1 libbre\r\n.62,9 pollici - 86,6 pollici / 3,3 libbre\r\n\r\nLavaggio: lavaggio a freddo\r\nSpedizione: Entro 1 giorno lavorativo. Ci impegniamo per l\'eco-compatibilità e utilizzeremo cartone riciclato per l\'imballaggio. Se avete domande, non esitate a contattarci per maggiori dettagli.', 'Coperta Hip Hop', 45.07, 10, 1, 'copertaHipHop.webp, copertaHipHop2.webp, copertaHipHop3.webp, copertaHipHop4.webp', 'coperta, hip-hop, design, 80\'', 'Themagichand£DECORAZIONI PER LA CASA, IDEE E STRUMENTI REGALO DALLA FRANCIA.'),
(10, 'MAPPA DEL MONDO IN LEGNO\r\n\r\nLa mappa in legno aiuterà tuo figlio a ricordare la posizione corretta dei paesi e instillerà l\'amore per la geografia, decorerà l\'interno di un ufficio o di una casa e ti farà anche sognare di viaggiare in paesi nuovi e sconosciuti. Mettere insieme una mappa del mondo in legno è ancora più divertente se lo fai con tutta la famiglia.\r\n\r\nLa mappa del mondo in legno sarà anche un ottimo e originale regalo per i tuoi cari e i tuoi amici. Pensa a come sarebbe ricevere un regalo del genere!\r\n\r\nDETTAGLI\r\n. Realizzato a mano in compensato di betulla di alta qualità\r\n. Il nastro biadesivo (incluso) attacca la mappa al muro\r\n. Consegnato pronto per essere regalato\r\n. Facile da installare con le istruzioni incluse\r\n. Segna i tuoi viaggi con le puntine!\r\n. Incluse 50 etichette in legno incollate alla mappa del mondo su nastro biadesivo\r\n', 'Mappa del Mondo in legno', 128, 10, 1, 'mappa.webp, mappa2.webp, mappa3.webp, mappa4.webp', 'mappa, mondo, legno, artigianale, regalo', 'EnjoyTheWood£Prodotti in legno ed epossidici di fabbricazione canadese.'),
(11, 'Carlino stampato in 3d in low poly. Per dare un pò di simpatia e tenerezza al tuo soggiorno.\r\n \r\nAltezza: 30 cm.\r\n\r\nLarghezza: 7,6 cm.\r\n', 'Statua cane arredo casa', 12.39, 10, 1, 'statuaCane.webp, statuaCane2.webp, statuaCane3.webp, statuaCane4.webp', 'statua, cane, arredamento, animali, , stampa-3d', 'Themagichand£DECORAZIONI PER LA CASA, IDEE E STRUMENTI REGALO DALLA FRANCIA.'),
(12, 'Le nostre corna di pecora sono lunghe circa 25-30 cm.\r\n\r\nLe corna delle pecore provengono dall\'Africa e vengono allevate dagli agricoltori per il consumo.\r\n\r\nPoiché sono un prodotto naturale, possono variare in dimensioni, colore e forma!\r\n\r\nLe corna di pecora possono essere utilizzate per scopi creativi, come oggetto da collezione o come decorazione per il soggiorno, la camera da letto o il bagno.\r\n\r\nPuò anche essere facilmente combinato con altri articoli nel nostro negozio!', 'Corno di pecora naturale', 15.8, 10, 1, 'corno.webp, corno2.webp, corno3.webp, corno4.webp', 'corno, pecora, corna, arredamento, country, parete ', 'Themagichand£DECORAZIONI PER LA CASA, IDEE E STRUMENTI REGALO DALLA FRANCIA.'),
(13, 'Lampada fatta con bottiglia di Gin Mare , senza fili, accensione luce touch, racchiude sia luce calda che luce fredda\r\nlampada ricaricabile con apposito filo che esce all\' interno', 'Lampada Gin Mare', 50.89, 10, 1, 'lampadaGin.webp, lampadaGin2.webp, lampadaGin3.webp, lampadaGin4.webp, ', 'lampada, gin, artigianale, abajoure, illuminaria', 'GrandeAmicaLab£Prodotti personalizzati, fatti a mano per voi dall’Italia.'),
(14, 'Collana di perline etniche turche per donne Gioielli persiani fatti a mano\r\n\r\nLunghezza della collana: 45 centimetri/ 18 pollici\r\nChiusura: artiglio di aragosta\r\nStile catena: perlina\r\nLunghezza regolabile\r\nStile: boho e hippie\r\n', 'Collana di perline etniche turche', 27.05, 10, 2, 'collanaEtnica.jpeg, collanaEtnica2.jpeg, collanaEtnica3.jpeg, collanaEtnica4.webp', 'collana, etnica, turca, pietre, colorate, gioiello', 'DELAartshop£Gioielli, borse e tovaglie etniche BOHO fatte a mano dalla Turchia.'),
(15, 'La nostra collana artigianale è realizzata con amore e cura dai nostri esperti artigiani. Ogni pezzo è unico, poiché i fiori di Myosotis, conosciuti anche come \"non ti scordar di me\", sono selezionati e raccolti a mano per preservare la loro bellezza e delicatezza. Ogni fiore viene poi incastonato nella resina, che esalta ulteriormente la sua luminosità e splendore.\r\n\r\n\r\nQuesta collana artigianale rappresenta l\'armonia tra la bellezza dei fiori di Myosotis e l\'eleganza senza tempo dell\'argento. Indossando questo gioiello, porterai con te un pezzo di natura e aggiungerai un tocco di raffinatezza a qualsiasi outfit, sia esso formale o informale. È inoltre un regalo perfetto per le persone a cui tieni, per celebrare momenti speciali o semplicemente per esprimere il tuo affetto.\r\n\r\nDimensioni:\r\nAcciaio 304 inox nickel free\r\nCiondolo 20 mm\r\nCollana 45 cm\r\n\r\nCaratteristiche:\r\n\r\nFiori di Myosotis veri e naturali\r\nFiori di Pizzo della Regina Anna veri e naturali\r\nCatena elegante e resistente\r\nDesign unico e raffinato', 'Collana myosotis pizzo della regina Anna', 23.65, 10, 2, 'collanaMyosotis.webp, collanaMyosotis2.webp, collanaMyosotis3.webp, collanaMyosotis4.webp', 'collana, fiore, gioiello, artigianale, vero', 'PaquerettePaillette£Tutti i nostri gioielli floreali sono realizzati a mano con cura nella bellissima regione francese della Dordogna.'),
(16, 'Piccoli anelli in acciaio inossidabile e anallergico, placcato oro.\r\nElegantissimi nella loro semplicità, sono lavorati con fiori veri e foglie oro o con piccoli vetrini colorati.\r\n\r\nLavorati a mano con pazienza e amore.', 'Anellini MINIATURE ~botanic~', 20, 10, 2, 'anelloBotanic.webp, anelloBotanic2.webp, anelloBotanic3.webp, anelloBotanic4.webp', 'anello, fiore, gioiello, artigianale, regalo', 'PaquerettePaillette£Tutti i nostri gioielli floreali sono realizzati a mano con cura nella bellissima regione francese della Dordogna.'),
(17, 'Anelli fatti a mano con diverse pietre e cristalli, scorrete le foto per vedere i nomi delle pietre, il filo che volete utilizzare per il vostro anello e la taglia da inserire nella personalizzazione se lo volete su misura (sono disponibili anche regolabili)\r\nAlcune pietre sono a quantità limitate! \r\nTutte le pietre sono vere, i fili sono in alluminio (non diventano verdi e non si rovinano sotto l\'acqua) e rame.\r\nPer qualsiasi domanda o informazione scrivetemi pure, o qui o su instagram (@cactysjewels)', '\r\nAnelli con pietre ', 6, 10, 2, 'anelliPietre.webp, anelliPietre2.webp, anelliPietre3.webp, anelliPietre4.webp', 'anello, pietre, artigianale, gioiello, colorate', 'DELAartshop£Gioielli, borse e tovaglie etniche BOHO fatte a mano dalla Turchia.'),
(18, 'Collana artigianale in resina con fiori veri pressati di Alyssum viola e ciondolo dorato in acciaio inossidbile da 25 mm.\r\n\r\nOgni pezzo è realizzato a mano con cura e passione, creando gioielli unici e distintivi. I fiori veri, accuratamente selezionati e pressati, vengono abilmente incastonati nella resina trasparente, creando un effetto visivo mozzafiato e catturando l\'essenza naturale dei fiori per sempre.\r\n\r\nLa forma tondeggiante del ciondolo aggiunge un tocco di eleganza e versatilità, perfetta per qualsiasi occasione. Il design unico di queste collane artigianali garantisce che ogni pezzo sia davvero uno speciale capolavoro da indossare o da regalare a una persona cara.\r\n\r\nOltre alla loro bellezza estetica, le nostre collane offrono anche un legame intimo con la natura. Sono il modo perfetto per portare con sé un pezzo di giardino fiorito ovunque si vada.\r\n\r\nCrediamo nell\'uso di materiali di alta qualità e nell\'attenzione ai dettagli. Ogni collana è realizzata con cura e attenzione, utilizzando solo materiali pregiati. La resina trasparente garantisce una protezione duratura dei fiori pressati, consentendovi di godere a lungo della bellezza naturale di questi gioielli.\r\n\r\nSia che desideriate regalarla o indossarla, questa collana sarà sicuramente un punto focale che attirerà l\'attenzione e susciterà ammirazione.\r\n\r\nDimensioni:\r\nCollana regolabile 45/50 cm\r\nCiondolo 2,5 cm\r\nAcciaio inossidabile nichel free\r\nResina atossica\r\n', 'Collana in resina con fiori veri', 10, 10, 2, 'collanaFiori.webp, collanaFiori2.webp, collanaFiori3.webp, collanaFiori4.webp', 'collana, fiore, gioiello, artigianale, vero', 'PaquerettePaillette£Tutti i nostri gioielli floreali sono realizzati a mano con cura nella bellissima regione francese della Dordogna.'),
(19, 'Scopri un vassoio per gioielli artistico in resina unico, fatto a mano, meticolosamente realizzato per essere unico nel suo genere. Perfetto per mostrare i tuoi gioielli con un tocco artistico ed eleganza.\r\n\r\nPulizia: utilizzare un panno morbido e privo di lanugine per pulire delicatamente la superficie in resina per rimuovere polvere o impronte digitali. Evitare l\'uso di detergenti abrasivi o materiali ruvidi che potrebbero graffiare la resina.\r\n\r\nIn caso di dubbi o domande relative al tuo acquisto, non esitare a contattarci: siamo qui per assisterti tempestivamente.\r\n\r\nApprezziamo profondamente il vostro sostegno alla nostra piccola impresa!', 'Vassoio per gioielli fatto a mano', 12.74, 10, 2, 'portagioie.webp, portagioie2.webp, portagioie3.webp, portagioie4.jpeg', 'portagioie, artigianale, vassoio, gioielli, orecchini, resina', 'DELAartshop£Gioielli, borse e tovaglie etniche BOHO fatte a mano dalla Turchia.'),
(20, 'Orecchini in Ottone - interamente realizzati a mano.\r\nChiusura a lobo anallergica. \r\nSemplici, leggeri ed eleganti.\r\n\r\nAll\'interno della confezione verranno inseriti i consigli su come prendersi cura del proprio gioiello.\r\n\r\n\r\n\r\nFOLLOW ME ON INSTAGRAM\r\n@circle_artisanjewels', 'Orecchini in ottone \"leaves\"', 28, 10, 2, 'orecchiniLeaves.webp, orecchiniLeaves2.webp, orecchiniLeaves3.webp, orecchiniLeaves4.webp', 'orecchini, ottone, foglia, artigianale', 'duetipichefannocose£HANDCRAFTED RAW JEWELRY, made in Italy con AMORE.'),
(21, 'materiale: ottone\r\ndimensione: mini 1.2 x 0.9 cm\r\nmedi 1.5 x 1.1 cm\r\nmaxi 2 x 1.5 cm\r\n\r\nquesti orecchini a forma di foglia di ginkgo biloba sono stati tutti tagliati, lavorati e saldati a mano partendo dalla materia grezza \r\n\r\nPer evitare possibili allergie non tratto chimicamente i metalli quindi l\'ottone, a contatto con l\'aria, tende nel tempo a perdere brillantezza ed a scurirsi. Si possono pulire con prodotti appositi come il \"Sidol\" oppure con il succo di limone. Se preferisci un prodotto che non necessita di manutenzione puoi scegliere la variante in alluminio, dunque di colore grigio, perchè rimane inalterata nel tempo.', 'Orecchini in ottone a foglia di ginkgo biloba', 23.89, 10, 2, 'orecchiniGinko.webp, orecchiniGinko2.webp, orecchiniGinko3.webp, orecchiniGinko4.webp', 'orecchini, ottone, foglia, gioiello, artigianale', 'duetipichefannocose£HANDCRAFTED RAW JEWELRY, made in Italy con AMORE.'),
(22, 'Cavigliera artigianale semirigida in alluminio modellato e martellato a mano.\r\nOgni pezzo è unico.\r\n\r\nGUIDA ALLA TAGLIA: \r\n(le misure si riferiscono alla caviglia, non alla cavigliera) \r\n\r\nXS 19-20 cm \r\nS 21-22 cm \r\nM 23-24 cm \r\nL 25-26 cm \r\nXL 27-28 cm \r\nXXL 29-30 cm', 'Cavigliera semplice', 7, 10, 2, 'cavigliera.webp, cavigliera2.webp, cavigliera3.webp, cavigliera4.webp', 'cavigliera, accessorio, argento, artigianale, moda', 'duetipichefannocose£HANDCRAFTED RAW JEWELRY, made in Italy con AMORE.'),
(23, 'Eleganza floreale e maiolica artigianale: 4 collane uniche per te!\r\n\r\nScopri il fascino di due diversi stili con queste collane fatte a mano con ciondoli in argilla polimerica.\r\n\r\n1. Collane con ciondolo floreale:\r\nDipinti a mano con cura: Ogni fiore è un\'opera d\'arte unica, realizzata con meticolosa attenzione ai dettagli.\r\nBase cammeo in legno: Dona un tocco di rusticità e raffinatezza al gioiello.\r\nCatena in acciaio inossidabile: Resistente e lucente, si abbina perfettamente al ciondolo.\r\nChiusura a moschettone: Pratica e sicura, per indossare e togliere la collana con facilità.', 'Collana in Argilla Polimerica: Floreale ', 18, 10, 2, 'collanaFloreale.webp, collanaFloreale2.webp, collanaFloreale3.webp, collanaFloreale4.webp', 'collana, fiore, gioiello, artigianale, vero', 'PaquerettePaillette£Tutti i nostri gioielli floreali sono realizzati a mano con cura nella bellissima regione francese della Dordogna.'),
(25, 'Regala a te stesso o alla persona amata il lusso con le nostre vesti Kimono di seta! Questi accappatoi ti faranno sentire come se fossi tornato tu stesso dal tuo fantastico viaggio a Bali, anche se è solo un soggiorno a casa! Realizzato a mano con la tradizionale miscela di seta e raso balinese, quasi senza peso, crea un movimento fluido ad ogni movimento. Il tessuto è incredibilmente morbido al tatto e la vestibilità è lusinghiera su tutti i tipi di corporatura.\r\n\r\nÈ un regalo perfetto per l\'anniversario, il compleanno o le vacanze in modo che la persona amata possa sentirsi lussuosa mentre si rilassa a casa! Siamo sicuri che amerai questo Kimono così tanto che dovrai rubarlo al tuo uomo - basta ordinare il set di due!', 'Kimono da uomo in seta', 45.8, 10, 3, 'kimono.webp, kimono2.webp, kimono3.webp, kimono4.webp', 'Kimono, seta, vestaglia, vestiti, casa, elegante', 'MenuoTheBrand£abiti per la tua prossima avventura. Prodotto artigianalmente a Bali.'),
(26, 'Giacca sportiva con cappuccio di design realizzata in neoprene italiano e rete fine.\r\nLa giacca ha un taglio asimmetrico e una cerniera come chiusura.\r\n\r\nA7Studio è la scelta perfetta per uno stile incredibile e unico. Ogni articolo è realizzato su ordinazione in base alla taglia scelta, non abbiamo magazzino.\r\n', 'Giacca con cappuccio', 111, 10, 3, 'giacca.webp, giacca2.webp, giacca3.webp, giacca4.webp', 'giacca, sportiva, cappuccio, uomo, moda', 'MoDaReuse£Passi verso una vita più verde ed ecologica. Prodotti artigianali dalla Lettonia'),
(27, '- Avvolgimento estremamente versatile,\n- Può essere indossato in tanti modi\n- Può essere indossato 4 stagioni all\'anno. Perfetto per i brividi primaverili, le passeggiate serali estive, le passeggiate autunnali o i venti invernali\n- Ispirato allo stile dei Celti in Irlanda.\n- Taglia unica\n- 100% Lana una fibra naturale traspirante\n- Rifinito professionalmente con una macchina da cucire taglia-cuci utilizzando filo in tinta\n- Tweed irlandese Donegal autentico e pesante; davvero caldo\n- Tessuto tradizionale a spina di pesce chiazzato/maculato/sale e pepe\n- Spilla decorativa inclusa\n- Disponibile in 2 taglie: S/M e L/XL. Ruana/involucro sulle immagini è di taglia L/XL', 'Ruana di lana', 129, 10, 3, 'ruana.webp, ruana2.webp, ruana3.webp, ruana4.webp', 'ruana, lana, abbigliamento, uomo, moda, ecosostenibile', 'MenuoTheBrand£abiti per la tua prossima avventura. Prodotto artigianalmente a Bali.'),
(28, 'Questo modello di pantaloni è più lungo degli altri pantaloni nel nostro negozio. La lunghezza della cucitura esterna è 115 cm / 45 pollici. Si prega di misurare la lunghezza della cucitura esterna, se desideri modificare la lunghezza lo faremo volentieri.\r\n\r\nI pantaloni larghi sono realizzati al 100% in lino e disponibili in una varietà di colori.\r\nPuoi controllare altri colori nella galleria delle inserzioni.\r\n\r\nQuesti pantaloni sono versatili, comodi e confortevoli sia all\'aperto che a casa. Il tessuto è traspirante e segue la forma del corpo, col tempo diventa più morbido e piacevole.\r\nIl lino ha un effetto massaggiante, il tessuto è antisettico e allevia lo stress.', 'Pantaloni palazzo in lino', 45.9, 10, 3, 'pantaloni.webp, pantaloni2.webp, pantaloni3.webp, pantaloni4.webp', 'pantaloni, lino, uomo, lunghi, estate', 'MenuoTheBrand£abiti per la tua prossima avventura. Prodotto artigianalmente a Bali.'),
(29, 'T-shirt ricamata personalizzazione con Testo/Logo, idea regalo, personalizzala come vuoi tu!!\r\n\r\nLa personalizzazione è interamente ricamata,\r\nhai la possibilità di scegliere Il NOME / LOGO e il colore del ricamo a tuo piacimento.\r\n', 'T-shirt ricamata personalizzazione con Testo/Logo', 15, 10, 3, 't-shirt.webp, t-shirt2.webp, t-shirt3.webp, t-shirt4.webp', 't-shirt, personalizzata, maglietta, artigianale, regalo', 'LarikoStudio£Migliora il tuo stile con la moda italiana realizzata a mano!'),
(30, 'Costume uomo \r\nMateriale: acetato \r\nStagione: estiva\r\ncolori: 3\r\nTaglie: XS, S, M, L, XL, XXL', 'Costume mare uomo', 31.45, 10, 3, 'costume.webp, costume2.webp, costume3.webp, costume4.webp', 'costume, mare, uomo, pantaloncini, moda ', 'LarikoStudio£Migliora il tuo stile con la moda italiana realizzata a mano!'),
(31, 'Camicia in cotone Boho Man, Camicia a maniche corte, Camicia casual in cotone, Taglie forti, Camicia ampia oversize, Camicia Oxford, Camicia naturale da uomo da spiaggia, T-shirt uomo\r\n\r\nLa maglietta ha un taglio ampio ed è prodotta nelle taglie S, M, L, XL, XXL.\r\nNell\'immagine viene utilizzata la taglia L', 'Camicia in cotone Boho Man', 40, 10, 3, 'camiciaBoho.webp, camiciaBoho2.webp, camiciaBoho3.webp, camiciaBoho4.webp', 'camicia, Boho, cotone, uomo, moda', 'LarikoStudio£Migliora il tuo stile con la moda italiana realizzata a mano!'),
(32, 'Perfetto sia per le strade cittadine che per le passeggiate lungo la spiaggia; i nostri pantaloni in lino Cocos di ispirazione asiatica hanno una vestibilità ampia e ventilata che si assottiglia fino alla caviglia. La vita elasticizzata pull-on garantisce una vestibilità perfetta e una linea morbida; mentre l\'aggiunta di tre generose tasche (due laterali e una posteriore) rende questi pantaloni tanto utili quanto lussuosi. Né sopravvalutato né sottovalutato, Cocos combina il moderno con la tradizione e lo stile con la praticità. Gli unici pantaloni di cui avrai bisogno quest\'estate.\r\n\r\nDETTAGLI\r\n\r\n• Il modello è alto 6\'4\" 192 cm e ha una taglia M in lino pesante canguro da 250 grammi;\r\n• Vita elasticizzata con coulisse;\r\n• Silhouette rilassata;\r\n• Due tasche laterali e due tasche posteriori applicate;\r\n• Disponibile nelle taglie dalla S alla 6XL;', 'Pantaloni di lino da uomo COCOS', 34.9, 10, 3, 'pantaloniLino.webp, pantaloniLino2.webp, pantaloniLino3.webp, pantaloniLino4.webp', 'pantaloni, lino, uomo, lunghi, estate', 'MoDaReuse£Passi verso una vita più verde ed ecologica. Prodotti artigianali dalla Lettonia'),
(33, 'La nostra camicia di canapa è realizzata con cura per gli uomini che cercano una miscela completa di sostenibilità, stile e comfort in un unico outfit. Il tessuto di canapa è noto per la sua durata e per le sue proprietà antimicrobiche e resistenti ai raggi UV. Caratterizzata da vestibilità ampia, consistenza morbida e composizione traspirante, la Hemp Shirt è destinata a essere la tua preferita per quest\'estate e oltre. Delicato sulla pelle e sulla salute, attento all\'ambiente.\r\nDisponibile anche in taglie grandi.\r\nIl modello è alto 185 cm e indossa la taglia M', 'Camicia da uomo in canapa', 56.21, 10, 3, 'camiciaCanapa.webp, camiciaCanapa2.webp, camiciaCanapa3.webp, camiciaCanapa4.webp', 'camicia, canapa, uomo, ecosostenibile, moda', 'MoDaReuse£Passi verso una vita più verde ed ecologica. Prodotti artigianali dalla Lettonia'),
(34, '~ Pantaloni harem, colore naturale, unisex ~\r\n\r\nComodi pantaloni harem realizzati in cotone grezzo e colorati con colori naturali\r\n\r\n\r\n° DIMENSIONE °\r\n\r\nS / M e M/L\r\nSi prega di controllare la tabella delle taglie nell\'ultima immagine\r\n\r\nOgni paio di pantaloni è stampato individualmente a mano, il motivo e i colori sono unici.\r\nPotrebbero verificarsi leggere deviazioni dalle foto del prodotto.', 'Pantaloni Harem uomo', 120, 10, 3, 'pantaloneHarem.webp, pantaloneHarem2.webp, pantaloneHarem3.webp, pantaloneHarem4.jpeg', 'pantaloni, harem, uomo, unisex, lunghi', 'MoDaReuse£Passi verso una vita più verde ed ecologica. Prodotti artigianali dalla Lettonia'),
(35, 'Morbidissimo gilet in pura garza di cotone color carta da zucchero. A partire dalla vita ho feltrato della lana bianca che crea delle fiammature verticali molto originali.\r\nPuò essere indossato sia su un top estivo che su una maglia di cotone più autunnale. Ha una vestibilità morbida e femminile. \r\nIl gilet veste più taglie, da una small fino circa una tg.48/W31', 'Gilet con decorazioni in feltro', 22.32, 10, 4, 'gilet.webp, gilet2.jpeg, gilet3.webp, gilet4.webp', 'gilet, donna, decorato, artigianale, cotone', 'KnitbySiv£Modelli e kit a maglia dalla Norvegia'),
(36, 'Camicia bianca elegante dallo stile trendy per il tuo ufficio, abbigliamento quotidiano o evento speciale. Prodotto di alta qualità\r\n\r\nPuoi indossarlo tutto l\'anno abbinandolo a jeans, pantaloni attillati o pantaloncini.\r\n\r\nColore – Bianco – Nero\r\nStagione – Tutte le stagioni\r\nMateriale: 20% cotone, 80% poliestere.\r\nIl pacchetto include: 1 maglietta + REGALO\r\n', 'Top asimmetrico elegante a maniche lunghe', 34, 10, 4, 'topBianco.webp, topBianco2.webp, topBianco3.webp, topBianco4.webp', 'camicia, bianca, donna, maniche-lunghe, moda', 'nestoflinen£marchio sloveno di moda slow per una famiglia moderna.'),
(37, 'Ci siamo ispirati al minimalismo e abbiamo ideato un capo che vale la pena aggiungere al guardaroba di ogni amante della moda.\r\n\r\nQuesta camicia asimmetrica è decisamente un capo accattivante con le sue linee pulite e lo stile definito. Ha due tasche importanti, maniche regolabili e una scollatura a lupetto: che bellezza! Pensando al comfort, abbiamo aggiunto una chiusura con bottoni sul retro per te.\r\n\r\nEstremamente lusinghiera e comoda da indossare, questa camicia a tunica è un capo che aggiungerebbe individualità al tuo stile.', 'Camicia a maniche lunghe in cotone', 12.99, 10, 4, 'camiciaD.webp, camiciaD2.webp, camiciaD3.webp, camiciaD4.webp', 'camicia, cotone, donna, maniche-lunghe, minimal', 'nestoflinen£marchio sloveno di moda slow per una famiglia moderna.'),
(38, 'MOTIVO LAVORAZIONE MAGLIA:\r\nTaglia: XS/S (M/L) (XL/XXL)\r\nLunghezza: 52-56-60 cm o lunghezza desiderata, questo è un modello corto.\r\nManiche: 44-48-48 cm\r\nAltezza: 115-122-129 cm\r\nFinezza: 9 maglie=10 cm La finezza può variare sui ferri grandi, quindi consiglio di lavorare un campione di prova\r\nAghi: Ago 10 e 12 mm, 40 e 80 cm\r\nFilato: 1 filo di Drops Eskimo e 1 filo di seta alpaca spazzolata/Ingenua, 2 fili in cui usi seta di capretto', ' Maglione autunnale', 33.11, 10, 4, 'maglione.webp, maglione2.webp, maglione3.webp, maglione4.webp', 'maglione, artigianale, donna, autunno, inverno', 'KnitbySiv£Modelli e kit a maglia dalla Norvegia'),
(39, 'La collezione Cléane si amplia. Ti presentiamo la camicetta a maniche lunghe Cléane.\r\n\r\nSempre nello spirito del taglio svasato, ci piace particolarmente la trama completamente ricamata del tessuto.\r\n\r\nTaglio: Classico / Ampio / Ampio\r\nModello: camicia\r\nCollare: V\r\nScollo: apertura con bottoni dall\'alto verso il basso della camicetta\r\nBottoni: Oro\r\nManiche lunghe\r\nFinitura maniche: smerlata\r\nLunghezza: (taglia S) 60 cm (+/- 1 cm)\r\nComposizione: 100% Cotone', 'Camicia a maniche lunghe da donna con colletto in pizzo', 22.22, 10, 4, 'camiciaPizzo.webp, camiciaPizzo2.webp, camiciaPizzo3.webp, camiciaPizzo4.webp', 'camicia, donna, Clèane, maniche-lunghe, moda', 'BoutiqueSIAMOISE£Abbigliamento femminile 100% stile parigino di qualità.'),
(40, 'Con una silhouette esagerata e un cappuccio oversize abbinato, la felpa con cappuccio Firenze conferisce un fascino individualista all\'abbigliamento casual. Realizzato in French terry, presenta una forma rilassata e morbida rifinita con un orlo basso sulla schiena, oltre a maniche extra lunghe con fori per i pollici. Indossalo sopra leggings in pelle con le tue sneakers preferite per una sorprendente atmosfera streetwear.\r\n\r\nINFORMAZIONI SUL MODELLO: Sam, in verde oliva e bianco sporco, è alto 5\'8\" (175 cm) e indossa la taglia XS. Stephanie, in nero, è alta 5\'9\" (175 cm). Indossa la taglia L. Maritza, in antracite e in espresso, è alta 5\'9\" (177 cm) e indossa la taglia XS.\r\n\r\nLUNGHEZZA: Circa 30\" (76 cm), misurata dalla spalla all\'orlo inferiore.', 'Tunica con cappuccio ', 56, 10, 4, 'tunica.webp, tunica2.webp, tunica3.webp, tunica4.webp', 'tunica, donna, cappuccio, artigianale, moda', 'KnitbySiv£Modelli e kit a maglia dalla Norvegia'),
(41, 'La bellissima blusa fatta a mano per una donna che ama indossare il tessuto più pregiato che esista, il puro lino. I nostri capi sono realizzati in perfetto lino europeo ammorbidito e sono tutto ciò che vuoi che sia. Le maniche possono essere indossate lunghe o arrotolate per un look più casual.\r\n\r\nOgni punto e ogni dettaglio è realizzato a mano in Slovacchia. Può essere indossato tutto l\'anno, rinfresca d\'estate e mantiene il calore corporeo nei mesi più freddi. Basta aggiungere una bella gonna, collant e pollover e nasce il tuo outfit perfetto.\r\n\r\nSu ordinazione nella misura e nel colore che preferisci. Se hai ancora dubbi sulla taglia o hai altre domande sulla vestibilità, non esitare a contattarmi, sono qui per aiutarti. Se ritieni che le taglie standard possano non vestirti bene, scrivimi le misure del tuo corpo, e otterrai un capo realizzato secondo la tua personale forma fisica.', 'Maglietta a maniche lunghe alla moda in lino', 10, 10, 4, 'magliettaD.webp, magliettaD2.webp, magliettaD3.webp, magliettaD4.webp', 'maglietta, donna, lino, maniche-lunghe, moda', 'nestoflinen£marchio sloveno di moda slow per una famiglia moderna.'),
(42, 'Salopette tuta Boho fatta a mano:\r\n\r\nQuesta tuta fatta a mano è realizzata al 100% in cotone leggero naturale, tessuto a mano. Grazie al design casual e ampio, è molto arioso e comodo da indossare. La tuta è tagliata a 3/4 e cucita arrotolata nella parte inferiore delle gambe. Grazie agli ampi giromanica risulta casual e aderente allo stesso tempo. Sulle spalline sono presenti bottoni in cocco che consentono di regolarlo individualmente su tre livelli. Da un lato presenta bottoni in cocco sui fianchi e due pratiche tasche jeans.', 'Salopette tuta Boho fatta a mano', 78.88, 10, 4, 'salopette.webp, salopette2.webp, salopette3.webp, salopette4.webp', 'salopette, Boho, donna, vestiti, artigianale, moda', 'BoutiqueSIAMOISE£Abbigliamento femminile 100% stile parigino di qualità.'),
(43, 'Dettagli articolo: fatto a mano\r\n\r\nMateriale: tessuto in velluto di cotone.\r\n\r\nColore: come mostrato nell\'immagine.\r\n\r\nLa cintura viene fornita con questa veste\r\n\r\n\r\nMisure:\r\n\r\nLunghezza: 48 pollici\r\nBusto/petto: 48 pollici (tutt\'intorno)\r\nManiche: 21 pollici\r\n\r\n\r\nInformazioni sul tessuto:-\r\n\r\nIl velluto è un tipo di tessuto tuftato in cui i fili tagliati sono distribuiti uniformemente, con un pelo corto e denso, che gli conferisce una caratteristica morbidezza. Per estensione, la parola vellutata significa \"liscio come il velluto\". Il velluto può essere realizzato con fibre sintetiche o naturali', 'Kimono in velluto ', 90.99, 10, 4, 'kimonoD.webp, kimonoD2.webp, kimonoD3.webp, kimonoD4.webp\r\n', 'kimono, velluto, donna, vestaglia, elegante, abiti, casa', 'BoutiqueSIAMOISE£Abbigliamento femminile 100% stile parigino di qualità.'),
(44, 'Abito di lino:\r\n\r\nL\'abito in lino verde intenso, con allacciatura in vita e tasche, è incentrato sull\'eleganza e sullo stile. L\'essenziale abito estivo in lino verde realizzato al 100% in lino di alta qualità. Questo comodo abito dalla lunghezza midi presenta uno scollo a cotta, tasche laterali e una fascia che sottolinea la vita. Presentato in una tonalità verde intenso qui, questo delizioso pezzo di lino può essere realizzato in una varietà di colori.\r\nMigliora il tuo guardaroba con il nostro abito in lino versatile ed elegante, progettato sia per il comfort che per lo stile. Realizzato in puro lino al 100%, questo vestito è la scelta perfetta per le giornate calde, offrendo traspirabilità e un\'eleganza naturale che passa senza sforzo dalle uscite casual alle occasioni più raffinate.\r\nLa combinazione di un tessuto senza tempo con elementi di design contemporaneo si traduce in un capo essenziale del guardaroba elegante, funzionale e sostenibile.', 'Abito di lino', 36.54, 10, 4, 'abito.webp, abito2.webp, abito3.webp, abito4.webp', 'abito, lino, verde, donna, moda', 'BoutiqueSIAMOISE£Abbigliamento femminile 100% stile parigino di qualità.'),
(45, 'Poncho trasparente :\r\n\r\nPoncho velato viola melanzana da indossare come copriabito boho chic in più modi. Perfetto come poncho lavorato a maglia con spalle scoperte per uno stile boheme. La sua semplicità e il design versatile offrono a questo poncho molte possibilità, sia che tu voglia indossarlo come scialle, mantella, sciarpa, copriabito o anche come coprispalle.\r\n\r\nL\'accessorio perfetto per le giornate primaverili o le fresche notti estive, aggiungendo un tocco di colore a un semplice outfit canotta e jeans o anche a un capo da sposa. Il poncho è realizzato in rayon morbido, leggero e traspirante ed è disponibile in oltre 50 colori. Grazie alla sua leggerezza puoi tenerlo in borsa e usarlo ogni volta che vuoi coprire spalle, braccia, petto o collo.', 'Poncho trasparente ', 23.99, 10, 4, 'poncho.webp, poncho2.webp, poncho3.webp, poncho4.webp', 'poncho, velato, donna, vestiti, donna, viola', 'BoutiqueSIAMOISE£Abbigliamento femminile 100% stile parigino di qualità.'),
(46, 'Abito in lino:\r\n\r\nQuesto abito scamiciato è realizzato a mano in morbido lino di alta qualità. L\'abito in lino non necessita di stiratura, per questo può essere facilmente ripiegato in valigia e portato con sé per la vacanza dei tuoi sogni. La cintura elastica e le spalline posteriori rendono questo abito con schiena scoperta regolabile per una vestibilità perfetta e quindi comodo da indossare.\r\nSofisticato ma semplice e versatile, questo abito grembiule è adatto a molte situazioni. Cerchi un abito da sposa in lino? Splendido abito da cocktail? O forse solo un vestito estivo traspirante? Ti abbiamo coperto. E la ciliegina sulla torta sono le tanto amate tasche laterali, che permettono di trasportare gli oggetti essenziali quotidiani e di avere le mani libere.\r\n\r\nDETTAGLI\r\n\r\n- Corpetto regolabile (spallacci lunghi)\r\n- Vita elastica\r\n- Tasche nelle cuciture laterali\r\n- 100% lino\r\n- Lavabile in lavatrice\r\n', 'Abito in lino', 76, 10, 4, 'abitoLino.webp, abitoLino2.webp, abitoLino3.webp, abitoLino4.webp', 'abito, lino, estivo, donna, moda', 'nestoflinen£marchio sloveno di moda slow per una famiglia moderna.\n'),
(47, 'Gilet in lana merino per neonato:\r\n\r\nGilet in lana merino, Panda marrone chiaro\r\n\r\nIl gilet Panda è realizzato con l\'apprezzatissima lana merino al 100%. Il gilet trattiene perfettamente il calore corporeo, evitando che si surriscaldi o sudi anche durante il movimento attivo, ed è progettato per diventare fantastico quando il clima si raffredda. L\'abbigliamento in lana merino naturale è traspirante, mantiene la temperatura corporea ottimale e previene il freddo. Questo gilet in lana è naturalmente antimicrobico, ipoallergenico e resistente agli acari della polvere.', 'Gilet in lana merino', 33, 10, 5, 'giletLana.webp, giletLana2.webp, giletLana3.webp, giletLana4.webp', 'gilet, lana, neonato, vestiti, merino', 'carinspuppentraeume£prodotti creativi amorevolmente realizzati a mano dalla Germania.'),
(48, 'T-shirt Bambini personalizzate a mano:\r\n\r\nT-shirt bianche 100% cotone italiano , personalizzate a mano in tricotin di cotone, le taglie baby hanno taglie 6/12-12/18-18/24 e hanno i bottoncini sul collo per facilitare la vestizione.\r\nContattare il venditore per taglie e personalizzazione', 'T-shirt Bambini personalizzate a mano', 23, 10, 5, 'magliettaB.webp, magliettaB2.webp, magliettaB3.webp, magliettaB4.webp', 't-shirt, bambini, maglietta, unisex, personalizzata', 'GMStileSenzaTempo£Abiti in lino bambini per giorni speciali. Prodotti artigianali dalla Campania.'),
(49, 'BODY abbigliamento neonato Dipinto a Mano :\r\n\r\n\"NON SEI MAI STATO BAMBINO SE NON SEI SALTATO A PIEDI PARI DENTRO AD UNA POZZANGHERA, SVEGLIANDO LE FATE CHE DORMIVANO E FACENDOLE SALTARE IN MILLE GOCCE DI LUCE FINO AL CIELO...\"\r\n\r\n\r\nBody DIPINTO A MANO 100% cotone biologico, un\'idea perfetta per chi ama uscire dagli schemi e che gradisce un tocco di originalità!\r\n\r\nI pigmenti utilizzati sono specifici per la stoffa ed impermeabili, mantengono bene la vivacità dei colori e sono lavabili.\r\nSi consiglia di lavare il capo ad una temperatura massima di 40° e di girarlo nel verso contrario, per la stiratura utilizzate un fazzoletto sopra al disegno per evitare di rovinare il disegno.', 'BODY abbigliamento neonato Dipinto a Mano ', 25, 10, 5, 'body.webp, body2.webp, body3.webp, body4.webp', 'body, bambino, unisex, neonato, dipinto, personalizzato', 'carinspuppentraeume£prodotti creativi amorevolmente realizzati a mano dalla Germania.'),
(50, 'Maglione per bambini, Unisex:\r\n\r\nMaglione dalla linea essenziale e unisex per bambini, fatto a mano su ordinazione con filati naturali, misure da 3 mesi a 18 mesi\r\n\r\nIl modello è semplice e senza tempo, fatto a mano da me\r\nHa uno scollo rotondo e le maniche lunghe.\r\nLavorato a maglia rasata con i ferri circolari che permettono di crere capi senza fastidiose cuciture che spesso si trovano all\'interno dei capi\r\nE\' caratterizzato dalla linea raglan che scende dai lati del collo fino al sottomanica\r\n\r\nIl maglione è fatto su misura per il tuo bambino o bambina. \r\nPuoi scegliere le misure personalizzate e il colore\r\nPuoi anche scegliere il filato: cotton merino o lana merino extrafine \r\nI filati che utilizzo sono anallergici, naturali e adatti alla pelle delicata dei bambini. Non pungono!\r\nIo stessa fin da piccola ho sofferto di un\'allergia alle fibre sintetiche e per questo motivo ho molto a cuore la scelta dei filati più adatti, senza percentuali di fibre sintetiche', 'Maglione per bambini, Unisex', 23.87, 10, 5, 'maglioneA.webp, maglioneA2.webp, maglioneA3.webp, maglioneA4.webp', 'maglione, bambini, unisex, artigianale, maglia', 'carinspuppentraeume£prodotti creativi amorevolmente realizzati a mano dalla Germania.'),
(51, 'Grembiule Scuola Materna :\r\n\r\nE\' tempo di scuola.\r\n\r\nE\' tempo di tornare a scuola o anche iniziare nuove avventure, e allora perchè non partire da un grembiule simpatico ed originale, ricamato e personalizzato.\r\n\r\nSono davvero tantissimi le combinazioni di tessuti e di fantasie, e personaggi dei cartoni animati, ed è anche un modo per introdurre qualcosa di nuovo, rendendolo partecipe alla preparazione dei materiali per la \"scuola\".\r\n\r\nSarà divertentissimo per loro, e una grande soddisfazione per voi, che avrete un prodotto unico, realizzato con amore, passione e sicuramente originale, e diverso dal solito.', 'Grembiule Scuola Materna ', 33.33, 10, 5, 'grembiule.webp, grembiule2.webp, grembiule3.webp, grembiule4.webp', 'grembiule, scuola, bambino, bambina, materna', 'GMStileSenzaTempo£Abiti in lino bambini per giorni speciali. Prodotti artigianali dalla Campania.'),
(52, 'Set asilo in cotone\r\nIl set è composto da:\r\n- zainetto in cotone 44x42cm\r\n- bavaglio grande con elastico \r\n- asciugamano 30x50cm \r\n- asciugamano 30x30 cm\r\n\r\nTutto é realizzato in cotone e personalizzabile. \r\n\r\nSe non vi piace questo modello potrete richiedere la vostra versione totalmente personalizzata, scegliendo fra diversi tipi ti tessuto e fantasia.', 'Set asilo “Safari”', 17.78, 10, 5, 'set.webp, set2.webp, set3.webp, set4.webp', 'set, asilo, zaino, bambino, unisex, completo, scuola', 'GMStileSenzaTempo£Abiti in lino bambini per giorni speciali. Prodotti artigianali dalla Campania.'),
(53, 'E\' tempo di scuola.\r\n\r\nE\' tempo di tornare a scuola o anche iniziare nuove avventure, e allora perchè non partire da un grembiule simpatico ed originale, ricamato e personalizzato.\r\n\r\nSono davvero tantissimi le combinazioni di tessuti e di fantasie, e personaggi dei cartoni animati, ed è anche un modo per introdurre qualcosa di nuovo, rendendolo partecipe alla preparazione dei materiali per la \"scuola\".', 'Grembiule Scuola Materna - abbottonatura dietro', 43.22, 10, 5, 'grembiuleB.webp, grembiuleB2.webp, grembiuleB3.webp, grembiuleB4.webp', 'grembiule, scuola, bambino, bambina, materna', 'GMStileSenzaTempo£Abiti in lino bambini per giorni speciali. Prodotti artigianali dalla Campania.'),
(54, '\nCardigan bambina rosa in lana fatto a mano:\n\nCaldissimo cardigan per bambina in pura lana merino lavorato ai ferri in un\'originale tonalità di rosa. \n5 romantici bottoni in legno a forma di cuore chiudono il davanti. \n\nIN PRONTA CONSEGNA\nIl modello presentato veste una bimba di 3 mesi (62 cm), per non sbagliare taglia confronta le misure che ti occorrono con quelle del capo proposto nella fotografia caricata nella galleria immagini.\n\nLavare a mano in acqua tiepida con detersivo specifico per lana.\nNon usare l\'asciugatrice, ma lasciare asciugare in piano.', '\r\nCardigan bambina rosa in lana fatto a mano', 18.99, 10, 5, 'cardigan.webp, cardigan2.webp, cardigan3.webp, cardigan4.webp', 'cardigan, bambina, rosa, vestiti, artigianale', 'carinspuppentraeume£prodotti creativi amorevolmente realizzati a mano dalla Germania.'),
(55, 'eggings per neonati nelle taglie dalla 56 alla 116.\r\n\r\nI leggings sono stretti..\r\nGuarda le foto, se necessario scegli una taglia più grande\r\n\r\nDisponibile in diversi colori e tessuti\r\n*Maglia a nido d\'ape: 100% cotone\r\n*Maglia fine - 100% cotone\r\n*Jersey a costine: 80% cotone, 15% poliestere, 5% elastan\r\n*French Terry: 96% cotone, 4% elastan\r\nPotete trovare i diversi colori e tessuti nelle foto.', 'Leggings per neonati', 11, 10, 5, 'leggins.webp, leggins2.webp, leggins3.webp, leggins4.webp', 'leggings, neonato, pantaloni, bambino, bambina, unisex', 'LuminousCraftShop£Sostenibilità, qualità italiana, soddisfazione al 100%'),
(56, 'Body ricamato completamente a mano con la frase che più vi piace! \r\nRicamo completamente personalizzabile : scrivetemi per decidere assieme!\r\nBody bianco, in 100% cotone.\r\nDisponibili due taglie: \r\n- 0/3 mesi\r\n- 6/9 mesi\r\nProdotto creato su ordinazione\r\nDall\'arrivo dell\'ordine il prodotto verrà confezionato e spedito entro 2 settimane.', '\r\nBody ricamato a mano', 18, 10, 5, 'BodyB.webp, BodyB2.webp, BodyB3.webp, BodyB4.webp', 'body, bambino, bambina, neonato, ricamato', 'LuminousCraftShop£Sostenibilità, qualità italiana, soddisfazione al 100%'),
(57, 'Adorabile coniglietto amigurumi all’uncinetto, peluche perfetto per il tuo bambino o un regalo per neonati con servizio fotografico.\r\n\r\nIstruzioni per la manutenzione:\r\nUso un filato di cotone mercerizzato con una bella lucentezza naturale. La mercerizzazione dona alla fibra di cotone un colore brillante e la aiuta a resistere meglio a più lavaggi. Il filato è lavabile in lavatrice a 40 °C (104 °F). Non mettere in asciugatrice.', '\r\nBunny LUCKY all’uncinetto', 11.22, 10, 7, 'bunny.webp, bunny2.webp, bunny3.webp, bunny4.webp', 'peluche, coniglio, bambola, giocattolo, uncinetto', 'Unepelotedelaine£morbidi giocattoli, bambole e peluche all\'uncinetto realizzati con amore!'),
(58, 'Hai un debole per i pinguini? Allora questo pinguino ha molti punti deboli per te.\r\n\r\nIl primo animale giocattolo ad essere prodotto nel nostro studio, questo pinguino è stato popolare tra i nostri acquirenti per oltre 10 anni.\r\n\r\nIl tessuto bianco, grigio e rosso è tutto certificato biologico e proveniente da www.siebenblau.de. Il pinguino è farcito con lana biologica certificata proveniente da www.greenfibres.com.', 'Giocattolo pinguino ecologico', 15.56, 10, 7, 'pinguino.webp, pinguino2.webp, pinguino3.webp, pinguino4.webp', 'pinguino, giocattolo, peluche, artigianale, bambola, giocattolo, ecologico', 'Unepelotedelaine£morbidi giocattoli, bambole e peluche all\'uncinetto realizzati con amore!'),
(59, 'Bambola all\'uncinetto :\r\n\r\ngiocattolo personalizzato fatto a mano lavorato a maglia Amigurumi\r\n\r\nBambole Amigurumi per cesto regalo personalizzato o cesto regalo neonato\r\n\r\nSpedizione espressa per Stati Uniti e Canada\r\n\r\nConfezione regalo gratuita per tutti gli ordini\r\n\r\nProdotti Artigianali di Alta Qualità', 'Bambola all\'uncinetto ', 13, 10, 7, 'bambola.webp, bambola2.webp, bambola3.webp, bambola4.webp', 'bambola, giocattolo, artigianale, personalizzabile, regalo', 'Unepelotedelaine£morbidi giocattoli, bambole e peluche all\'uncinetto realizzati con amore!'),
(60, 'L\'aereo monomotore in legno monoplano è un affascinante giocattolo realizzato a mano in legno naturale che permetterà al tuo bambino di volare nell\'aria in modo divertente ed educativo. Realizzato in legno sostenibile, questo giocattolo non è solo ecologico, ma è anche sicuro per i bambini.\r\n\r\nCon il suo design elegante e raffinato, l\'aereo monoplano in legno monomotore è un vero capolavoro. Il tuo bambino potrà immaginare di pilotare questo aereo e volare tra le nuvole. Grazie al suo design in legno, questo giocattolo è piacevole al tatto e offre una consistenza naturale che stimolerà i sensi del tuo bambino.', 'Aereo naturale in legno fatto a mano', 24.7, 10, 7, 'aereo.webp, aereo2.webp, aereo3.webp, aereo4.webp', 'aereo, legno, giocattolo, artigianale', 'FriendlyToys£Giocattoli in legno fatti a mano, progettati per essere apprezzati. '),
(61, 'Ti presentiamo il nostro adorabile giocattolo da infilare a forma di orsetto in legno: il compagno perfetto per il viaggio di sviluppo del tuo bambino! Realizzato in legno naturale, questo affascinante giocattolo a forma di orso è dotato di fori realizzati con cura, che invitano le piccole mani a infilare bastoncini colorati attraverso la corda attaccata. Misura 18x12x2 cm, è abbastanza compatto per essere riposto e trasportato facilmente, ma abbastanza solido da offrire ore di gioco coinvolgente.\r\n\r\nMa i vantaggi del nostro giocattolo da infilare vanno ben oltre l\'intrattenimento. Man mano che i bambini manipolano i bastoncini e li intrecciano attraverso i fori, sviluppano abilità motorie fini, coordinazione occhio-mano e concentrazione cruciali. Inoltre, questa attività incoraggia la risoluzione dei problemi e la consapevolezza spaziale mentre i bambini determinano il percorso migliore da seguire con i bastoncini.', 'Orsetto in legno', 7.9, 10, 7, 'orso.webp, orso2.webp, orso3.webp, orso4.webp', 'orsetto, legno, giocattolo, artigianale, orso ', 'FriendlyToys£Giocattoli in legno fatti a mano, progettati per essere apprezzati. '),
(62, 'Fionda di forma semplice in acacia. Sulla parte frontale è stato applicato un inserto in corno di cervo. Portabilissima e bella da vedere. Rifinita con olio di lino cotto per nutrilrla e proteggerla ( consiglio periodicamente di dare altre mani di olio per mantenere la finitura). Con foro per cordicella/dragona.\r\nElastico incluso in theraband blu.\r\n\r\nMisure:\r\n\r\nAltezza: 13 cm circa\r\nLarghezza massima: 73 mm circa\r\nGap: 40 mm\r\nSpessore: 15 mm', 'Fionda artigianale', 33, 10, 7, 'fionda.webp, fionda2.webp, fionda3.webp, fionda4.webp', 'fionda, personalizzabile, legno, artigianale, regalo', 'FriendlyToys£Giocattoli in legno fatti a mano, progettati per essere apprezzati. '),
(63, 'Il Trenino in Legno è un meraviglioso giocattolo pensato appositamente per le mani dei più piccoli, realizzato con materiali naturali e sicuri. Questo simpatico trenino non solo stimola l\'immaginazione dei bambini, ma supporta anche le loro capacità motorie.\r\n\r\nCaratteristiche:\r\nMateriale naturale: realizzato interamente in legno naturale e atossico. Non contiene sostanze chimiche dannose per la salute del tuo bambino.\r\n\r\nFatto a mano: ogni pezzo è accuratamente realizzato a mano, rendendolo unico e irripetibile.', 'Trenino naturale in legno fatto a mano', 22, 10, 7, 'trenino.webp, trenino2.webp, trenino3.webp, trenino4.webp', 'trenino, legno, giocattolo, artigianale', 'FriendlyToys£Giocattoli in legno fatti a mano, progettati per essere apprezzati. '),
(64, 'Se sei un fan degli animali marini, ci sono buone probabilità che rimarrai affascinato dalle creature che vivono nell\'oceano. Il mare ospita alcuni degli animali più straordinari della terra, tra cui pesci, balenottere azzurre, tartarughe, delfini e squali. Ognuno è adattato in modo unico a sopravvivere nel suo ambiente ed è affascinante guardarlo in azione. A volte hanno capacità uniche che li rendono sorprendenti e diversi dagli altri animali. Se stai cercando una nuova ossessione per gli animali marini, tuffati nell\'uncinetto su questi fantastici animali dell\'oceano. Non rimarrai deluso.\r\n\r\nTAGLIE:\r\n- Delfino: lungo 14 cm (5,5 pollici)\r\n- Polpo: lungo 18 cm (7,1 pollici)\r\n- Tartaruga: lunga 11 cm (4,3 pollici)\r\n- Balena blu: lunga 20 cm (7,8 pollici)\r\n- Pesce: 12 cm di lunghezza (4,7 pollici)\r\n- Squalo martello: lungo 16 cm (6,3 pollici)', 'Animali marini all\'uncinetto', 34, 10, 7, 'pesci.webp, pesci2.webp, pesci3.webp, pesci4.webp', 'animali, marini, giocattolo, peluche, set', 'Unepelotedelaine£morbidi giocattoli, bambole e peluche all\'uncinetto realizzati con amore!'),
(65, 'Chessboard with figures\r\n\r\nWe offer you a unique set of chess. \r\nWe have been producing chess in our family for 70 years.. It is a hand-made product with the greatest attention to every detail. \r\nThe chessboard surface was made of veneer. Chess, however, was rolled individually, each piece.\r\n\r\n\r\nDimensions\r\n\r\nChessboard: 340mm x 340mm x 50mm (closed) (13.38\" x 13.38\" x 2\")\r\nThe chess men size varies from King – 66mm to pawn 35mm (2.60\"-King, 1.38\"- pawn)', 'Scacchiera in legno', 67.33, 10, 7, 'scacchi.webp, scacchi2.webp, scacchi3.webp, scacchi4.webp', 'scacchiera, legno, scacchi, pedine, artigianale', 'SASAHOO£Stiamo producendo il design di oggi per soddisfare le esigenze di oggi.\n');
INSERT INTO `product` (`id`, `descrizione`, `nome`, `prezzo`, `qnt`, `category_id`, `img`, `tag`, `venditore`) VALUES
(66, 'Gioco di società realizzato a mano in Italia con la tecnica dell\'amigurumi. - 100% cotone - Imbottitura in Poliestere nelle Api.\r\nsto lavorando per avere piu\' pezzi disponibili. \r\n\r\nCome si gioca: \r\na turno i giocatori scelgono una casella vuota e vi poggiano la propria pedina. Vince il giocatore che riesce a disporre tre dei propri simboli in linea retta orizzontale, verticale o obliqua. \r\n\r\nDescrizione del modello: \r\nil gioco è composto da 5 pedine per ciascun giocatore;\r\nla base del gioco e i fiori sono realizzati all\'uncinetto e poi ricamati a mano;\r\nle Api sono realizzate con la tecnica Amigurumi e poi ricamate. \r\ntirando i lacci la base si chiude a sacchetto e si può trasportare ovunque con molta facilità. \r\nI colori della base e le pedine si possono personalizzare, non esitare a inviarmi un messaggio tramite Etsy e sarò felice di realizzare ciò che desideri. Tieni presente che la spedizione degli ordini personalizzati richiederà più tempo.\r\nIl peluche è fatto interamente a mano in una casa senza fumo e animali domestici;\r\nQuesto modello è unico;', 'Tris', 27, 10, 7, 'tris.webp, tris2.webp, tris3.webp, tris4.webp', 'tris, giocattolo, artigianale, uncinetto', 'SASAHOO£Stiamo producendo il design di oggi per soddisfare le esigenze di oggi.\n'),
(67, 'Sandali neri con cinturino alla caviglia, fatti a mano in Grecia\r\n\r\nQuesti sandali sono realizzati per le donne che vogliono abbinare scarpe chic e comode con uno stile femminile molto dinamico. Ciò che fa la differenza in questo paio di sandali è la pelle pieno fiore di colore nero e la suola morbidissima. Questo modello presenta un design a V nella parte superiore dei sandali, un cinturino all\'altezza delle dita e un cinturino alla caviglia che mantiene la caviglia con stabilità.\r\n\r\nDETTAGLI\r\n*Colori disponibili: Nero, Marrone, Bianco\r\n* Suola morbida\r\n* Materiali: -pelle bovina naturale per cinturini e soletta.\r\n-Gomma resistente per la mia suola fatta a mano\r\n\r\n* Altezza tacco: 1,5 cm', 'ARIANNA sandali in pelle greca', 45, 10, 8, 'sandaliG.webp, sandaliG2.webp, sandaliG3.webp, sandaliG4.webp ', 'sandali, pelle, scarpe, artigianali', 'BottegaEsposito£Sandali Artigianali Fatti a Mano. Eccellenza campana.\n'),
(68, 'Tomaia: pelle vegana;\r\nFodera: pelle vegana;\r\nAltezza tacco: circa 3,5 cm\r\n\r\nTABELLA TAGLIE\r\n\r\nTaglia USA 4 = Taglia UK 1,5 = Taglia EU 35 = Taglia universale 225\r\nTaglia USA 5 = Taglia UK 2,5 = Taglia EU 36 = Taglia universale 230\r\nTaglia USA 6 = Taglia UK 3,5 = Taglia EU 37 = Taglia universale 235\r\nTaglia USA 7 = Taglia UK 4,5 = Taglia EU 38 = Taglia universale 240\r\nTaglia USA 8 = Taglia UK 5,5 = Taglia EU 39 = Taglia universale 245\r\nTaglia USA 9 = Taglia UK 6,5 = Taglia EU 40 = Taglia universale 250', 'Tacchi Mary Jane', 56, 10, 8, 'tacchi.webp, tacchi2.webp, tacchi3.webp, tacchi4.webp ', 'scarpa, tacco, tacchi, pelle, vegana, elegante', 'DCLeatherAndShoes£Scarpe in pelle fatte a mano, accessori in pelle fatti a mano. Turchia.'),
(69, 'Grazie per aver visitato il mio negozio dove troverai sandali e scarpe greche fatte a mano. Tutti i miei prodotti sono realizzati a mano in vera pelle non trattata con variazioni tra gli stili. Tutti i sandali realizzati in pelle conciata al naturale si scuriranno se esposti al sole invecchiando magnificamente con il tempo.\r\nTutti i prodotti sono realizzati su ordinazione pertanto si prega di attendere almeno 3 giorni per la spedizione.\r\n', 'Scarpe muli in pelle', 67, 10, 8, 'scarpe.webp, scarpe2.webp, scarpe3.webp, scarpe4.webp ', 'scarpe. pelle, artigianali, moda, classica', 'DCLeatherAndShoes£Scarpe in pelle fatte a mano, accessori in pelle fatti a mano. Turchia.'),
(70, 'Comode e morbide pantofole babouche slip-on in pelle.\r\n\r\nQueste comodissime pantofole in pelle sono naturali, traspiranti, si adatteranno alla forma dei tuoi piedi e sono perfette per rilassarsi la mattina e la sera dopo una dura giornata di lavoro.\r\nIl regalo ideale, ottimo per viaggiare e, naturalmente, il massimo delle calzature per il lavoro da casa!', 'Pantofole babouche marocchine', 12.34, 10, 8, 'babouche.webp, babouche2.webp, babouche3.webp, babouche4.webp', 'pantofole, babouche, casa, marocchine', 'MarrkeshSouk£Pantofole marocchine artigianali per la vita di tutti i giorni.'),
(71, 'Sandali da donna con cinturino frontale incrociato con dita dei piedi incrociate e cinturini alla caviglia ~ Scarpe piatte comode primavera estate in pelle di vitello superiore stile greco ~ ZETA', 'Sandali da donna con cinturino frontale incrociato', 89.99, 10, 8, 'sandaliC.webp, sandaliC2.webp, sandaliC3.webp, sandaliC4.webp', 'sandali, donna, cinturino, pelle, scarpe', 'BottegaEsposito£Sandali Artigianali Fatti a Mano. Eccellenza campana.\n'),
(72, 'Pantofole marocchine artigianali:\r\n\r\nScopri il ricco patrimonio del Marocco con queste pantofole berbere uniche nel loro genere, realizzate a mano in un piccolo laboratorio di famiglia. Queste babbucce colorate e finemente ricamate provengono da Tafraoute, una città montuosa nota per la sua tradizione calzaturiera unica.\r\n\r\nProgettato per comfort e durata\r\n\r\nRealizzate interamente in pelle, queste pantofole offrono una sensazione lussuosa e una lunga durata. La morbida soletta e la fodera del tallone offrono un comfort superiore, mentre la linguetta del tallone alto garantisce un adeguato supporto della caviglia. La suola in gomma spessa, incollata e cucita le rende adatte sia per uso interno che esterno, trovando il perfetto equilibrio tra leggerezza, flessibilità e robustezza.', 'Pantofole marocchine artigianali', 56, 10, 8, 'pantofoleM.webp, pantofoleM2.webp, pantofoleM3.webp, pantofoleM4.webp', 'pantofole, babouche, casa, marocchine', 'MarrkeshSouk£Pantofole marocchine artigianali per la vita di tutti i giorni.'),
(73, 'Pantofole a pois da donna:\r\n\r\nQueste comode pantofole da donna in lana infeltrita sono la combinazione perfetta di comfort e stile. Realizzate a mano con amore, queste pantofole presentano un affascinante design a pois che aggiunge un tocco divertente al tuo abbigliamento da casa. Realizzate in lana di alta qualità, queste pantofole sono morbide al tatto e manterranno i tuoi piedi caldi e comodi per tutto il giorno. Regalati o regalali a una persona cara per un tocco di lusso e comfort. Perfette per rilassarsi o rilassarsi a casa, queste pantofole sono un must per chi apprezza sia lo stile che il comfort.\r\nPer queste pantofole di lana infeltrita fatte a mano vengono utilizzati solo prodotti e materiali naturali. Sono realizzati con lana di pecora di alta qualità, pelle naturale, acqua calda e sapone biologico. Progettato per essere indossato a casa, molto morbido, caldo, molto accogliente e confortevole per i tuoi piedi. Questi stivaletti in feltro sono fatti in casa, senza cuciture interne.', 'Pantofole a pois da donna', 14.68, 10, 8, 'pantofoleP.webp, pantofoleP2.jpeg, pantofoleP3.jpeg, pantofoleP4.jpeg', 'pantofole, calde, casa, donna', 'MarrkeshSouk£Pantofole marocchine artigianali per la vita di tutti i giorni.'),
(74, 'Da oltre 20 anni, produciamo sandali artigianali con l\'aiuto di pochi macchinari, sia all\'ingrosso che al dettaglio, scegliendo con cura i migliori materiali e offrendo moltissime possibilità di personalizzazione, rendendo così i nostri sandali, un prodotto COMODO, UNICO e RESISTENTE.\r\n\r\nSandali Artigianali per Uomo con tomaia 100% Vacchetta cuoio conciata.\r\n\r\nSottopiede 100% vero cuoio.\r\n\r\nSuola in gomma (contattaci se preferisci la suola in cuoio con antiscivolo)\r\n\r\nTutto realizzato da noi 100% MADE IN ITALY!', 'Sandali artigianali da Uomo', 55.89, 10, 8, 'sandaliU.webp, sandaliU2.webp, sandaliU3.webp, sandaliU4.webp', 'sandali, pelle, scarpe, artigianali', 'BottegaEsposito£Sandali Artigianali Fatti a Mano. Eccellenza campana.\n'),
(75, 'Sandali vintage con cinturino in pelle naturale con suola in cuoio realizzati a mano in Marocco senza l\'utilizzo di manodopera straniera né infantile, ma da esperti come nella migliore tradizione artigianale.\r\n\r\n• Fascia superiore realizzata al 100% in pelle pieno fiore di prima qualità\r\n• Fodera interna in morbida pelle di suino al 100%.\r\n• Suola interna in 100% pelle di vacchetta pieno fiore di alta qualità\r\n• Suola: assorbimento degli urti, leggerezza, resistenza all\'acqua\r\n• Fatto a mano su ordinazione da artigiani esclusivamente a Marrakech', 'Sandali ritagliati in pelle da donna ', 56.9, 10, 8, 'sandaliF.webp, sandaliF2.webp, sandaliF3.webp, sandaliF4.webp', 'sandali, pelle, scarpe, artigianali', 'BottegaEsposito£Sandali Artigianali Fatti a Mano. Eccellenza campana.\n'),
(76, 'Che tu stia cercando un paio di scarpe eleganti per le tue vacanze estive o una scelta comoda che ti farà risaltare ogni giorno, questi sandali in stile greco antico sono la scelta migliore! I comodi cinturini in pelle e le solette si adattano ai tuoi piedi offrendo un comfort maggiore quanto più a lungo li indossi.\r\n\r\n\r\n\r\nLa pelle conciata naturale e priva di sostanze chimiche invecchia magnificamente con il tempo e l\'usura. Poiché i loro metodi di costruzione sono degli standard più elevati e sono realizzati in vera pelle, puoi essere certo di godere del massimo comfort e durata!', 'Sandalo alto in pelle', 70, 10, 8, 'sandaloA.webp, sandaloA2.webp, sandaloA3.webp, sandaloA4.webp ', 'sandali, pelle, scarpe, artigianali', 'BottegaEsposito£Sandali Artigianali Fatti a Mano. Eccellenza campana.\n'),
(77, 'Cardigan per cani colorato:\r\n\r\nTi presentiamo il cardigan per cani: una miscela alla moda di comfort e stile\r\n\r\nRegala al tuo amico peloso un tocco di eleganza e calore con il Dog Cardigan, il capo perfetto per valorizzare il suo stile e tenerlo accogliente. Realizzato con amore e attenzione ai dettagli, questo affascinante capo di abbigliamento per cani combina moda e funzionalità in modo delizioso.\r\nSe desideri cambiare il tipo di filato contattaci. Abbiamo opzioni in cotone, anti-pilling o lana acrilica.\r\n\r\nDIMENSIONI\r\n\r\nPer favore scrivi razza, peso e sesso del tuo cane. Se condividi la foto del tuo cane con noi sarà fantastico.', 'Cardigan per cani colorato', 28.9, 10, 9, 'cardiganCane.webp, cardiganCane2.webp, cardiganCane3.webp, cardiganCane4.webp ', 'vestiti, cani, animali, cardigan, artigianale', 'FuzzyCove£Cucce e giochi per animali domestici in lana biologica al 100%, fatte a mano negli USA.'),
(78, 'Una Wooly Cat Cave non è solo un rifugio perfetto dove il tuo gatto può sonnecchiare e giocare, è un complemento di arredo dal design moderno e fiabesco che dà un tocco speciale alla casa.\r\n\r\nLe cat caves Wooly sono progettate e realizzate interamente da me in Italia, sono disponibili in colori neutri come il grigio e il beige, realizzati con lana naturale, o in molti altri colori, con lana tinta.\r\n\r\nTutti i letti dei gatti sono fatti al 100% di lana infeltrita. Il feltro è un ottimo isolante termico e mantiene la temperatura del tuo gatto sia d’inverno che d’estate.\r\nLa lana utilizzata per le cucce proviene da pecore alpine allevate in piccole fattorie locali.', 'Cuccia in feltro per gatto', 67, 10, 9, 'cucciaG.webp, cucciaG2.webp, cucciaG3.webp, cucciaG4.webp ', 'cuccia, gatto, feltro, accessori, animali, artigianale', 'LittleLodgings£Tutto nel mio negozio è fatto su ordinazione, quindi per favore ricontrolla i tempi di spedizione prima di ordinare.Grazie!'),
(79, 'Gabbia per uccelli in legno nuova di zecca, mai usata, fatta a mano\r\nLa gabbia è realizzata in filo di ROVERE e ACCIAIO INOSSIDABILE, la distanza tra i fili è di circa 0,4 pollici ed è verniciata con olio di lino, 12 pioli più uno con altalena, cassetto estraibile, mangiatoia\r\nlunghezza - 31,5 pollici (80 cm)\r\nlarghezza - 11,7 pollici (30 cm)\r\naltezza: 19,5 pollici (50 cm)\r\n\r\nPer il prezzo della spedizione per altri paesi non contrassegnati, contattatemi', 'Gabbia per uccelli in legno fatta a mano', 178.8, 10, 9, 'gabbia.webp, gabbia2.webp, gabbia3.webp, gabbia4.webp', 'gabbia, uccelli, voliera, legno, artigianale', 'LittleLodgings£Tutto nel mio negozio è fatto su ordinazione, quindi per favore ricontrolla i tempi di spedizione prima di ordinare.Grazie!'),
(80, 'Questa targhetta per il nome del cane da parete è un cartello con il nome del cane da appendere, una targhetta personalizzata per il canile con il nome del tuo cane. Questo cartello in legno per l\'angolo del tuo cane è un simpatico piatto con nome personalizzato realizzato in legno e un regalo di Natale perfetto per il proprietario del cane, la mamma del cane, il proprietario del cucciolo o l\'amante degli animali domestici. Il cartello con nome cane personalizzato è realizzato a mano in legno e può essere appeso nell\'angolo del cane o nella cuccia e nella gabbia.\r\n\r\nDETTAGLI\r\n-----------\r\n- il nome del cane è realizzato a mano in Svizzera in legno di betulla spesso 3 mm e un\'impronta di zampa tagliata al laser\r\n- questo gagliardetto leggero ha una corda di cotone o anelli di metallo attaccati e può essere appeso sopra una cuccia per cani o su una cuccia o una cassa', 'Targhetta con nome per cane', 18, 10, 9, 'targhetta.webp, targhetta2.webp, targhetta3.webp, targhetta4.webp ', 'targhetta, cane, accessori, animali, personalizzata, collare', 'BettyWoof£Progetta cucce, giocattoli e accessori per animali fatti a mano.\n'),
(81, 'Per realizzare questo tiragraffi vengono utilizzati corda di sisal e compensato.\r\n\r\n\r\nQuesto tiragraffi fatto a mano proteggerà i mobili e la carta da parati dagli artigli del gatto e aiuterà il gatto a sentirsi sempre bene. Il tiragraffi ha spazio per i giochi. Qui puoi posizionare i giocattoli o le palline preferiti del tuo gatto inclusi.\r\n\r\n\r\nLunghezza: 58 cm / 22,8 \"\r\nLarghezza: 47 cm / 18,5\"\r\nLarghezza zona tiragraffi: 31 cm / 12,2″\r\nLunghezza zona tiragraffi: 42 cm / 16,5″\r\nAltezza: 4 cm / 1,6 \"', 'Giocattolo per gatti con tiragraffi fatto a mano', 145.55, 10, 9, 'tiragraffi.webp, tiragraffi2.webp, tiragraffi3.webp, tiragraffi4.webp ', 'accessori, animali, tiragraffi, giocattolo, gatti, artigianale', 'BettyWoof£Progetta cucce, giocattoli e accessori per animali fatti a mano.\n'),
(82, 'Cerchi un regalo premuroso per il tuo cucciolo o un appassionato di cani? Dai un\'occhiata al nostro collare per cani in pelle fatto a mano. La parte migliore? Viene fornito con un\'incisione personalizzata, così il tuo amico peloso potrà mostrare il suo stile unico ovunque vada.\r\n\r\nRealizzati a mano in cuoio di alta qualità e dotati di una resistente chiusura in metallo, i nostri collari sono progettati pensando al comfort del tuo animale domestico. La pelle è delicata sulla pelle del tuo cane e comoda da indossare a lungo termine. Un collare per cani in pelle è robusto e affidabile.\r\n\r\nGli animali domestici meritano il meglio, per questo realizziamo i nostri accessori con la massima cura e attenzione ai dettagli, dando sempre priorità al comfort del tuo animale domestico', 'Collare per cani in pelle', 33.21, 10, 9, 'collare.jpeg, collare2.jpeg, collare3.webp, collare4.jpeg ', 'collare, cani, pelle, artigianale, accessori, animali', 'BettyWoof£Progetta cucce, giocattoli e accessori per animali fatti a mano.\n'),
(83, 'Immagina di offrire al tuo amato animale domestico un rifugio di lusso con la nostra cuccia in legno marrone e il deposito personalizzato per alimenti per animali domestici. Questa moderna cuccia promette di elevare il comfort del tuo animale domestico migliorando al contempo l’appeal estetico della tua casa. Realizzata in legno di alta qualità, si adatterà perfettamente a qualsiasi arredamento. Il tuo animale domestico godrà di uno spazio accogliente ed elegante e tu apprezzerai la comodità di avere una soluzione personalizzata per la conservazione del cibo. Questo regalo unico per gli amanti degli animali porterà gioia e praticità in qualsiasi casa.', 'Cuccia in legno marrone ', 132, 10, 9, 'cuccia.webp, cuccia2.webp, cuccia3.webp, cuccia4.webp ', 'cuccia, legno, cani, gatti, artigianale', 'BettyWoof£Progetta cucce, giocattoli e accessori per animali fatti a mano.\n'),
(84, 'Borsa da trasporto per cani in cotone e denim - Perfetta per razze di piccola taglia da 0 a 8 kg\r\n\r\nTi presentiamo la nostra borsa da trasporto per cani in cotone denim, la scelta ideale per le razze di cani di piccola taglia. Questo trasportino per cani elegante e pratico è progettato per offrire comfort e praticità a te e al tuo amico peloso. Che tu stia uscendo per una passeggiata, una visita dal veterinario o un weekend fuori porta, la nostra borsa trasportino per cani garantisce che il tuo animale domestico viaggi con stile e comfort.\r\n\r\nCaratteristiche principali:\r\n\r\nTessuto denim di cotone premium: realizzato in denim di cotone di alta qualità, questo trasportino per cani è resistente, traspirante e delicato sulla pelle del tuo animale domestico. Il tessuto morbido ma robusto offre uno spazio confortevole per il tuo cane garantendo al tempo stesso la longevità della borsa.', 'Borsa da trasporto per cani', 58, 10, 9, 'borsaCane.webp, borsaCane2.webp, borsaCane3.webp, borsaCane4.webp ', 'trasportino, borsa, cani, accessori, animali', 'FuzzyCove£Cucce e giochi per animali domestici in lana biologica al 100%, fatte a mano negli USA.'),
(85, 'Splendida casa per uccelli realizzata a mano.\r\n\r\nQuesto particolare visualizzato è stato venduto, ma posso rifarlo e aggiungere qualsiasi preferenza di colore tu possa avere.\r\n\r\nAggiungi un tocco di magia e meraviglia al tuo giardino con una casetta per uccelli Little Lodgings.\r\n\r\nRealizzato a mano utilizzando legno di compensato esterno sostenibile e legno di falegnameria, è stato poi dipinto a mano con vernici e macchie esterne e sigillato con un sigillante chiaro in modo che il tempo non danneggi il tuo bellissimo lodge.\r\n\r\nForo di 25 mm di diametro ideale per tutte le piccole varietà di uccelli.', 'JACK FROST bird house', 78, 10, 9, 'birdHouse.webp, birdHouse2.webp, birdHouse3.webp, birdHouse4.webp ', 'casetta, uccelli, legno, artigianale', 'LittleLodgings£Tutto nel mio negozio è fatto su ordinazione, quindi per favore ricontrolla i tempi di spedizione prima di ordinare.Grazie!'),
(86, 'Benvenuto nel nostro esclusivo rifugio per animali fatto a mano, realizzato con amore per i tuoi amici a quattro zampe! Questa esclusiva cuccia per animali domestici è progettata con bordi in legno massello di faggio, garantendo resistenza e un tocco di naturale eleganza. La forma triangolare aggiunge un tocco moderno allo spazio del tuo animale domestico, rendendolo un\'aggiunta elegante alla tua casa.\r\n\r\nCostruzione in legno massello di faggio: i bordi della nostra cuccia per animali domestici sono meticolosamente realizzati in legno massello di faggio, fornendo una struttura robusta e duratura.\r\nCentro antimacchia: la parte centrale è realizzata in tessuto antimacchia, rendendo la pulizia un gioco da ragazzi e garantendo un aspetto immacolato anche dopo avventure giocose.\r\nLavabile in lavatrice: mantieni facilmente la freschezza dello spazio del tuo animale domestico gettando la parte in tessuto nella lavatrice per una pulizia senza problemi.\r\nTessuto antigraffio: tessuto appositamente scelto che resiste all\'istinto di graffiare del tuo gatto, garantendo la longevità della cuccia.', 'Teepee per gatti beige artigianale', 134.5, 10, 9, 'teepee.webp, teepee2.webp, teepee3.webp, teepee4.webp \r\n', 'teepee, gatti, cuccia, animali, accessori ', 'BettyWoof£Progetta cucce, giocattoli e accessori per animali fatti a mano.');

-- --------------------------------------------------------

--
-- Struttura della tabella `review`
--

CREATE TABLE `review` (
  `id` bigint(20) NOT NULL,
  `descrizione` text DEFAULT NULL,
  `punteggio` int(11) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `review`
--

INSERT INTO `review` (`id`, `descrizione`, `punteggio`, `product_id`, `user_id`) VALUES
(2, 'L\'opera è bella, ma non mi ha entusiasmato come speravo. I colori sono intensi, ma forse un po\' troppo vivaci per il mio gusto personale. Inoltre, mi aspettavo un effetto tridimensionale più marcato. Nel complesso è un buon prodotto, ma non è esattamente quello che cercavo.', 3, 2, 15),
(3, 'Ho acquistato questa opera per la mia cucina e sono molto soddisfatta. I colori caldi si abbinano perfettamente al mio arredamento. La qualità del vetro è ottima e la lavorazione è precisa. L\'unico piccolo neo è che le dimensioni sono leggermente inferiori a quanto indicato nella descrizione.', 4, 2, 17),
(4, 'Sono rimasta delusa da questo acquisto. L\'opera è arrivata danneggiata, con una piccola scheggiatura sul bordo. Inoltre, i colori sembrano un po\' sbiaditi rispetto alla foto sul sito. Non consiglio questo prodotto.', 2, 2, 14),
(5, 'Sono assolutamente incantata da questa opera! I colori caldi creano un\'atmosfera accogliente e luminosa nel mio soggiorno. La qualità del vetro è eccezionale e i giochi di luce sono davvero affascinanti. È un pezzo unico che ha completamente trasformato la mia parete. Consiglio vivamente!', 5, 2, 16),
(6, 'Questa lampada è un vero gioiello! L\'ho posizionata sul mio comodino e crea un\'atmosfera magica e rilassante. La luce soffusa che filtra dalla bottiglia di gin è affascinante. Si nota subito la cura artigianale in ogni dettaglio. Un pezzo unico che consiglio a tutti gli amanti del design e degli oggetti originali.', 5, 13, 3),
(7, 'La lampada è carina e originale, ma avrei preferito una base più stabile. Durante l\'accensione, la bottiglia tende a oscillare leggermente. Inoltre, il cavo potrebbe essere un po\' più lungo. Nel complesso, è un prodotto interessante, ma con qualche piccolo difetto', 3, 13, 8),
(8, 'Ho regalato questa lampada ad un amico appassionato di gin e ne è rimasto entusiasta! Il design è molto particolare e la qualità dei materiali è buona. L\'unica pecca è che il prezzo è un po\' elevato. Ma considerando l\'artigianalità, è comprensibile.', 4, 13, 11),
(9, 'Sono rimasto deluso da questa lampada. La bottiglia sembrava più grande nella foto. Inoltre, la luce è troppo debole per illuminare adeguatamente una stanza. Non la consiglierei.', 2, 13, 2),
(10, 'Questo scaffale di montagna in legno è assolutamente spettacolare! È un\'aggiunta incredibile alla mia casa. Il design è unico e creativo, sembra davvero una montagna in miniatura sulla mia parete. La qualità del legno è eccezionale, la lavorazione è impeccabile e sembra davvero robusto. Non solo è un bellissimo oggetto d\'arredo, ma è anche molto funzionale. Ho già posizionato i miei libri e soprammobili preferiti e sembra tutto fantastico. Consiglio vivamente questo scaffale a chiunque cerchi un pezzo unico e di alta qualità per la propria casa!', 5, 5, 3),
(11, 'Sono innamorata/o del mio nuovo scaffale di montagna in legno! È esattamente quello che stavo cercando per aggiungere un tocco di natura e di design al mio soggiorno. Sembra uscito da una fiaba, con i suoi ripiani che si snodano come i pendii di una montagna. È realizzato con materiali di prima qualità e la cura per i dettagli è incredibile. Non solo è bellissimo, ma è anche molto facile da montare. Ho ricevuto tanti complimenti dai miei ospiti e sono sicura che sarà un punto focale della mia casa per gli anni a venire. Grazie per aver creato un prodotto così speciale!', 5, 5, 2),
(12, 'Wow! Questo scaffale di montagna in legno ha superato le mie aspettative! È un\'opera d\'arte funzionale. Aggiunge un tocco di calore e di stile nordico al mio appartamento. È perfetto per esporre le mie piante e altri oggetti decorativi. Il legno ha una bellissima venatura e la finitura è liscia e lucente. Si vede subito che è stato realizzato a mano con passione. Non potrei essere più felice di questo acquisto!', 5, 5, 14),
(13, 'Finalmente ho trovato lo scaffale perfetto per la mia camera da letto a tema montagna! Questo scaffale è incredibilmente bello e ben fatto. Sembra davvero una piccola catena montuosa sulla mia parete. È il modo ideale per mostrare la mia collezione di libri e souvenir di viaggio. Adoro il fatto che sia realizzato in legno sostenibile e che supporti l\'artigianato locale. Consiglio vivamente questo prodotto a chiunque ami la montagna e il design d\'interni unico!', 4, 5, 9),
(14, 'Sono rimasta molto delusa da questi body. Il tessuto è troppo sottile e si stropiccia facilmente. Inoltre, i bottoncini a pressione si sono rotti dopo pochi utilizzi. Non li consiglio.\"', 2, 49, 14),
(15, 'I body sono comodi e pratici, ma il design è un po\' troppo semplice. Avrei preferito qualche stampa più divertente o originale. La qualità del cotone è buona, ma non eccezionale.', 3, 49, 8),
(16, 'Questi body sono carini e morbidi, ma ho trovato qualche filo sfilacciato dopo pochi lavaggi. Inoltre, la taglia sembra un po\' piccola rispetto ad altre marche che ho provato. Nel complesso sono discreti, ma mi aspettavo di più.', 3, 49, 3),
(17, 'Questi body sono un must-have nel guardaroba del mio bambino! Sono pratici, comodi e super versatili. Li uso sia di giorno che di notte e sono perfetti sia sotto i vestitini che da soli. La taglia corrisponde perfettamente e si adattano perfettamente al corpo del bambino. Ottimo rapporto qualità prezzo!', 4, 49, 2),
(18, 'Questo maglioncino è semplicemente perfetto per il mio bimbo! Il materiale è morbidissimo e caldo, ideale per l\'autunno. La taglia corrisponde perfettamente e la vestibilità è comodissima. I colori sono vivaci e il design è molto carino. Lo indossa volentieri e resiste benissimo ai lavaggi. Lo consiglio vivamente!', 5, 50, 3),
(19, 'Il maglione è carino, ma la qualità non è eccezionale. Dopo pochi lavaggi ha iniziato a perdere un po\' di colore e il tessuto si è un po\' sfilacciato. La taglia sembrava giusta, ma calza un po\' stretto sulle maniche. Nel complesso è un prodotto discreto, ma mi aspettavo di più.', 3, 50, 8),
(20, 'Ho acquistato questo maglione per un regalo e sono rimasta molto soddisfatta. Il design è originale e il bambino lo ha adorato. Il materiale è morbido e sembra di buona qualità. L\'unica pecca è che il prezzo è un po\' alto. Ma considerando l\'aspetto estetico, ne vale la pena', 5, 50, 15),
(21, 'Sono molto delusa da questo maglione. Il tessuto è ruvido e sembra grattare la pelle del mio bambino. Inoltre, la taglia è decisamente troppo piccola. Non lo consiglio affatto.', 1, 50, 2),
(22, ' Ho regalato questa collana a un\'amica appassionata di gioielli etnici e ne è rimasta incantata. La confezione era molto curata e la collana ancora più bella dal vivo. È un regalo perfetto per chi ama i pezzi unici e originali.', 4, 14, 12),
(23, 'Questa collana etnica è molto più di un semplice gioiello. Ogni dettaglio, dalla lavorazione artigianale alle pietre colorate, sembra raccontare una storia. L\'ho indossata a un evento speciale e ho ricevuto tantissimi complimenti. È un pezzo unico che mi fa sentire speciale', 5, 14, 8),
(24, 'Con questa collana mi sento come se indossassi un pezzo del mondo. I colori vivaci e i motivi intricati mi trasportano in terre lontane. È perfetta per aggiungere un tocco boho-chic a qualsiasi outfit. La qualità è ottima e la collana è molto leggera da portare.', 4, 14, 11),
(25, 'Ho scelto questa collana etnica perché mi ha subito colpito per la sua energia positiva. Le pietre sembrano quasi brillare di luce propria. La indosso ogni giorno e mi sento più sicura di me. È diventata il mio talismano personale.', 5, 14, 14),
(26, 'Questo grembiule è perfetto per mio figlio! Il tessuto è morbido e resistente, ideale per le attività quotidiane all\'asilo. La taglia corrisponde perfettamente e la vestibilità è comoda. Il design è semplice ma simpatico, con i colori vivaci che piacciono tanto ai bambini. Si lava facilmente e non richiede stiratura. Lo consiglio vivamente!', 4, 51, 3),
(27, 'Il grembiule è carino, ma la qualità del tessuto non è eccezionale. Dopo pochi lavaggi ha iniziato a scolorire leggermente e si è formato qualche piccolo pelucchino. La taglia sembrava giusta, ma calza un po\' stretto sulle spalle. Nel complesso è un prodotto discreto, ma mi aspettavo di più.', 3, 51, 8),
(28, 'Ho acquistato questo grembiule per mia figlia e sono molto soddisfatta. Il design è molto femminile e i colori pastello sono deliziosi. Il tessuto è morbido e confortevole. L\'unica pecca è che la tasca davanti è un po\' piccola. Ma nel complesso è un buon prodotto.', 4, 51, 11),
(29, 'Sono rimasta molto delusa da questo grembiule. Il tessuto è ruvido e sembra grattare la pelle del mio bambino. Inoltre, la taglia è decisamente troppo piccola. Non lo consiglio affatto.', 1, 51, 2),
(30, 'Ero così entusiasta di ricevere questo vassoio, ma la realtà è stata ben diversa dalle immagini. Il materiale sembrava di alta qualità online, ma dal vivo è molto più leggero e fragile. Il velluto che riveste il fondo si è rovinato dopo pochi giorni, lasciando scoperto il materiale sottostante. Delusa dalla qualità complessiva.', 2, 19, 16),
(31, ' Ho acquistato questo vassoio per organizzare i miei gioielli più preziosi, ma mi sono subito resa conto che non era adatto allo scopo. I scomparti sono troppo piccoli per collane lunghe e i divisori in tessuto si muovono facilmente. Inoltre, il vassoio è scivoloso e i miei anelli tendono a scivolare via.', 2, 19, 17),
(32, ' Esteticamente il vassoio è carino, ma la funzionalità lascia molto a desiderare. I divisori non sono personalizzabili e non riesco a organizzare i miei gioielli nel modo più efficace. Inoltre, il vassoio è troppo basso e i miei orecchini più lunghi si impigliano nei bordi.', 3, 19, 8),
(33, 'Ho acquistato questo vassoio come regalo, ma sono costretta a cambiarlo. Il vassoio è arrivato danneggiato, con un angolo scheggiato. Inoltre, le finiture sono molto scadenti e il colore non corrisponde a quello della foto. Un prodotto di scarsa qualità che non consiglio.', 1, 19, 11),
(34, 'Questa bambola all\'uncinetto è un\'opera d\'arte! Ogni dettaglio, dai capelli ai vestiti, è curato con amore. È un pezzo unico che ho deciso di esporre in vetrina, è così bella! I colori sono delicati e i materiali di alta qualità. Un acquisto che non rimpiangerò mai.', 5, 59, 16),
(35, 'Ho regalato questa bambola ad una mia amica che ha appena avuto una bambina. È stata felicissima! La bambola è morbida e perfetta da coccolare, proprio come un vero bambino. I materiali sono sicuri per i più piccoli e la bambola è realizzata a mano con cura. Un regalo che ha fatto breccia nel cuore.', 5, 59, 14),
(36, 'Questa bambola mi ha riportato all\'infanzia. È così tenera e dolce, proprio come le bambole che avevo da piccola. I vestiti sono intercambiabili e la bambola può assumere diverse posizioni. È un oggetto che mi fa sorridere ogni volta che la guardo.', 5, 59, 11),
(37, 'Ho iniziato a collezionare queste bambole all\'uncinetto e non riesco più a farne a meno. Ogni bambola è diversa dall\'altra, con un\'espressione unica e un abbigliamento personalizzato. Sono diventate dei veri e propri pezzi da collezione che custodisco gelosamente.', 4, 59, 14),
(38, ' Questo anello è un\'opera d\'arte! Il fiore vero sembra appena colto e i colori sono vivaci e luminosi. Ogni volta che lo guardo, mi sento come se avessi un piccolo giardino fiorito sul mio dito. È un gioiello delicato e romantico,', 5, 16, 3),
(39, 'Ho regalato questo anello alla mia fidanzata per il nostro anniversario e ne è rimasta incantata. È un regalo unico e personalizzabile, che ha un significato speciale. Il fiore vero è stato conservato alla perfezione e sembra ancora fresco. È un gioiello che conserverà per sempre.', 5, 16, 17),
(40, 'Cercavo un anello che mi rappresentasse e l\'ho trovato! Ho scelto un fiore che ha un significato speciale per me e il risultato è stato sorprendente. L\'anello è delicato e femminile, ma allo stesso tempo originale e particolare. Lo adoro!', 5, 16, 11),
(41, 'Oltre ad essere bellissimo, questo anello è anche eco-sostenibile. Il fiore viene stabilizzato con tecniche naturali e non vengono utilizzati prodotti chimici. È un modo originale per indossare la natura e rispettare l\'ambiente.', 5, 16, 2),
(42, 'Ero entusiasta di regalare questo aereo di legno al mio bambino, ma la delusione è stata grande. Il legno sembrava di buona qualità, ma l\'aereo si è rivelato molto più fragile di quanto pensassi. Dopo pochi lanci, si è rotto un\'ala. Inoltre, la distanza di volo è molto limitata, anche per un giocattolo di queste dimensioni.\r\n', 3, 60, 3),
(43, 'L\'idea di un aereo di legno mi affascinava, ma la realtà è stata diversa. L\'aereo è difficile da far volare in modo rettilineo, tende a planare e a schiantarsi al suolo. Inoltre, il peso non è distribuito in modo uniforme, rendendo difficile il lancio.', 2, 60, 8),
(44, 'Esteticamente l\'aereo è carino, ma la funzionalità lascia molto a desiderare. Le ali sono troppo piccole e non offrono sufficiente portanza. Inoltre, manca un meccanismo per far ruotare le eliche, che avrebbe reso il giocattolo più realistico e divertente.', 3, 60, 11),
(45, 'Ho acquistato questo aereo come regalo di compleanno, ma sono costretta a cambiarlo. L\'aereo è arrivato danneggiato, con una delle eliche piegata. Inoltre, il legno presentava delle scheggiature. Un prodotto di scarsa qualità che non consiglio.', 1, 60, 2),
(46, ' Indossare questo kimono di seta è come avvolgersi in una nuvola. Il tessuto è incredibilmente morbido e la vestibilità è perfetta. Tuttavia, il prezzo è piuttosto elevato e mi aspettavo una qualità ancora migliore. Inoltre, dopo qualche lavaggio,', 4, 25, 12),
(47, 'Questo kimono di seta è molto versatile e può essere indossato sia come accappatoio che come capospalla leggero. Il tessuto è di buona qualità e la vestibilità è confortevole. Tuttavia, le cuciture interne non sono finite con la stessa cura del resto del capo, e ho trovato qualche filo sfilacciato.', 3, 25, 14),
(48, 'Sono rimasta colpita dalla bellezza di questo kimono di seta. Il disegno è delicato e i colori sono tenui. Purtroppo, la taglia è risultata un po\' più piccola del previsto, costringendomi a indossarlo leggermente aperto. Inoltre, il kimono si stropiccia facilmente e richiede una stiratura accurata.', 4, 25, 15),
(49, 'Questo kimono di seta è indubbiamente un capo elegante e raffinato. Il tessuto è morbido e scivola sulla pelle, regalando una sensazione di comfort. Tuttavia, ho notato che il colore tende a sbiadire leggermente dopo qualche lavaggio, anche seguendo le istruzioni riportate sull\'etichetta. Inoltre, la cintura in dotazione è un po\' troppo corta per le taglie più grandi.', 4, 25, 16),
(50, 'Cercavo una fionda che mi permettesse di raggiungere bersagli lontani con precisione e questa fionda ha superato ogni mia aspettativa. La lavorazione artigianale si nota nei dettagli, dalla forma del manico alla scelta del cuoio. È uno strumento affidabile e duraturo.', 5, 62, 15),
(51, 'Oltre a essere un\'ottima fionda, questo oggetto è un vero e proprio pezzo da collezione. Il design è originale e la personalizzazione è stata curata nei minimi dettagli. È un oggetto che trasmette passione e maestria artigianale.', 5, 62, 8),
(52, 'La fionda è arrivata rotta! resa subito!!', 1, 62, 11),
(53, 'Ricordo con nostalgia le fionde di quando ero bambino, ma questa è tutta un\'altra storia. La combinazione tra tradizione e innovazione è perfetta. È leggera, maneggevole e potente al punto giusto. Un gioiello per gli appassionati di tiro con la fionda.', 5, 62, 12),
(54, ' Ho acquistato questo costume da bagno e sono rimasto molto soddisfatto. Il tessuto è di ottima qualità, morbido e resistente al cloro. La vestibilità è perfetta, né troppo stretta né troppo larga. Il design è semplice ma efficace, ideale per qualsiasi occasione.', 5, 30, 3),
(55, 'Questo costume da bagno ha superato le mie aspettative. Il taglio è moderno e valorizza la figura. Il tessuto è molto confortevole e asciuga rapidamente. Ho indossato questo costume durante le mie vacanze e mi sono sentito a mio agio in ogni momento.', 5, 30, 17),
(56, 'Ho acquistato questo costume da bagno basandomi sulle recensioni positive, ma mi sono dovuto ricredere. Il tessuto è di scarsa qualità, si è scolorito dopo il primo lavaggio e si è formato qualche buco. La taglia è risultata più piccola rispetto a quanto indicato. Sconsiglio vivamente questo prodotto.', 1, 30, 11),
(57, 'Il costume da bagno è comodo, ma il design è davvero banale. Ho visto modelli molto più originali e accattivanti. Inoltre, la cucitura laterale si è aperta dopo pochi utilizzi. Non è un prodotto che riacquisterei.', 3, 30, 16),
(58, 'Queste scarpe sono semplicemente perfette! Il tacco è vertiginoso ma sorprendentemente comodo, ho potuto ballarci tutta la notte senza alcun problema. Il design è elegante e raffinato, perfetto per ogni occasione speciale. Sono diventate le mie scarpe preferite!', 5, 68, 16),
(59, 'Ero un po\' scettica sulla comodità di queste scarpe, ma sono rimasta piacevolmente sorpresa. Il tacco è ben bilanciato e il plantare è imbottito, permettendomi di indossarle per ore senza sentire alcun fastidio. Il colore è versatile e si abbina a tutto, dal jeans al vestito da sera.', 4, 68, 8),
(60, 'Esteticamente queste scarpe sono bellissime, ma la comodità lascia molto a desiderare. Il tacco è troppo alto e dopo poche ore i miei piedi erano doloranti. Inoltre, il materiale non è dei migliori e si è graffiato facilmente.', 2, 68, 11),
(61, 'Ho acquistato queste scarpe sperando di poterle indossare ogni giorno, ma mi sono dovuta ricredere. La taglia è risultata un po\' piccola e il piede scivola all\'interno della scarpa. Inoltre, il colore ha iniziato a scolorire dopo pochi utilizzi.', 2, 68, 2),
(62, 'Questa camicia in canapa è stata una piacevole sorpresa! Il tessuto è fresco e leggero, perfetto per le giornate calde. La vestibilità è comoda e il taglio è moderno. Apprezzo molto l\'impegno per la sostenibilità e il fatto che sia un prodotto naturale. L\'ho indossata sia per il lavoro che nel tempo libero e mi sento a mio agio. Un acquisto che consiglio a tutti coloro che cercano un\'alternativa ecologica al cotone', 4, 33, 3),
(63, 'La camicia in canapa ha un fascino rustico che mi piace molto. Il tessuto è più ruvido rispetto al cotone, ma si ammorbidisce con i lavaggi. La vestibilità è un po\' ampia, ma conferisce un look casual e rilassato. L\'unico neo è che tende a stropicciarsi facilmente, ma è un aspetto caratteristico della canapa. Nel complesso, un buon prodotto per chi cerca un capo naturale e resistente.', 3, 33, 8),
(64, 'Ero un po\' scettico sull\'aspetto di una camicia in canapa, ma questa mi ha davvero convinto. Il colore è neutro e si abbina a tutto, e il tessuto è di ottima qualità. La vestibilità è perfetta e la camicia è molto versatile. La indosso sia con jeans per un look casual, sia con pantaloni chino per un outfit più elegante. Un acquisto di cui sono soddisfatto.', 4, 33, 11),
(65, 'Purtroppo questa camicia non ha soddisfatto le mie aspettative. Il tessuto è troppo ruvido e mi dà una sensazione di fastidio sulla pelle. Inoltre, la taglia è risultata più piccola del previsto e la camicia è molto corta. Il colore è sbiadito dopo pochi lavaggi. Non la consiglio a chi cerca una camicia confortevole e duratura.', 2, 33, 2),
(66, 'Ho acquistato questo poncho per averlo sempre con me in borsa durante i viaggi. È leggero, occupa pochissimo spazio e mi ha salvata da qualche acquazzone improvviso. La trasparenza permette di vedere bene dove si sta andando, ma il materiale è un po\' rumoroso quando si muove. Inoltre, dopo qualche utilizzo ho notato qualche piccola imperfezione.', 3, 45, 3),
(67, ' Il concetto di poncho trasparente è geniale, ma questo modello lascia un po\' a desiderare. La taglia è unica e su di me risulta un po\' abbondante, soprattutto nelle maniche. Inoltre, il cappuccio tende a scivolare un po\' indietro.', 3, 45, 8),
(68, 'Ho usato questo poncho durante un festival all\'aperto e mi ha salvata da un diluvio. È leggero, pratico e si può piegare facilmente. La trasparenza permette di vedere lo spettacolo senza problemi, anche se il materiale è un po\' ruvido al tatto.', 4, 45, 16),
(69, 'Ho acquistato questo poncho con l\'idea di utilizzarlo come capospalla alternativo, ma sono rimasta molto delusa. Il materiale è di scarsa qualità, sembra quasi plastica, e il poncho tende ad attaccarsi ai capelli. Inoltre, la taglia è troppo piccola e non copre completamente.', 2, 45, 14),
(70, 'Questo abito in lino è semplicemente perfetto per l\'estate! Il tessuto è così leggero e fresco che sembra di indossare una nuvola. La vestibilità è comoda e morbida, e il taglio valorizza la figura. Mi sento a mio agio e bellissima allo stesso tempo', 5, 46, 17),
(71, 'Cercavo un abito versatile per le mie vacanze e ho trovato questo gioiello. È perfetto per una passeggiata in spiaggia, una cena al ristorante o anche per un aperitivo in città. Il lino è un materiale nobile che dona un tocco di eleganza a qualsiasi outfit.', 5, 46, 3),
(72, 'Ho acquistato questo abito in lino e non me ne separo più. È un capo che non passa mai di moda, perfetto per ogni occasione. La qualità del tessuto è eccellente e le cuciture sono impeccabili. È un investimento che dura nel tempo.', 5, 46, 8),
(73, 'Ho scelto il modello colorato e sono estasiata! Il colore è vibrante e illumina il mio viso. L\'abito è comodo e fresco, ideale per le giornate calde. È un pezzo unico che mi fa sentire speciale.', 5, 46, 12),
(74, 'All\'inizio questi sandali sembravano promettenti, ma dopo averli indossati per qualche ora ho iniziato ad avvertire un fastidio al tallone. Il plantare non è sufficientemente imbottito e il cinturino si è rivelato troppo stretto. Esteticamente sono carini, ma la comodità lascia molto a desiderare.\r\n', 2, 71, 3),
(75, 'Ho acquistato questi sandali attirata dal prezzo, ma mi sono subito pentita. Il materiale sembra economico e si è rovinato dopo poche uscite. La suola si è consumata in fretta e uno dei cinturini si è rotto. Non li consiglio a chi cerca un prodotto duraturo.', 2, 71, 16),
(76, 'Ho seguito attentamente la tabella delle taglie, ma i sandali sono risultati troppo grandi. Il piede scivola all\'interno e il cinturino non offre un sostegno adeguato. Inoltre, il design è più adatto a un piede più sottile del mio.\r\n', 3, 71, 12),
(77, 'Dalle foto sembravano molto più eleganti e raffinati. Dal vivo, invece, i materiali sono di scarsa qualità e il colore è più spento di quanto non sembrasse online. La suola è piatta e poco ammortizzata, rendendoli scomodi per lunghe passeggiate.', 2, 71, 2),
(78, ' Ho sempre amato lo stile vintage e questa salopette lo cattura alla perfezione. Il tessuto è morbido e leggero, perfetto per le giornate calde. L\'ho abbinata a una semplice canottiera bianca e delle sneakers per un look casual e chic. Mi sento a mio agio e alla moda allo stesso tempo!', 4, 42, 3),
(79, 'Questa salopette è diventata il mio capo preferito del guardaroba. La posso indossare sia con una t-shirt per un look casual, sia con una camicia elegante per un\'occasione speciale. La vita alta slancia la figura e le tasche laterali sono super pratiche. È un capo davvero versatile e confortevole.', 5, 42, 8),
(80, 'Ero alla ricerca di un capo che mi facesse sentire unica e ho trovato questa salopette. Il design è originale e i dettagli la rendono speciale. Il tessuto è di ottima qualità e la vestibilità è perfetta. L\'ho indossata a un festival e ho ricevuto tantissimi complimenti.', 4, 42, 11),
(81, 'Questa salopette è la combinazione perfetta di comfort e stile. Il tessuto è morbido e fresco, ideale per l\'estate. La vestibilità è rilassata ma allo stesso tempo valorizza la figura. L\'ho indossata durante un viaggio on the road e mi ha accompagnata in tutte le mie avventure, sempre comoda e alla moda.', 4, 42, 17),
(82, 'Ho speso un po\' di più per questi sandali, ma ne è valsa la pena. Sono un vero e proprio investimento per la salute dei miei piedi. Il supporto plantare è eccezionale e la traspirabilità del materiale evita la formazione di cattivi odori.', 5, 74, 3),
(83, 'Questi sandali sono una rivelazione! Il plantare è così comodo che sembra di camminare sulle nuvole. Li ho indossati tutto il giorno durante una vacanza e i miei piedi non hanno mai sofferto. Perfetti per l\'estate, sia in città che al mare.', 4, 74, 14),
(84, 'Non pensavo di poter trovare dei sandali così versatili. Li indosso con tutto e mi sento sempre a mio agio. Il cinturino è regolabile e si adatta perfettamente al piede. Inoltre, sono molto facili da pulire.', 5, 74, 11),
(85, 'Cercavo dei sandali che unissero stile e comfort e li ho finalmente trovati! Il design è moderno e si adatta a qualsiasi outfit, dai jeans corti ai pantaloncini. La qualità dei materiali è ottima e si vede che dureranno a lungo.', 4, 74, 17),
(86, ' Questa cuccia è carina esteticamente e sembra abbastanza comoda per il mio gatto. Il materiale è morbido e caldo, ideale per le giornate più fredde. Tuttavia, dopo qualche lavaggio il colore ha iniziato a sbiadire un po\'. Inoltre, la forma non è delle più pratiche per essere spostata. Nel complesso,', 4, 78, 3),
(87, 'Il mio gatto ha apprezzato subito questa cuccia, soprattutto il cuscino interno. La taglia è perfetta per lui. Purtroppo, la base è un po\' instabile e tende a muoversi quando il gatto si agita. Inoltre, il materiale esterno si sporca facilmente e richiede una pulizia frequente.', 3, 78, 12),
(88, 'Ho scelto questa cuccia per il suo design moderno e ho pensato che al mio gatto sarebbe piaciuta. In effetti, la usa spesso, ma ho notato che il materiale non è molto resistente agli artigli. Dopo poco tempo sono comparsi dei piccoli strappi. Inoltre, il cuscino interno si sforma facilmente.', 3, 78, 15),
(89, 'Questa cuccia è funzionale e il mio gatto ci si riposa volentieri. La taglia è giusta e il materiale è abbastanza morbido. Tuttavia, mi aspettavo una qualità migliore considerando il prezzo. Il cuscino interno non è molto imbottito e la cucitura è un po\' grossolana.', 3, 78, 2),
(90, 'Il mio gatto ha adottato questo tiragraffi come sua seconda casa! È alto, robusto e ha diverse zone per grattare, giocare e riposare. La cuccia in cima è morbida e accogliente, e lui ci si rifugia spesso per fare un pisolino. La base è antiscivolo, quindi è molto stabile. Lo consiglio vivamente a tutti i proprietari di gatti!\"', 5, 81, 17),
(91, 'Questo tiragraffi è carino e funzionale, ma non è perfetto. Il mio gatto lo usa volentieri per affilare le unghie, ma la cuccia in cima è un po\' piccola per lui. Inoltre, il sisal si è sfilacciato più velocemente del previsto. Nel complesso è un buon prodotto, ma mi aspettavo di più dalla durata.', 3, 81, 8),
(92, 'Ho acquistato questo tiragraffi sperando che il mio gatto lo apprezzasse, ma è stato un fiasco totale. È arrivato danneggiato e la base è instabile. Il mio gatto ha paura a salirci sopra e preferisce continuare a graffiare i mobili. Ho richiesto il reso', 2, 81, 16),
(93, 'La cuccia è morbida e accogliente, e il mio micio ci trascorre molto tempo. La base è pesante e solida, quindi il tiragraffi non si muove nemmeno quando il gatto si arrampica con energia. L\'unico piccolo neo è che il sisal si è un po\' sfilacciato dopo qualche mese, ma nel complesso sono molto soddisfatta.', 4, 81, 2),
(94, 'Da quando ho appeso questa casetta per uccelli nel mio giardino, non ho fatto altro che osservarla. Gli uccellini ci hanno messo pochissimo a scoprirla e ora la usano come rifugio e nido. È un piacere vederli svolazzare intorno e ascoltare i loro canti. Un acquisto che consiglio a tutti gli amanti della natura!\r\n', 5, 85, 3),
(95, 'Questa casetta per uccelli è un vero gioiello per il mio giardino. Il design è elegante e si adatta perfettamente allo stile della mia casa. Ma non è solo bella da vedere, è anche molto funzionale. Gli uccelli l\'hanno subito adottata e la usano regolarmente. Un\'ottima combinazione di estetica e praticità.', 5, 85, 8),
(96, 'Ho deciso di acquistare questa casetta per uccelli per offrire un rifugio sicuro agli uccellini del mio quartiere. Sono rimasta piacevolmente sorpresa dalla qualità dei materiali e dalla cura dei dettagli. Gli uccellini sembrano apprezzare molto la nuova abitazione e la frequentano assiduamente.', 5, 85, 14),
(97, 'Ho regalato questa casetta per uccelli a mio nonno, appassionato di giardinaggio. È stato felicissimo! Ha trascorso ore ad osservare gli uccellini che andavano e venivano. È un regalo che ha unito la mia famiglia e ha portato un tocco di magia nel suo giardino.', 5, 85, 2),
(98, 'Ho acquistato questo set di tovagliette in cotone e sono molto contento. Sono di ottima qualità, resistenti e facili da pulire. Il design minimalista si abbina perfettamente alla mia cucina moderna. Consigliate.', 4, 3, 12),
(99, 'Targa in legno elegante e funzionale. Trasmette in modo carino le regole di casa. Consigliata.', 4, 4, 11),
(100, 'Ho acquistato questo portachiavi a muro ed è davvero un ottimo acquisto. È ben realizzato, con un design minimal che si abbina a qualsiasi ambiente. Molto utile per tenere in ordine chiavi e accessori all\'ingresso.', 4, 6, 17),
(101, 'Ho acquistato questa coperta con stampa hip hop e mi piace molto. È realizzata in materiale morbido e di buona qualità. Il design è molto cool e divertente, perfetto per aggiungere un tocco di stile urban al mio salotto. La consiglio a chi cerca una coperta originale e di tendenza.', 3, 7, 2),
(102, 'Questa mappa del mondo in legno è davvero bella e di ottima fattura. Il design è elegante e minimal, perfetto per abbellire la parete del mio ufficio. La lavorazione è curata nei dettagli e il legno utilizzato sembra di buona qualità e durevole. La consiglio a chi cerca un accessorio d\'arredo unico e di tendenza.', 4, 10, 16),
(103, 'Ho acquistato questa statua 3D di un carlino ed è davvero carina e ben realizzata. La scultura cattura perfettamente le caratteristiche del mio amato cane di razza. È realizzata con materiali di qualità e i dettagli sono curati. La statua dona personalità e simpatia all\'ambiente in cui l\'ho posizionata. La consiglio a chi ama i carlini e cerca un oggetto d\'arredo divertente e originale.', 3, 11, 11),
(104, 'Queste corna di pecora sono davvero particolari e si integrano perfettamente nel mio arredamento in stile rustico. Sono di buona qualità, ben conservate e con un aspetto autentico. Aggiungono un tocco di carattere e personalità alla parete in cui le ho appese. Le consiglio a chi cerca un accessorio d\'arredo unico e di tendenza per la propria casa.', 4, 12, 2),
(105, 'Ho acquistato questa collana artigianale e sono rimasta molto soddisfatta. È realizzata con cura e materiali di qualità. Il design è elegante e particolare, conferisce personalità al mio look. È un pezzo unico e originale che attira sempre complimenti. La consiglio a chi cerca accessori di gioielleria artigianali e di tendenza.', 4, 15, 8),
(106, 'Questo anello artigianale è davvero una bella scoperta. È realizzato con grande cura e maestria, con materiali di ottima qualità. Il design è raffinato ed elegante, valorizza la mia mano in modo sofisticato. È un pezzo unico nel suo genere, che attira sempre commenti positivi. Lo consiglio vivamente a chi cerca gioielli artigianali di tendenza.', 3, 17, 15),
(107, 'Ho acquistato questa collana artigianale e sono rimasta molto soddisfatta. È realizzata con cura e materiali di qualità. Il design è elegante e particolare, conferisce personalità al mio look. È un pezzo unico e originale che attira sempre complimenti. La consiglio a chi cerca accessori di gioielleria artigianali e di tendenza.', 4, 18, 3),
(108, 'Questi orecchini artigianali sono davvero splendidi. Sono realizzati con cura e materiali pregiati, dandomi un tocco di eleganza e personalità. Il design è particolare e di tendenza, perfetto per impreziosire il mio look. Sono molto soddisfatta dell\'acquisto e li consiglio a chi cerca gioielli unici e di qualità.', 5, 20, 2),
(109, 'Leggerezza e comfort per tutto il giorno.', 2, 21, 3),
(110, 'Perfetti per un regalo originale.', 3, 22, 15),
(111, 'Ho acquistato questa collana artigianale e sono rimasta molto soddisfatta. È realizzata con cura e materiali di qualità. Il design è elegante e particolare, conferisce personalità al mio look. È un pezzo unico e originale che attira sempre complimenti. La consiglio a chi cerca accessori di gioielleria artigianali e di tendenza.', 5, 23, 14),
(112, 'Giacca sportiva versatile con cappuccio regolabile, adatta sia per l\'attività fisica che per il tempo libero.', 4, 26, 8),
(113, 'La ruana è realizzata in un morbido misto lana e cashmere, che garantisce un elevato comfort termico. La vestibilità è ampia e avvolgente, perfetta per rilassarsi nelle giornate fredde. Il punto maglia è fitto e resistente, assicurando una lunga durata nel tempo.', 3, 27, 2),
(114, 'I pantaloni in lino presentano una vestibilità comoda e rilassata, ideale per un look casual e sofisticato. Il tessuto naturale del lino garantisce una traspirabilità ottimale, rendendoli perfetti per le giornate calde. La vita è regolabile con coulisse elastica, assicurando una calzata personalizzata.', 4, 28, 8),
(115, 'Ho acquistato questa tshirt come regalo per mio marito e ne è rimasto entusiasta. Il ricamo personalizzato con le nostre iniziali rende questo capo ancora più speciale.', 2, 29, 9),
(116, 'Questa camicia in lino è un vero e proprio piacere da indossare. Il tessuto naturale è fresco e traspirante, perfetto per le giornate calde.', 3, 31, 17),
(117, 'I pantaloni in lino presentano una vestibilità comoda e rilassata, ideale per un look casual e sofisticato. Il tessuto naturale del lino garantisce una traspirabilità ottimale, rendendoli perfetti per le giornate calde. La vita è regolabile con coulisse elastica, assicurando una calzata personalizzata.', 4, 32, 12),
(118, 'I pantaloni in lino presentano una vestibilità comoda e rilassata, ideale per un look casual e sofisticato. Il tessuto naturale del lino garantisce una traspirabilità ottimale, rendendoli perfetti per le giornate calde. La vita è regolabile con coulisse elastica, assicurando una calzata personalizzata.', 2, 34, 14),
(119, 'Ho acquistato questo gilet per completare il mio abito da cerimonia. Sono rimasto molto soddisfatto della qualità del tessuto e della fattura. Il colore è un bellissimo blu navy che si abbina perfettamente con la mia camicia bianca. La vestibilità è perfetta e il gilet mi dona un aspetto elegante e raffinato.', 5, 35, 14),
(120, 'Questa camicia in lino è un vero e proprio piacere da indossare. Il tessuto naturale è fresco e traspirante, perfetto per le giornate calde.', 3, 36, 8),
(121, 'Ho acquistato questa camicia in cotone bianco e sono entusiasta! È perfetta per l\'ufficio: elegante, comoda e facile da abbinare con tutto. Il tessuto è di ottima qualità e resiste a molti lavaggi senza perdere forma o colore. La vestibilità è regolare e la lunghezza è ideale per essere indossata sia dentro che fuori dai pantaloni.', 5, 37, 11),
(122, 'Ho acquistato questo maglione fatto a mano e sono rimasta incantata! La lavorazione a maglia è impeccabile, i dettagli sono curati nei minimi particolari e il filato è morbidissimo.  peccato che si è rotto al 2 utilizzo.', 2, 38, 9),
(123, 'Questa camicia ha attirato la mia attenzione per i dettagli unici: i bottoni in madreperla e i ricami sul colletto. Il tessuto è di buona qualità e la vestibilità è perfetta. L\'ho indossata con una gonna a ruota e un paio di sandali per un look romantico e femminile. È un capo che mi fa sentire speciale.', 4, 39, 3),
(124, 'Cercando un capo comodo per lo yoga, ho trovato questa tunica in jersey elasticizzato. Adoro il fatto che sia traspirante e mi permetta di muovermi liberamente durante gli esercizi. Il cappuccio è utile per le posizioni a testa in giù. Un capo versatile, perfetto anche per uscire a fare una passeggiata', 4, 40, 12),
(125, 'Ho acquistato questa blusa in cotone con ricami a mano e ne sono innamorata! I colori sono vivaci e il tessuto è morbidissimo. L\'ho indossata con dei jeans strappati e dei sandali per un look boho chic perfetto per l\'estate. È un capo unico e originale, che riceve sempre tanti complimenti. peccato che ha un brutto odore.', 3, 41, 11),
(126, 'Questo kimono in velluto con ricami è un vero e proprio capolavoro. L\'ho indossato con dei leggings e dei sandali per un look boho-chic. Il tessuto è caldo e avvolgente, perfetto per le mezze stagioni.', 3, 43, 11),
(127, 'Il prodotto non corrisponde alla descrizione!', 1, 44, 9),
(128, 'Gilet caldo e morbido, le taglie sono pero un più grandi di quanto indicato.', 3, 47, 11),
(129, 'Adoro questa maglietta, qualità top e tempi di consegna velocissimi!', 5, 48, 17),
(130, 'set completo, mio figlio lo adora!', 4, 52, 14),
(131, 'Buon prodotto ma è arrivato macchiato.', 2, 53, 17),
(132, 'La mia bambina lo adora, lo vuole mettere tutti i giorni.', 5, 54, 12),
(133, 'Giocattolo fatti a mano di qualità eccellente, non solo mio figlio lo adora, ma anche mio marito! ', 4, 58, 2),
(134, 'Leggins come da descrizione, comodi e corrispondo alle taglie.', 4, 55, 9),
(135, 'Il body è molto carino, ma non mi convincono per niente le cuciture. vi terrò aggiornati.', 3, 56, 11),
(136, 'Questo coniglietto fatto a mano è il giocattolo più carino che abbia mai visto.', 5, 57, 3),
(149, 'Giocattolo veramente bello, mio figlio ci giocava tutti i giorni, ahimè si è rotto.', 3, 61, 15),
(150, 'Trenino in legno come quelli di una volta. Delle volte la semplicità è la cosa migliore.', 4, 63, 9),
(151, 'Vorrei ringraziare chia ha prodotto questi giocattoli, i miei figli sono stati felicissimi di riceverli a natale. buon anno a tutti.', 5, 64, 2),
(152, 'Scacchiera ben fatta, peccato per qualche dettaglio che poteva essere migliorato.', 4, 65, 17),
(153, 'Confesso, l\'ho comprato per mia figlia ma ci giochiamo più io e mio marito che lei. bellissimo.', 4, 66, 2),
(154, 'Il cinturino si è rotto causandomi una storta. mai più.', 1, 67, 3),
(155, 'Il prodotto non corrispondeva alla descrizione, ho proceduto con il reso.', 1, 69, 8),
(156, 'Pantofole da casa comodissime e coloratissime, le consiglio!', 4, 70, 9),
(157, 'La qualità non è eccellente, fanno sudare molto il piede.', 3, 73, 11),
(158, 'Pantofole da casa comodissime e coloratissime, le consiglio!', 4, 72, 11),
(159, 'Sandali ottimi per tutte le occasioni, li ho usati sia al mare che in montagna. veramente soddisfatto.', 5, 75, 2),
(160, 'All\'inizio erano un pò scomode, ma utilizzandole hanno preso la forma del piede e ora non le uso veramente tutti i giorni.', 4, 76, 9),
(161, 'Preso per fare un regalo a mia cugina che ha un cane. mi è sembrata abbastanza contenta.', 3, 77, 11),
(162, 'Gabbia davvero graziosa, sta benissimo nel mio salotto con mobili antichi. Per di pili mio merlo indiano sembra gradire!', 5, 79, 3),
(163, 'La targhetta è arrivata con un pò di ritardo, comunque ottimi materiali.', 4, 80, 2),
(164, 'il collare è di ottima qualità, unica pecca il cinturino è un pò duro da regolare.', 4, 82, 11),
(165, 'Appena ho messo la cuccia in giardina Tobia si è fiondato dentro. sto pensando di comprarne anche un altra.', 4, 83, 3),
(166, 'La tracolla della borsa è troppo sottile, dopo un pò che la porti fa male alla spalla.', 3, 84, 11),
(167, 'Volevo offrire un pò di riparo dal sole al mio gatto, ma ancora non l\'ho visto utilizzarla. ', 3, 86, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `token`
--

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `token`
--

INSERT INTO `token` (`id`, `created_date`, `token`, `user_id`) VALUES
(1, '2024-07-26 12:19:06.000000', '24e54ba0-a095-4f28-98a6-6d50e1dc73c8', 9),
(2, '2024-09-02 00:33:10.000000', 'c8f82a20-a370-4b42-bbbf-642d660c588b', 9);

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `indirizzo` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `carrello` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `user`
--

INSERT INTO `user` (`id`, `cognome`, `email`, `indirizzo`, `nome`, `password`, `role`, `telefono`, `carrello`) VALUES
(2, 'Verdi', 'carlo@mail.it', 'via roma 5, Napoli NA', 'Carlo', 'carlo', 'utente', '+39 3568776544', NULL),
(3, 'Bianchi', 'bruno@mail.it', 'via roma 12, Milano MI', 'Bruno', 'bruno', 'utente', '+39 3456778977', NULL),
(8, 'Celesti', 'anna@mail.it', 'via roma 45, Palermo PA', 'Anna', 'anna', 'utente', '+39 3478997655', NULL),
(9, 'Rossi', 'gigi@mail.it', 'via roma 3, Cagliari CA', 'Gigi', 'gigi', 'ADMIN', '+39 3453445722', NULL),
(11, 'Maroni', 'lucia@mail.it', 'via roma 45, Torino TO', 'Lucia', 'lucia', 'utente', '+39 3457657899', NULL),
(12, 'Castelli', 'pippo@mail.it', 'via roma 67, Genova, GE', 'Pippo', 'Pippo', 'utente', '+39 347669811', NULL),
(14, 'Puddu', 'jasmine@mail.it', 'via Roma 9, Pisa, PI', 'Jasmine', 'jasmine', 'utente', '+39 3572239755', NULL),
(15, 'Della Valle', 'fioruccia@mail.it', 'via Roma 7, Sassari, SS', 'Fioruccia', 'fioruccia', 'utente', '+39 3780447811', NULL),
(16, 'Lasagna', 'daisy@mail.it', 'via roma 11, Venezia, VE', 'Daisy', 'daisy', 'utente', '+39 45682045606', NULL),
(17, 'Pitt', 'brando@mail.it', 'via Roma 77, Rimini, Ri', 'Brando', 'brando', 'utente', '+39 3456882402', NULL);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKinivj2k1370kw224lavkm3rqm` (`product_id`),
  ADD KEY `FKosrffjv6k8mr7ipsmmq7o7u1e` (`user_id`),
  ADD KEY `FK974wp3k7qxex8y7u3h2asdhbk` (`ordine_id`);

--
-- Indici per le tabelle `ordine`
--
ALTER TABLE `ordine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKelwstw0ilc4tb37muvfo1rux` (`user_id`);

--
-- Indici per le tabelle `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`);

--
-- Indici per le tabelle `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKiyof1sindb9qiqr9o8npj8klt` (`product_id`),
  ADD KEY `FKiyf57dy48lyiftdrf7y87rnxi` (`user_id`);

--
-- Indici per le tabelle `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT per la tabella `ordine`
--
ALTER TABLE `ordine`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT per la tabella `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT per la tabella `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT per la tabella `token`
--
ALTER TABLE `token`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK974wp3k7qxex8y7u3h2asdhbk` FOREIGN KEY (`ordine_id`) REFERENCES `ordine` (`id`),
  ADD CONSTRAINT `FKinivj2k1370kw224lavkm3rqm` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKosrffjv6k8mr7ipsmmq7o7u1e` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Limiti per la tabella `ordine`
--
ALTER TABLE `ordine`
  ADD CONSTRAINT `FKelwstw0ilc4tb37muvfo1rux` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Limiti per la tabella `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Limiti per la tabella `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FKiyf57dy48lyiftdrf7y87rnxi` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKiyof1sindb9qiqr9o8npj8klt` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
