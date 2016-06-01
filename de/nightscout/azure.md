# Azure


[Azure](https://de.wikipedia.org/wiki/Microsoft_Azure) ist ein Cloud - Computing Dienst, welcher umfangreiche Services  für Anwender zur Verfügung stellt.

#Einstieg:

Den Einstieg in deutscher Sprache findet man hier: [Azure ](https://azure.microsoft.com/de-de/)

Mit dem zweimaligen Drücken des Buttons **Kostenlos testen >** gelangen wir zur Registrierungsseite:

![azure_reg](../images/azure/azure_reg.jpg)

Sollte man schon ein Konto haben, kann man sich einfach anmelden, ansonsten geht es mit der **Registrierung** weiter.
Wir werden aufgefordert, die Kreditkartendaten einzugeben, die Karte wird nicht belastet.
Nachdem alles abgeschlossen und gespeichert wurde, können wir uns im Azure Portal anmelden.
 Über den Klick auf **Portal** befinden wir uns jetzt im Azure Portal und können die Web - Applikation konfigurieren.
 
 **Azure Portal Startseite:**
 
 ![azure_portal](../images/azure/azure_portal.jpg)
 
 
 Mit dem Button **+ Neu** richten wir eine neue **Ressource** ein. Die Menüführung ist kaskadiert, alle gelb markierten Punkte sind auszuwählen. Bei Auswahlpunkten mit **>** kann man weitere Einstellungen auswählen:
 
 
 ![azure_config_app](../images/azure/azure_config_app.jpg)
 
 
 Mit dem Button **Erstellen** speichern wir die Einstellungen. Dieses kann einige Zeit
 in Anspruch nehmen.
 
 Der Name der Nightscout - Website ist jetzt AppServiceName.azurewebsites.net, hier im Beispiel: **nscgmq01.azurewebsites.net**. Diesen Namen bitte auch notieren.
 
 Wenn die Web-App erstellt wurde, erscheint diese Ansicht:
 
 ![azure_app_created](../images/azure/azure_app_created.jpg)
 
 Die Web-App wird jetzt in Nordeuropa/Irland gehostet. Wichtig ist der **Status**. Hier wird angezeigt, ob die App **online/running** oder **Stopped** ist.

 
 Weiter geht es mit der Konfiguration der **Anwendungseinstellungen**: Jede Zeile besteht aus einem **Schlüssel** und einem **Wert**.
 
 Wir beginnen mit der **Verbindung zur Mongo DB**:
 
 ![mongodb_connection](../images/azure/azure_app_settings.JPG)
 
 - **MONGO_CONNECTION** Schlüssel der Einstellung
 
 **mongodb://dbuser:dbpassword@ds040888.mlab.com:40888/nscgmdatabase**: Verbindungszeichenfolge, diese steht im vorher ausgefüllten Datenblatt
 
 
** Speichern **nicht vergessen.
 
 ![azure_save](../images/azure/azure_save.jpg)
 
 
 - Jetzt fehlt noch das **API SECRET**. 

 Der API_SECRET Wert muss als **Minimum zwölf Zeichen** lang sein, da sonst die Nightscout Seite einfach weiß bleibt, und ist frei wählbar. Das API_SECRET wird für Careportal Eingaben, Pushover Notifications und REST API Upload benötigt.
 
 **API_SECRET**: Parametername
 
 **Y3KmrdFA12jmk**: API SECRET Wert (Beispiel)
 
 
 An dieser Stelle noch ganz wichtig den 
 
 - Parametername : **TREATMENTS_AUTH** 
 
 mit dem Wert: **ON**
 
 Dieser Wert ist wichtig, ansonsten kann auch **jeder**, der die Website kennt, auch **ohne den geheimen** Wert vom API Secret Werte in eurer Datenbank **hinzufügen** oder **verändern**.

 
 **Speichern** nicht vergessen.
 
 
 Weiter geht es mit dem Konfigurieren der Plugin Module:
 #App Einstellungen 
 
 
 
 | Plugin |  Hinweise |
| -- | -- |
| careportal | Basismodul für Eingabe von Therapie - Daten  |
| rawbg |  benötigt Daten über xDrip oder Nightscout Uploder App |
| iob | benötigt Profil- und careportal -Eingaben |
| cob | benötigt careportal Eingaben |
| bwp | Bolusrechner|
| cage| benötigt Careportal Eingaben |
|treatmentnotify |Benachrichtigungen über Eingaben|
|basal|Visualisierung der Basalrate|
|bridge-enable |Anbindungsmöglichkeit Dexcom Share mit iOS |
|mmconnect |medtronic CGM System - Anbindung|
 
 Wir gehen zu den **App-Einstellungen** und konfigurieren den Wert **ENABLE**:
 
 ![azure_enable_plugins](../images/azure/azure_enable_plugins.jpg)
 
 **Eingaben:**
 
 
 **ENABLE**: Parametername
 
 **Plugins**: careportal rawbg iob cob bwp cage treatmentnotify basal bridge mmconnect
 
 ** Speichern **nicht vergessen.
 
 
 
#Einbindung des GitHub Source Codes

Zu Bereitstellung der Nightscout -Website fehlt uns noch der `cgm-remote-monitor`, den wir über GitHub laden.
Wir steigen hier ein, um die Verbindung herzustellen:

![azure_choose_github](../images/azure/azure_choose_github.jpg)


Jetzt folgt die **GitHub Autorisierung:**

![github_authorize](../images/azure/github_authorize.jpg).


Nachdem man gitHub Benutzernamen und Passwort eingegeben hat, erscheint diese Meldung:

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


#Kosten:

Web-Applikationen sind grundsätzlich **kostenfrei**. Auf dem Azure - Portal gibt es eine **Preisübersicht:**

![azure_prices](../images/azure/azure_prices.jpg)
 Mit dem Button Preisrechner können wir uns weitere Details ansehen. Wir wählen App Service aus und erhalten folgende Übersicht:
 
 ![azure_prices_web](../images/azure/azure_prices_web.jpg)
 
 **WICHTIG: **Die Tarife unterscheiden sich nach Region, es ist wichtig, Nordeuropa oder die USA auszuwählen, für andere Regionen entstehen ansonsten Kosten, die nicht nötig sind.
 
 Jetzt können wir uns unsere eigene  [Nightscout Website](../nightscout/die_nightscout_website.md) ansehen und konfigurieren.
 
 
 
 
