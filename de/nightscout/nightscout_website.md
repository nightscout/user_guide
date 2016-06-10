# Die Nightscout Website

Die Nightscout Website ist die zentrale Website zur Darstellung und Speicherung von Diabetes - Daten. Sie kann als komplettes Tagebuch mit Eingabe von Insulin, Kohlenhydraten, Bewegung uvm. verwendet werden. Mit der Integration von **OpenAPS** wird der gesamte Verlauf der Pumpensteuerung mit temporären Basalraten dargestellt gesamte Der gesamte CGM - Verlauf wird online dargestellt und zyklisch aktualisiert. Es gibt umfangreiche **Einstellungsmöglichkeiten** für die Website Das **Behandlungsportal** bietet umfängliche manuelle Eingabemöglichkeiten. Über den **Bolusrechner** können für Mahlzeiten abzugebende Boluseinheiten berechnet werden.
Das **Reporting** bietet die Möglichkeit, die Daten auszuwerten und für andere zur Analyse auszugeben. Mit dem **Profil-Editor** hat man die Möglichkeit, Parameter in unterschiedlichen Profilen abzuspeichern, die z.B. für die Pumpensteuerung benötigt werden. Die Grafik wird standardmäßig alle 60 Sekunden aktualisiert.

Möchte man sich die FGM/CGM - Werte anzeigen lassen, so sind die Einstellungen zum Übertragen der Daten in der Uploader-App ([Xdrip](../grundlagen/xdrip/xdrip_app.md), NightScout-Uploader oder Glimp) erforderlich.

**Hauptseite:**
![nightscout_base_site](../images/nightscout/nightscout_base_site.jpg)

  1. Zeit seit der Letzten CGM Sensor - Daten - Übertragung
  2. Batterie - Ladezustand des Smartphones
  3. Plugins für die Pumpensteuerung
  4. Zeitrahmen der Darstellung von Behandlungsdaten
  5. aktueller BZ - Wert
  6. Trendpfeilangabe
  7. Zunahme/Abnahme des BZ innerhalb von 2 Messpunkten
  8. Plugins mit Anzeige von  Werten wie  `Sensor - Alter` , `Insulin on Board`
  9. Basalratenverlauf
  10. CGM - Maeßwerte
  11. Behandlungsdaten Kohenhydrate - und Insulineinheiten
  12. BZ - Trend - Voraussage
  13. Zeitfenster der Darstellung im oberen Bereich
  
  



Ein Beispiel für eine mögliche Anbindung eines  CGM Systems an die Nightscout Website:

**Kommunikation:**

![nightscout_principle](../images/nightscout/nightscout_principle.jpg)




Wir machen weiter  mit den [Einstellungen](../nightscout/settings.md):




