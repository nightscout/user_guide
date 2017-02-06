.. _Die Nightscout Website:

Die Nightscout Website
======================

| Die Nightscout Website ist die zentrale Website zur Darstellung und
  Speicherung von Diabetes - Daten. Sie kann als komplettes Tagebuch mit
  Eingabe von Insulin, Kohlenhydraten, Bewegung uvm. verwendet werden.
  Mit der Integration von **OpenAPS** wird der gesamte Verlauf der
  Pumpensteuerung mit temporären Basalraten dargestellt. Der gesamte CGM
  - Verlauf wird online dargestellt und zyklisch aktualisiert. Es gibt
  umfangreiche
  `Einstellungsmoeglichkeiten <../nightscout/settings.md>`__ für die
  Website Das `Behandlungsportal <nightscout/care_portal.md>`__ bietet
  eine umfängliche Auswahl an Behandlungsdaten. Über den `Bolus
  Rechner <nightscout/boluscalculator.md>`__ können für Mahlzeiten
  abzugebende Boluseinheiten berechnet werden.
| Das `Reporting <../nightscout/settings.md>`__ bietet die Möglichkeit,
  die Daten auszuwerten und für andere zur Analyse auszugeben. Mit dem
  `Profileditor <../nightscout/settings.md>`__ hat man die Möglichkeit,
  Parameter in unterschiedlichen Profilen abzuspeichern, die z.B. für
  die Pumpensteuerung benötigt werden. Die Grafik wird standardmäßig
  alle 60 Sekunden aktualisiert.

Möchte man sich die FGM/CGM - Werte anzeigen lassen, so sind die
Einstellungen zum Übertragen der Daten in der Uploader-App
(`Xdrip <../grundlagen/xdrip/xdrip_app.md>`__, NightScout-Uploader oder
Glimp) erforderlich.

Ein Beispiel für eine mögliche Anbindung eines CGM Systems an die
Nightscout Website:

**Kommunikation:**

|nightscout_principle|

Wir schauen uns zunächst die `Haupt Seite <nightscout/main_page.md>`__
an.

.. |nightscout_principle| image:: ../images/nightscout/nightscout_principle.jpg

