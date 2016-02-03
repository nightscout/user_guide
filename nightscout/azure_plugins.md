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
|BRIDGE_FIRST_FETCH_COUNT |Optional: Maximale Anzahl der Datensätze während des ersten Uploads. Der Standardwert ist 3|
|BRIDGE_MAX_FAILURES |Optional: Maximale Anzahl der Fehler beim Empfang.  Der Standardwert ist 3|
|BRIDGE_MINUTES |Optional: Das Zeitfenster für die Suche nach neuen Daten pro Update. Der Standardwert ist Zeit in Minuten – 1400|
 
 
 Other Nightscout Site Variables

In addition to the variables and plugins defined above, the following variables can be set to further customize your Nightscout site. For each variable below, enter the variable shown in bold in a blank box in your site app settings (or Heroku/configuration variables) and then enter your chosen value in the box to the right of it. Be sure and save after setting or changing variables. The default value for each variable is shown in ().
Site Variables

|Parameter |  Wert |Beschreibung|
| -- | -- |-- |
|TIME_FORMAT |24| mögliche Werte 12 oder 24|
|NIGHT_MODE |off|  mögliche Werte on oder off|
|SHOW_RAWBG |never|  mögliche Werte: always, never oder noise|
|CUSTOM_TITLE |My NS|  Individueller Name der Website|
|THEME |default|  mögliche Werte: default oder colours|
|ALARM_URGENT_HIGH |on|  mögliche Werte: on oder off|
|ALARM_HIGH |on|  mögliche Werte: on oder off|
|ALARM_LOW |on|  mögliche Werte: on oder off|
|ALARM_URGENT_LOW |on|  mögliche Werte: on oder off|
|ALARM_TIMEAGO_WARN |on|  mögliche Werte: on oder off|
|ALARM_TIMEAGO_WARN_MINS |15|  Minuten seit des letzen Lesens um eine Warnung auszugeben|
|ALARM_TIMEAGO_URGENT |on|  mögliche Werte: on oder off|
|ALARM_TIMEAGO_URGENT_MINS |30|  Minuten seit des letzen Lesens um eine alarmierende Warnung auszugeben|
|SHOW_PLUGINS|  enabled |Zeigt an, welche Plugins in der Grafik angezeigt werden sollen. Diese müssen vorher mit ENABLE bei den Azure App.-Settings konfiguriert sein|

    API_SECRET – A secret passphrase that must be at least 12 characters long. An API_SECRET is required for using Care Portal, Pushover, and REST API upload.
    BG_HIGH (260) – This value must be set using mg/dl units; the high BG outside the target range that is considered urgent.
    BG_TARGET_TOP (180) – This must be set using mg/dl units; the top of the target range, also used to draw the line on the chart.
    BG_TARGET_BOTTOM (80) – This must be set using mg/dl units; the bottom of the target range, also used to draw the line on the chart.
    BG_LOW (55) – This must be set using mg/dl units; the low BG outside the target range that is considered urgent.
    ALARM_TYPES (simple if any BG_* ENV’s are set, otherwise predict) – Currently 2 alarm types are supported, and can be used independently or combined. The simple alarm type only compares the current BG to BG_ thresholds above, the predict alarm type uses highly tuned formula that forecasts where the BG is going based on it’s trend. predict DOES NOT currently use any of the BG_* ENV’s.
    BASE_URL – Used for building links to your sites api, ie pushover callbacks, usually the URL of your Nightscout site you may want https:// instead of http://.
    
    
    Predefined Variables to Customize Browser Settings (Optional)

Setting the following optional variables in your site settings makes your custom settings the default for any instance of Nightscout. The settings panel of the website allows users to override some settings on an individual basis. For each variable below that you wish to set, enter the variable shown in bold in a blank box in your site app settings (or Heroku/configuration variables) and then enter your chosen value in the box to the right of it.

    TIME_FORMAT (12)- possible values 12 or 24
    NIGHT_MODE (off) – possible values on or off
    SHOW_RAWBG (never) – possible values always, never or noise
    CUSTOM_TITLE (Nightscout) – Usually name of T1
    THEME (default) – possible values default or colors
    ALARM_URGENT_HIGH (on) – possible values on or off
    ALARM_HIGH (on) – possible values on or off
    ALARM_LOW (on) – possible values on or off
    ALARM_URGENT_LOW (on) – possible values on or off
    ALARM_TIMEAGO_WARN (on) – possible values on or off
    ALARM_TIMEAGO_WARN_MINS (15) – minutes since the last reading to trigger a warning
    ALARM_TIMEAGO_URGENT (on) – possible values on or off
    ALARM_TIMEAGO_URGENT_MINS (30) – minutes since the last reading to trigger a urgent alarm
    SHOW_PLUGINS – enabled plugins that should have their visualizations shown, defaults to all enabled. To have certain plugins appear visible by default, specify them by the same name used in the ENABLE box. Example:

    f-showplugins2
    LANGUAGE (en) – language of Nighscout. If the language specified is not available English is used. Funnel Cakehas translations available for languages.
    
    
