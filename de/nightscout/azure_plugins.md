# Nightscout Plugins

Die Nightscout Website besteht aus vielen kleinen Programm - Modulen den sogenannten **Plugins** Die Plugins können konfiguriert werden. Die Konfigurationseinstellungen können wir in den **Azure** Anwendungseinstellungen speichern.

**Standard Plugins**

Wir können einige Standard Plugins **deaktivieren**, die `standardmäßig` aktiv sind. Dieses erfolgt über den DISABLE Parameter in den Azure App. Einstellungen:

 
| Plugin |  Hinweise |
| -- | -- |
|delta | berechnet und zeigt die Veränderung zwischen den letzten beiden BZ - Werten an|
|direction |zeigt den Blutzuckertrend an|
|upbat |zeigt den aktuellsten Batterieladezustand des Uploader - Smartphones an|
|errorcodes |erzeugt Alarme für CGM Fehlermeldungen |
|ar2 | erzeugt Alarme basierend auf prognostizierten Werten|
|simplealarms |nutzt BG_HIGH, BG_TARGET_TOP, BG_TARGET_BOTTOM, BG_LOW Schwellenwerte, um Alarme zu erzeugen|


### Vordefinierte Werte für Browser-Einstellungen (optional)

Wir können **Browsereinstellungen** zentral in den Azure App. Einstellungen speichern. Das hat den Vorteil, dass man egal von welchem Browser oder einer Smartphone App immer die gleichen Einstellungen hat. Machen wir dieses nicht, werden die Einstellungen nur im Browser Cache gespeichert und müssen sehr häufig neu eingegeben werden. Jeder Parameter mit Wert steht in einer extra Zeile.

  * `TIME_FORMAT` (` 12`) - mögliche Werte `12` oder` 24`
  * `NIGHT_MODE` (` off`) - mögliche Werte `on` oder` off`
  * `SHOW_RAWBG` (` never`) - mögliche Werte `always`,` never` oder `noise`
  * `CUSTOM_TITLE` (` Nightscout`) - angepasster Titel
  * `THEME` (` default`) - mögliche Werte `default` oder` colors`
  * `ALARM_TIMEAGO_WARN` (` on`) - mögliche Werte `on` oder` off`
  * `ALARM_TIMEAGO_WARN_MINS` (` 15`) - Minuten seit dem letzten Meßwert, um  eine Warnung auszulösen
  * `ALARM_TIMEAGO_URGENT` (` on`) - mögliche Werte `on` oder` off`
  * `ALARM_TIMEAGO_URGENT_MINS` (` 30`) - Minuten seit dem letzten, um  einen dringenden Alarm auszulösen
  * `SHOW_PLUGINS` - Zeige Plugins, Anzeige der Plugins in der Website, Standardwerte für alle freigegeben
  * `SHOW_FORECAST` (` ar2`) - Plugin Prognosen, die standardmäßig angezeigt werden sollen, unterstützt Werte wie `" ar2 openaps "Raum begrenzt`
  * `LANGUAGE` (` de`) - Sprache der Website. Falls nicht verfügbar Englisch wird verwendet,
  * `SCALE_Y` (` log`) - Die Art der Skalierung , welche für die Y-Achse des Charts System verwendet wird.
    * Der Standard `log` (logarithmisch) Option lässt läßt mehr Details im unteren Bereich zu , während immer noch der volle CGM Bereich angezeigt wird.
    * Die `linear` Option hat im gleichen Abstand Markierungen , der verwendete Bereich ist dynamisch, so dass kein Platz an der Spitze des Diagramms verschwendet wird.
    * Die `log-dynamic` ist auf den Standard` log` Optionen ähnlich, aber verwendet den gleichen dynamischen Bereich und die `linear` Skala.
  * `EDIT_MODE` (` on`) - mögliche Werte `on` oder` off`. Aktivieren oder deaktivieren von Symbolen Hierüber gelangt man   Bearbeitungsmodus von Behandlungen.


Nach Eingabe der Daten das **Speichern** nicht vergessen.

Die Einstellungen sehen dann z.B. so aus:

![azure_app_entries](../images/azure/azure_app_entries.jpg)


