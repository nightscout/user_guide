# Plugins

Das Erscheinungsbild und der Funktionsumfang der Nightscout Website können weiter konfiguriert werden. 


Konfiguration des **Erscheinungsbildes**:

Wir können einige Standard Plugins **deaktivieren**, die standardmäßig aktiv sind. Dieses erfolgt über den DISABLE Parameter in den Azure App. Einstellungen:


 
| Plugin |  Hinweise |
| -- | -- |
|delta | berechnet und zeigt die Veränderung zwischen den letzten beiden BZ - Werten an|
|direction |zeigt den Blutzuckertrend an|
|upbat |zeigt den aktuellsten Batterieladezustand des Uploader - Smartphones an|
|errorcodes |erzeugt Alarme für CGM Fehlermeldungen |
|ar2 | erzeugt Alarme basierend auf prognostizierten Werten|
|simplealarms |nutzt BG_HIGH, BG_TARGET_TOP, BG_TARGET_BOTTOM, BG_LOW Schwellenwerte, um alarme zu erzeugen|


Wir können **Browsereinstellungen** zentral in den Azure App. Einstellungen speichern. Dieses hat den Vorteil, das man egal von welchem Browser oder einer Smartphone App immer die gleichen Einstellungen hat. Machen wir dieses nicht, werden diese nur im Browser Cache gespeichert und müssen sehr häufig neu eingegeben werden. Jeder Parameter mit Wert steht in einer extra Zeile.


|Parameter |  Wert |Beschreibung|
| -- | -- |-- |
|TIME_FORMAT |24| mögliche Werte 12 oder 24|
|LANGUAGE |de| Begriffe in deutscher Sprache|
|NIGHT_MODE |off|  mögliche Werte on oder off|
|SHOW_RAWBG |never|  mögliche Werte: always, never oder noise|
|CUSTOM_TITLE |My NS|  Individueller Name der Website|
|THEME |default|  mögliche Werte: default oder colors|
|BASAL_RENDER|default|mögliche Werte: default, icicle|
|ALARM_URGENT_HIGH |on|  mögliche Werte: on oder off|
|ALARM_HIGH |on|  mögliche Werte: on oder off|
|ALARM_LOW |on|  mögliche Werte: on oder off|
|ALARM_URGENT_LOW |on|  mögliche Werte: on oder off|
|ALARM_TIMEAGO_WARN |on|  mögliche Werte: on oder off|
|ALARM_TIMEAGO_WARN_MINS |15|  Minuten seit des letzen Lesens um eine Warnung auszugeben|
|ALARM_TIMEAGO_URGENT |on|  mögliche Werte: on oder off|
|ALARM_TIMEAGO_URGENT_MINS |30|  Minuten seit des letzen Lesens um eine alarmierende Warnung auszugeben|
|SHOW_PLUGINS|  enabled |Zeigt an, welche Plugins in der Grafik angezeigt werden sollen. Diese müssen vorher mit ENABLE bei den Azure App.-Settings konfiguriert sein|




Nach Eingabe der Daten das **Speichern** nicht vergessen.

Die Einstellungen sehen dann so aus:

![azure_app_entries](../images/azure/azure_app_entries.jpg)


***** minimed connect Anbindung

Follow all the steps in the Nightscout with iOS and Dexcom Share Bridge setup guide except step 4. Set aside a decent amount of time to get through it. We can use this guide because the MiniMed Connect plugin works very similarly to the Dexcom Share Bridge plugin, except instead of reading data sent to Dexcom's servers by the Dexcom Share app, it reads data sent to Medtronic's servers by the MiniMed Connect app.

2a. In your Azure dashboard, go to "Configure", and scroll down to "Connection Strings". (This is the same place you just configured your Mongo database and API_SECRET in step 1.)

