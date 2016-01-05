# Nightscout einrichten

Nightscout besteht aus **3 Komponenten**:

* Einer Dokumentations Datenbank ([**MongoDB**](https://www.mongodb.org/)) zur Speicherung, von Blutglukose, Kohlenhydraten, Insulin, Aktivitäten usw.
* Einer **Web-Applikation**, welche über einen beliebigen Browser oder ein App aufgerufen  werden kann. Die Anwendung wird in einem Repository aktualisiert, welche über einen webbasierten Filehosting Dienst [**GitHub**](https://github.com/) verwaltet wird.
* Einen Cloud-Service Anbieter, welcher die Web-Applikation über Webserver zur Verfügung stellt. Microsoft [**Azure**](https://azure.microsoft.com/de-de/pricing/free-trial/) oder [**Heroku**](https://www.heroku.com/) können hierfür verwendet werden.
* 


Ein Schaubild verdeutlicht die Zusammmenhänge:

![nightscout scheme](../images/nightscout_scheme.jpg)







