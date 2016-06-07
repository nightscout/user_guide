# Nightscout Plugins

Die Nightscout Website besteht aus vielen kleinen Programm - Modulen den sogenannten **Plugins** Die Plugins können konfiguriert werden. Die Konfigurationseinstellungen können wir in den **Azure** Anwendungseinstellungen speichern.

### Alarme

  Diese Alarmeinstellungen wirken sich auf alle Benachrichtigungsmethoden aus (Browser, Pushover, IFTTT Maker, etc.),  einige Einstellungen können durch Browsereinstellungen  außer Kraft gesetzt werden.
  
  * `ALARM_TYPES` (falls vorhanden` BG_` * ENV `simple` gesetzt werden, sonst` predict`) - derzeit zwei Alarmtypen unterstützt werden, und können unabhängig voneinander oder in Kombination verwendet werden. Der `simple` Alarmtyp vergleicht nur den aktuellen BG zu` BG_` Schwellen über die `predict` Alarmtyp stark getunten Formel verwendet, die prognostiziert, wo die BG basiert los es Trend ist. `Predict` ** NICHT ** gegenwärtig eines der` BG_` * ENV verwenden
  * `BG_HIGH` (` 260`) - muss mg / dl Einheiten eingestellt werden; die hohe BG außerhalb des Zielbereichs, die dringend betrachtet
  * `BG_TARGET_TOP` (` 180`) - muss mg / dl Einheiten eingestellt werden; das obere Ende des Zielbereichs, verwendet auch die Linie auf dem Chart zu zeichnen
  * `BG_TARGET_BOTTOM` (` 80`) - muss mg / dl Einheiten eingestellt werden; der Boden des Zielbereichs, verwendet auch die Linie auf dem Chart zu zeichnen
  * `BG_LOW` (` 55`) - muss mg / dl Einheiten eingestellt werden; die niedrige BG außerhalb des Zielbereichs, die dringend betrachtet
  * `ALARM_URGENT_HIGH` (` on`) - mögliche Werte `on` oder` off`
  * `ALARM_URGENT_HIGH_MINS` (` 30 60 90 120`) - Anzahl der Minuten dringend hohe Wecker erneut, Platz für Optionen in Browser getrennt, zunächst für Schwächling verwendet
  * `ALARM_HIGH` (` on`) - mögliche Werte `on` oder` off`
  * `ALARM_HIGH_MINS` (` 30 60 90 120`) - Anzahl der Minuten hohe Wecker erneut, Platz für Optionen in Browser getrennt, zunächst für Schwächling verwendet
  * `ALARM_LOW` (` on`) - mögliche Werte `on` oder` off`
  * `ALARM_LOW_MINS` (` 15 30 45 60`) - Anzahl der Minuten niedrigen Wecker erneut, Platz für Optionen in Browser getrennt, zunächst für Schwächling verwendet
  * `ALARM_URGENT_LOW` (` on`) - mögliche Werte `on` oder` off`
  * `ALARM_URGENT_LOW_MINS` (` 15 30 45`) - Anzahl der Minuten dringend niedrigen Wecker erneut, Platz für Optionen in Browser getrennt, zunächst für Schwächling verwendet
  * `ALARM_URGENT_MINS` (` 30 60 90 120`) - Anzahl der Minuten dringende Alarme zu dösen, Platz für Optionen in Browser getrennt (die nicht als hoch oder niedrig markiert sind), zunächst für Schwächling verwendet
  * `ALARM_WARN_MINS` (` 30 60 90 120`) - Anzahl der Minuten Warnsignale zu dösen, Platz für Optionen in Browser getrennt (die nicht als hoch oder niedrig markiert sind), zunächst für Schwächling verwendet
  * 
  
### Basiseinstellungen

