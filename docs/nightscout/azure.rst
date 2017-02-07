.. _Azure_Deploy:

Azure
=====

`Azure <https://de.wikipedia.org/wiki/Microsoft_Azure>`__ ist ein Cloud
- Computing Dienst, welcher umfangreiche Services für Anwender zur
Verfügung stellt.

Einstieg
--------

Den Einstieg in deutscher Sprache findet man hier:
`Azure <https://azure.microsoft.com/de-de/>`__

Mit dem zweimaligen Klicken des Buttons **Kostenlos testen** gelangen
wir zur Registrierungsseite:

|azure_reg|

Sollte man schon ein Konto haben, kann man sich einfach anmelden,
ansonsten geht es mit der **Registrierung** weiter.

Wir werden aufgefordert, die Kreditkartendaten einzugeben, die Karte
wird nicht belastet.

Nachdem alles abgeschlossen und gespeichert wurde, können wir uns im
Azure Portal anmelden.

Über den Klick auf **Portal** befinden wir uns jetzt im Azure Portal
und können die Web - Applikation konfigurieren.

**Azure Portal Startseite:**

|azure_portal|

Mit dem Button **"+ Neu"** richten wir eine neue **Resource** ein. Die
Menüführung ist kaskadiert, alle gelb markierten Punkte sind
auszuwählen. Bei Auswahlpunkten mit **>** kann man weitere Einstellungen
auswählen:

|azure_config_app|

Mit dem Button **Erstellen** speichern wir die Einstellungen. Dieses
kann einige Zeit in Anspruch nehmen.

Der Name der Nightscout - Website ist jetzt .azurewebsites.net, hier im
Beispiel: **nscgmq01.azurewebsites.net**. Diesen Website - Namen bitte
auch notieren.

Wenn die Web-App erstellt wurde, erscheint diese Ansicht:

|azure_app_created|

Die Web-App wird jetzt in Nordeuropa/Irland gehostet. Wichtig ist der
**Status**. Hier wird angezeigt, ob die App **Running** oder **Stopped**
ist.

Weiter geht es mit der Konfiguration der **Plugin** Module. Diese sind
in Kapitel `Konfiguration der Nightscout
Plugins <../nightscout/azure_plugins.md>`__

|azure_enable_plugins|

Einbindung des GitHub Source Codes
----------------------------------

Zu Bereitstellung der Nightscout-Website fehlt uns noch der
``cgm-remote-monitor``, den wir über GitHub laden.

Wir steigen hier ein, um die Verbindung herzustellen:

|azure_choose_github|

Jetzt folgt die **GitHub Autorisierung:**

|github_authorize|.

Nachdem man gitHub Benutzernamen und Passwort eingegeben hat, erscheint
diese Meldung:

|azure_authorize_github|.

Mit **OK** bestätigen.

Jetzt wählt man den ``cgm-remote-monitor`` aus:

|azure_crm|

Mit **OK** bestätigen. Die Web-app wird bereitgestellt. Dieses kann ein
wenig dauern.

Am Ende erscheint in der Zusammenfassung die Einbindung von GitHub hier:

Sollte es zu einer Fehlermeldung kommen, bitte die Bereitstellung noch
einmal starten.

Die Nightscout Webseite steht jetzt im Internet zur Verfügung und kann
über einen Browser mit dem Aufruf http://YOURWEBSITENAME.azurewebsites.net aufgerufen werden.

Die Einrichtung ist fertig.

Kosten
------

Web-Applikationen sind grundsätzlich **kostenfrei**. Auf dem Azure -
Portal gibt es eine **Preisübersicht:**

|azure_prices|

Mit dem Button Preisrechner können wir uns weitere Details ansehen.
Wir wählen App Service aus und erhalten folgende Übersicht:

|azure_prices_web|

**WICHTIG:** Die Tarife unterscheiden sich nach Region, es ist
wichtig, Nordeuropa oder die USA auszuwählen, für andere Regionen
entstehen ansonsten Kosten, die nicht nötig sind.


Azure_Deploy
==========================

Die Nightscout Website lässt sich mit vielen Standardeinstellungen
beschleunigt installieren.

Wir Starten mit der Anmeldung in in Github an, navigieren in unserer
Repository und den Branch, welchen wir installieren wollen.

Weiter Klicken auf das **Deploy to Azure** Symbol:

|azure_unbeaufsichtigt|

