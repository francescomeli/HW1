-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 24, 2021 alle 11:11
-- Versione del server: 10.4.14-MariaDB
-- Versione PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sito_piscine`
--
CREATE DATABASE IF NOT EXISTS `sito_piscine` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sito_piscine`;

-- --------------------------------------------------------

--
-- Struttura della tabella `corso`
--

CREATE TABLE `corso` (
  `codice_c` int(11) NOT NULL,
  `orario` time NOT NULL,
  `nome_c` varchar(255) DEFAULT NULL,
  `costo` int(11) DEFAULT NULL,
  `istruttore` varchar(255) DEFAULT NULL,
  `immagine` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `corso`
--

INSERT INTO `corso` (`codice_c`, `orario`, `nome_c`, `costo`, `istruttore`, `immagine`, `descrizione`) VALUES
(1, '10:00:00', 'Pallanuoto', 600, 'Floriana Dursi', 'https://gdsit.cdn-immedia.net/2019/10/Telimar_Rari_Nantes.jpeg', 'La pallanuoto è uno sport di squadra acquatico. Una partita di pallanuoto vede affrontarsi due squadre, ognuna rappresentata in campo da sette giocatori.'),
(2, '10:00:00', 'Nuoto Libero', 300, 'Alessio Ventura', 'https://s22643.pcdn.co/it-IT/blog/wp-content/uploads/2020/01/stili-di-nuoto.jpg', 'Il nuoto è un\'ottima forma di esercizio. Il nuoto viene frequentemente usato come esercizio nella riabilitazione a seguito di incidenti o per i disabili.'),
(3, '10:00:00', 'Nuoto Agonistico', 400, 'Giulia Buccheri', 'http://www.aqarivista.it/wordpress/wp-content/uploads/2016/05/partenza-nuoto.jpg', 'Il nuoto agonistico è la continuazione della scuola nuoto che prevede un allenamento più rigido un impegno costante e duraturo.'),
(4, '10:00:00', 'Acquagym', 250, 'Roberto Meli', 'https://www.gardensportingcenter.it/wp-content/uploads/2019/11/TEO_6011-scaled.jpg', 'L’acquagym è, letteralmente, ginnastica in acqua. Questo tipo di attività è celebre per la sua capacità di rassodare e tonificare i muscoli, che lavorano dolcemente sfruttando l’attrito con l’acqua e il galleggiamento.'),
(5, '10:00:00', 'Nuoto sincronizzato', 350, 'Moira Vaccalluzzo', 'https://i2.wp.com/www.ternistadium.eu/it/wp-content/uploads/2019/10/sincronizzazione.jpg?fit=1200%2C745&ssl=1', 'Il nuoto sincronizzato è uno sport acquatico, inquadrato come disciplina tecnico-combinatoria, che unisce nuoto, elementi ginnici e danza, in cui gli atleti eseguono esercizi coreografici in acqua in sincronia con la musica.'),
(6, '17:00:00', 'Pallanuoto', 600, 'Floriana Dursi', 'https://gdsit.cdn-immedia.net/2019/10/Telimar_Rari_Nantes.jpeg', 'La pallanuoto è uno sport di squadra acquatico. Una partita di pallanuoto vede affrontarsi due squadre, ognuna rappresentata in campo da sette giocatori.'),
(7, '17:00:00', 'Nuoto Libero', 300, 'Alessio Ventura', 'https://s22643.pcdn.co/it-IT/blog/wp-content/uploads/2020/01/stili-di-nuoto.jpg', 'Il nuoto è un\'ottima forma di esercizio. Il nuoto viene frequentemente usato come esercizio nella riabilitazione a seguito di incidenti o per i disabili.'),
(8, '17:00:00', 'Nuoto Agonistico', 400, 'Giulia Buccheri', 'http://www.aqarivista.it/wordpress/wp-content/uploads/2016/05/partenza-nuoto.jpg', 'Il nuoto agonistico è la continuazione della scuola nuoto che prevede un allenamento più rigido un impegno costante e duraturo.'),
(9, '17:00:00', 'Acquagym', 250, 'Roberto Meli', 'https://www.gardensportingcenter.it/wp-content/uploads/2019/11/TEO_6011-scaled.jpg', 'L’acquagym è, letteralmente, ginnastica in acqua. Questo tipo di attività è celebre per la sua capacità di rassodare e tonificare i muscoli, che lavorano dolcemente sfruttando l’attrito con l’acqua e il galleggiamento.'),
(10, '17:00:00', 'Nuoto sincronizzato', 350, 'Moira Vaccalluzzo', 'https://i2.wp.com/www.ternistadium.eu/it/wp-content/uploads/2019/10/sincronizzazione.jpg?fit=1200%2C745&ssl=1', 'Il nuoto sincronizzato è uno sport acquatico, inquadrato come disciplina tecnico-combinatoria, che unisce nuoto, elementi ginnici e danza, in cui gli atleti eseguono esercizi coreografici in acqua in sincronia con la musica.'),
(11, '11:00:00', 'Acqua-Bike', 250, 'Roberto Meli', 'https://www.melarossa.it/wp-content/uploads/2017/06/acquabike-cellulite-benefici-.jpg', 'L’acquabike è uno sport in cui stai immerso nell’acqua fino alla vita e si pedala sulla cyclette a ritmo di musica. Si lavora su una bicicletta in acciaio fissata sul fondo della piscina con delle ventose.'),
(12, '12:00:00', 'Acqua-Walking', 250, 'Roberto Meli', 'https://i.ytimg.com/vi/XBK5x156cKA/maxresdefault.jpg', 'L’attività fonde i piaceri del tapis roulant con quello dell’esercizio in acqua e della musica. La pedana scorrevole con fondo ruvido consente di usufruire di un massaggio plantare.'),
(13, '15:00:00', 'Acqua-Bike', 250, 'Roberto Meli', 'https://www.melarossa.it/wp-content/uploads/2017/06/acquabike-cellulite-benefici-.jpg', 'L’acquabike è uno sport in cui stai immerso nell’acqua fino alla vita e si pedala sulla cyclette a ritmo di musica. Si lavora su una bicicletta in acciaio fissata sul fondo della piscina con delle ventose.'),
(14, '16:00:00', 'Acqua-Walking', 250, 'Roberto Meli', 'https://i.ytimg.com/vi/XBK5x156cKA/maxresdefault.jpg', 'L’attività fonde i piaceri del tapis roulant con quello dell’esercizio in acqua e della musica. La pedana scorrevole con fondo ruvido consente di usufruire di un massaggio plantare.'),
(15, '19:00:00', 'Pallanuoto', 600, 'Floriana Dursi', 'https://gdsit.cdn-immedia.net/2019/10/Telimar_Rari_Nantes.jpeg', 'La pallanuoto è uno sport di squadra acquatico. Una partita di pallanuoto vede affrontarsi due squadre, ognuna rappresentata in campo da sette giocatori.'),
(16, '19:00:00', 'Nuoto Libero', 300, 'Alessio Ventura', 'https://s22643.pcdn.co/it-IT/blog/wp-content/uploads/2020/01/stili-di-nuoto.jpg', 'Il nuoto è un\'ottima forma di esercizio. Il nuoto viene frequentemente usato come esercizio nella riabilitazione a seguito di incidenti o per i disabili.'),
(17, '19:00:00', 'Nuoto Agonistico', 400, 'Giulia Buccheri', 'http://www.aqarivista.it/wordpress/wp-content/uploads/2016/05/partenza-nuoto.jpg', 'Il nuoto agonistico è la continuazione della scuola nuoto che prevede un allenamento più rigido un impegno costante e duraturo.'),
(18, '06:00:00', 'Nuoto sincronizzato', 350, 'Moira Vaccalluzzo', 'https://i2.wp.com/www.ternistadium.eu/it/wp-content/uploads/2019/10/sincronizzazione.jpg?fit=1200%2C745&ssl=1', 'Il nuoto sincronizzato è uno sport acquatico, inquadrato come disciplina tecnico-combinatoria, che unisce nuoto, elementi ginnici e danza, in cui gli atleti eseguono esercizi coreografici in acqua in sincronia con la musica.'),
(19, '19:00:00', 'Acquagym', 250, 'Roberto Meli', 'https://www.gardensportingcenter.it/wp-content/uploads/2019/11/TEO_6011-scaled.jpg', 'L’acquagym è, letteralmente, ginnastica in acqua. Questo tipo di attività è celebre per la sua capacità di rassodare e tonificare i muscoli, che lavorano dolcemente sfruttando l’attrito con l’acqua e il galleggiamento.'),
(20, '21:00:00', 'Pallanuoto', 600, 'Floriana Dursi', 'https://gdsit.cdn-immedia.net/2019/10/Telimar_Rari_Nantes.jpeg', 'La pallanuoto è uno sport di squadra acquatico. Una partita di pallanuoto vede affrontarsi due squadre, ognuna rappresentata in campo da sette giocatori.'),
(21, '08:00:00', 'Nuoto Libero', 300, 'Alessio Ventura', 'https://s22643.pcdn.co/it-IT/blog/wp-content/uploads/2020/01/stili-di-nuoto.jpg', 'Il nuoto è un\'ottima forma di esercizio. Il nuoto viene frequentemente usato come esercizio nella riabilitazione a seguito di incidenti o per i disabili.'),
(22, '08:00:00', 'Nuoto Agonistico', 400, 'Giulia Buccheri', 'http://www.aqarivista.it/wordpress/wp-content/uploads/2016/05/partenza-nuoto.jpg', 'Il nuoto agonistico è la continuazione della scuola nuoto che prevede un allenamento più rigido un impegno costante e duraturo.');

-- --------------------------------------------------------

--
-- Struttura della tabella `offerta`
--

CREATE TABLE `offerta` (
  `corso` int(11) NOT NULL,
  `orario` time NOT NULL,
  `piscina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `offerta`
--

INSERT INTO `offerta` (`corso`, `orario`, `piscina`) VALUES
(1, '10:00:00', 1),
(2, '10:00:00', 3),
(3, '10:00:00', 3),
(4, '10:00:00', 4),
(5, '10:00:00', 2),
(6, '17:00:00', 2),
(7, '17:00:00', 1),
(8, '17:00:00', 5),
(9, '17:00:00', 5),
(10, '17:00:00', 1),
(11, '11:00:00', 2),
(12, '12:00:00', 3),
(13, '15:00:00', 3),
(14, '16:00:00', 4),
(15, '19:00:00', 4),
(16, '19:00:00', 5),
(17, '19:00:00', 1),
(18, '06:00:00', 5),
(19, '19:00:00', 1),
(20, '21:00:00', 3),
(21, '08:00:00', 2),
(22, '08:00:00', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `piscina`
--

CREATE TABLE `piscina` (
  `codice_p` int(11) NOT NULL,
  `corsie_tot` int(11) DEFAULT NULL,
  `nome_p` varchar(255) DEFAULT NULL,
  `immagine` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `piscina`
--

INSERT INTO `piscina` (`codice_p`, `corsie_tot`, `nome_p`, `immagine`, `descrizione`) VALUES
(1, 8, 'Torre del grifo', 'https://www.torredelgrifovillage.com/wp-content/uploads/2017/01/piscina-1.jpg', 'Torre del Grifo Village è un centro polisportivo sito nel comune di Mascalucia.'),
(2, 8, 'Piscina Francesco Scuderi', 'https://assets.centralindex.com/W/48/e74ed5a12584e183f6b91215fce07d64.jpg', 'Qui ha sede la principale società di pallanuoto maschile di Catania.'),
(3, 4, 'Ekipe', 'https://www.area-arch.it/wp-content/uploads/sites/6/2017/02/Ideal-Work-Microtopping-Palestra-Equipe-Piscina.jpg', 'Sede dell\'associazione sportiva Orizzonte Catania, una società di pallanuoto femminile di Catania. Si tratta della più titolata società d\'Europa nella disciplina, situata a S. G. La Punta.'),
(4, 6, 'Muri Antichi', 'https://lirp-cdn.multiscreensite.com/3ccd072e/dms3rep/multi/opt/img_0666-640w.jpg', 'Il centro sportivo polivalente si distingue per la sua capacità di far confluire in un\'unica struttura più attività, alle quali possono iscriversi persone dalle capacità fisiche differenti, situata nel comune di Tremestieri Etneo.'),
(5, 12, 'Piscina di Nesima', 'https://livesicilia.it/wp-content/uploads/2016/10/piscina-Nesima.jpg', 'La piscina comunale di Nesima è un impianto sportivo appartenente al comune di Catania. Si trova al confine tra Catania e Misterbianco, nel quartiere di Nesima.');

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `passw` varchar(255) DEFAULT NULL,
  `playlist` varchar(255) DEFAULT NULL,
  `sport` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `utente`
--

INSERT INTO `utente` (`username`, `email`, `nome`, `cognome`, `data_nascita`, `passw`, `playlist`, `sport`) VALUES
('CiccioM', 'cicciomeli8@hotmail.com', 'Francesco', 'Meli', '2000-06-21', '$2y$10$NdBcK1oEZ5I7T8MU0KHgDeHAhjifMex/GatPqIQmQBG0jhSXOL16q', 'Queen Greatest Hits', 'Golf'),
('Loredana', 'loredana@gmail.com', 'Loredana', 'Puglisi', '1970-06-25', '$2y$10$M4kXz.ooFoLUX5u9ajq5MuInc4AQJclXMk5lXWemC8MJ2Kshdph3W', 'This Is Tiziano Ferro', NULL),
('Roberto', 'roberto@gmail.com', 'Roberto', 'Meli', '1970-07-14', '$2y$10$MnTT.UiL9N2Wv4kTYec1l.ND7DcED0LxgeoZNmX7QMu5HFkccjNRm', NULL, NULL),
('test', 'test@mail.com', 'test', 'test1', '2021-05-20', '$2y$10$kcqHE7bwBmrkI1qgAI29nOE7762tN33V7Gka2i5Tlwo0hGJh5w3IC', 'Hit Rap Italiane', NULL),
('vincenzo', 'vincenzo@gmail.com', 'Vincenzo', 'Micieli', '1999-08-24', '$2y$10$Khg.wHYnf9cNtyEXbS9/.Ore0KRn7Wd6ukP1kkox9lC/IU2s7YWIi', 'MADAME VOCE', 'Padel');

-- --------------------------------------------------------

--
-- Struttura della tabella `valutazione_p`
--

CREATE TABLE `valutazione_p` (
  `utente` varchar(255) NOT NULL,
  `piscina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `valutazione_p`
--

INSERT INTO `valutazione_p` (`utente`, `piscina`) VALUES
('CiccioM', 1),
('CiccioM', 2),
('Loredana', 2),
('Roberto', 1),
('Roberto', 5),
('test', 1),
('vincenzo', 1),
('vincenzo', 4);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `corso`
--
ALTER TABLE `corso`
  ADD PRIMARY KEY (`codice_c`,`orario`);

--
-- Indici per le tabelle `offerta`
--
ALTER TABLE `offerta`
  ADD PRIMARY KEY (`corso`,`orario`,`piscina`),
  ADD KEY `idx_corso` (`corso`),
  ADD KEY `idx_orario` (`orario`),
  ADD KEY `piscina` (`piscina`);

--
-- Indici per le tabelle `piscina`
--
ALTER TABLE `piscina`
  ADD PRIMARY KEY (`codice_p`);

--
-- Indici per le tabelle `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `valutazione_p`
--
ALTER TABLE `valutazione_p`
  ADD PRIMARY KEY (`utente`,`piscina`),
  ADD KEY `idx_utente` (`utente`),
  ADD KEY `idx_piscina` (`piscina`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `offerta`
--
ALTER TABLE `offerta`
  ADD CONSTRAINT `offerta_ibfk_1` FOREIGN KEY (`corso`,`orario`) REFERENCES `corso` (`codice_c`, `orario`),
  ADD CONSTRAINT `offerta_ibfk_2` FOREIGN KEY (`piscina`) REFERENCES `piscina` (`codice_p`);

--
-- Limiti per la tabella `valutazione_p`
--
ALTER TABLE `valutazione_p`
  ADD CONSTRAINT `valutazione_p_ibfk_1` FOREIGN KEY (`utente`) REFERENCES `utente` (`username`),
  ADD CONSTRAINT `valutazione_p_ibfk_2` FOREIGN KEY (`piscina`) REFERENCES `piscina` (`codice_p`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