Die Basiseinstellungen sind Standardwerte, die beim Implementiren einer Nightscout Website gesetzt werden.

  * `MONGO_COLLECTION` (` entries`) - Die Sammlung zu speichern SGV, MBG und CAL Aufzeichnungen von Ihrem CGM-Gerät verwendet
  * `MONGO_TREATMENTS_COLLECTION` (` treatments`) -Die Sammlung zu speichern Behandlungen im Bereich Care Portal finden Sie in der `ENABLE` env var oben angegebenen verwendet
  * `MONGO_DEVICESTATUS_COLLECTION` (` devicestatus`) - Die Sammlung zum Speichern von Gerätestatusinformationen wie Uploader Batterie verwendet
  * `MONGO_PROFILE_COLLECTION` (` Profile`) - Die Sammlung verwendet, um Ihre Profile zu speichern
  * `MONGO_FOOD_COLLECTION` (` food`) - Die Sammlung verwendet, um Ihre Lebensmittel-Datenbank zu speichern,
  * `PORT` (` 1337`) - Der Port, der die node.js Anwendung auf zuhören.
  * `SSL_KEY` - Pfad zu Ihrer SSL-Schlüsseldatei, so dass ssl (https) direkt in node.js aktiviert sein
  * `SSL_CERT` - Pfad zu Ihrer SSL-Zertifikat-Datei, so dass ssl (https) direkt in node.js aktiviert sein
  * `SSL_CA` - Pfad zum ssl CA-Datei, so dass ssl (https) direkt in node.js aktiviert sein
  * `HEARTBEAT` (` 60`) - Anzahl der Sekunden zwischen den Datenbankprüfungen warten in

#### Standard Plugins 
  
  Diese können durch Einstellen der `DISABLE` env var deaktiviert werden, zum Beispiel` deaktiviere = "Direction" `

##### `Delta` (BG Delta)
  Berechnet und zeigt die Veränderung zwischen den letzten 2 BG-Werten.

##### `Direction` (BG Direction)
  Zeigt die Trendrichtung an.

##### `Upbat` (Uploader Batterie)
  Zeigt den aktuellsten Batteriestatus vom Uploader Telefon.

