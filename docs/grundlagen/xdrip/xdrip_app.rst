xDrip App
=========

| Die xDrip-App ist eine Anwendung (eine App), die auf einem
  Android-Handy läuft. Sie dient dazu, CGM-Werte auf dem Mobiltelefon
  und - optional - einer Smart-Watch anzuzeigen, auszuwerten und bei
  Bedarf zu NightScout hochzuladen.
| Um die Werte zu erhalten, benötigt man entweder ein Dexcom G4 *with
  Share* oder einen selbstgebauten Bausatz. Da *Share* in Europa nicht
  erhätlich ist, beschränkt sich dieses Handbuch auf den Bausatz.

Voraussetzungen:
----------------

#. Android-Telefon mit Betriebssystem-Version 4.3 (besser 4.4 oder
   höher)
#. Bluetooth-Low-Energy (BLE)-Funktionalität. Diese ist in der Regel ab
   Bluetooth 4.0 vorhanden und wird häufig mit "Bluetooth Smart"
   gekennzeichnet.
#. xDrip-Bausatz (s. Kapitel Bausatz) oder Dexcom-Share-Receiver (nur
   USA)

Grund-Funktionalität
--------------------

Download & Installation
~~~~~~~~~~~~~~~~~~~~~~~

Die xDrip-App wird derzeit (Stand 01/2016) noch häufig angepasst. Der
Download für eine lauffähige Version (\*.apk-File) findet sich hier:
`Link zur
Beta-Version <https://github.com/StephenBlackWasAlreadyTaken/xDrip/wiki/xdrip-beta>`__

| Die hier verlinkten Versionen sind so erstellt, dass man eine ältere
  Version mit einer neueren updaten kann, ohne Einstellungen und
  Messwerte zu verlieren.
| Wer hinreichende technische Kenntnisse hat, kann sich aus den
  vorhandenen Quellen selbst die apk zusammenstellen.

| **"xDrip" oder "xDrip+"**
| Alternativ zur "xDrip"-App wird auch die Software "xDrip+" empfohlen.
  xDrip+ ist eine Variante, bzw. eine Erweiterung der "xDrip"-App. In
  "xDrip+" sind (erheblich) mehr Möglichkeiten zur Konfiguration
  enthalten. Das kann wunderbar hilfreich sein, aber die Fülle der
  Möglichkeiten kann Einsteiger auch verwirren.
| Die Beschreibungen dieser Seite wurden für xDrip geschrieben, sie
  gelten aber ebenso für xDrip+.
| Infos und Download zu xDrip+ finden sich hier:
  https://jamorham.github.io/

Verbinden mit dem Wixel
-----------------------

Bluetooth-Scan / Hardware data source
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Hier wird eingestellt, mit welcher Hardware die Daten vom Transmitter
empfangen und an die xDrip-App übergeben werden.

-  Bluetooth Wixel
   xDrip in classic - xml. Selbst kompilierte wxl, in die die
   individuelle Transmitter-ID einkompiliert wurde. Erstellt gemäß
   dieser
   `Anleitung <https://github.com/StephenBlackWasAlreadyTaken/wixel-xDrip>`__
   Link: https://github.com/StephenBlackWasAlreadyTaken/wixel-xDrip
-  xBridge Wixel
   xDrip in xBridge2 wxl. Aus dieser
   `Quelle <https://github.com/jstevensog/wixel-sdk>`__
-  Wifi Wixel
   Weitere Infos, siehe: ?
-  Wifi Wixel + BT Wixel
   Kombination aus Wifi-Wixel und BT-Wixel. Bsp: Zu Hause mehrere Wixel
   im WLAN, die im ganzen Haus den Empfang sicherstellen. Außerhalb des
   WLANs werden die Daten vom BT-Wixel empfangen. Weitere Infos:
   https://github.com/jamorham/python-usb-wixel-xdrip
-  DexcomShare
   DexcomShare ist zZt. in Europa nicht verfügbar.
   Weitere Infos: http://www.dexcom.com/dexcom-g4-platinum-share

