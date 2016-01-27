# Plugins

Das Erscheinungsbild der Nightscout Website kann weiter konfiguriert werden. Die hier beschriebenen Einstellungen werden über die Azure - **App. Einstellungen** konfiguriert.


**Deaktivierung** von Standard - default Plugins:


Wir können die Ansicht der Nightscout Haupt Seite auf eigene Wünsche anpassen, dieses über 
Deaktivierung von default Plugin. Dieses mit dem **DISABLE** Parameter :
 
| Plugin |  Hinweise |
| -- | -- |
|delta | berechnet und zeigt die Veränderung zwischen den letzten beiden BZ - Werten an|
|direction |zeigt den Blutzuckertrend an|
|upbat |zeigt den aktuellsten Batterieladezustand des Uploader - Smartphones an|
|errorcodes |erzeugt Alarme für CGM Fehlermeldungen |
|ar2 | erzeugt Alarme basierend auf prognostizierten Werten|
|simplealarms |nutzt BG_HIGH, BG_TARGET_TOP, BG_TARGET_BOTTOM, BG_LOW Schwellenwerte, um alarme zu erzeugen|





Anbindung der Share2Bridge Funktionalität
 
 Nutzer der Share2bridge Funktionalität können ihr Parameter  in den Connection Strings konfigurieren:
 
 
 Integrated Share2Nightscout Bridge

Users who are uploading Dexcom Share data using an iOS device paired with the Share receiver can now configure the Nightscout site to use the Share data without running a separate bridge app. (A site running Funnel Cake can configure the integrated Share variables in the site settings for an Azure site for free.)

NOTE: For full directions to set up a Nightscout Bridge site (e.g., you do not yet have a Nightscout site at all), see: Nightscout with iOS and Dexcom Share (Bridge).

The following information is for someone who is updating an existing Nightscout site (with or without bridge) and wants to enable bridge variables.
To configure Share, you must ENABLE bridge (see detail above). In addition, the following variables are used in your Azure or Heroku settings to configure the Share2Nightscout Bridge integration:
 
|Parameter |  Beschreibung |
| -- | -- |
 |BRIDGE_USER_NAME |Erforderlich: Benutzername des Dexcom Share Accounts|
|BRIDGE_PASSWORD |Erforderlich: Passwort des Dexcom Share AccountsShare Accounts|
|BRIDGE_INTERVAL |Optional: Wartezeit zwischen jedem  Update. Der Standardwert ist 150000 – 2.5 minutes.
|BRIDGE_MAX_COUNT |Optional: Die maximale Anzahl der Datensätze zum Upload. Der Standardwert ist 1.|
|BRIDGE_FIRST_FETCH_COUNT |Optional: Maximale Anzahl der Datensätze während des ersten Uploads. Der Standardwert ist 3.|
|BRIDGE_MAX_FAILURES |Optional: Maximale Anzahl der Fehler beim Empfang.  Der Standardwert ist 3.|
|BRIDGE_MINUTES |Optional: Das Zeitfenster für die Suche nach neuen Daten pro Update. Der Standardwert ist Zeit in Minuten – 1400|.
 
 
 