##### `Timeago` (Time Ago)
  Zeigt die Zeit seit dem letzten CGM-Eintrag an. Unterstützt die `TIMEAGO_ENABLE_ALERTS` [Erweiterte Einstellung] (# extended-Einstellungen) für die Serverseite veraltete Daten Alarme via Pushover und IFTTT.

##### `Devicestatus` (Gerätestatus)
  Wird von `upbat` und anderen Plug-ins verwendet. Ist notwendig, wenn Gerätestatusinformationen angezeigt werden sollen. Unterstützt die `DEVICESTATUS_ADVANCED =" true "` [Erweiterte Einstellung] (# extended-Einstellungen), um alle Gerätezustände an den Client für die retrospektive Anwendung zu senden und andere Plugins zu unterstützen.

##### `Errorcodes` (CGM-Fehlercodes)
  Erzeugt Alarme für CGM-Codes `9` (Sanduhr) und` 10` (???).
  * Verwenden Sie [erweiterte Einstellungen] (# extended-Einstellungen) um zu sehen, welche Fehlercodes Benachrichtigungen und Alarme auslösen:
    * `ERRORCODES_INFO` (` 1 2 3 4 5 6 7 8`) - die Bedürfnisse der Kalibrierung (Bluttropfen) und andere Codes unter 9 erzeugen eine Info-Ebene Benachrichtigung, auf einen Raum getrennte Liste der Anzahl oder `off` Standardmäßig deaktivieren
    * `ERRORCODES_WARN` (` off`) - Standardmäßig ist keine Warnung konfiguriert, um eine getrennte Liste von Zahlen oder `off` gesetzt zu deaktivieren
    * `ERRORCODES_URGENT` (` 9 10`) - standardmäßig die Sanduhr und ??? generieren einen dringenden Alarm, auf einen Raum getrennte Liste von Zahlen oder `off` zu deaktivieren

##### `Ar2` (AR2 Forecasting)
  Erzeugt Alarme auf Basis von prognostizierten Werten. Siehe [Forecasting mit AR2 Algorithmus] (https://github.com/nightscout/nightscout.github.io/wiki/Forecasting)
  * Standardmäßig aktiviert, wenn keine Schwellenwerte festgelegt werden ** OR ** `ALARM_TYPES` umfasst` predict`.
  * Verwenden Sie [erweiterte Einstellungen] (# extended-Einstellungen), um das AR2 Verhalten anzupassen:
    * `AR2_USE_RAW` (` false`) - um für Prognosen `rawbg` Werte zu verwenden, wenn Standardwerte keinen Alarm auslösen.
    * `AR2_CONE_FACTOR` ( '2') - Größe der Kegel einzustellen, benutzen Sie '0' für eine einzelne Zeile.

##### `Simplealarms` (Simple BG Alarme)
  Verwendet `BG_HIGH`,` BG_TARGET_TOP`, `BG_TARGET_BOTTOM`,` BG_LOW` Schwellen Alarme generieren.
  wenn 1 dann sind diese Schwellenwerte * standardmäßig Aktiviert gesetzt ist ** OR ** `ALARM_TYPES` umfasst` simple`.
  
  

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

##### `Bwp` (BolusExpert Vorschau)
  Dieses Plugin in die für die Zwecke der automatisch dösen Alarme, wenn der CGM zeigt hohe Blutzuckerwerte, aber es gibt auch Insulin an Bord (IOB) und zweitens, um Benutzer warnen, dass es vorteilhaft sein könnte, die Blutzucker mit einem Glucometer und Dosierung Insulin zu messen wie sie in der Pumpe oder im Auftrag von ausgebildeten Fachleuten medi berechnet. *** Die vom Plugin zur Verfügung gestellt Werte werden als Referenz zur Verfügung gestellt basierend auf CGM-Daten und die Insulinempfindlichkeit Sie konfiguriert haben, und sind nicht als Referenz für die Bolus-Berechnung verwendet werden soll. *** Das Plugin berechnet die Bolus-Menge, wenn sie über Ihr Ziel, erzeugt Alarme, wenn Sie Prüfung und bolusing in Betracht ziehen sollten, und Alarme snoozes, wenn es genug IOB ist eine hohe BG zu decken. Verwendet die Ergebnisse des `iob` Plugin und` sens`, `target_high` und` target_low` Felder aus dem [Behandlungsprofil] (# behandlungs Profil). Defaults, die mit angepasst werden kann [erweiterte Einstellung] (# extended-Einstellungen)
  * `BWP_WARN` (` 0.50`) - Wenn `BWP` ist>` BWP_WARN` wird ein Warnalarm ausgelöst werden.
  * `BWP_URGENT` (` 1.00`) - Wenn `BWP` ist>` ein dringender Alarm BWP_URGENT` ausgelöst.
  * `BWP_SNOOZE_MINS` (` 10`) - Minuten verschoben werden, wenn es genügend IOB ist eine hohe BG zu decken.
  * `BWP_SNOOZE` - (` 0.10`) Wenn BG höher als die `target_high` und` BWP` < `BWP_SNOOZE` Alarme für` BWP_SNOOZE_MINS` werden snoozed ist.
  * 
  

##### `Cage` (en: Cannula Age, de: Pumpen Kathetersetz - Alter)
  Berechnet die Anzahl der Stunden seit dem letzten `Site Change` Behandlung, die aufgezeichnet wurde.
  * `CAGE_ENABLE_ALERTS` (` false`) - Auf `true` Benachrichtigungen aktivieren Sie über anstehende Kanüle Wechsel zu erinnern.
  * `CAGE_INFO` (` 44`) - Wenn es die Zeit seit dem letzten `Website Change` Spiele` CAGE_INFO`, wird der Benutzer über bevorstehende Kanülenwechsel gewarnt werden
  * `CAGE_WARN` (` 48`) - Wenn es die Zeit seit dem letzten `Website Change` Spiele` CAGE_WARN`, wird der Benutzer alarmiert werden, um die Kanüle zu ändern
  * `CAGE_URGENT` (` 72`) - Wenn es die Zeit seit dem letzten `Website Change` Spiele` CAGE_URGENT`, wird der Benutzer eine ständige Warnung überfälliger Wechsel ausgestellt werden.
  * `CAGE_DISPLAY` (` hours`) - Mögliche Werte "Stunden" oder "Tage" sind. Wenn "Tage" ausgewählt ist und das Alter der Kanüle größer ist als 24-Stunden-Zahl wird in Tagen angezeigt und Stunden

##### `Sage` (Sensor Alter)
  Berechnet die Anzahl der Tage und Stunden seit dem letzten `Sensor Starten` und` Sensor Change` Behandlung, die aufgezeichnet wurde.
  * `SAGE_ENABLE_ALERTS` (` false`) - Auf `true` Benachrichtigungen aktivieren Sie über anstehende Sensorwechsel zu erinnern.
  * `SAGE_INFO` (` 144`) - Wenn es die Zeit seit dem Ereignis letzten Sensor passt `SAGE_INFO`, wird der Benutzer über anstehende Sensorwechsel gewarnt werden
  * `SAGE_WARN` (` 164`) - Wenn es die Zeit seit dem Ereignis letzten Sensor passt `SAGE_WARN`, wird der Benutzer alarmiert werden / zu ändern starten Sie den Sensor
  * `SAGE_URGENT` (` 166`) - Wenn es die Zeit seit dem Ereignis letzten Sensor `SAGE_URGENT` übereinstimmt, wird der Benutzer eine ständige Warnung überfälliger Wechsel ausgestellt werden.

##### `Iage` (Insulin Alter)
  Berechnet die Anzahl der Tage und Stunden seit dem letzten `Insulin Change` Behandlung, die aufgezeichnet wurde.
  * `IAGE_ENABLE_ALERTS` (` false`) - Auf `true` Benachrichtigungen aktivieren Sie über anstehende Insulinreservoir Veränderung zu erinnern.
  * `IAGE_INFO` (` 44`) - Wenn es die Zeit seit dem letzten `Insulin Change` Spiele` IAGE_INFO`, wird der Benutzer über bevorstehende Insulinbehälter Änderung gewarnt werden
  * `IAGE_WARN` (` 48`) - Wenn es die Zeit seit dem letzten `Insulin Change` Spiele` IAGE_WARN`, wird der Benutzer alarmiert werden, um auf die Insulin-Reservoir ändern
  * `IAGE_URGENT` (` 72`) - Wenn es die Zeit seit dem letzten `Insulin Change` Spiele` IAGE_URGENT`, wird der Benutzer eine ständige Warnung überfälliger Wechsel ausgestellt werden.

##### `Treatmentnotify` (Behandlung Benachrichtigungen)
  Werden Benachrichtigungen generiert, wenn eine Behandlung eingegeben wurde und snoozes Alarme Minuten nach einer Behandlung. Standard Schlummer ist 10 Minuten und kann die `TREATMENTNOTIFY_SNOOZE_MINS` [Erweiterte Einstellung] (# extended-Einstellungen) eingestellt werden.

##### `Basal` (Basal-Profil)
  Fügt die Basal Pillbox Visualisierung die Basalrate für die aktuelle Zeit anzuzeigen. Auch ermöglicht die `bwp` Plugin Korrektur Temp Basal Vorschläge zu berechnen. Verwendet das `basal` Feld aus dem [Behandlungsprofil] (# behandlungs Profil). Auch nutzt die erweiterte Einstellung:
  * `BASAL_RENDER` (` none`) - Mögliche Werte sind `none`,` default` oder `icicle` (invertiert)

##### `Bridge` (Share2Nightscout Brücke)
Die Share2Nightscout Bridge Funktionalität ist derzeit nur für Dexcom Share Benutzer interessant. Die Verbindung zum Dexcom G5 System wird über diesen Weg konfiguriert. Um die Bridge Funktionalität nutzen zu können, müssen wir **bridge** zu ENABLE ind den App-Einstellungen hinzufügen. Die Einstellungen erfolgen über die `Connection Strings`. 
  * `BRIDGE_USER_NAME` - Ihr Benutzername für den Share-Dienst.
  * `BRIDGE_PASSWORD` - Ihr Passwort für den Share-Dienst.
  * `BRIDGE_INTERVAL` (` 150000` * 2,5 Minuten *) - Die Zeit zwischen jedem Update zu warten.
  * `BRIDGE_MAX_COUNT` ( '1') - Die maximale Anzahl der Datensätze pro Update zu holen.
  * `BRIDGE_FIRST_FETCH_COUNT` (` 3`) - Ändert max Zählung während der ersten Update nur.
  * `BRIDGE_MAX_FAILURES` (` 3`) - Wie viele Ausfälle, bevor er aufgibt.
  * `BRIDGE_MINUTES` (` 1400`) - Das Zeitfenster für neue Daten pro Update zu suchen (Standard ist ein Tag in Minuten).

##### `Mmconnect` (MiniMed Connect-Brücke)
  Übertragen Sie in Echtzeit MiniMed Connect Daten vom Medtronic Carelink-Server in Nightscout ([mehr lesen] (https://github.com/mddub/minimed-connect-to-nightscout))
  * `MMCONNECT_USER_NAME` - Ihr Benutzername für CareLink® Connect.
  * `MMCONNECT_PASSWORD` - Ihr Passwort für CareLink® Connect.
  * `MMCONNECT_INTERVAL` (` 60000` * 1 Minute *) - Anzahl der Millisekunden zwischen den Anforderungen an den CareLink® Server zu warten.
  * `MMCONNECT_MAX_RETRY_DURATION` (` 32`) - Maximale Gesamtanzahl Sekunden, bevor er aufgibt erneuten Versuch fehlgeschlagenen Anfragen zu verbringen.
  * `MMCONNECT_SGV_LIMIT` (` 24`) - Maximale Anzahl der letzten Werte Sensor Glucose zu Night auf jede Anfrage zu senden.
  * `MMCONNECT_VERBOSE` - Setzen Sie dies auf" true "CareLink® Anfrage Informationen an die Konsole anzumelden.
  * `MMCONNECT_STORE_RAW_DATA` - Setzen Sie dies auf" true "Rohdaten zu speichern zurückgegeben von CareLink® als` Typ: "carelink_raw" `Datenbankeinträge (nützlich für die Entwicklung).

##### `Pump` (Pumpenüberwachung)
  Generisches Pumpenüberwachung für OpenAPS, MiniMed Connect, RileyLink, t: schlank, mit mehr auf dem Weg
  * Erfordert `DEVICESTATUS_ADVANCED =" true "` gesetzt werden
  * `PUMP_ENABLE_ALERTS` (` false`) - Auf `true` Benachrichtigungen für Pump-Akku und Reservoir zu ermöglichen.
  * `PUMP_FIELDS` (` Reservoir battery`) - Die Felder standardmäßig angezeigt werden soll. Jede der folgenden Felder aus: `reservoir`,` battery`, `clock`,` status` und `device`
  * `PUMP_RETRO_FIELDS` (` Reservoir Batterie clock`) - Die Felder im Retro-Modus angezeigt werden soll. Jede der oben genannten Bereichen.
  * `PUMP_WARN_CLOCK` (` 30`) - Die Anzahl der Minuten vor, die vor ein Alarm ausgelöst wird, nicht überschreiten werden muss.
  * `PUMP_URGENT_CLOCK` (` 60`) - Die Anzahl der Minuten vor, die vor ein dringender Alarm ausgelöst wird überschreiten werden muss.
  * `PUMP_WARN_RES` (` 10`) - Die Anzahl der verbliebenen Einheiten, wird eine Warnung ausgelöst werden, wenn unter dieser Schwelle fällt.
  * `PUMP_URGENT_RES` ( '5') - Die Anzahl der Einheiten bleibt, wird ein dringender Alarm ausgelöst werden, wenn unter dieser Schwelle fällt.
  * `PUMP_WARN_BATT_P` (` 30`) - Die% der Pumpe verbleibende Batterie, wird eine Warnung ausgelöst werden, wenn unter dieser Schwelle fällt.
  * `PUMP_URGENT_BATT_P` (` 20`) - Die% der Pumpe Batterie bleibt, wird ein dringender Alarm ausgelöst werden, wenn unter dieser Schwelle fällt.
  * `PUMP_WARN_BATT_V` (` 1.35`) - Die Spannung der Pumpe Batterie (falls Prozent nicht verfügbar ist), wird eine Warnung ausgelöst werden, wenn unter dieser Schwelle fällt.
  * `PUMP_URGENT_BATT_V` (` 1.30`) - Die Spannung der Pumpe Batterie (falls Prozent nicht verfügbar ist), wird ein dringender Alarm ausgelöst werden, wenn unter dieser Schwelle fällt.

##### `Openaps` (OpenAPS)
  Integrierte OpenAPS Kreisüberwachung nutzt diese erweiterten Einstellungen:
  * Erfordert `DEVICESTATUS_ADVANCED =" true "` gesetzt werden
  * `OPENAPS_ENABLE_ALERTS` (` false`) - Auf `true` Benachrichtigungen zu aktivieren, wenn OpenAPS nicht Looping. Wenn OpenAPS für einen bestimmten Zeitraum zu offline geht, können Sie eine `OpenAPS Offline` Ereignis für die erwartete Dauer von Careportal hinzufügen zu vermeiden Warnungen bekommen.
  `* OPENAPS_WARN` (` 30`) - Die Anzahl der Minuten seit der letzten Schleife, die nicht überschreiten werden muss, bevor ein Alarm ausgelöst wird,
  `* OPENAPS_URGENT` (` 60`) - Die Anzahl der Minuten seit der letzten Schleife, die nicht überschreiten werden muss, bevor ein dringender Alarm ausgelöst wird
  * `OPENAPS_FIELDS` (` Status-Symbol Status-Label iob Mahlzeit-assist rssi`) - Die Felder standardmäßig angezeigt werden soll. Jede der folgenden Felder: `Status-symbol`,` Status-label`, `iob`,` Mahlzeit-assist`, `freq` und` rssi`
  * `OPENAPS_RETRO_FIELDS` (` Status-Symbol Status-Label iob Mahlzeit-assist rssi`) - Die Felder im Retro-Modus angezeigt werden soll. Jede der oben genannten Bereichen.



    
    
 


    
**Pushover** - Benachrichtigungen.

Der [Pushover](https://pushover.net/) Internetdienst bietet die Möglichkeit, sich Nachrichten, welche Nightscout erzeugen kann, auf einem Android oder Apple Iphone mit einer entspr. App anzeigen zu lassen. Nach Registrierung auf der Website erhält man einen Benutzer Key - Schlüssel, den man sich notiert. Nightscout konfiguriert man dort als eine Anwendung.
In den App.-Einstellungen ist der Wert **pushover** hinzuzufügen. 
Als Minimum ist der **API_TOKEN_KEY**, welcher über die Pushover Website generiert wurde, abzuspeichern.Jetzt können wir Alarme definieren, welche über die App auf dem Smartphone ausgegeben werden.
Eine detaiilierte Beschreibung findet man hier: [Pushover in Funnel Cake](http://www.nightscout.info/wiki/labs/pushover-in-funnel-cake).










    
    
    
