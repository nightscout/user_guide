# Enlite

Eine generelle Beschreibung des Enlite Sensors bietet der Hersteller Medtronic an: [Link Enlite Glukosesensor](https://www.medtronic-diabetes.de/minimed-produkte/kontinuierliche-glukosemessung/enlite-glukosesensor). Auch gibt Medtronic eine [Infobroschüre](https://www.medtronic-diabetes.at/sites/austria/medtronic-diabetes.at/files/cgm_broschuere_052012.pdf) zu diesem Thema heraus, die allerdings von 2012 ist und sich daher nur mit dem Enlite Sensor in Verbindung mit der VEO Insulinpumpe beschäftigt.

Aktuell gibt es zwei verschiedene Transmitter von Medtronic, mit denen der Enlite Sensor verbunden werden kann:
1.  
der MiniLink Transmitter, kompatibel mit dem **MiniMed Veo** System und dem Guardian REAL-Time System und
2. 
den Guardian 2 Link Transmitter, der nur mit der **MiniMed 640G** Insulinpumpe kompatibel ist.

Da sich die Wege zum erfolgreichen Nightscout-Betrieb unterscheiden, werden diese im Folgenden getrennt betrachtet.


 
## MiniLink Transmitter
Mit dem MiniLink Transmitter und der Medtronic Veo Insulinpumpe gibt es folgende Möglichkeit, die Daten zur Nightscout Webseite zu übertragen.

### Übersichtsgrafik
![Übersichtsgrafik](../../images/enlite/MedtronicUebersichtklein.jpg)

Danach stehen einem die in den Kapiteln [Die Nightscout Hauptseite](../../nightscout/die_nightscout_website.md) und [Smartwatch Integration](../../smartwatch/smartwatch_integration.md) genannten Möglichkeiten zur Verfügung.

Um das zu realisieren, muss man den MMCommander bauen und mit der entsprechenden Software bespielen. Zusätzlich muss noch auf einem kompatiblen Android Smartphone die Medtronic Uploader App installiert und konfiguriert werden. Beides ist im Kapitel [MMCommander](../enlite/mmcommander.md) beschrieben.

Im Netz findet man auch Hinweise auf eine Lösung für das Iphone (ab dem 4s und IOS 8.2). Diese Lösung, der **RileyLink**, kontaktiert die Pumpe per Funk und stellt dann über Bluetooth eine Verbindung mit dem Iphone her. Dort läuft dann die RileyLink IOS App und transportiert die Daten zu Nightscout. Dies **funktioniert bisher noch nicht mit den deutschen Pumpen**, eventuell da der RileyLink sich gegenüber der Pumpe als MySentry ausgibt, um von dieser die Daten zu bekommen. MySentry wird, lt. Medtronic-Hotline, aber nur von den amerikanischen Pumpen unterstützt. 
Auch die mittlerweile offiziell von Nightscout unterstützte Lösung mit Hilfe von Minimed Connect und IOS [(s. hier)](http://www.nightscout.info/wiki/faqs-2/how-do-you-get-your-cgm-in-the-cloud) betrifft derzeit nur den amerikanischen Markt.

## Guardian 2 Link Transmitter

Bei der Minimed 640G funktioniert es seit Mitte Mai 2016 recht ähnlich. Hierbei wird das Messgerät Bayer Contour Next Link 2.4 per USB Kabel mit einem [passenden Android Smartphone ](https://github.com/pazaan/640gAndroidUploader/wiki/Compatible%20Android%20devices%20and%20firmware)verbunden. Auf diesem Smartphone wird dann der 640gAndroidUploader installiert und konfiguriert. 

Dazu sind die folgenden Einzelschritte erforderlich:
Zunächst muss das Kapitel [Nightscout einrichten](../../nightscout/nightscout_einrichten.md) durchgearbeitet und die Webseite entsprechend eingerichtet werden. Danach geht es weiter mit dem Kapitel [CareLinkPersonal Konto einrichten](../../nightscout/die_nightscout_website.md). Ist dies geschehen, wird noch das Android Smartphone mit dem Contour Next Link Messgerät konfiguriert  (s. [hier](../../nightscout/die_nightscout_website.md)).

Die vorherige, seit Ende Februar 2016 existierende Lösung sei auch noch erwähnt. Informationen dazu gibt es auf der Nightscout Webseite [(s. Nightscout and Medtronic 640g (engl.))](http://www.nightscout.info/wiki/welcome/nightscout-and-medtronic-640g) und zusätzlich hat der Autor, Matt, noch einen englischen Blog, der sich mit dem Thema beschäftigt [Matt's Little D Blog an.](http://littlet1d.blogspot.co.uk/)

Speziell im [Beitrag vom 18.01.16](http://littlet1d.blogspot.co.uk/2016/01/nightscout-on-640g-step-by-step-into.html) geht Matt auf die erforderlichen Schritte ein. Mittlerweile hat Matt drei verschiedene Lösungen für die 640G erarbeitet. Details in seinem [Beitrag vom 16.4.16](http://littlet1d.blogspot.de/2016/04/small-medium-and-large-mobile.html).


