# xDrip App

Die xDrip-App ist eine Anwendung (eine App), die auf einem Android-Handy läuft. Sie dient dazu CGM-Werte auf dem Mobiltelefon und einer Smart-Watch anzuzeigen, auszuwerten und bei Bedaft zu NightScout hochzuladen.
Um die Werte zu erhalten benötigt man entweder ein Dexcom G4 *with Share" oder einen selbstgebauten Bausatz. Da *Share* in Europa nicht erhätlich ist, beschränkt sich dieses Handbuch auf den Bausatz.


Vorraussetzungen:
1. Android-Telefon mit Betriebssystem-Version 4.3 (besser 4.4 oder höher)
2. Bluetooth-Low-Energy (BLE)-Funktionalität. Diese ist in der Regel ab Bluetooth 4.0 vorhanden.
3. xDrip-Bausatz (s. Kapitel Bausatz) oder Dexcom-Share-Receiver (nur VSA)

## Grund-Funktionalität:
### Download & Installation
### Verbinden mit dem Wixel: Bluetooth-Scan / Hardware data source
### Starten des Sensors
### Kalibrieren
### Alarme
#### BG-Level-Alerts
#### BG-Alert-Settings
##### Profil: High, Ascending, ...
##### Smart snoozing/alerting: Empfehlung am Anfang diese zu deaktivieren.
#### Rise-Fall-Alerts
#### Calibration Alerts

## Upload zu NightScout:

## Verbinden mit einer Smartwatch:
### Android Wear
### Pebble

## Weiteres:
### Widgets
### Werte vorlesen lassen
### Statistik
### Transmitter-Batterie-Info
### xBridge-Batterie-Info
### Interne Daten (Datatables + Calibration Graph)





Position im Prozessablauf: 
* Ein Dexcom-Sensor liegt auf/unter der Haut und misst den Zucker. 
* Ein Dexcom G4 Transmitter ist auf den Sensor eingeklickt und sendet die Zucker-Werte über ein Funk-Protokoll weg. 
* Im regulären Prozess würde die Meldung des Transmitters vom Dexcom-Receiver empfangen und angezeigt. 
* In dem Fall, in dem die xDrip-Ap relevant ist, kann der Dexcom-Receiver entfallen. Die vom Transmitter gesendeten Werte werden von einer selbst gebauten Hardware (xDrip) empfangen und via Bluetooth an ein Android-Handy gesendet.  Auf dem Handy wird die xDrip-App installiert.

Die xDrip-App hat folgende Funktionen:
* 	Empfang von BZ-Messwerten
*	Anzeige (ggf. ansagen) von BZ-Werten 
*	Weiterleiten der Werte an nachgelagerte Systeme (Pebble-Watch, Nightscout)
*	Alarm bei (zuvor individuell definierten) meldewürdigen Werten / Verlauf
*	Export der Werte zur Auswertung in anderen Systemen (zB. SiDiary, Excel)
	

Die xDrip-App wird derzeit (Stand 01/2016) noch häufig angepasst. Der Download für eine lauffähige Version (*.apk-File) findet sich hier: 

* [Link zur Beta-Version](https://github.com/StephenBlackWasAlreadyTaken/xDrip/wiki/xdrip-beta)


Wer hinreichende technische Kenntnisse hat, kann sich aus den Sourcen selbst die apk kompilieren. Die oben verlinken Versionen sind so erstellt, dass man eine ältere Version mit einer neueren updaten kann, ohne Einstellungen und Messwerte zu verlieren.
