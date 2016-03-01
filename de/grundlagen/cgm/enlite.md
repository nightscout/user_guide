# Enlite

Eine generelle Beschreibung des Enlite Sensors bietet der Hersteller Medtronic an: [Link Enlite Glukosesensor](https://www.medtronic-diabetes.de/minimed-produkte/kontinuierliche-glukosemessung/enlite-glukosesensor). Auch gibt Medtronic eine [Infobroschüre](https://www.medtronic-diabetes.at/sites/austria/medtronic-diabetes.at/files/cgm_broschuere_052012.pdf) zu diesem Thema heraus, die allerdings von 2012 ist und sich daher nur mit dem Enlite Sensor in Verbindung mit der VEO Insulinpumpe beschäftigt.

Grundsätzlich gibt es aktuell zwei verschiedene Transmitter von Medtronic, mit denen der aktuelle Enlite Sensor verbunden werden kann:
1.  
der MiniLink Transmitter, kompatibel mit dem MiniMed Veo System und dem Guardian REAL-Time System und
2. 
den Guardian 2 Link Transmitter, der nur mit der MiniMed 640G Insulinpumpe kompatibel ist.

Da sich die Wege zum erfolgreichen Nightscout-Betrieb gravierend unterscheiden, werden diese im Folgenden getrennt betrachtet.


 
## MiniLink Transmitter
Mit dem MiniLink Transmitter und der Medtronic Veo Insulinpumpe gibt es eine von Nightscout veröffentlichte Möglichkeit, die Daten zur Nightscout Webseite zu bekommen.

### Übersichtsgrafik
![Übersichtsgrafik](../../images/enlite/MedtronicUebersichtklein.jpg)

Danach stehen einem die in den Kapiteln 3. [Die Nightscout Hauptseite](../../nightscout/die_nightscout_website.md) und 4. [Smartwatch Integration](../../smartwatch/smartwatch_integration.md) genannten Möglichkeiten zur Verfügung.

Um das zu realisieren, muss man den MMCommander bauen und mit der entsprechenden Software bespielen. Zusätzlich muss noch auf einem kompatiblen Android Smartphone die Medtronic Uploader App installiert und konfiguriert werden. Beides ist im Kapitel 1.5. [MMCommander](../grundlagen/enlite/mmcommander.md) beschrieben.

Im Netz findet man auch Hinweise auf eine Lösung für das Iphone (ab dem 4s und IOS 8.2). Diese Lösung, der **RileyLink**, kontaktiert die Pumpe per Funk und stellt dann über Bluetooth eine Verbindung mit dem Iphone her. Dort läuft dann die RileyLink IOS App und transportiert die Daten zu Nightscout. Dies **funktioniert nicht mit den deutschen Pumpen**, da der RileyLink sich gegenüber der Pumpe als MySentry ausgibt, um von dieser die Daten zu bekommen. MySentry wird, nach derzeitigem Kenntnisstand, aber nur von den amerikanischen Pumpen unterstützt. 

## Guardian 2 Link Transmitter

Offiziell wird der Guardian 2 Link Transmitter und dadurch die Minimed 640G Insulinpumpe noch nicht von NightScout unterstützt [(s. englische Nightscout Übersicht)](http://www.nightscout.info/wiki/faqs-2/how-do-you-get-your-cgm-in-the-cloud). 

Ganz die Hoffnung aufgeben muss man mit der Minimed 640G aber dennoch nicht, da es mittlerweile ein recht vielversprechendes Projekt gibt, das die 640G erfolgreich in Nightscout einbindet. Für alle Interessierten, die der englischen Sprache mächtig sind, bietet sich ein Blick auf [Matt's Little D Blog an.](http://littlet1d.blogspot.co.uk/)

Speziell im [Beitrag vom 18.01.16](http://littlet1d.blogspot.co.uk/2016/01/nightscout-on-640g-step-by-step-into.html) geht Matt auf die erforderlichen Schritte ein.


