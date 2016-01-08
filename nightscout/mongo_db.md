
# 



Die [Mongo DB Datenbank](https://de.wikipedia.org/wiki/MongoDB) ist eine Dokumentations - Datenbank. Hier werden die Daten der Nightscout Website gespeichert. Es handelt sich um eine Cloud - Datenbank in Rechenzentren der USA und Europa. 
Mongo DB gibt es als **kostenlose** Sandbox - Variante.

Bevor man mit der Konfiguration loslegen kann, ist es wichtig, das **Arbeitsblatt** auszudrucken
und auszufüllen:
[Link zum übersetzen Arbeitsblatt](https://github.com/LadyViktoria/nightscout_handbuch/raw/master/dokumente/arbeitsblatt.pdf)

Es ist für weitere Konfigurationen wichtig, dieses Datenblatt sicher aufzubewahren.

Die URL Adresse zum Start gibt es hier: https://mongolab.com

Wir starten mit der Einrichtung der Benutzer - Konten auf der mongolab - Startseite:


**SIGN UP:**
![mongodb sign up](../images/mongodb/mongodb_sign_up.jpg)

Weiter gehts mit dem **Anlegen** der benötigten **Konten:** zur Verwaltung 
![mongo db create account](../images/mongodb/mongo_db_create_account.jpg)

**Passwörter**

Der Einfachheit halber kann man den selben Benutzernamen (Account name) für die Verwaltung von mongolab als auch für den Datenbanknutzer (Username) nutzen, muss es aber nicht. Hauptsache: **Alles notieren**. Auch sind eigene Passwörter nur für mongolab und Nightscout sinnvoll, es sollten auf keinen Fall bereits bekannte Passwörter, welche man für andere Anlässe wie Online-Banking nutzt, verwendet werden.

**Überprüfung Email:**
![verifyemail](../images/mongodb/verifyemail.jpg)

Nachdem der Benutzer - Account eingerichtet wurde, bitte einmal im Postfach der angegebenen Email - Adresse die Bestätigungs - Email suchen. Durch Klick auf den Link wird man auf die Seite zur Einrichtung einer Datenbank geleitet.

**Anlegen einer Datenbank:**

Wir starten mit dem Klick:
![create_db](../images/mongodb/create_db.jpg)

Alle gelb markierten Punkte sind auszufüllen, der Datenbankname ist frei wählbar:
![mongodb_details](../images/mongodb/mongodb_details.jpg)


Wichtig ist er Eintrag FREE, damit wird die Datenbank kostenlos betrieben.
Nachdem der Button **Create new MongoDB deployment** geklickt wurde, erscheint eine Erfolgsmeldung:

![mongodb_create_success](../images/mongodb/mongodb_create_success.jpg)

Durch Doppelklick auf den Namen, hier: **ds040888/nscgmdatabase** richtet man u.a. den Datenbankbenutzer ein. Das ist derjenige, welcher in Azure oder xdrip konfiguriert wird,
um auf die mongodb zuzugreifen:

**Datenbankbenutzer Anlegen:**

![mongodb_create_dbuser](../images/mongodb/mongodb_createdbuser.jpg)

..und die vorher notierten Daten eingeben:


![mongodb_dbuser_details](../images/mongodb/mongodb_dbuser_details.jpg)


**WICHTIG:**

Am Ende bitte unbedingt die MongoDB [URI](https://de.wikipedia.org/wiki/Uniform_Resource_Identifier) notieren..Diese wird benötigt, um auf die Daten über das Internet zugreifen zu können.

**Die URI Syntax:**

Zum besseren Verständnis ausführlich erklärt:

**mongodb://dbuser:dbpassword@ds040888.mongolab.com:40888/nscgmdatabase**

**dbuser:** ist der vorher eingerichtete Datenbankbenutzer

**dbpassword:** ist das eingerichtete Passwort für den Datenbankbenutzer

**@:** ist ein Verbindungszeichen, muss angegeben werden

**ds040888.mongolab.com:** ist ein einzigartiger Name, über den die mongodb angesprochen wird

**:** ist ein Verbindungszeichen, muss angegeben werden

**40888:** ist ein sogenannter [Kommunikationsport](https://de.wikipedia.org/wiki/Port_%28Protokoll%29), der für den Zugriff benötigt wird

**nscgmdatabase:** Name der mongodb

Diese Daten bitte unbedingt im Datenblatt notieren. Bei evtl. Verbindungsproblemen ist eine der häufigsten Ursachen ein falsche URI, es kommt hier auf Details, auf jedes Zeichen an!

Es gibt optionale Komponenten zum Management der DB im nächsten Kapitel, diese sind nicht Bestandteil der Implementierung.

Ansonsten geht es jetzt weiter mit der Einrichtung von 