#### Erweiterte Plugins:

##### `Careportal` (Careportal)
  Eine optionale Form Behandlungen einzugeben.

##### `Boluscalc` (de: Bolus Rechner) 
  Nightscout berechnet anhand bestimmter Vorgaben die zu verabreichende Bolusmenge.

##### `Food` (de: Lebensmittel) 
  Wir können über den  `Nahrungs - Editor` siehe () Mahlzeiten mit Angabe von Kohlenhydraten eingeben

##### `rawbg` (Roh Blutzuckerwerte)
  Berechnet Roh Blutzuckerwerte mit Sensor und Kalibrierungsaufzeichnungen und zeigt alternative Werte mit Verzerrungspegel an.

##### `Iob` (en: Insulin-on-Board, de:Wirksames Insulin)
  Fügt die IOB Pillbox Visualisierung im Browser ein und berechnet das noch wirksame Bolus Insulin, welches von anderen Plugins verwendet werden kann. Verwendet Behandlungen mit Insulindosen und der `dia` und` sens` Felder aus dem [Behandlungsprofil] (# behandlungs Profil).

##### `Cob` (Carbs-on-Board)
  Fügt die COB Pillbox Visualisierung im Browser ein und berechnet Werte, die von anderen Plugins verwendet werden können. Verwendet Behandlungen mit carb angaben und der `carbs_hr`,` carbratio` und `sens` Felder aus dem [Behandlungsprofil] (# Behandlungs Profil).

**bwp** (en: Bolus Wizard Preview)  ?????

**cage** (en: Cannula Age, de: Katheter - Alter) Dieses Plugin zeigt die Tragedauer des Pumpenkatheters an.

 * CAGE_ENABLE_ALERTS (false) - Set to true to enable notifications to remind you of upcoming cannula change.
 * CAGE_INFO (44) - If time since last Site Change matches CAGE_INFO, user will be warned of upcoming cannula change
 * CAGE_WARN (48) - If time since last Site Change matches CAGE_WARN, user will be alarmed to to change the cannula
 * CAGE_URGENT (72) - If time since last Site Change matches CAGE_URGENT, user will be issued a persistent warning of overdue change.
 * CAGE_DISPLAY (hours) - Possible values are 'hours' or 'days'. If 'days' is selected and age of canula is greater than 24h number is displayed in days and hours


**sage** (en: Sensor Age, de: Sensor - Alter) Dieses Plugin zeigt die Dauer seit dem Sart des CGM - Sensors an.


**iage** (en: Insulin Age, de: Insulin Alter) Dieses Plugin zeigt die Dauer seit dem Wechsel des Insulinreservoirs in der Pumpe an.

**pump** (Pumpen Plugin "Pillbox")  ?????

**openaps** (OpenAPS Plugin "Pillbox")  ?????

Achtung TESTFORMAT!!!!!!!!!!!!!!!!!!!

##### `cage` (Cannula Age)
  Calculates the number of hours since the last `Site Change` treatment that was recorded.
  * `CAGE_ENABLE_ALERTS` (`false`) - Set to `true` to enable notifications to remind you of upcoming cannula change.
  * `CAGE_INFO` (`44`) - If time since last `Site Change` matches `CAGE_INFO`, user will be warned of upcoming cannula change
  * `CAGE_WARN` (`48`) - If time since last `Site Change` matches `CAGE_WARN`, user will be alarmed to to change the cannula
  * `CAGE_URGENT` (`72`) - If time since last `Site Change` matches `CAGE_URGENT`, user will be issued a persistent warning of overdue change.
  * `CAGE_DISPLAY` (`hours`) - Possible values are 'hours' or 'days'. If 'days' is selected and age of canula is greater than 24h number is displayed in days and hours

#####  `sage` (Sensor Age)
  Calculates the number of days and hours since the last `Sensor Start` and `Sensor Change` treatment that was recorded.
  * `SAGE_ENABLE_ALERTS` (`false`) - Set to `true` to enable notifications to remind you of upcoming sensor change.
  * `SAGE_INFO` (`144`) - If time since last sensor event matches `SAGE_INFO`, user will be warned of upcoming sensor change
  * `SAGE_WARN` (`164`) - If time since last sensor event matches `SAGE_WARN`, user will be alarmed to to change/restart the sensor
  * `SAGE_URGENT` (`166`) - If time since last sensor event matches `SAGE_URGENT`, user will be issued a persistent warning of overdue change.

##### `iage` (Insulin Age)
  Calculates the number of days and hours since the last `Insulin Change` treatment that was recorded.
  * `IAGE_ENABLE_ALERTS` (`false`) - Set to `true` to enable notifications to remind you of upcoming insulin reservoir change.
  * `IAGE_INFO` (`44`) - If time since last `Insulin Change` matches `IAGE_INFO`, user will be warned of upcoming insulin reservoir change
  * `IAGE_WARN` (`48`) - If time since last `Insulin Change` matches `IAGE_WARN`, user will be alarmed to to change the insulin reservoir
  * `IAGE_URGENT` (`72`) - If time since last `Insulin Change` matches `IAGE_URGENT`, user will be issued a persistent warning of overdue change.

##### `treatmentnotify` (Treatment Notifications)
  Generates notifications when a treatment has been entered and snoozes alarms minutes after a treatment.  Default snooze is 10 minutes, and can be set using the `TREATMENTNOTIFY_SNOOZE_MINS` [extended setting](#extended-settings).

##### `basal` (Basal Profile)
  Adds the Basal pill visualization to display the basal rate for the current time.  Also enables the `bwp` plugin to calculate correction temp basal suggestions.  Uses the `basal` field from the [treatment profile](#treatment-profile). Also uses the extended setting:
  * `BASAL_RENDER` (`none`) - Possible values are `none`, `default`, or `icicle` (inverted)

##### `bridge` (Share2Nightscout bridge)
  Glucose reading directly from the Share service, uses these extended settings:
  * `BRIDGE_USER_NAME` - Your user name for the Share service.
  * `BRIDGE_PASSWORD` - Your password for the Share service.
  * `BRIDGE_INTERVAL` (`150000` *2.5 minutes*) - The time to wait between each update.
  * `BRIDGE_MAX_COUNT` (`1`) - The maximum number of records to fetch per update.
  * `BRIDGE_FIRST_FETCH_COUNT` (`3`) - Changes max count during the very first update only.
  * `BRIDGE_MAX_FAILURES` (`3`) - How many failures before giving up.
  * `BRIDGE_MINUTES` (`1400`) - The time window to search for new data per update (default is one day in minutes).

##### `mmconnect` (MiniMed Connect bridge)
  Transfer real-time MiniMed Connect data from the Medtronic CareLink server into Nightscout ([read more](https://github.com/mddub/minimed-connect-to-nightscout))
  * `MMCONNECT_USER_NAME` - Your user name for CareLink Connect.
  * `MMCONNECT_PASSWORD` - Your password for CareLink Connect.
  * `MMCONNECT_INTERVAL` (`60000` *1 minute*) - Number of milliseconds to wait between requests to the CareLink server.
  * `MMCONNECT_MAX_RETRY_DURATION` (`32`) - Maximum number of total seconds to spend retrying failed requests before giving up.
  * `MMCONNECT_SGV_LIMIT` (`24`) - Maximum number of recent sensor glucose values to send to Nightscout on each request.
  * `MMCONNECT_VERBOSE` - Set this to "true" to log CareLink request information to the console.
  * `MMCONNECT_STORE_RAW_DATA` - Set this to "true" to store raw data returned from CareLink as `type: "carelink_raw"` database entries (useful for development).

##### `pump` (Pump Monitoring)
  Generic Pump Monitoring for OpenAPS, MiniMed Connect, RileyLink, t:slim, with more on the way
  * Requires `DEVICESTATUS_ADVANCED="true"` to be set
  * `PUMP_ENABLE_ALERTS` (`false`) - Set to `true` to enable notifications for Pump battery and reservoir.
  * `PUMP_FIELDS` (`reservoir battery`) - The fields to display by default.  Any of the following fields: `reservoir`, `battery`, `clock`, `status`, and `device`
  * `PUMP_RETRO_FIELDS` (`reservoir battery clock`) - The fields to display in retro mode. Any of the above fields.
  * `PUMP_WARN_CLOCK` (`30`) - The number of minutes ago that needs to be exceed before an alert is triggered.
  * `PUMP_URGENT_CLOCK` (`60`) - The number of minutes ago that needs to be exceed before an urgent alarm is triggered.
  * `PUMP_WARN_RES` (`10`) - The number of units remaining, a warning will be triggered when dropping below this threshold.
  * `PUMP_URGENT_RES` (`5`) - The number of units remaining, an urgent alarm will be triggered when dropping below this threshold.
  * `PUMP_WARN_BATT_P` (`30`) - The % of the pump battery remaining, a warning will be triggered when dropping below this threshold.
  * `PUMP_URGENT_BATT_P` (`20`) - The % of the pump battery remaining, an urgent alarm will be triggered when dropping below this threshold.
  * `PUMP_WARN_BATT_V` (`1.35`) - The voltage (if percent isn't available) of the pump battery, a warning will be triggered when dropping below this threshold.
  * `PUMP_URGENT_BATT_V` (`1.30`) - The  voltage (if percent isn't available) of the pump battery, an urgent alarm will be triggered when dropping below this threshold.

##### `openaps` (OpenAPS)
  Integrated OpenAPS loop monitoring, uses these extended settings:
  * Requires `DEVICESTATUS_ADVANCED="true"` to be set
  * `OPENAPS_ENABLE_ALERTS` (`false`) - Set to `true` to enable notifications when OpenAPS isn't looping.  If OpenAPS is going to offline for a period of time, you can add an `OpenAPS Offline` event for the expected duration from Careportal to avoid getting alerts. 
  * `OPENAPS_WARN` (`30`) - The number of minutes since the last loop that needs to be exceed before an alert is triggered 
  * `OPENAPS_URGENT` (`60`) - The number of minutes since the last loop that needs to be exceed before an urgent alarm is triggered
  * `OPENAPS_FIELDS` (`status-symbol status-label iob meal-assist rssi`) - The fields to display by default.  Any of the following fields: `status-symbol`, `status-label`, `iob`, `meal-assist`, `freq`, and `rssi`
  * `OPENAPS_RETRO_FIELDS` (`status-symbol status-label iob meal-assist rssi`) - The fields to display in retro mode. Any of the above fields.

 treatmentnotify (Treatment Notifications)
basal (Basal Profile)
bridge (Share2Nightscout bridge)
mmconnect (MiniMed Connect bridge)
pump (Pump Monitoring)
openaps (OpenAPS)








Anbindung der **Share2Nightscout Bridge** Funktionalität

Die Share2Nightscout Bridge Funktionalität ist derzeit nur für Dexcom Share Benutzer interessant. Die Verbindung zum Dexcom G5 System wird über diesen Weg konfiguriert.
Um die Bridge Funktionalität nutzen zu können, müssen wir **bridge** zu ENABLE ind den App-Einstellungen hinzufügen.
 
 Nutzer der Share2bridge Funktionalität können ihre Parameter  in den Connection Strings konfigurieren:
 
 **Share2Nightscout Bridge Parameter:**
 
 
|Parameter |  Beschreibung |
| -- | -- |
|BRIDGE_USER_NAME |Erforderlich: Benutzername des Dexcom Share Accounts|
|BRIDGE_PASSWORD |Erforderlich: Passwort des Dexcom Share AccountsShare Accounts|
|BRIDGE_INTERVAL |Optional: Wartezeit zwischen jedem  Update. Der Standardwert ist 150000 – 2.5 minutes.
|BRIDGE_MAX_COUNT |Optional: Die maximale Anzahl der Datensätze zum Upload. Der Standardwert ist 1.|
|BRIDGE_FIRST_FETCH_COUNT |Optional: Maximale Anzahl der Datensätze während des ersten Uploads. Der Standardwert ist 3|
|BRIDGE_MAX_FAILURES |Optional: Maximale Anzahl der Fehler beim Empfang.  Der Standardwert ist 3|
|BRIDGE_MINUTES |Optional: Das Zeitfenster für die Suche nach neuen Daten pro Update. Der Standardwert ist Zeit in Minuten – 1400|
 
 **Minimed Connect Anbindung**
 
 Wir können Minimed CGM - Systeme einbinden, wenn wir einen [Carelink Benutzeraccount](https://carelink.minimed.com/patient/entry.jsp?bhcp=1) besitzen. Das  Minimed Connect Plugin lädt sich die Daten von den Medtronic Servern. Diese erhalten die Daten über die Minimed Connect App.

Die Einstellungen erfolgen über die **Connection Strings**:



|Parameter |  Beschreibung |
| -- | -- |
|MMCONNECT_USER_NAME | Der Wert repräsentiert den "Benutzernamen", welcher im Carelink angegeben wird, der Typ ist "Benutzerdefiniert" |
|MMCONNECT_PASSWORD | Der Wert repräsentiert das "Benutzerpasswort", welches im Carelink angegeben wird, der Typ ist "Benutzerdefiniert"|    
   

Nach der Eingabe **Speichern** nicht vergessen.




 
Wir können weitere Werte individuell konfigurieren, wenn wir es wollen.
Diese umfassen Schwellwerte für den Blutzucker, Alarme, Schnittstellen.

|Parameter |  Beschreibung |
| -- | -- |
|BG_HIGH (260) | Der Blutzuckerwert muß in mg/dl angegeben werden. Bei Überschreitung des Schwellwertes werden diese als alarmierend betrachtet.|
|BG_TARGET_TOP (180) |Der Blutzuckerwert muß in mg/dl angegeben werden. Er wird als Obergrenze des BZ Zielbereichs in der Grafik ausgegeben.|
|BG_TARGET_BOTTOM (80) |Der Blutzuckerwert muß in mg/dl angegeben werden. Er wird als Untergrenze des BZ Zielbereichs in der Grafik ausgegeben.|
|BG_LOW (55) |Der Blutzuckerwert muß in mg/dl angegeben werden. Bei Unterschreitung des Schwellwertes werden diese als alarmierend betrachtet.|
|ALARM_TYPES (simple / predict) | Momentan werden 2 Alarmtypen unterstützt. Sie können unabhängig voneinander  genutzt werden.|
|BASE_URL | Genutzt für Links . APIs, pushover, callbacks nutzen diesen Wert. Normalerweise ist es die URL - Adresse, der Typ kann von http auf https geändert werden|
    
    
**AR2**

AR2 generiert Alarme basierend auf prognostizierten Werten. Es ist standardmäßig aktiviert, wenn keine Alarmschwellwerte gesetzt sind oder wenn die ALARM_TYPES Variable predict enthält.Wir können das AR2 Verhalten mit folgenden erweiterten Einstellungsvariablen steuern:


|Parameter |  Beschreibung |
| -- | -- |
|AR2_USE_RAW| Prognose von rawbg Werten, wenn Standardwerte keine Alarm auslösen, die Standardeinstellung ist false|
|AR2_CONE_FACTOR |Um die Größe des Trichters zu justieren, wird 0 für eine Einzelinie gewählt, der Standardwert ist 2|

Die Funktionsweise ist in dem Artikel:[ Prognosen mit Nutzung des AR2 Algorithmus](https://github.com/nightscout/nightscout.github.io/wiki/Forecasting) näher beschrieben.


    
**Pushover** - Benachrichtigungen.

Der [Pushover](https://pushover.net/) Internetdienst bietet die Möglichkeit, sich Nachrichten, welche Nightscout erzeugen kann, auf einem Android oder Apple Iphone mit einer entspr. App anzeigen zu lassen. Nach Registrierung auf der Website erhält man einen Benutzer Key - Schlüssel, den man sich notiert. Nightscout konfiguriert man dort als eine Anwendung.
In den App.-Einstellungen ist der Wert **pushover** hinzuzufügen. 
Als Minimum ist der **API_TOKEN_KEY**, welcher über die Pushover Website generiert wurde, abzuspeichern.Jetzt können wir Alarme definieren, welche über die App auf dem Smartphone ausgegeben werden.
Eine detaiilierte Beschreibung findet man hier: [Pushover in Funnel Cake](http://www.nightscout.info/wiki/labs/pushover-in-funnel-cake).










    
    
    