Wir loggen uns bei Azure ein (folgt den angezeigten Anweisungen, um
eingeloggt zu werden). (Wenn wir noch kein Azure-Konto haben, sollten
wir das Azure-Konto zunächst separat hinzufügen und dann wieder in
diese Sequenz von Schritten zurückkehren.

Es ist möglich, das Konto an dieser Stelle einzurichten, aber es kann
weniger verwirrend sein, wenn wir das Konto vorher erstellen.)

Der Bildschirm **Deploy to Azure** wird mit allen Optionen geladen, die
wir (am Anfang) für unsere Website konfigurieren können. (Wir können
dieses später bei Bedarf ändern.)

Es erscheint diese Web - Maske:

|azure_deploy_param|

Wir stellen sicher, dass das Abonnement ``Pay-as-you-go zeigt``. (Wenn
das Konto neu angelegt ist, kann es stattdessen die kostenlose
Testversion zeigen, und wir müssen dieses ändern, bevor der Testphase
endet.)

Wenn eine Ressourcengruppe im Dropdown-Menü aufgelistet ist, wählen
wir sie aus. Ansonsten wählen wir ``Create New`` und akzeptieren oder
ersetzen den "neuen" Ressourcengruppennamen im Feld
``Resource Group Name``.

Wir wählen unseren Site-Namen. Ein Standardname wird bereits im Feld
angezeigt. Wir können ihn mit dem gewünschten Namen ersetzen. Was wir
hier eingeben, wird der "Name" unserer Nightscout-Website (und wird
der Schlüsselteil Ihrer Nightscout-URL) sein. Der Name unserer Website
kann nicht geändert werden. Wenn wir später einen anderen Namen
verwenden möchten, müssen wir eine neue Website erstellen.

**Api Secret:** API Secret Wert, bleibt der Wert unter 12 Zeichen,
bricht die Installation ab.

**Language:** Standart Wert ist **en**, bitte in **de** wechseln.

|grilledcheese-deploytoazure-panel-sitename|

Wir wählen im Dropdown-Menü den Standort aus. (Dieser Standort muss
nicht mit unserem tatsächlichen geografischen Standort übereinstimmen.
``North Europe`` ist für Deutschland zu empfehlen.)

Wir stellen sicher, dass ``Free`` im Sku-Dropdown-Menü ausgewählt ist.
(Dies ist die "kostenlose Variante" von Azure.)

Wir geben jetzt die mongo (mLab) URI in das Feld ``Mongo-Connection``
ein.

Die mLab URI verwendet die Syntax, die in diesem Beispiel gezeigt wird,
wir müssen unsere "EIGEN-Informationen" ausfüllen, "nicht" die
Beispielwerte, die hier gezeigt werden:

``Mongodb://databaseUserName:databaseUserPassword@ds012345.mlab.com:12345/databaseName``

Beispielsweise:

``Mongodb://sallyuser:sallypassword@ds012345.mlab.com:12345/mycgm``

Wir wählen mg / dl oder mmol aus dem Dropdown-Menü Display Units.

In das Api Secret-Feld geben wir das minimales ``API-SECRET`` mit
"mindestens 12 Zeichen" ein. Zeichen sind frei wählbar, aber es muss
mindestens 12 Zeichen lang sein.

Viele der anderen Variablen auf dem Bereitstellungsbildschirm sind
optional. Wenn wir nicht wissen, was eine Variable bedeutet, können wir
im Kapitel **Azure Plugins** Hilfe finden.

Die ENABLE-Variable wird auf dieser einstufigen Implementierung mit
vielen häufig verwendeten Features vorbelegt. Wenn wir der
Werte-Zeichenfolge etwas hinzufügen möchten, setzen wir ein Leerzeichen
nach dem letzten Zeichen im String und geben einen neuen Wert ein (z. B.
Bridge für Benutzer von Dexcom G4 Share / G5-Bridge-Sites oder Pushover
für Pushover-Benachrichtigungen).

Im Feld Show_plugins wird "careportal" vorgefüllt. In diesem Feld
aufgelistete Plugins sind immer auf der Website sichtbar, nn sie müssten
ansonsten innerhalb des Einstellungsbereichs des einzelnen Browsers
aktiviert werden. Wenn wir möchten, dass iage, cage, sage, bwp und rawbg
"immer sichtbar" sind, dann listen wir sie in diesem Feld in einer durch
Leerzeichen getrennten Liste auf. (Hier können auch andere Werte
eingegeben werden, ua bwp, boluscalc usw.)

