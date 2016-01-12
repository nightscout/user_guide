# Azure

[Azure](https://de.wikipedia.org/wiki/Microsoft_Azure) ist ein Cloud - Computing Dienst, welcher umfangreiche Services  für Anwender zur Verfügung stellt.

**Einstieg:**

Den Einstieg in deutscher Sprache findet man hier: [Azure ](https://azure.microsoft.com/de-de/)

Mit dem zweimaligen Drücken des Buttons **Kostenlos testen >** gelangen wir zur Registrieungsseite:

![azure_reg](../images/azure/azure_reg.jpg)

Sollte man schon ein Konto haben, kann man sich einfach anmelden, ansonsten geht es mit der **Registrierung** weiter.
Wir werden aufgefordert, die Kreditkarten Daten einzugeben, die Karte wird nicht belastet.
Nachdem alles abgeschlossen und gespeichert wurde, können wir uns im Azure Portal anmelden.
 Über den Klick auf **Portal** befinden wir uns jetzt im Azure Portal und können die Web - Applikation konfigurieren.
 
 **Azure Portal Startseite:**
 
 ![azure_portal](../images/azure/azure_portal.jpg)
 
 Mit dem Button **+ Neu** richten wir eine neue **Ressource** ein. Die Menüführung ist kaskadiert ,alle gelb markierten Punkte sind auszuwählen. Bei Auswahlpunkten mit **>** kann man weitere Einstellungen auswählen:
 
 
 ![azure_config_app](../images/azure/azure_config_app.jpg)
 
 Mit dem Button **Erstellen** speichern wir die Einstellungen. Dieses kann einige Zeit
 in Anspruch nehmen.
 
 Der Name der Nightscout - Website ist jetzt: **nscgmq01.azurewebsites.net**. Diesen Namen bitte auch notieren.
 
 Wenn die Web-App erstellt wurde, erscheint diese Ansicht:
 
 ![azure_app_created](../images/azure/azure_app_created.jpg)
 
 Die Web-App wird jetzt in Irland gehostet. Wichtig ist der **Status**. Hier wird angezeigt,ob die App **online** oder **not running** ist.

 
 Weiter geht es mit der **Konfiguration der Verbindungszeichenfolgen:**
 
 Wir beginnen mit der **Verbindung zur Mongo DB**:
 
 ![azure_mongodb_connection](../images/azure/azure_mongodb_connection.jpg)
 
 **mongo:** Parametername
 
 **mongodb://dbuser:dbpassword@ds040888.mongolab.com:40888/nscgmdatabase**: Verbindungszeichenfolge, diese steht im vorher ausgefüllten Datenblatt
 
 **Benutzerdefiniert**: Attribut
 
 
 Wir machen auf die gleiche Weise weiter mit der Angabe der **mongodb Collection:**
 
 **mongo_collection**: Parametername
 
 **entries**: Standard: entries, die Collection, in der die CGM Werte gespeichert werden. GGF. muss der Name angepasst werden.
 
 **Benutzerdefiniert**: Attribut
 
** Speichern **nicht vergessen.
 
 ![azure_save](../images/azure/azure_save.jpg)
 
 
 Jetzt fehlt noch das **API SECRET**. Eine [API](https://de.wikipedia.org/wiki/Programmierschnittstelle) ist eine Programmierschnittstelle, mit der Daten zwischen Internetseiten ausgetauscht werden können. Um sich beim Austausch zu identifizieren, ist ein API SECRET - ein Schlüssel erforderlich.
 Ältere Versionen von xDrip senden z.B. Daten an die Nightscout Website mit dem API SECRET.
 Das API SECRET Wert muss als Minimum zwölf Zeichen lang sein und ist frei wählbar:
 
 **API SECRET**:Parametername
 
 **Y3KmrdFA12jmk**: API SECRET Wert
 
 **Benutzerdefiniert**: Attribut
 
 **Speichern** nicht vergessen.
 
 Mit dem Button **Werte der Verbindungszeichenfolge anzeigen** kann man sich die Werte noch einmal anzeigen lassen:
 
 ![azure_connection_strings](../images/azure/azure_connection_strings.jpg)
 
 
 Weiter geht es mit dem Konfigurieren der [Plugins](https://ladyviktoria.gitbooks.io/nightscout_handbuch/content/nightscout/nightscout_plugins.html). Wir gehen zu den **App-Einstellungen**:
 
 ![azure_enable_plugins](../images/azure/azure_enable_plugins.jpg)
 
 **Eingaben:**
 
 
 **ENABLE**: Parametername
 
 **iob cob bwp basal careportla maker** .... Name der Plugins.
 
 ** Speichern **nicht vergessen.
 
 
 
**Einbindung des GitHub Source Codes**

Zu Bereitstellung der Nightscout -Website fehlt uns noch der `cgm-remote-monitor`, den wir über GitHub laden.
Wir steigen hier ein, die Verbindung herzustellen:

![azure_choose_github](../images/azure/azure_choose_github.jpg)


Jetzt folgt die **GitHub Autorisierung:**

![github_authorize](../images/azure/github_authorize.jpg).

Nachdem man gitHub Benutzername uns Passwort eingegeben hat, erscheint diese Meldung:

![azure_authorize_github](../images/azure/azure_authorize_github.jpg).

Mit **OK** bestätigen.

Jetzt wählt man den `cgm-remote-monitor` aus:

![azure_crm](../images/azure/azure_crm.jpg)

Mit **OK** bestätigen. Die Web-app wird bereitgestellt. Dieses kann ein wenig dauern.

Am Ende erscheint in der Zusammenfassung die Einbindung von GitHub hier:


Sollte es zu einer Fehlermeldung kommen, bitte die Bereitstellung noch einmal starten.


Die Nightscout Webseite steht jetzt im Internet zur Verfügung und kann über einen Browser
mit dem Aufruf http://meinwebsitename.azurewebsites.net aufgerufen werden.
Die Einrichtung ist fertig.


**Kosten:**

Web-Applikationen sind grundsätzlich **kostenfrei**. Auf dem Azure - Portal gibt es eine **Preisübersicht:**

![azure_prices](../images/azure/azure_prices.jpg)
 Mit dem Button Preisrechner können wir uns weitere Details ansehen. Wir wählen App Service aus un erhalten folgende Übersicht:
 
 ![azure_prices_web](../images/azure/azure_prices_web.jpg)
 
 Jetzt können wir uns unsere eigene  [Nightscout Website](../nightscout/die_nightscout_website.md) ansehen und konfigurieren.
 
 
 
 
