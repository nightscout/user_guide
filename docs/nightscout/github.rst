GitHub
======

`GitHub <https://de.wikipedia.org/wiki/GitHub>`__ ist ein webbasierter
Filehosting-Dienst für Software-Entwicklungsprojekte. Software besteht
aus vielen Files, die in einer Verzeichnisstruktur liegen. Diese Files
enthalten den eigentlichen Programmiercode. Das ``cgm-remote-monitor``
repository enthält den Programmcode zum Aufbau der Nightscout Website.

Stellt ein Software - Entwickler etwas zur Verfügung, legt er die
files in einem **branch** ab. Der **branch** kennzeichnet Umgebungen.
Im **dev - branch** wird normalerweise entwickelt und getestet.
Verlief alles erfolgreich, werden die geänderten files in den **master
branch** verschoben (committed). Nighscout wird weiterentwickelt, mit
der Einteilung in **branches** lassen sich verschiedene Versionen
einer Software managen.

Die Files eines branches kopieren wir uns in unser eigenes Verzeichnis
(Fork).

Wir starten mit dem **Sign Up** auf der `GitHub
Site <https://github.com/>`__:

|github sign up|

**Wichtig** ist auch hier, Benutzername und Passwort in das Datenblatt
einzutragen.

Mit **Edit Profile** können wir uns unsere Einstellungen ansehen.

**Billing:**

Unter diesem Menüpunkt sind die Kosten aufgelistet, wichtig ist hier,
das hier **Free** angezeigt wird:

|github_billing|

Wir suchen jetzt den **Programmcode**:

Über die Suchfunktion jetzt ``cgm-remote-monitor`` eingeben:

|github_search|

Den **branch** wie master oder dev auswählen und mit **Fork**
kopieren wir den Code in unser eigenes Verzeichnis:

|github_branch_master|

Das Ergebnis mit unserem eigenen Branch:

|github_fork|

**Aktualisierung des eigenen** ``cgm-remote-monitor`` **repositories**

In den vergangenen Monaten sind Beta Versionen (0.9-betax) erschienen.
Für die Versionen gibt es ein Web - Updatetool.

Die Links hierzu werden über Facebook (CGM in the Cloud) und
Gitterchatgruppen veröffentlicht. Es empfiehlt sich eine separate
Website anzulegen, um Beta - Versionen testen zu können. Durch Angabe
des mongodb - Namens wird die Datenquelle mitgenommen.

Beim Aufruf des Update-Links geben wir den GitHub Account - Namen ein
und Klicken **I'm Ready**. Anschließend werden wir nach dem **github**
Benutzernamen gefragt. Mit **Check for Updates** geht es weiter. Liegt
eine neuere Version vor, dann erscheint der Button

**Create Pull Request** jetzt erfolgt der Vergleich mit den file -
Versionen und es wird angezeigt, was aktualisiert wurde.

Mit **Confirm Merge** bestätigen wir die ermittelten Änderungen und
bringen dmit den cgm-remote-monitor auf den aktuellen Stand.

Jetzt instsallieren wir die Nightscout Website `Deploy to
Azure <../nightscout/deploy_to_azure.md>`__.

.. |github sign up| image:: ../images/github/github_sign_up.jpg
.. |github_billing| image:: ../images/github/github_billing.jpg
.. |github_search| image:: ../images/github/github_search.jpg
.. |github_branch_master| image:: ../images/github/github_branch_master.jpg
.. |github_fork| image:: ../images/github/github_fork.jpg