System Status
-------------

Hier findet man Informationen über das System:

-  welche Hardware benutzt wird
-  welchen Ladezustand die Batterie des Transmitters hat
-  wann der Sensor gestartet worden ist
-  wie viele Tage und Stunden er bereits liegt
-  Connection Status: Ist die Hardware xDrip mit der App verbunden?
-  Über Antippen von "Forget Device" kann man die Verbindung
   unterbrechen und über "Restart Collector" neu in Gang setzen.

Transmitter Battery Info
~~~~~~~~~~~~~~~~~~~~~~~~

xDrip Battery Info
~~~~~~~~~~~~~~~~~~

---> ist noch zu beschreiben!

**Settings**

.. csv-table:: 
   :file: settings.csv
   :header-rows: 1

Screenshot des Hauptbildschirms
-------------------------------

|xDrip_Screenshot_Hauptansicht|

**oberer Bereich des Hauptbildschirms**

-  aktueller GZ mit Trendpfeil
-  Zeit seit letzter Messung
-  Differenz zur vorletzten Messung
-  Batterie-Stand von xDrip/xBridge (optional)
-  dünne gelbe Gerade: Individuell definierte Grenze für „zu hoch“
-  dünne rote Gerade: Individuell definierte Grenze für „zu tief“
-  Verlauf der letzten drei Stunden
-  Jeder Punkt entspricht einer Messung. Alle 5 Minuten erscheint ein
   Wert.
-  blau: im Zielbereich
-  gelb: zu hoch
-  rot: zu tief
-  rot/weiß: Kalibrierungen

| **unterer Bereich des Hauptbildschirms**
| Der Verlauf der letzten 24 Stunden. Der unten rechts weiß markierte
  Rand zeigt die letzten drei Stunden, die oben größer dargestellt sind.

Starten des Sensors
-------------------

Wenn sichergestellt ist, dass der Sensor liegt und der Transmitter gut
sitzt (prüfen, ob an der Seite alles gut eingerastet ist), geht man über
das Hauptmenü zum Punkt "Start Sensor".

Hier folgt neben einem Warnhinweis, frei übersetzt: Erst dann auf
"Sensor Start" tippen, wenn der Sensor gelegt und der Transmitter
(Sender) auf der Sensorplatte befestigt worden ist, die Bitte, das Datum
und die genaue Uhrzeit der Sensorlegezeit auszuwählen, zumindest so nah
dran, wie man sich noch erinnert.

Es empfiehlt sich, dieses Datum samt Uhrzeit -inklusive AM oder PM - zu
notieren oder einen entsprechenden Screenshot (Foto vom Bildschirm) auf
dem Smartphone zu speichern, falls man den Sensor später mit diesem
Zeitpunkt nochmal neu starten möchte, z.B. um die bisherigen
Kalibrierungen zu löschen oder weil man den Transmitter aus welchen
Gründen auch immer kurz abgenommen hatte.

| Zur Erklärung der 12-Stunden-Anzeige:
| AM = ante meridiem (lateinisch), auf Deutsch: VOR dem Mittag,
  Eselsbrücke: **A**\ m **M**\ orgen;
| PM = post meridiem, auf Deutsch: NACH dem Mittag

Hat man den Sensor gestartet, erscheint auf dem Hauptbildschirm in roten
Buchstaben der Hinweis, dass sich der Sensor warmläuft und in 120
Minuten (rückwärtslaufend) eine Doppelkalibrierung benötigt.

**Alternativen beim Starten des Sensors**

Einige haben die Erfahrung gemacht, dass die CGM-Werte genauer sind,
wenn man sich einen neuen Sensor 1 bis 2 Tage vor dem eigentlichen Start
dieses Sensors legt, während der alte Sensor noch weiter in Gebrauch
ist. Dabei wird bis zum Austausch ein alter Transmitter als Platzhalter
auf dem neu gesetzten Sensor verwendet.

Stoppen des Sensors
-------------------

