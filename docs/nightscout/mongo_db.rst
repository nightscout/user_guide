Einrichten der Mongo-Datenbank
==============================

| Die `Mongo DB Datenbank <https://de.wikipedia.org/wiki/MongoDB>`__ ist
  eine Dokumentations - Datenbank. Hier werden die Daten der Nightscout
  Website gespeichert. Es handelt sich um eine Cloud - Datenbank in
  Rechenzentren der USA und Europa.
| Mongo DB gibt es als **kostenlose** Sandbox - Variante.

| Bevor wir mit der Konfiguration loslegen, ist es wichtig, das
  `Arbeitsblatt <../nightscout/datenblatt.md>`__ auszudrucken
| und auszufüllen.

Es ist für weitere Konfigurationen wichtig, dieses Datenblatt sicher
aufzubewahren.

Die URL Adresse zum Start gibt es hier: https://mlab.com

Wir starten mit der Einrichtung der Benutzer - Konten auf der mlab -
Startseite:

| **SIGN UP:**
| |mongodb signin up|

Weiter gehts mit dem **Anlegen** der benötigten **Konten:** zur
Verwaltung

|mongo db create account|

**Passwörter**

Der Einfachheit halber kann man denselben Benutzernamen (Account name)
für die Verwaltung von mongolab als auch für den Datenbanknutzer
(Username) nutzen, muss es aber nicht. Hauptsache: **Alles notieren**.
Auch sind eigene Passwörter nur für mlab und Nightscout sinnvoll, es
sollten auf keinen Fall bereits bekannte Passwörter, welche man für
andere Anlässe wie Online-Banking nutzt, verwendet werden.

| **Überprüfung Email:**
| |verifyemail|

Nachdem der Benutzer - Account eingerichtet wurde, bitte einmal im
Postfach der angegebenen Email - Adresse die Bestätigungs - Email
suchen. Durch Klick auf den Link wird man auf die Seite zur Einrichtung
einer Datenbank geleitet.

**Anlegen einer Datenbank:**

Wir starten mit dem Klick auf "Create New":

|create_db|

Alle gelb markierten Punkte sind auszufüllen, der Datenbankname ist frei
wählbar:

|mongodb_details|

| Wichtig ist er Eintrag FREE, damit wird die Datenbank kostenlos
  betrieben.
| Nachdem der Button **Create new MongoDB deployment** geklickt wurde,
  erscheint eine Erfolgsmeldung:

|mongodb_create_success|

| Durch Doppelklick auf den Namen, hier: **ds040888/nscgmdatabase** fügt
  man u.a. den Datenbankbenutzer ein. Das ist derjenige, welcher in
  Azure oder xdrip konfiguriert wird,
| um auf die mongodb zuzugreifen:

**Datenbankbenutzer hinzufügen:**

|mongodb_create_dbuser|

..und die vorher notierten Daten eingeben:

|mongodb_dbuser_details|

**WICHTIG:**

Dabei darauf achten, dass bei "Make read-only" kein Haken gesetzt ist,
da man Schreibrechte auf die Datenbank braucht.

**Hinzufügen einer "Collection":**

Unter Collections auf "add collection" gehen, einen Namen wie z.B.
"entries" eintragen und auf "create" tippen. Dieser Name wird später bei
azure unter Anwendungseinstellungen als mongo collection eingefügt.

**WICHTIG:**

Am Ende bitte unbedingt die MongoDB
`URI <https://de.wikipedia.org/wiki/Uniform_Resource_Identifier>`__
notieren. Diese wird benötigt, um auf die Daten über das Internet
zugreifen zu können.

**Die URI Syntax:**

Zum besseren Verständnis ausführlich erklärt:

**mongodb://dbuser:\ dbpassword@ds040888.mlab.com:40888/nscgmdatabase**

**dbuser:** ist der vorher eingerichtete Datenbankbenutzer

**dbpassword:** ist das eingerichtete Passwort für den Datenbankbenutzer

**@:** ist ein Verbindungszeichen, muss angegeben werden

**ds040888.mlab.com:** ist ein einzigartiger Name, über den die mongodb
angesprochen wird

**:** ist ein Verbindungszeichen, muss angegeben werden

