# xDrip

Insulinpflichtige Diabetiker müssen zyklisch ihren Blutzucker prüfen. Eine Möglichkeit, die Messungen besonders oft durchzuführen, ist ein System zur kontinuierlichen Messung des Blutzuckers ([CGM](../GLOSSARY.html#cgm)).

Eines der am Markt erhältlichen CGM-Systeme stammt von der Firma Dexcom.


Eine kurze Beschreibung zum Prozessablauf:


* Ein Dexcom-Sensor liegt auf/unter der Haut und misst den Zucker.
* Ein Dexcom G4 Transmitter ist auf dem Sensor eingeklickt und sendet die Zucker-Werte über ein Funk-Protokoll weg. 
* Im regulären Prozess würde die Meldung des Transmitters vom Dexcom-Receiver empfangen und angezeigt. 
* Durch den Einsatz von xDrip kann der Dexcom-Receiver entfallen. Die vom Transmitter gesendeten Werte werden dann von einer selbst gebauten Hardware (xDrip) empfangen und via Bluetooth an ein Android-Handy gesendet.  Auf dem Handy wird die xDrip-App installiert.

xDrip besteht aus zwei Komponenten: 
1. 
Die Do-it-yourself-Hardware. Es werden einige HW-Komponenten (siehe [Bausatz](../bausatz.md)) miteinander verlötet.

1. 
Die [xDrip App](../xdrip_app.md), die auf ein Android-Handy aufgespielt und mit einigen Handgriffen individuell konfiguriert wird.Die [xDrip App](../xdrip_app.md) hat folgende Funktionen:   
 
 * Empfang von BZ-Messwerten
 *	Anzeige (ggf. Ansage) von BZ-Werten 
 *	Weiterleiten der Werte an nachgelagerte Systeme (Pebble/Android-Watch, Nightscout)
 *	Alarm bei (zuvor individuell definierten) meldewürdigen Werten / Verlauf
 *	Export der Werte zur Auswertung in anderen Systemen (zB. SiDiary, Excel)