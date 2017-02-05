Einstellungen
=============

Die **Einstellungen** für die Website erreichen wir mit dem Klick auf
das mit dem **roten** Pfeil markierte Symbol:

**Oben** haben wir die Wahl von 4 Menüpunkten:

-  `Berichte <../nightscout/settings.md#berichte>`__
-  `Profil - Editor <../nightscout/settings.md#profil---editor>`__
-  `Nahrungsmittel
   Editor <../nightscout/settings.md#nahrungsmittel-editor>`__
-  `Administrator
   Werkzeuge <../nightscout/settings.md#administrator-werkzeuge>`__

**Unten** sind die Browsereinstellungen gelistet. Wenn wir diese zentral
für alle Browser gleich halten wollen, können wor dieses wie in Kapitel
`Nightscout Plugins <../nightscout/azure_plugins.md>`__ beschrieben,
umsetzen.

|Einstellungen|

Berichte
~~~~~~~~

Mit dem Klick auf **Berichte** erhalten wir diese Ansicht:

|nightscout\_reporting\_config|

| Die **Report - Arten** sind umfangreich. Wir können sie uns mit Klicks
  auf den Namen aufrufen.
| Mit der Eingabe der **Zeiträume** bestimmt man den Report - Umfang.
  Wir können vorgefertigte Zeiträume und individuelle Zeiträume
  auswählen. Weitere Filter sind möglich.
| Wir starten die Ausgabe des Reports mit dem Klick auf **Zeigen**.

Mit dem Report **Von Tag zu Tag** gibt es alle Daten auf einen Blick:

|nightscout\_reporting\_daily\_graph|

Wir haben auch die Möglichkeit, eingegebene Werte mit dem Klick auf
**Bearbeitung** zu **Korrigieren** oder zu **Löschen**:

|nightscout\_change\_treatments|

Profil - Editor
~~~~~~~~~~~~~~~

Der Behandlungs Profil Editor speichert angepasste Werte für die
persönliche Therapie.Mit dem Profil - Editor konfigurieren wir Einheiten
und Werte für Plugin iob, cob, bwp und Basalraten.

**Wichtig:** Ohne Änderugen im Editor werden für die Plugins keine
verwendbaren Werte angezeigt. Seit Grilled Cheese, Version 0.9 ist das
Anlegen eines Profils beim ersten Aufruf der Website erforderlich.

|nightscout\_profile\_editor\_plugins|

Wenn wir die Maus oder den Finger über Fachbegriffe bewegen, werden
**Erklärungstexte** in englischer Sprache angezeigt.

Bei **Timezone** bitte die gewünschte Zeitzone Einstellen.

Mit **Duration of Insulin Activity (DIA)** definieren wir die Wirkdauer
des Bolus - Insulins. Die Plugins iob, bwp benötigen diese Eingaben.

Mit Insulin to carb ratio (IC) wird angegeben, wieviel Boluseinheiten
für eine definierte Menge an KH verwendet werden müssen. Die Plugins iob
und cob benötigen diese Eingaben.

Mit dem **Insulin Sensitivity Factor (ISF)** können wir den
Korrekturfaktor in mg/dl oder mmol/L angeben. Mit mehrfachen Eingaben
können unterschiedliche Faktoren bestimmt werden.

Mit **Carbs activity /absorbtion rate (g/hour)** können wir bestimmen,
wieviel Gramm Kohlenhydrate pro Stunde verstoffwechselt werden. Das
Plugin cob benötigt diese Eingaben.

Nahrungsmittel Editor
^^^^^^^^^^^^^^^^^^^^^

|nightscout\_nahrungsmittel\_editor|

Im Nahrungsmittel - Editor können wir Mahlzeiten Mit Angabe von
Bezeichnung , Kategorie und Kohlenhydraten. Daten sind für den **Bolus
Kalkulator** optional wählbar. Über Ernährungsprogramme lassen sich die
Daten über csv- oder json - Format in die **mongodb** übertragen.

#. Eingabe von Nahrungsmittel - Daten
#. Ändern, Löschen von Datensätzen

Administrator Werkzeuge
^^^^^^^^^^^^^^^^^^^^^^^

|nightscout\_administrator\_werkzeuge|

Mit den Administrator - Werkzeugen können wir Berechtigungen zum Zugriff
auf die Nightscout - Website verwalten und Datensätze aus der mongo DB
löschen.

Verwalten von Berechtigungen
''''''''''''''''''''''''''''

Für Berechtigungen benötigt man **Subjekte** (Menschen, Institutionen,
etc.), denen man eine Rolle zuweist. Für jedes Subjekt wird ein
**Zugriffstoken** generiert, mit dem der Betrachter Zugriff auf die
Website bekommt. Dieses Token muss man dem Betrachter mitteilen.
Innerhalb der Rolle werden Zugriffsberechtigungen verteilt, das höchste
Recht ist Vollzugriff, symbolisiert durch ein ``*``- Symbol, das
niedrigste ist **kein Zugriff**.

#. Anlegen von Subjekten
#. Anlegen von Rollen
#. Löschen von Dokumenten
#. Behandlungsdaten in der Zukunft

Anlegen von Subjekten:

|nightscout\_subjects|

| Es gibt standardmäßig 6 Rollen, die in den meisten Fällen ausreichend
  sind. Hinter den Rollen sind die Zugriffsrechte gelistet.
| Man kann eigene Rollen wie beim anlegen von Subjekten definieren und
  speichern.

Es ist unter Punkt 3 möglich, die Gerätestatus - Sammlung (Collection in
der mongo db) mit diesem Menüpunkt zu löschen.

Mit Punkt 4 kann man fälschlicherweise Behandlungen mit Datum in der
Zukunft aus der Datenbank löschen.

Jetzt geht es weiter mit dem
`Behandlungsportal <../nightscout/care_portal.md>`__

.. |Einstellungen| image:: ../images/nightscout/nightscout_config_menue.jpg
.. |nightscout\_reporting\_config| image:: ../images/nightscout/nightscout_reporting_config.jpg
.. |nightscout\_reporting\_daily\_graph| image:: ../images/nightscout/nightscout_reporting_daily_graph.jpg
.. |nightscout\_change\_treatments| image:: ../images/nightscout/nightscout_change_treatments.jpg
.. |nightscout\_profile\_editor\_plugins| image:: ../images/nightscout/nightscout_profile_editor_plugins.jpg
.. |nightscout\_nahrungsmittel\_editor| image:: ../images/nightscout/nightscout_nahrungsmittel_editor.jpg
.. |nightscout\_administrator\_werkzeuge| image:: ../images/nightscout/nightscout_administrator_werkzeuge.jpg
.. |nightscout\_subjects| image:: ../images/nightscout/nightscout_admin_tools_subject.PNG