**40888:** ist ein sogenannter
`Kommunikationsport <https://de.wikipedia.org/wiki/Port_%28Protokoll%29>`__,
der für den Zugriff benötigt wird

**nscgmdatabase:** Name der mongodb

Diese Daten bitte unbedingt im Datenblatt notieren. Bei evtl.
Verbindungsproblemen ist eine der häufigsten Ursachen ein falsche URI,
es kommt hier auf Details, auf jedes Zeichen an!

Es gibt **optionale** Komponenten zum Management der MongoDB im nächsten
Kapitel, diese sind nicht Bestandteil der Implementierung.

Ansonsten geht es jetzt weiter mit der Einrichtung von
`GitHub <../nightscout/github.md>`__


Mongo DB Administration
-----------------------

*Dieser Teil ist optional*

Mongo DB ist eine Dokumentations - Datenbank, welche aus Collections
(Sammlungen von Dokumenten) und Dokumenten besteht. Mongo DB ist eine
`NoSQLDB <https://de.wikipedia.org/wiki/NoSQL>`__ und schemafrei. Die
Dokumente werden u.a. im JSON Format abgespeichert.
http://www.json.org/json-de.html Die Dokumente können direkt in
die DB geladen werden. Um eine Dokumenten DB zu administrieren, ist eine
Admin - GUI: https://de.wikipedia.org/wiki/Grafische_Benutzeroberfl%C3%A4che
sinnvoll.

Ein Anbieter ist z.B. `3T Software Labs <http://3t.io/about-us>`__ aus
Berlin.

Der 3T MongoChef http://3t.io/mongochef ist für den Privatgebrauch
kostenlos.

Unter: http://3t.io/mongochef/download muss man sich registrieren und
kann dann die Software für das jeweilige Betriebssystem herunterladen.

**Mit dieser Admin GUI ist folgendes möglich:**

-  **Kopieren von Datenbanken und Collections**

Dieses ist hilfreich, wenn man die mongodb umziehen möchte, z.B. von
einem Standort aus den USA zu einem Standort nach Europa. Man kann es
auch als Backup Möglichkeit nutzen

-  **Im- und Export von Dokumenten**

Man kann sowohl csv-, als auch json - Dokumente im- bzw. exportieren.
Die Daten aus der Cloud können lokal auf einen Rechner gespeichert
werden, als Backup - Möglichkeit, oder zur Weiterverarbeitung im csv -
Format

-  **Erstellung von JSON Queries um BZ und andere Daten auszuwerten**

Für weitergehende Reporting Abfragen, welche nicht über die Nightscout -
Reporting Seite zur Verfügung gestellt werden, können JSON - queries
gebildet werden. Die Ergbnisse können wiederum im json- oder csv Format
abgespeicht werden, um sie z.B. dem Doktor zukommen zu lassen.

Die **Installation** z.B. unter Windows ist eine Standard - Installation
ohne speziell benötigte Parameter.

Beim Aufruf wird man aufgefordert, eine **Connection** = Verbindung zur
Mongo DB zu konfigurieren. Dieses ist die URI aus vorhergehendem
Kapitel.

**Connection:**
Klicke **Connect**, dann öffnet sich folgendes Fenster:

|mongochef_connect_name_port|

|mongochef_connect_user|

.. |mongochef_connect_name_port| image:: ../images/mongodb/mongodb_connect_name_port.jpg
.. |mongochef_connect_user| image:: ../images/mongodb/mongodb_connect_user.jpg
.. |mongodb signin up| image:: ../images/mongodb/mlab_sign_up.jpg
.. |mongo db create account| image:: ../images/mongodb/mongo_db_create_account.jpg
.. |verifyemail| image:: ../images/mongodb/verifyemail.jpg
.. |create_db| image:: ../images/mongodb/create_db.jpg
.. |mongodb_details| image:: ../images/mongodb/mongodb_details.jpg
.. |mongodb_create_success| image:: ../images/mongodb/mongodb_create_success.jpg
.. |mongodb_create_dbuser| image:: ../images/mongodb/mongodb_createdbuser.jpg
.. |mongodb_dbuser_details| image:: ../images/mongodb/mongodb_dbuser_details.jpg