Sobald der Sensor einmal gestartet worden ist, wird der Menüpunkt "Start
Sensor" in der App durch den Menüpunkt "**Stop Sensor**" ersetzt.

Wenn man hier antippt, erscheint ein Warnhinweis, man möge den Sensor
nur dann stoppen, wenn man auch vorhat, ihn zu entfernen. Darunter
befindet sich das Feld mit der Aufschrift "Stop Sensor". In dieses Feld
tippt man, um den Sensor zu stoppen.

Ab diesem Moment wechselt die Anzeige im Menü wieder zu "Sensor Start".

Kalibrieren
-----------

Zwei Stunden nach dem Sensor-Start (oder früher, s.o. unter Sensor
starten) müssen die vom Sensor gemessenen Werte mit zwei von einem
Blutzuckermessgerät direkt hintereinander ermittelten Werten (aus
verschiedenen Fingern) abgestimmt, sprich kalibriert werden. Hierfür
geht man über das xDrip Menü zum Punkt **"Add double calibration"** und
tippt jeweils in die Felder mit der blinkenden Schreibmarke (cursor) und
gibt über die auf diese Weise aufgerufene Tastatur die durch zwei
Blutzuckermessungen ermittelten Werte ein. Danach tippt man auf das Feld
"done", auf Deutsch: erledigt. Nach einer kurzen Verzögerung (nicht
wundern, das System arbeitet) geht es automatisch zurück zum
Hauptbildschirm und die ersten Sensormesswerte sind schon in der Grafik
eingetragen.

Für ein paar Minuten erscheint im Auswahlmenü die Möglichkeit
**"Override Calibration"**, auf Deutsch: Kalibrierung überschreiben.
Damit können falsch eingegebene Werte durch die richtigen Werte ersetzt
werden.

Anschließend gibt es im Menü nicht mehr die Doppel-, sondern die
einfache Kalibrierung **"Add Calibration"**, die wie die
Doppelkalibrierung funktioniert, nur daß lediglich ein einzelner mit dem
Blutzuckermessgerät gemessene Wert eingetragen werden muss. Wie oft man
(einfach) kalibriert, ist Geschmacksache, es sollte jedenfalls nicht zu
häufig sein. Man kann sich daran orientieren, dass der Dexcom Receiver
alle zwölf Stunden eine Kalibrierung abfragt. Und man kann bei Zweifeln
an der Richtigkeit der vom Sensor gemessenen Werte auch mit einem
Messgerät gegenmessen, ohne zu kalibrieren. Unstimmigkeiten müssen nicht
zwingend am Sensor liegen, sie können auch darin begründet sein, dass
der Gewebezuckerwert im Vergleich zum Blutzuckerwert mehrere Minuten
verzögert eine Veränderung aufzeigt. Eine Kalibrierung zu einem solchen
Zeitpunkt würde sich ungünstig auf die Messgenauigkeit auswirken. Daher
der **Merksatz**: *Eine Kalibrierung zu Zeiten durchführen, in denen der
Blutzucker möglichst stabil ist*, also z.B. vor einer Mahlzeit.

Calibration Alerts
~~~~~~~~~~~~~~~~~~

Dieser Menüpunkt beschäftigt sich mit dem
Kalibrierungserinnerungssignal.

-  Calibration Alerts - alert when a calibration is requested: *Hier
   kannst du durch Antippen ein Häkchen setzen, wenn du an eine
   erforderliche Kalibrierung erinnert werden möchtest. Das bietet sich
   z.B. für die Doppelkalibrierung an.*

-  Calibration Request Sound: *Hier kannst du dir durch Antippen einen
   Signalton aus deinem Smartphonerepertoire auswählen.*

-  Override Silent Mode on Calibration Alerts: *Wenn du hier ein Häkchen
   setzt, ertönt das Erinnerungssignal auch im lautlosen Modus des
   Smartphones.*

-  Calibration Request Snooze: *Voreingestellt. Wenn du den Signalton
   aktiviert hast, wiederholt er sich bei fehlender Kalibrierung alle 20
   Minuten.*

