===
CGM
===

**Kontinuierlich messender Glucosesensor**
---
Insulinpflichtige Diabetiker müssen zyklisch ihren Blutzucker prüfen. Eine Möglichkeit, die Messungen besonders oft durchzuführen, ist ein System zur kontinuierlichen Messung der Glucose.

Diese Kontinuierliche Glucosemessung (engl.: Continuous Glucose Monitoring, CGM) wird in der Regel bei Menschen mit Diabetes mellitus eingesetzt, um die Therapie besser steuern zu können. Im Gegensatz zur herkömmlichen Blutzuckermessung wird nicht der Glucosegehalt in einem dafür gewonnenen  Blutstropfen gemessen (Blutzuckerwert, BZ), sondern im Gewebe des Körpers (Gewebeglucosewert, GZ). Veränderungen treten dort in der Regel mit einer kurzen zeitlichen Verzögerung im Vergleich zum Blutzucker auf.

Kommerzielle CGM-Systeme bestehen derzeit aus einem Nadelsensor, einem Transmitter (Sender, zur Übertragung der GZ-Werte) und einem Empfangsgerät, das alle Werte speichert und auf dem der Gewebeglucosewert zusammen mit einem Trend auf dem Display angezeigt werden kann. 

Auf den folgenden Seiten wird die Vorgehensweise von drei bisher erprobten verschiedenen Systemen vorgestellt. 
---


Dexcom
------

ACHTUNG - Alle Angaben zu diesem Produkt sind ausschließlich vom
Hersteller `DEXCOM <http://www.dexcom.com/en-US>`__ oder vom deutschen
Vertrieb `DEXCOM Deutschland GmbH <https://www.nintamed.eu>`__ (früher Nintamed) und dienen
ausschließlich als Information. Es werden hier keine Bewertungen dieses
Systems abgegeben oder anderweitige Informationen als die des
Herstellers oder des Vertriebs zur Verfügung gestellt.

+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Beschreibung                             | Link                                                                                                                                                            |
+==========================================+=================================================================================================================================================================+
| Link zur deutschen Seite                 | `Dexcom G4 PLATINUM <https://www.nintamed.eu/p/products/dexcomg4>`__                                                                                            |
+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Link zur deutschen Bedienungsanleitung   | `Dexcom G4 PLATINUM (mg/dl) <http://www.dexcom.com/sites/dexcom.com/files/international/user_guides/LBL-011912_Rev03-UG-G4-PLATINUM-OUS-mgdL_DE.pdf>`__         |
+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Link zum deutschen Quick Start Guide     | `Dexcom G4 PLATINUM (mg/dl) <http://www.dexcom.com/sites/dexcom.com/files/international/quick_start/LBL-011913_QuickStartGuide_G4PLATINUM_German_mgdL.pdf>`__   |
+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

Fünf Möglichkeiten mit Dexcom-Sensoren:

#. G4-Empfänger mit Kabelverbindung
#. G4-Empfänger "with Share" (Import aus den Vereinigten Staaten von
   Amerika) mit Share2NS-Bridge
#. G4-Empfänger "with Share" (Import aus den Vereinigten Staaten von
   Amerika) mit xDrip-App
#. G5 mit Share2NS-Bridge
#. G4 mit selbstgebautem Empfänger (`siehe Kapitel
   XDrip <../xdrip/xdrip.md>`__)


Enlite
------

Eine generelle Beschreibung des Enlite Sensors bietet der Hersteller
Medtronic an: `Link Enlite
Glukosesensor <https://www.medtronic-diabetes.de/minimed-produkte/kontinuierliche-glukosemessung/enlite-glukosesensor>`__.
Auch gibt Medtronic eine
`Infobroschüre <https://www.medtronic-diabetes.at/sites/austria/medtronic-diabetes.at/files/cgm_broschuere_052012.pdf>`__
zu diesem Thema heraus, die allerdings von 2012 ist und sich daher nur
mit dem Enlite Sensor in Verbindung mit der VEO Insulinpumpe
beschäftigt.

Aktuell gibt es zwei verschiedene Transmitter von Medtronic, mit denen
der Enlite Sensor verbunden werden kann:

#. der MiniLink Transmitter, kompatibel mit dem **MiniMed Veo** System
   und dem Guardian REAL-Time System und
#. den Guardian 2 Link Transmitter, der nur mit der **MiniMed 640G**
   Insulinpumpe kompatibel ist.

Da sich die Wege zum erfolgreichen Nightscout-Betrieb unterscheiden,
werden diese im Folgenden getrennt betrachtet.

MiniLink Transmitter
~~~~~~~~~~~~~~~~~~~~

Mit dem MiniLink Transmitter und der Medtronic Veo Insulinpumpe gibt es
folgende Möglichkeit, die Daten zur Nightscout Webseite zu übertragen.

**Übersichtsgrafik**

|Übersichtsgrafik|

Danach stehen einem die in den Kapiteln `Die Nightscout
Hauptseite <../../nightscout/die_nightscout_website.md>`__ und
`Smartwatch Integration <../../smartwatch/smartwatch_integration.md>`__
genannten Möglichkeiten zur Verfügung.

