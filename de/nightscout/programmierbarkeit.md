# Programmierbarkeit

Nightscout besteht aus einer **Applikations-** und einer **Datenbankschicht**.


# Applikationsschicht

Nightscout ist eine Open Source Software. Der Software Code ist frei im Internet über [GitHub](https://github.com/nightscout/cgm-remote-monitor) einsehbar. Jeder, der Interesse hat und sich zutraut am Programmcode mitzuentwickeln kann dieses tun. Die Kommunikation verläuft über [Gitter Chat](https://gitter.im/) in englischer Sprache.
Die Software wird auf einem Webserver gehostet. Sie wird über Webservices angesprochen, welche das API beschreibt.


Das [API] (https://de.wikipedia.org/wiki/Programmierschnittstelle) ist mit [Swagger](http://swagger.io/) dokumentiert. Swagger ist ein API Dokumentationswerkzeug, welches auf die [Open API Initiative](https://openapis.org/) aufbaut.

Wir können das  Nightscout API mit der Adresse:
https://meinwebsitename.azurewebsites.net/api-docs.html#/ aufrufen:

**Nightscout API:**

![nightscout_swagger](../images/nightscout/nightscout_swagger.jpg)

Sollten die Details nicht automatisch dargestellt werden, so bitte den Wert

https://meinwebsitename.azurewebsites.net/swagger.yaml eintragen und den Button Explore klicken.

**IFTTT**
Der Internet - Event Dienst IFTTT ([If This Than That](https://de.wikipedia.org/wiki/IFTTT)) verknüpft verschiedene Webanwendungen, um Daten auszutauschen. So können Benachrichtigungen, welche über Nightscout erzeugt werden, z.B. als Email weitergeleitet werden.
 
Daneben gibt es weitere Möglichkeiten, z.B. über Azure Webjobs  Daten zwischen Nighscout und anderen Tagebüchern, wie Sport- oder Ernährungstagebüchern zu synchronisieren, sofern diese eine dokumentiertes API besitzen. 
 
 
 
 
 # Datenbankschicht
 
 Als Nutzer der mongodb hat man Vollzugriff auf seine Daten. Über Tools, wie in Kapitel 2.5 beschrieben, kann man sich die CGM- und Behandlungsdaten sichern (im json- und csv Format). Es sind auch Uploads über die json und csv Formate möglich.
 
 
 Weiter gehts mit der Anbindung von  [Smartwatches](../smartwatch/smartwatch_integration.md).