Alarme
------

BG-Level-Alerts
~~~~~~~~~~~~~~~

|xDrip_Screenshot_alerts|

Unter Settings - Alerts and Notifications - BG Level Alerts kann man
sich Alarme einstellen für den Fall, dass der BZ einen bestimmten Wert
über- (Hochalarm) oder unterschreitet (Tiefalarm). Der Tiefalarm für
Werte unter 55mg/dl ist vom System bereits voreingestellt und kann nicht
verändert werden.

| Drücke "**create low alert**", um einen Tiefalarm selbst zu
  definieren. Unter "***Alert Name***" gibst du dem Alarm eine von dir
  ausgewählte Bezeichnung, z.B. für mg/dl zu niedrig 80. Bei
  "***Threshold***" tippst du den entsprechenden Wert (hier z.B. 80)
  ein. Unter "***Default Snooze***" gibst du die Minuten ein, nach denen
  sich der Alarm erneut melden soll, wenn du ihn gestoppt hast, der Wert
  aber nach wie vor zu tief ist; unter "***Re-raise***" die Minuten,
  nach denen sich der Alarm erneut melden soll, wenn du ihn ignoriert
  hast, der Wert aber nach wie vor zu tief ist. Hier empfiehlt es sich
  bei Tiefalarmen einen kürzeren Zeitraum auszuwählen. Unter "***Alert
  Tone***" kannst du dir einen entsprechenden Alarmton bestimmen bzw.
  mit "choose file" aus deinem Smartphonerepertoire aussuchen.
| Unter "***select time for alert***" ist "all day" bereits mit Häkchen
  versehen, so dass dein Alarm ganztägig funktioniert. Du kannst aber
  auch auf "all day" tippen, um dann mit "tap to change" einen gewissen
  Zeitraum (z.B. die Nacht) festzulegen. Du kannst den Alarm über
  "***override phone silent mode***" auch im Ruhemodus klingen lassen
  und das Telefon beim Alarm außerdem vibrieren lassen mit Häkchen an
  "***vibrate on alert***". Zuletzt kannst du den Alarm noch
  ***testen*** und vergiss nicht, ihn zu speichern ("***save alert***"),
  wenn er dir zusagt!

Entsprechend kannst du über "**create high alert**" eine Alarmkaskade
nach oben schaffen.

Bei einmal gespeicherten Alarmen kommst du durch längeres Antippen des
gewünschten Alarmes in den Bearbeitungsmodus.

BG-Alert-Settings
^^^^^^^^^^^^^^^^^

Profil: High, Ascending, ...
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Smart snoozing/alerting: Empfehlung am Anfang diese zu deaktivieren.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Rise-Fall-Alerts
^^^^^^^^^^^^^^^^

----> ist noch zu beschreiben!

Werte vorlesen lassen
---------------------

Beim Autofahren oder wenn man aus anderen Gründen die Hände gerade nicht
frei hat (z.B. weil man mit den Händen im Spülwasser oder im Kuchenteig
steckt) kann man sich die jeweiligen Messwerte laut vorlesen lassen,
wenn das Smartphone die sog. "Text-to-speech" Möglichkeit bietet.

Dazu geht man zuerst im xDrip Menü auf Settings (Einstellungen) und
verschiebt den Bildschirmtest so lange nach oben, bis man weit unten
unter "Other Settings" (Sonstige Einstellungen) den Punkt "**Speak
Readings**" findet. Hier setzt man ein Häkchen, woraufhin sich ein
Dialogfenster öffnet und fragt, ob man eine passende Text-To-Speech
Datei installieren möchte. Bejaht man dies, öffnet sich ein weiteres
Fenster, in dem man sich verschiedene Sprachbeispiele (alle mit
weiblicher Stimme) anhören (Pfeil antippen) oder gleich die Datei dazu
installieren (Download Symbol antippen) kann.