Um das zu realisieren, muss man den MMCommander bauen und mit der
entsprechenden Software bespielen. Zusätzlich muss noch auf einem
kompatiblen Android Smartphone die Medtronic Uploader App installiert
und konfiguriert werden. Beides ist im Kapitel
`MMCommander <../enlite/mmcommander.md>`__ beschrieben.

Im Netz findet man auch Hinweise auf eine Lösung für das Iphone (ab
dem 4s und IOS 8.2). Diese Lösung, der **RileyLink**, kontaktiert die
Pumpe per Funk und stellt dann über Bluetooth eine Verbindung mit dem
Iphone her. Dort läuft dann die RileyLink IOS App und transportiert
die Daten zu Nightscout. Dies **funktioniert bisher noch nicht mit den
deutschen Pumpen**, eventuell da der RileyLink sich gegenüber der
Pumpe als MySentry ausgibt, um von dieser die Daten zu bekommen.
MySentry wird, lt. Medtronic-Hotline, aber nur von den amerikanischen
Pumpen unterstützt.
Auch die mittlerweile offiziell von Nightscout unterstützte Lösung mit
Hilfe von Minimed Connect und IOS `(s.
hier) <http://www.nightscout.info/wiki/faqs-2/how-do-you-get-your-cgm-in-the-cloud>`__
betrifft derzeit nur den amerikanischen Markt.


Guardian 2 Link Transmitter
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Bei der Minimed 640G funktioniert es seit Mitte Mai 2016 recht ähnlich.
Hierbei wird das Messgerät Bayer Contour Next Link 2.4 per USB Kabel mit
einem `passenden Android
Smartphone <https://github.com/pazaan/640gAndroidUploader/wiki/Compatible%20Android%20devices%20and%20firmware>`__\ verbunden.
Auf diesem Smartphone wird dann der 640gAndroidUploader installiert und
konfiguriert.

Dazu sind die folgenden Einzelschritte erforderlich:
Zunächst muss das Kapitel :ref:`Nightscout`
durchgearbeitet und die Webseite entsprechend eingerichtet werden.
Danach geht es weiter mit dem Kapitel :ref:`Anlegen eines Kontos auf https://carelink.minimed.eu`. Ist dies
geschehen, wird noch das Android Smartphone mit dem Contour Next Link
Messgerät konfiguriert siehe :ref:`Konfiguration des Android Smartphones mit dem Contour Next Link Messgerät`.

Die vorherige, seit Anfang 2016 existierende Lösung sei auch noch
erwähnt. Speziell, da damit noch mehr Daten wie zum Beispiel
Informationen über Temporäres Basal zu Nightscout übertragen werden
können, die derzeit noch nicht mit der App übertragen werden. Allerdings
ist diese Lösung deutlich komplizierter und noch nicht Bestandteil
dieses Handbuches. Informationen dazu gibt es auf der Nightscout
Webseite `(s. Nightscout and Medtronic 640g
(engl.)) <http://www.nightscout.info/wiki/welcome/nightscout-and-medtronic-640g>`__
und zusätzlich hat der Autor, Matt, noch einen englischen Blog, der sich
mit dem Thema beschäftigt `Matt's Little D Blog
an. <http://littlet1d.blogspot.co.uk/>`__

Speziell im `Beitrag vom
18.01.16 <http://littlet1d.blogspot.co.uk/2016/01/nightscout-on-640g-step-by-step-into.html>`__
geht Matt auf die erforderlichen Schritte ein. Mittlerweile hat Matt
drei verschiedene Lösungen für die 640G erarbeitet. Details in seinem
`Beitrag vom
16.4.16 <http://littlet1d.blogspot.de/2016/04/small-medium-and-large-mobile.html>`__.


FreeStyle Libre
---------------

Der `FreeStyle Libre <http://www.freestylelibre.de/>`__ der Firma Abbott
ist seitens des Herstellers kein CGM System, sondern ein FGM (Flash
Glucose Messsystem). Der Unterschied ist, dass bei einem CGM System ein
Transmitter die Daten automatisch z.B. alle 5 Minuten an ein geeignetes
Anzeigegerät sendet und bei einem FGM die Daten nur durch aktives
Scannen des Sensors "abgeholt" werden. Derzeit wird der Sensor zumeist
durch das `passende
Lesegerät <http://www.freestylelibre.de/freestyle-libre-reader-kit-mg-dl-de-at.html>`__
ausgelesen. Auch gibt es mittlerweile die `LibreLink Android
App <https://play.google.com/store/apps/details?id=com.librelink.app>`__,
die zur Nutzung mit dem FreeStyle Libre zugelassen ist und das Auslesen
direkt mit einem Smartphone ermöglicht. Auch bei Nutzung des FreeStyle
Libre als FGM ist eine Einbindung in Nightscout möglich. Wie das
funktioniert ist hier :ref:`HIER <libre>` beschrieben.

**Libre als CGM**

Mittlerweile gibt es es ein DIY Projekt, welches die Herstellung eines
Transmitters für dieses System ermöglicht und die Firma BlueToolz UG
arbeitet derzeit an einer Lösung, die für den Benutzer ohne
Bastelkenntnisse eine CGM auf FreeStyle Libre Basis ermöglichen soll.
Details zu den Projekten finden sich unter :ref:`Libre als CGM <Libre als CGM>`.



.. |Übersichtsgrafik| image:: ../images/enlite/MedtronicUebersichtklein.jpg

