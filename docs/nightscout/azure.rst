Azure
=====

`Azure <https://de.wikipedia.org/wiki/Microsoft_Azure>`__ ist ein Cloud
- Computing Dienst, welcher umfangreiche Services für Anwender zur
Verfügung stellt.

Einstieg:
=========

Den Einstieg in deutscher Sprache findet man hier:
`Azure <https://azure.microsoft.com/de-de/>`__

Mit dem zweimaligen Klicken des Buttons **Kostenlos testen >** gelangen
wir zur Registrierungsseite:

|azure\_reg|

| Sollte man schon ein Konto haben, kann man sich einfach anmelden,
  ansonsten geht es mit der **Registrierung** weiter.
| Wir werden aufgefordert, die Kreditkartendaten einzugeben, die Karte
  wird nicht belastet.
| Nachdem alles abgeschlossen und gespeichert wurde, können wir uns im
  Azure Portal anmelden.
| Über den Klick auf **Portal** befinden wir uns jetzt im Azure Portal
  und können die Web - Applikation konfigurieren.

**Azure Portal Startseite:**

|azure\_portal|

Mit dem Button **+ Neu** richten wir eine neue **Resource** ein. Die
Menüführung ist kaskadiert, alle gelb markierten Punkte sind
auszuwählen. Bei Auswahlpunkten mit **>** kann man weitere Einstellungen
auswählen:

|azure\_config\_app|

| Mit dem Button **Erstellen** speichern wir die Einstellungen. Dieses
  kann einige Zeit
| in Anspruch nehmen.

Der Name der Nightscout - Website ist jetzt .azurewebsites.net, hier im
Beispiel: **nscgmq01.azurewebsites.net**. Diesen Website - Namen bitte
auch notieren.

Wenn die Web-App erstellt wurde, erscheint diese Ansicht:

|azure\_app\_created|

Die Web-App wird jetzt in Nordeuropa/Irland gehostet. Wichtig ist der
**Status**. Hier wird angezeigt, ob die App **Running** oder **Stopped**
ist.

Weiter geht es mit der Konfiguration der **Plugin** Module. Diese sind
in Kapitel `Konfiguration der Nightscout
Plugins <../nightscout/azure_plugins.md>`__

|azure\_enable\_plugins|

Einbindung des GitHub Source Codes
==================================

| Zu Bereitstellung der Nightscout-Website fehlt uns noch der
  ``cgm-remote-monitor``, den wir über GitHub laden.
| Wir steigen hier ein, um die Verbindung herzustellen:

|azure\_choose\_github|

Jetzt folgt die **GitHub Autorisierung:**

|github\_authorize|.

Nachdem man gitHub Benutzernamen und Passwort eingegeben hat, erscheint
diese Meldung:

|azure\_authorize\_github|.

Mit **OK** bestätigen.

Jetzt wählt man den ``cgm-remote-monitor`` aus:

|azure\_crm|

Mit **OK** bestätigen. Die Web-app wird bereitgestellt. Dieses kann ein
wenig dauern.

Am Ende erscheint in der Zusammenfassung die Einbindung von GitHub hier:

Sollte es zu einer Fehlermeldung kommen, bitte die Bereitstellung noch
einmal starten.

| Die Nightscout Webseite steht jetzt im Internet zur Verfügung und kann
  über einen Browser
| mit dem Aufruf http://\ .azurewebsites.net aufgerufen werden.
| Die Einrichtung ist fertig.

Kosten:
=======

Web-Applikationen sind grundsätzlich **kostenfrei**. Auf dem Azure -
Portal gibt es eine **Preisübersicht:**

| |azure\_prices|
| Mit dem Button Preisrechner können wir uns weitere Details ansehen.
  Wir wählen App Service aus und erhalten folgende Übersicht:

|azure\_prices\_web|

**WICHTIG: **\ Die Tarife unterscheiden sich nach Region, es ist
wichtig, Nordeuropa oder die USA auszuwählen, für andere Regionen
entstehen ansonsten Kosten, die nicht nötig sind.

Jetzt können wir uns unsere eigene `Nightscout
Website <../nightscout/die_nightscout_website.md>`__ ansehen und
konfigurieren.

.. |azure\_reg| image:: ../images/azure/azure_reg.jpg
.. |azure\_portal| image:: ../images/azure/azure_portal.jpg
.. |azure\_config\_app| image:: ../images/azure/azure_config_app.jpg
.. |azure\_app\_created| image:: ../images/azure/azure_app_created.jpg
.. |azure\_enable\_plugins| image:: ../images/azure/azure_enable_plugins.jpg
.. |azure\_choose\_github| image:: ../images/azure/azure_choose_github.jpg
.. |github\_authorize| image:: ../images/azure/github_authorize.jpg
.. |azure\_authorize\_github| image:: ../images/azure/azure_authorize_github.jpg
.. |azure\_crm| image:: ../images/azure/azure_crm.jpg
.. |azure\_prices| image:: ../images/azure/azure_prices.jpg
.. |azure\_prices\_web| image:: ../images/azure/azure_prices_web.jpg