Wenn man nicht jedes Mal diesen etwas längeren Weg gehen möchte, kann
man gleich noch ein Häkchen direkt unter Speak Readings bei "**Speak
Readings Shortcut**" setzen. Dadurch ist die Vorlesefunktion in das
xDrip Menü (je nach Smartphone drei kleine Punkte oben rechts auf dem
Hauptbildschirm der App oder bei geöffneter App die Smartphonefläche
unten links) aufgenommen und kann gleich dort mit Häkchen aktiviert oder
deaktiviert werden.

Statistik
---------

|xDrip_Screenshot_statistic_1| |xDrip_Screenshot_statistic_2|

|xDrip_Screenshot_statistic_3|

| Wenn man im xDrip Menü den Punkt Statistics antippt, gelangt man zu
  den Statistiken für verschiedene Zeiträume, die man wiederum durch
  Antippen auswählen kann.
| TD = today, heute; YTD = yesterday, gestern; 7/30/90d d = Tage

Hierzu gibt es drei Seiten, die man durch Wischen nach links bzw. rechts
aufrufen kann. Auf welcher der Seiten man sich befindet, erkennt man an
der Veränderung der drei kleinen Kreise direkt unter der Leiste mit den
Zeiträumen von ungefüllten zu gefüllten Kreisen.

Die linke der drei Seiten enthält Informationstext.

Range, auf Deutsch: Spannweite, gibt die Verteilung der gemessenen Werte
an, unterteilt nach in/high/low, auf Deutsch: innerhalb der
Grenzwerte/höher/tiefer.

Absolute numbers: Dies sind die absoluten Zahlen der jeweils in den
genannten Bereichen gemessenen Werte.

Der Median BG ist der Wert in der Mitte der gemessenen Werte, damit
werden Ausreißer nicht berücksichtigt (Bsp: 1,3,5,6,9=5).

Der Mean BG ist das arithmetische Mittel der gemessenen Werte (Bsp:
1+3+5+5+9=23/5=4,6).

HbA1c est. (estimated, auf Deutsch: geschätzt) Hier wird je nach
angetipptem Zeitraum der HbA1c in mmol/mol und in mg/dl überschlägig
berechnet.

StdDev steht für standard deviation, auf Deutsch: Standardabweichung.
Sie ist ein Maß für die Streuung der Werte.

Auf der mittleren Seite sind die Werte je nach ausgewähltem Zeitraum in
ihrer Verteilung als Tortengrafik dargestellt. Grün steht für innerhalb
der Grenzwerte, gelb für hohe und rot für tiefe Werte.

Auf der rechten Seite wird für jeden ausgewählten Zeitraum die
Werteverteilung in einer Verlaufskurve im Tagesablauf gezeigt.

Widget
------

|xdrip_Screenshot_widget|

Die xDrip App kommt nicht allein, sie bringt ein Widget mit, das du dir
auf dem üblichen Weg auf deinem Smartphone einrichten kannst. Das Widget
enthält den aktuellen Glucosewert mit Trendpfeil, die voraussichtliche
Veränderung in der eingestellten Maßeinheit (mmol/l oder mg/dl),
darunter die Angabe, von wann der zuletzt gemessene Wert stammt (z.B. 2
min ago = vor 2 Minuten) und im Hintergrund den letzten Teil der
Verlaufskurve. Wird das Widget angetippt, öffnet sich die xDrip App.

Bsp. Samsung S4 mini: links unten durch Antippen der Fläche ins Menü
gehen und jeweils antippen - Apps und Widgets - Widgets, dann blättern
(wischen) bis zum xDrip Widget, mit dem Finger auf dem Widget dieses
nach rechts oder links auf den gewünschten Bildschirm ziehen, loslassen
und ggf. durch Ziehen an den äußeren Ecken und/oder Seiten die Größe des
Widgets noch verändern, den Bildschirm außerhalb des Widgets antippen,
fertig!

BG History
----------
**(nicht in der jetzigen Beta-Version verfügbar)**

