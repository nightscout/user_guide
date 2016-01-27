# Plugins

In diesem Kapitel werden die Nightscout Plugin Einstellmöglichkeiten in Azure dargestellt. 


Es gibt Default Plugins, die wir hier konfigurieren

The following featured are “on” by default as part of your Nightscout site and can be disabled in Funnel Cake by setting a DISABLE variable with a space-delimited list of values:

    delta (calculates and displays the change between the last 2 BG values)
    direction (displays BG trend direction)
    upbat (displays the most recent battery status from the uploader phone)
    errorcodes (generates alarms for CGM error codes like hourglass and ???)
    ar2 (generates alarms based on forecasted values)
    simplealarms (uses BG_HIGH, BG_TARGET_TOP, BG_TARGET_BOTTOM, BG_LOW thresholds to generate alarms)

Es gibt Example Plugins, die wir hier konfigurieren

Optionale Einstellungen können wir hier machen


**Optional:** Anbindung der Share2Bridge Funktionalität
 
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
 