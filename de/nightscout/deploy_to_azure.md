# Der **Deploy to Azure** Button
Die Nightscout Website lässt sich mit vielen Standardeinstellungen beschleunigt installieren.
Wir Starten mit der Anmeldung in Azure.
Danach melden wir uns in Github an, navigieren in unserer Repository und den Branch, welchen wir installieren wollen.

Weiter Klicken auf das **Deploy to Azure** Symbol:
![azure_unbeaufsichtigt](../images/azure/azure_deploy.jpg)

Wir loggen uns bei Azure ein (folgt den angezeigten Anweisungen, um eingeloggt zu werden). (Wenn wir noch kein Azure-Konto haben, sollten wir das Azure-Konto zunächst separat hinzufügen und dann wieder in diese Sequenz von Schritten zurückkehren.
Es ist möglich, das Konto an dieser Stelle einzurichten, aber es kann weniger verwirrend sein Wenn wir das Konto vorher erstellen.)
Der Bildschirm "Deploy to Azure" wird mit allen Optionen geladen, die wir (am Anfang) für unsere Website konfigurieren können. (Wir können dieses später bei Bedarf ändern.)

Es erscheint diese Web - Maske:

![azure_deploy_param](../images/azure/grilledcheese-deploytoazure-panel-step1.png)

Wir stellen sicher, dass das Abonnement `Pay-as-you-go zeigt`. (Wenn das Konto neu angelegt ist, kann es stattdessen die kostenlose Testversion zeigen, und wir müssen dieses ändern, bevor der Testphase endet.)
Wenn eine Ressourcengruppe im Dropdown-Menü aufgelistet ist, wählen wir sie aus. Ansonsten wählen wir `Create New` und akzeptieren oder ersetzen  den "neuen" Ressourcengruppennamen im Feld `Resource Group Name`.
Wir wählen unseren Site-Namen. Ein Standardname wird bereits im Feld angezeigt. Wir können ihn mit dem gewünschten Namen ersetzen. Was wir hier eingeben, wird der "Name" unserer Nightscout-Website (und wird der Schlüsselteil Ihrer Nightscout-URL) sein. Der Name unserer Website kann nicht geändert werden. Wenn wir später einen anderen Namen verwenden möchten, müssen wir eine neue Website erstellen.

**Resource Group**: Die Nightscout Website ist eine **Resource**, die einen **Wartungsplan** benötigt. Im Wartungsplan ist auch der Tarif gespeichert. Einzelne Resourcen werden zu einer Resourcengruppe zusammnegefasst. Hier geben wir einen Namen für die Gruppe ein.

**Subscription**: Standardwert: **Nutzungsbasierte Bezahlung**. Hier bitte nichts ändern.

**Site Name:** Name Deiner Website

**Site Location:** Region, in der die Website gehostet wird, ggf. den Wert auf **North Europe** ändern.

**Sku:** Tarif, **Free** ist Standardwert

**Mongo Connection:** Vollständiger Connection String der mongoDB mit Angabe der Datenbank.

**Api Secret:** API Secret Wert, bleibt der Wert unter 12 Zeichen, bricht die Installation ab.

**Language:** Standart Wert ist **en**, bitte in **de** wechseln.

Weitere Werte kann man ändern, wenn man möchte. Am Ende geht es mit **Weiter** weiter. Im Hintergrund installiert sich jetzt die Website mit den vorbelegten einstellungen. Diese werden als Schlüssel mit Werten in den Azure **Anwendungseinstellungen** gespeichert.

