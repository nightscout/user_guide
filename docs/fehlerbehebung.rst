Fehlerbehebung
==============

Nightscout Seite bleibt einfach weiß:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  API\_SECRET mindestens 12 Zeichen.
-  Keine Verbindung zur MongoDB. Mögliche Ursachen:
-  

   -  Fehler in der URI.

-  

   -  Falschen Datenbank Benutzer angegeben.

-  

   -  Datenbank Benutzer vergessen anzulegen.

Eingabe von Treatments (Insulin, Kohlenhydrate usw.) wird nicht auf der Hauptseite angezeigt:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  Mit einem anderen Browser gegenprüfen. Ggf. Adblocker /script Blocker
   deaktivieren.
-  Überprüfen, ob das Gerät (Browser) authentifiziert ist.
-  In Nightscout "zurücksetzen und Voreinstellungen verwenden" drücken.

Eingegebene Werte erscheinen in der Nightscout Verlaufsgrafik an einem anderen Tag:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  Bitte unter Profil-Einstellungen die Zeitzone überprüfen und ggf.
   ändern.

Die Website reagiert sehr langsam, wenn sie längere Zeit nicht verwendet wurde:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Wenn die Website längere Zeit nicht verwendet wird, z.B. wenn die
Daten nachts direkt zur Mongo-Datenbank hochgeladen werden und keine
Uhr Daten periodisch abfragt, baut Azure Verbindungen ab. Diese wieder
herzustellen, braucht eine gewisse Zeit. Abhilfe schaffen Dienste, die
die Website periodisch (z.B. alle 5 Minuten einmal) abrufen. Ein
solcher Dienst ist https://uptimerobot.com/.

