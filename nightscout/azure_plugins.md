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
 
|Parameter |  Beschreibung |
| -- | -- |
 |BRIDGE_USER_NAME |Erforderlich: Benutzername des Dexcom Share Accounts|
|BRIDGE_PASSWORD |Erforderlich: Passwort des Dexcom Share AccountsShare Accounts|
|BRIDGE_INTERVAL |Optional: Wartezeit zwischen jedem  Update. Der Standardwert ist 150000 – 2.5 minutes.
|BRIDGE_MAX_COUNT |Optional: Die maximale Anzahl der Datensätze zum Upload. Der Standardwert ist 1.|
|BRIDGE_FIRST_FETCH_COUNT |Optional: Maximale Anzahl der Datensätze während des ersten Uploads. Der Standardwert ist 3.|
|BRIDGE_MAX_FAILURES |Optional: Maximale Anzahl der Fehler beim Empfang.  Der Standardwert ist 3.|
|BRIDGE_MINUTES |Optional: Das Zeitfenster für die Suche nach neuen Daten pro Update. Der Standardwert ist Zeit in Minuten – 1400|.
 
 
 