2b. Add these new connection strings:

    ENABLE – the value should be "mmconnect", type should be "Custom"
    MMCONNECT_USER_NAME – the value should be the username you use to log in to CareLink, type should be "Custom"
    MMCONNECT_PASSWORD – the value should be the password you use to log in to CareLink, type should be "Custom"

Your connection strings section should look like this (sensitive information redacted

Note: If this is not your first time setting up Nightscout, there is a possibility that you already have an ENABLE connection string. That’s fine. Just add a space and "mmconnect" to the end. For example, if ENABLE already had the value bridge, change it to bridge mmconnect.

2c. Triple-check the connection strings. Go to the CareLink website and log in by copying and pasting the values directly from your Azure dashboard into the login form. Confirm that (a) you are able to log in successfully, and (b) when you go to "CareLink Connect", you can see the real-time values from the Connect.

2d. At the bottom of the Azure dashboard, click "Save", then "Reload".


Anbindung der **Share2Nightscout Bridge** Funktionalität

Die Share2Nightscout Bridge Funktionalität ist derzeit nur für Dexcom Share Benutzer interessant. Die Verbindung zum Dexcom G5 System wird in Zukunft hierüber konfiguriert.
Um die Bridge Funktionalität nutzen zu können, müssen wir **bridge** zu ENABLE ind den App-Einstellungen hinzufügen.
 
 Nutzer der Share2bridge Funktionalität können ihr Parameter  in den Connection Strings konfigurieren:
 
 Share2Nightscout Bridge Parameter:
 
 
|Parameter |  Beschreibung |
| -- | -- |
|BRIDGE_USER_NAME |Erforderlich: Benutzername des Dexcom Share Accounts|
|BRIDGE_PASSWORD |Erforderlich: Passwort des Dexcom Share AccountsShare Accounts|
|BRIDGE_INTERVAL |Optional: Wartezeit zwischen jedem  Update. Der Standardwert ist 150000 – 2.5 minutes.
|BRIDGE_MAX_COUNT |Optional: Die maximale Anzahl der Datensätze zum Upload. Der Standardwert ist 1.|
|BRIDGE_FIRST_FETCH_COUNT |Optional: Maximale Anzahl der Datensätze während des ersten Uploads. Der Standardwert ist 3|
|BRIDGE_MAX_FAILURES |Optional: Maximale Anzahl der Fehler beim Empfang.  Der Standardwert ist 3|
|BRIDGE_MINUTES |Optional: Das Zeitfenster für die Suche nach neuen Daten pro Update. Der Standardwert ist Zeit in Minuten – 1400|
 
 
 
Wir können weitere Werte individuell konfigurieren, wenn wir es wollen.
Die umfassen Schwellwerte für den Blutzucker, Alarme, Schnittstellen.

|Parameter |  Beschreibung |
| -- | -- |
|BG_HIGH (260) | Der Blutzuckerwert muß in mg/dl angegeben werden. Bei Überschreitung des Schwellwertes werden diese als alarmierend betrachtet.|
|BG_TARGET_TOP (180) |Der Blutzuckerwert muß in mg/dl angegeben werden. Er wird als Obergrenze des BZ Zielbereichs in der Grafik ausgegeben.|
|BG_TARGET_BOTTOM (80) |Der Blutzuckerwert muß in mg/dl angegeben werden. Er wird als Untergrenze des BZ Zielbereichs in der Grafik ausgegeben.|
|BG_LOW (55) |Der Blutzuckerwert muß in mg/dl angegeben werden. Bei Unterschreitung des Schwellwertes werden diese als alarmierend betrachtet.|
|ALARM_TYPES (simple / predict) | Momentan werden 2 Alarmtypen unterstützt. Sie können unabhängig voneinander  genutzt werden.|
|BASE_URL | Genutzt für Links . APIs, pushover, callbacks nutzen diesen Wert. Normalerweise ist es die URL - Adresse, der Typ kann von http auf https geändert werden|
    
    
    
    

    
    
    