Wir klicken auf die Schaltfläche ``Next``:

|grilledcheese-next.png|

Der nächste Bildschirm bestätigt, dass eine "Website" bereitgestellt
wird. Wir klicken Sie auf ``Deploy``. (Wenn wir zum vorherigen
Bildschirm zurückkehren müssen, klicken wir auf "Setup".)

|grilledcheese-deploy|

Beim nächsten Schritt sehen wir den Fortschritt. **Sei geduldig :)**.

|grilledcheese-deployment|

Wenn die Bereitstellung abgeschlossen ist (und erfolgreich), sehen wir
eine abschließende Zeile, die über Links verfügt, die uns erlauben,
unsere Website zu verwalten oder nach yoursiteURL zu browsen. Unsere
Nightscout-URL verwendet dieses Format:
http://YOURWEBSITENAME.azurewebsites.net.

|grilledcheese-success|

Wir Klicken auf unsere Website-URL, um die Website zu öffnen. Wenn die
Bereitstellung erfolgreich war und unsere **Mlab-Informationen** korrekt
eingegeben wurden, sollten wir eine schwarze Nightscout-Website sehen.
(Wenn unsere Website noch keine Daten enthält, wird es eine schwarze
Website mit Zeit und Bindestrichen oder Zeit und das Wort
**undefiniert**.

Wenn wir unsere Uploader-App noch nicht installiert und konfiguriert
haben, können wir dieses jetzt tun. (Wenn wir ein kabelgebundenes Rig
verwenden, bedeutet dies, dass wir die Nightscout App installieren
müssen. Wenn wir einen anderen Uploader verwenden oder die Bridge
konfigurieren, kehren wir zu den Grundeinstellungen für unser spezielles
Setup zurück und fahren mit dem nächsten Schritt fort.) Wir werden keine
Daten sehen Auf der Nightscout-Website, bis die Uploader-App (oder
Bridge) konfiguriert ist.

**Wir bestätigen, das unsere Website ist als kostenlose Website
konfiguriert ist.**

Wenn unser Azure Konto neu ist und wir während des Setups keine
Pay-As-You-Go gewählt haben, haben wir 30 Tage Zeit, die Site in
Pay-As-You-Go zu konvertieren. Wir empfehlen, die Website-Einstellungen
zu überprüfen, indem wir Folgendes überprüfen:

::

     Bitte Bestätigen, dass der Abonnementtyp auf Pay-as-you-go festgelegt ist.
     Bitte Bestätigen, dass das Pricing Tier auf Free festgelegt ist.

|azure-new-reviewfree|



.. |azure_unbeaufsichtigt| image:: ../images/azure/azure_deploy.jpg
.. |azure_deploy_param| image:: ../images/azure/grilledcheese-deploytoazure-panel-step1.png
.. |grilledcheese-deploytoazure-panel-sitename| image:: ../images/azure/grilledcheese-deploytoazure-panel-sitename.png
.. |grilledcheese-next.png| image:: ../images/azure/grilledcheese-next.png
.. |grilledcheese-deploy| image:: ../images/azure/grilledcheese-deploy.png
.. |grilledcheese-deployment| image:: ../images/azure/grilledcheese-deployment.png
.. |grilledcheese-success| image:: ../images/azure/grilledcheese-success.png
.. |azure-new-reviewfree| image:: ../images/azure/azure-new-reviewfree.png
.. |azure_reg| image:: ../images/azure/azure_reg.jpg
.. |azure_portal| image:: ../images/azure/azure_portal.jpg
.. |azure_config_app| image:: ../images/azure/azure_config_app.jpg
.. |azure_app_created| image:: ../images/azure/azure_app_created.jpg
.. |azure_enable_plugins| image:: ../images/azure/azure_enable_plugins.jpg
.. |azure_choose_github| image:: ../images/azure/azure_choose_github.jpg
.. |github_authorize| image:: ../images/azure/github_authorize.jpg
.. |azure_authorize_github| image:: ../images/azure/azure_authorize_github.jpg
.. |azure_crm| image:: ../images/azure/azure_crm.jpg
.. |azure_prices| image:: ../images/azure/azure_prices.jpg
.. |azure_prices_web| image:: ../images/azure/azure_prices_web.jpg