Hinter diesem Menüpunkt verbergen sich sämtliche bisherigen
Verlaufskurven, die man Tag für Tag über die Doppelpfeiltasten aufrufen
kann. Man kann auch vom ausgewählten Datum aus die letzten 1 bis 14 Tage
in einer einzigen Anzeige über das Feld direkt rechts vom Datum
aufrufen.

Für eine genauere Betrachtung lassen sich die Kurven mit einem
Doppelantippen oder mit einer auseinanderlaufenden, nicht zwingend
waagerechten, Bewegung zweier Finger in die Breite ziehen. Wenn man
beliebige einzelne Punkte auf der Verlaufskurve antippt, erhält man
unten kurz eingeblendet die Information über die Uhrzeit und den
gemessenen Wert. Diese Einzelbetrachtung ist übrigens ebenfalls in der
aktuellen Verlaufskurve des Hauptbildschirmes möglich.

Weiteres
--------

Verbinden mit einer Smartwatch
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

An dieser Stelle wäre es möglich, die Daten direkt an die Smartwatch zu
senden. Damit könnte man die Installationsschritte in "Nightscout
einrichten" umgehen. Damit wiederherum umgeht man aber auch die
Möglichkeit, die Daten weiter zu nutzen (als Überwachungsfunktion, als
Tagebuch oder für das OpenAPS).

Android Wear
^^^^^^^^^^^^

Pebble
^^^^^^

Upload zu NightScout
~~~~~~~~~~~~~~~~~~~~

----> ist noch zu beschreiben!

Fehlerbehebung
--------------

#. **Frage:** In der xDrip-App wird das Bluetooth-Modul gefunden als
   "hm-soft", nicht als „xBridge“ oder „xDrip“.
   Was muss ich tun, damit das neue xDrip (richtig) funktioniert?
   **Antwort:**
   Sobald der BT-Chip Strom hat, kann sich das Handy damit verbinden.
   Das heißt leider noch nicht, dass die Daten-Leitung Wixel -> BT-Chip
   passt.
   Klicke im System Status auf "forget device", Wixel kurz stromlos
   machen und danach neu verbinden.
   Wenn danach der Chip immer noch "hm-soft" heißt, dann stimmt
   irgendetwas mit der Kommunikation vom Wixel zum BT-Chip nicht.

-  Verkabelung zwischen Wixel und Bluetooth-Modul prüfen
-  Baud-Rate prüfen. Bei einigen HM11-Modulen ist die Baudrate falsch
   gesetzt, ggf. also die Baudrate neu einstellen

#. | **Frage:** Die xDrip App meldet einen Fehler "Unclear Sensor
     Readings". Was kann man tun, damit die Daten wieder plausibler
     werden?
   | **Antwort:**
   | Die Meldung wird angezeigt, wenn unter Settings/Other Alerts/Noisy
     Readings die Checkbox für "Bad (noisy) Value Alerts" aktiviert ist.
   | Was hilft ist: Warten bzw. den Sensor ersetzen. (Falls jemand eine
     bessere Antwort hat: Bitte die Antwort löschen und passend
     umformulieren. Danke!)

#. | **Frage:** Nächste Frage kommt hierher.
   | **Antwort:**
   | Nächster Antwort kommt hierher.

---> Erweiterbar!

.. |xDrip_Screenshot_Hauptansicht| image:: ../../images/xdrip/xDrip_Screenshot_Hauptansicht.png
.. |xDrip_Screenshot_alerts| image:: ../../images/xdrip/xDrip_Screenshot_alerts.png
.. |xDrip_Screenshot_statistic_1| image:: ../../images/xdrip/xDrip_Screenshot_statistic_1.png
.. |xDrip_Screenshot_statistic_2| image:: ../../images/xdrip/xDrip_Screenshot_statistic_2.png
.. |xDrip_Screenshot_statistic_3| image:: ../../images/xdrip/xDrip_Screenshot_statistic_3.png
.. |xdrip_Screenshot_widget| image:: ../../images/xdrip/xDrip_Screenshot_widget.png

