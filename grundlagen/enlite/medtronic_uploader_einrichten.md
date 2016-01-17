# Medtronic Uploader einrichten

Bevor die Medtronic Uploader App auf dem Android Smartphone konfiguriert werden kann, muss man die Schritte des Kapitels 2. [Nightscout einrichten](../../nightscout/nightscout_einrichten.html) , außer denen des Unterkapitels 2.3, vollzogen haben.

Nun installiert man die Datei "NightScout.apk" auf dem Smartphone. Eventuell muss man dazu unter Einstellungen - Sicherheit - Unbekannte Herkunft, die Installation von APps aus unbekannten Quellen zulassen, da diese Appnicht aus dem Play Store stammt. Dort gibt es nur den Nightscout Uploader, der für Dexcom Empfänger gedacht ist.

Die Account-Information, die man auf dem Arbeitsblatt aus Kapitel 2.1 eingetragen hat, werden nun zum Konfigurieren der Medtronic Uploader App benötigt.

Zuerst muss die Medtronic Uploader App geschlossen werden, falls diese bereits läuft. Nun den MMCommander über das USB OTG Kabel an das Smartphone anschließen. Es sollte sich automatisch ein Fenster öffnen, welches fragt, was getan werden soll. Dort die Nightscout App auswählen ind diese sollte danach automatisch starten.

Jetzt wo der Uploader läuft, klickt man rechts oben auf die drei Punkte. Es öffnet sich ein Menü und dort wählt man den Punkt "Preferences". Hier werden folgende Einstellungen vorgenommen:

* 
mmol/L -> hier kann man wählen, ob man lieber mit mmol/L oder mg/dl arbeitet.
* 
Type -> "Medtronic CGM" auswählen.
* 
Pump ID -> die ID von der Pumpenrückseite eintragen.
* 
Glucometer ID -> die ID des Blutzuckermessgerätes eintragen.
* 
Sensor ID -> die ID von der Rückseite des Minimed Transmitters eintragen.
* 
Calibration Type -> "Manual" auswählen.
* 
Glucose Value Source -> "Medtronic Sensor" auswählen.
* 
API Upload (REST) -> aktivieren
* 
API Base URL -> (API secret)@(persönliche Webseitenname)/api/v1 eintragen. Sowohl das Api secret,a ls auch den persönlichen Web




