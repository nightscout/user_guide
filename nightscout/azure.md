# Azure

[Azure](https://de.wikipedia.org/wiki/Microsoft_Azure) ist ein Cloud - Computing Dienst, welcher umfangreiche Services  für Anwender zur Verfügung stellt.

**Einstieg:**

Den Einstieg in deutscher Sprache findet man hier: [Azure ](https://azure.microsoft.com/de-de/)

Mit dem zweimaligen Drücken des Buttons **Kostenlos testen >** gelangt man zur Registrieungsseite:

![azure_reg](../images/azure/azure_reg.jpg)

Sollte man schon ein Konto haben, kann man sich einfach anmelden, ansonsten geht es mit der **Registrierung** weiter.
Man wird aufgefordert, seine Kreditkarten einzugeben, die Karte wird nicht belastet.
Nachdem alles abgeschlossen und gespeichert wurde, kann man sich im Azure Portal anmelden.
 Über den Klick auf **Portal** befindet man sich jetzt im Azure Portal and die Web - Applikation konfigurieren.
 
 **Azure Portal Startseite:**
 
 ![azure_portal](../images/azure/azure_portal.jpg)
 
 Mit dem Button **+ Neu** richten wir eine neue **Ressource** ein. Die Menüführung ist kaskadiert ,alle gelb markierten Punkte sind auszuwählen. Bei Auswahlpunkten mit **>** kann man weitere Einstellungen auswählen:
 
 
 ![azure_config_app](../images/azure/azure_config_app.jpg)
 
 Mit dem Button **Erstellen** speichert man die Einstellungen. Dieses kann einige Zeit
 in Anspruch nehmen.
 
 Der Name der Nightscout - Website ist jetzt: **nscgmq01.azurewebsites.net**. Diesen Namen bitte auch notieren.
 
 Wenn die Web-App erstellt wurde, erscheint diese Ansicht:
 
 ![azure_app_created](../images/azure/azure_app_created.jpg)
 
 Die Web-App wird jetzt in Irland gehostet. Wichtig ist der **Status**. Hier wird angezeigt,ob die App online ist oder nicht.
 
 

 
 Weiter geht es mit der **Konfiguration:**
 
 Wir beginnen mit der Verbindung zur Mongo DB:
 
 ![azure_mongodb_connection](../images/azure/azure_mongodb_connection.jpg)
 
 **mongo:** Name der Verbindung
 
 **mongodb://dbuser:dbpassword@ds040888.mongolab.com:40888/nscgmdatabase**: Verbindungszeichenfolge, diese steht im vorher ausgefüllten Datenblatt
 
 **Benutzerdefiniert**: Attribut
 
 
 Wir machen auf die gleiche Weise weiter mit der Angabe der mongodb Collection:
 
 **mongo_collection**: Parameter für Verbindung
 
 **entries**: Standard: entries, die Collection, in der die CGM Werte gespeichert werden. GGF. muss der Name angepasst werden.
 
 **Benutzerdefiniert**: Attribut
 
 
 

 
 
 
 
 
 

















