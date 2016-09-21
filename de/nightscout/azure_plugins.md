# Nightscout Plugins

Wir befassen uns hier mit der Beschreibung der Programm - Module, den sogenannten **Plugins**. Die Nightscout Website besteht aus vielen kleinen **Plugins**. Diese Plugins können konfiguriert werden. Die Konfigurationseinstellungen können wir in den **Azure** Anwendungseinstellungen speichern.

### Pflichtwerte

  * `MONGO_CONNECTION` - Deine Mongo uri, zum Beispiel:` mongodb: // sally: sallypass@ds099999.mongolab.com: 99999 / nightscout`
  * `DISPLAY_UNITS` (` mg / dl`) - Auswahl: `mg / dl` und` mmol`. Die Einstellung auf `mmol` setzt den gesamten Server auf ` mmol` Modus als Standard, weitere Einstellungen sind nicht erforderlich.
  * `API_SECRET` - Ein geheimes Passwort zur Authentifizierung. Es muss mindestens #12 Zeichen# lang sein und ist frei wählbar. 
     Das API_SECRET wird für Careportal Eingaben, Pushover Notifications und REST API Upload benötigt.
 

### Eigenschaften

  * `ENABLE` - Wird verwendet, um optionale Funktionen zu aktivieren, erwartet eine durch Leerzeichen getrennte Liste, wie zum Beispiel:` careportal rawbg iob` 
  - * `DISABLE` wird genutzt, um  Standardfunktionen zu deaktivieren, erwartet eine durch Leerzeichen getrennte Liste 
  * `TREATMENTS_AUTH` (` off`) - mögliche Werte `on` oder` off`. Bei Einstellung auf `on` muss man sich bei Eingaben auf dem jeweiligen Gerät mit dem `API_SECRET` authentisieren.
  * `BASE_URL` - Wird verwendet für den Aufbau von Verbindungen zu deinem Websiten api, dh pushover callbacks, in der Regel die URL deiner Nightscout Website, statt http möchtest du vielleicht lieber https verwenden

### Alarme

  Diese Alarmeinstellungen wirken sich auf alle Benachrichtigungsmethoden aus (Browser, Pushover, IFTTT Maker, etc.),  einige Einstellungen können durch Browsereinstellungen außer Kraft gesetzt werden.
  
  * `ALARM_TYPES` (`simple` falls ` BG_` * ENV  gesetzt sind, sonst `predict`) - derzeit werden zwei Alarmtypen unterstützt und können unabhängig voneinander oder in Kombination verwendet werden. Der `simple` Alarmtyp vergleicht nur die aktuelle BG mit `BG_` Schwellen, der `predict` Alarmtyp verwendet eine optimierte Formel, die die BG aufgrund ihres bisherigen Verlaufs prognostiziert. Derzeit verwendet `Predict` ** NICHT ** eines der` BG_` * ENV.
  * `BG_HIGH` (` 260`) - muss auf mg / dl Einheiten eingestellt werden; das ist eine hohe BG außerhalb des Zielbereichs, die als dringlich erachtet wird
  * `BG_TARGET_TOP` (` 180`) - muss auf mg / dl Einheiten eingestellt werden; das obere Ende des Zielbereichs, wird auch verwendet, um die obere Linie in der Grafik zu zeichnen
  * `BG_TARGET_BOTTOM` (` 80`) - muss auf mg / dl Einheiten eingestellt werden; das untere Ende des Zielbereichs, wird als untere Linie in der Grafik verwendet
  * `BG_LOW` (` 55`) - muss auf mg / dl Einheiten eingestellt werden; eine niedrige BG außerhalb des Zielbereichs, die als dringlich erachtet wird
  * `ALARM_URGENT_HIGH` (` on`) - mögliche Werte `on` oder` off`
  * `ALARM_URGENT_HIGH_MINS` (` 30 60 90 120`) - Anzahl der Minuten, in denen ein dringender Hochalarm schlafen gelegt wird, bevor er erneut ertönt; die einzelnen Minuten werden durch Leerzeichen voneinander getrennt, die erste Zahl wird für pushover verwendet
  * `ALARM_HIGH` (` on`) - mögliche Werte `on` oder` off`
  * `ALARM_HIGH_MINS` (` 30 60 90 120`) - Anzahl der Minuten, in denen ein (einfacher) Hochalarm schlafen gelegt wird, bevor er erneut ertönt; die einzelnen Minuten werden durch Leerzeichen voneinander getrennt, die erste Zahl wird für pushover verwendet
  * `ALARM_LOW` (` on`) - mögliche Werte `on` oder` off`
  * `ALARM_LOW_MINS` (` 15 30 45 60`) - Anzahl der Minuten, in denen ein (einfacher) Tiefalarm schlafen gelegt wird, bevor er erneut ertönt; die einzelnen Minuten werden durch Leerzeichen voneinander getrennt, die erste Zahl wird für pushover verwendet
  * `ALARM_URGENT_LOW` (` on`) - mögliche Werte `on` oder` off`
  * `ALARM_URGENT_LOW_MINS` (` 15 30 45`) - Anzahl der Minuten, in denen ein dringender Tiefalarm schlafen gelegt wird, bevor er erneut ertönt; die einzelnen Minuten werden durch Leerzeichen voneinander getrennt, die erste Zahl wird für pushover verwendet
  * `ALARM_URGENT_MINS` (` 30 60 90 120`) - Anzahl der Minuten, in denen ein dringender Alarm (der nicht als hoch oder niedrig markiert ist) schlafen gelegt wird, bevor er erneut ertönt; die einzelnen Minuten werden durch Leerzeichen voneinander getrennt, die erste Zahl wird für pushover verwendet
  * `ALARM_WARN_MINS` (` 30 60 90 120`) - Anzahl der Minuten, in denen ein Alarm (der nicht als hoch oder niedrig markiert ist) schlafen gelegt wird, bevor er erneut ertönt; die einzelnen Minuten werden durch Leerzeichen voneinander getrennt, die erste Zahl wird für pushover verwendet
  * 
  
### Basiseinstellungen

Die Basiseinstellungen sind Standardwerte, die beim Implementieren einer Nightscout Website gesetzt werden.

  * `MONGO_COLLECTION` (` entries`) - Diese Sammlung speichert SGV, MBG und CAL Aufzeichnungen von deinem CGM-Gerät
  * `MONGO_TREATMENTS_COLLECTION` (` treatments`) - Diese Sammlung speichert sog. treatments (Eingaben/Bearbeitungen), die im Care Portal eingegeben worden sind, s.o. unter `ENABLE` env var
  * `MONGO_DEVICESTATUS_COLLECTION` (` devicestatus`) - Diese Sammlung speichert Gerätestatusinformationen wie z.B. die Uploader Batterie
  * `MONGO_PROFILE_COLLECTION` (` Profile`) - Diese Sammlung speichert deine Profile
  * `MONGO_FOOD_COLLECTION` (` food`) - Die Sammlung speichert deine Lebensmittel-Datenbank
  * `PORT` (` 1337`) - Der Port, auf den die node.js Anwendung zugreift
  * `SSL_KEY` - Pfad zu deiner SSL-Schlüsseldatei, so dass ssl (https) direkt in node.js aktiviert werden kann
  * `SSL_CERT` - Pfad zu deiner SSL-Zertifikat-Datei, so dass ssl (https) direkt in node.js aktiviert werden kann
  * `SSL_CA` - Pfad zur ssl CA-Datei, so dass ssl (https) direkt in node.js aktiviert werden kann
  * `HEARTBEAT` (` 60`) - Anzahl der Sekunden zwischen den einzelnen Datenbanküberprüfungen

#### Standard Plugins 
  
  Diese können durch Einstellen der `DISABLE` env var deaktiviert werden, zum Beispiel` disable="Direction upbat" `

##### `Delta` (BG Delta)
  Berechnet und zeigt die Veränderung zwischen den letzten 2 BG-Werten.

##### `Direction` (BG Direction)
  Zeigt die Trendrichtung an.

##### `Upbat` (Uploader Batterie)
  Zeigt den aktuellsten Batteriestatus vom Uploader Telefon.

##### `Timeago` (Time Ago)
  Zeigt die Zeit seit dem letzten CGM-Eintrag an. Unterstützt die `TIMEAGO_ENABLE_ALERTS` [Erweiterte Einstellung] (# extended-Einstellungen) für die Serverseite bei Alarmen wegen veralteter Daten via Pushover und IFTTT.

##### `Devicestatus` (Gerätestatus)
  Wird von `upbat` und anderen Plugins verwendet, um Gerätestatusinformationen anzuzeigen. Unterstützt die `DEVICESTATUS_ADVANCED =" true "` [Erweiterte Einstellung] (# extended-Einstellungen), um jeden Gerätestatus an den Client für die retrospektive Anwendung zu senden und um andere Plugins zu unterstützen.

##### `Errorcodes` (CGM-Fehlercodes)
  Erzeugt Alarme für CGM-Codes `9` (Sanduhr) und` 10` (???).
  * Verwende [erweiterte Einstellungen] (# extended-Einstellungen) um zu sehen, welche Fehlercodes Benachrichtigungen und Alarme auslösen:
    * `ERRORCODES_INFO` (` 1 2 3 4 5 6 7 8`) - Standardmäßig erzeugen die "Needs Calibration" (Blutstropfen) und andere Fehlercodes unter 9 eine Info-Ebene Benachrichtigung; die Auswahlmöglichkeiten sind eine durch Leerzeichen getrennte Zahlenreihe oder `off`, um diese Benachrichtigung auszuschalten
    * `ERRORCODES_WARN` (` off`) - Standardmäßig ist keine Warnung konfiguriert, die Auswahlmöglichkeiten sind eine durch Leerzeichen getrennte Zahlenreihe oder `off`, um diese Benachrichtigung auszuschalten
    * `ERRORCODES_URGENT` (` 9 10`) - standardmäßig generieren die Sanduhr und ??? einen dringenden Alarm, die Auswahlmöglichkeiten sind eine durch Leerzeichen getrennte Zahlenreihe oder `off`, um diese Benachrichtigung auszuschalten

##### `Ar2` (AR2 Forecasting)
  Erzeugt Alarme auf Basis von prognostizierten Werten. Siehe [Forecasting mit AR2 Algorithmus] (https://github.com/nightscout/nightscout.github.io/wiki/Forecasting)
  * Standardmäßig aktiviert, wenn keine Schwellenwerte festgelegt werden ** OR ** `ALARM_TYPES` umfasst` predict`.
  * Verwende [erweiterte Einstellungen] (# extended-Einstellungen), um das AR2 Verhalten anzupassen:
    * `AR2_USE_RAW` (` false`) - um für Prognosen `rawbg` Werte zu verwenden, wenn Standardwerte keinen Alarm auslösen
    * `AR2_CONE_FACTOR` ( '2') - um die Größe der Kegel anzupassen, benutze '0' für eine einzelne Zeile

##### `Simplealarms` (Simple BG Alarme)
  Verwendet `BG_HIGH`,` BG_TARGET_TOP`, `BG_TARGET_BOTTOM`,` BG_LOW` -Schwellenwerte, um Alarme abzugeben.
  Ist standardmäßig aktiviert, wenn einer dieser Schwellenwerte gesetzt ist ** OR ** `ALARM_TYPES` umfasst` simple`.
  
  

### Vordefinierte Werte für Browser-Einstellungen (optional)

Wir können **Browsereinstellungen** zentral in den Azure App. Einstellungen speichern. Das hat den Vorteil, dass man egal von welchem Browser oder einer Smartphone App aus immer die gleichen Einstellungen hat. Machen wir dies nicht, werden die Einstellungen nur im Browser Cache gespeichert und müssen sehr häufig neu eingegeben werden. Jeder Parameter mit Wert steht in einer extra Zeile.

  * `TIME_FORMAT` (` 12`) - mögliche Werte `12` oder` 24`
  * `NIGHT_MODE` (` off`) - mögliche Werte `on` oder` off`
  * `SHOW_RAWBG` (` never`) - mögliche Werte `always`,` never` oder `noise`
  * `CUSTOM_TITLE` (` Nightscout`) - angepasste/r Titel/Überschrift
  * `THEME` (` default`) - mögliche Werte `default` oder` colors`
  * `ALARM_TIMEAGO_WARN` (` on`) - mögliche Werte `on` oder` off`
  * `ALARM_TIMEAGO_WARN_MINS` (` 15`) - Minuten seit dem letzten Messwert, um eine Warnung auszulösen
  * `ALARM_TIMEAGO_URGENT` (` on`) - mögliche Werte `on` oder` off`
  * `ALARM_TIMEAGO_URGENT_MINS` (` 30`) - Minuten seit dem letzten Wert, um  einen dringenden Alarm auszulösen
  * `SHOW_PLUGINS` - Anzeige der Plugins in der Website, Standardwerte für alle freigegeben
  * `SHOW_FORECAST` (` ar2`) - Plugin Prognosen, die standardmäßig angezeigt werden sollen, unterstützt räumlich begrenzte Werte wie `" ar2 openaps "`
  * `LANGUAGE` (` de`) - Sprache der Website. Falls nicht verfügbar, wird Englisch verwendet,
  * `SCALE_Y` (` log`) - Die Art der Skalierung , welche für die Y-Achse des Charts System verwendet wird.
    * Die Standard `log` (logarithmisch) Option lässt mehr Details im unteren Bereich zu , während immer noch der volle CGM Bereich angezeigt wird.
    * Die `linear` Option hat im gleichen Abstand Markierungen , der verwendete Bereich ist dynamisch, so dass kein Platz an der Spitze des Diagramms verschwendet wird.
    * Die `log-dynamic` ist der Standard` log` Option ähnlich und verwendet den gleichen dynamischen Bereich, aber die `linear` Skala.
  * `EDIT_MODE` (` on`) - mögliche Werte `on` oder` off`. Aktivieren oder deaktivieren des Symbols, das den Bearbeitungsmodus der Eingabe von Treatments ermöglicht.


Nach Eingabe der Daten das **Speichern** nicht vergessen.

Die Einstellungen sehen dann z.B. so aus:

![azure_app_entries](../images/azure/azure_app_entries.jpg)


#### Erweiterte Plugins:

##### `Careportal` (Careportal)
  Eine optionale Form, Eingaben zu machen.

##### `Boluscalc` (de: Bolus Rechner) 
  Nightscout berechnet anhand bestimmter Vorgaben die zu verabreichende Bolusmenge.

##### `Food` (de: Lebensmittel) 
  Wir können über den  `Nahrungs - Editor` siehe () Mahlzeiten mit Angabe von Kohlenhydraten eingeben

##### `rawbg` (Roh Blutzuckerwerte)
  Berechnet Roh Blutzuckerwerte mit Sensor und Kalibrierungsaufzeichnungen und zeigt alternative Werte mit Verzerrungspegel an.

##### `Iob` (en: Insulin-on-Board, de: Wirksames Insulin)
  Fügt die IOB Pillbox Visualisierung im Browser ein und berechnet das noch wirksame Bolus Insulin, welches von anderen Plugins verwendet werden kann. Verwendet Eingaben mit Insulindosen und der `dia` und` sens` Felder aus dem [Behandlungsprofil] (# behandlungs Profil).

##### `Cob` (Carbs-on-Board)
  Fügt die COB Pillbox Visualisierung im Browser ein und berechnet Werte, die von anderen Plugins verwendet werden können. Verwendet Eingaben (treatments) mit carb Angaben und der `carbs_hr`,` carbratio` und `sens` Felder aus dem [Behandlungsprofil] (# Behandlungs Profil).

##### `Bwp` (BolusExpert Vorschau)
  Dieses Plugin hat erstens den Zweck, Alarme automatisch schlafen zu legen, wenn das CGM zwar hohe Blutzuckerwerte anzeigt, es aber noch ausreichend Insulin an Bord (IOB) gibt und zweitens, um Benutzer darauf hinzuweisen, dass es günstig sein könnte, den Blutzucker mit einem Blutzuckermessgerät zu bestimmen und Insulin laut Berechnung durch die Insulinpumpe oder wie von medizinischem Fachpersonal empfohlen abzugeben. *** Die vom Plugin zur Verfügung gestellten Werte sind als Hinweis gedacht basierend auf CGM-Daten und der Insulinempfindlichkeit, die du konfiguriert hast, sie sind nicht als Empfehlung für die Bolus-Berechnung gedacht. *** Das Plugin berechnet die Bolus-Menge, wenn der Wert über dem von dir angegebenen Zielwert liegt, erzeugt Alarme, wenn du Prüfung und die Abgabe eines Bolus in Betracht ziehen solltest, und Alarme snoozes, wenn genug IOB vorliegt, um eine hohe BG zu decken. Verwendet die Ergebnisse des `iob` Plugin und` sens`, `target_high` und` target_low` Felder aus dem [Behandlungsprofil] (# behandlungs Profil). Defaults, die mit angepasst werden können [erweiterte Einstellung] (# extended-Einstellungen)
  * `BWP_WARN` (` 0.50`) - Wenn `BWP` größer ist als der ` BWP_WARN` wird ein Warnalarm ausgelöst.
  * `BWP_URGENT` (` 1.00`) - Wenn `BWP` größer als dieser Wert ist, wird` ein dringender Alarm BWP_URGENT` ausgelöst.
  * `BWP_SNOOZE_MINS` (` 10`) - Die Anzahl der Minuten, in der kein Alarm ausgelöst wird, wenn noch genügend IOB vorhanden ist, um eine hohe BG abzudecken.
  * `BWP_SNOOZE` - (` 0.10`) Wenn BG höher als die `target_high` und` BWP` < `BWP_SNOOZE` Alarme für` BWP_SNOOZE_MINS` werden snoozed ist.
  * 
  

##### `Cage` (en: Cannula Age, de: Pumpenkatheter Setz-Alter)
  Berechnet die Anzahl der Stunden seit der letzten `Site Change` Eingabe/Bearbeitung, die aufgezeichnet wurde.
  * `CAGE_ENABLE_ALERTS` (` false`) - Wenn du stattdessen auf `true` einstellst, kannst du dich an einen Katheterwechsel erinnern lassen.
  * `CAGE_INFO` (` 44`) - Wenn die hinter ` CAGE_INFO` eingestellte Stundenanzahl mit der Zahl seit dem letzten `Website Change` übereinstimmt, wirst du an einen demnächst fälligen Katheterwechsel erinnert.
  * `CAGE_WARN` (` 48`) - Wenn die hinter ` CAGE_WARN` eingestellte Stundenanzahl mit der Zeit seit dem letzten `Website Change` übereinstimmt, wirst du an den nun fälligen Katheterwechsel erinnert.
  * `CAGE_URGENT` (` 72`) - Wenn die hinter ` CAGE_URGENT` eingestellte Stundenanzahl die Zeit seit dem letzten `Website Change` erreicht, wird von da ab eine dauerhafte Warnung ausgegeben, dass der Katheterwechsel überfällig ist.
  * `CAGE_DISPLAY` (` hours`) - Mögliche Werte sind "Stunden" oder "Tage". Wenn "Tage" ausgewählt ist und das Alter des Katheters größer ist als 24-Stunden, wird in Tagen und Stunden angezeigt.

##### `Sage` (Sensor-Alter)
  Berechnet die Anzahl der Tage und Stunden seit der letzten `Sensor Starten` und` Sensor Change` Eingabe/Bearbeitung, die aufgezeichnet wurde.
  * `SAGE_ENABLE_ALERTS` (` false`) - Stattdessen auf `true` eingestellt, kannst du dich an einen Sensorwechsel erinnern lassen.
  * `SAGE_INFO` (` 144`) - Wenn die hinter `SAGE_INFO` eingestellte Stundenanzahl mit der Zeit seit dem letzten dokumentierten Sensorwechsel bzw. Sensorstart übereinstimmt, wirst du an einen demnächst fälligen Sensorwechsel erinnert.
  * `SAGE_WARN` (` 164`) - Wenn die hinter `SAGE_WARN` eingestellte Stundenanzahl mit der Zeit seit dem letzten Sensorwechsel bzw. -start übereinstimmt, wirst du an den nun fälligen Sensorwechsel oder -neustart erinnert.
  * `SAGE_URGENT` (` 166`) - Wenn die hinter `SAGE_URGENT` eingestellte Stundenanzahl erreicht ist, wird der Benutzer dauerhaft an einen überfälligen Wechsel/Neustart erinnert.

##### `Iage` (Insulin-Alter)
  Berechnet die Anzahl der Tage und Stunden seit der letzten `Insulin Change` Eingabe, die aufgezeichnet wurde.
  * `IAGE_ENABLE_ALERTS` (` false`) - Stattdessen auf `true` eingestellt, kannst du dich an einen Insulinreservoirwechsel erinnern lassen.
  * `IAGE_INFO` (` 44`) - Wenn die hinter ` IAGE_INFO` eingestellte Stundenanzahl mit der Zeit seit dem letzten dokumentierten `Insulin Change` übereinstimmt, wirst du an einen demnächst fälligen Reservoirwechsel erinnert.
  * `IAGE_WARN` (` 48`) - Wenn die hinter ` IAGE_WARN` eingestellte Stundenanzahl mit der Zeit seit dem letzten `Insulin Change` übereinstimmt, wirst du an den nun fälligen Reservoirwechsel erinnert.
  * `IAGE_URGENT` (` 72`) - Wenn die hinter ` IAGE_URGENT` eingestellte Stundenanzahl mit der dokumentierten `Insulin Change` Stundenanzahl übereinstimmt, wirst du dauerhaft an einen überfälligen Reservoirwechsel erinnert.

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


#### Pushover
  Zusätzlich zu den normalen web-basierten Alarmen ist auch die Unterstützung für [Pushover] Alarme (https://pushover.net/) möglich.
  Um zu beginnen installieren wir die Pushover-Anwendung auf Ihrem iOS oder Android-Gerät und erstellen ein Konto .

  Mit diesem Konto Login [Pushover] (https://pushover.net/), in der oberen linken Seite erstellen wir unseren User Key, sowie ein Anwendungs API Token / Schlüssel, um dieses Setup abzuschließen.

  Wir müssen auf [Erstellen eines Pushover Application] (https://pushover.net/apps/build). Wir benötigen nur den Namen der Anwendung, um zu installieren, alle anderen Einstellungen können wir ignorieren.

  Pushover ist mit folgenden Umgebungsvariablen konfiguriert:
  
  * `ENABLE` -` pushover` sollte in die Liste der Plugin hinzugefügt werden, zum Beispiel: `ENABLE =" Pushover "`.
  * `PUSHOVER_API_TOKEN` - Gebrauchte Pushover Benachrichtigungen zu ermöglichen, ist dieses Token an die Anwendung aus dem in [Pushover] erstellen (https://pushover.net/) spezifisch, *** [zusätzliche Pushover Informationen] (# Pushover) ** * unten.
  * `PUSHOVER_USER_KEY` - Ihre Pushover Benutzerschlüssel können in der oberen linken Ecke des [Pushover] (https://pushover.net/) Seite gefunden werden, kann dies auch ein Pushover Liefergruppe der Schlüssel zu einer Gruppe zu senden, anstatt nur ein einzelner Benutzer. Dies unterstützt auch einen Raum getrennte Liste von Schlüsseln. So deaktivieren Sie `INFO` Ebene drückt gesetzt, dies zu` off`.
   * `PUSHOVER_ALARM_KEY` - Eine optionale Pushover Benutzer / Gruppenschlüssel wird für systemweite Alarme (Ebene>` WARN`) verwendet werden. Wenn nicht definiert ist, wird dies auf `PUSHOVER_USER_KEY` Rückfall. Eine mögliche Verwendung für diese sendet wichtige Meldungen und Alarme an einen CWD, die Sie wollen nicht zu alle Benachrichtigungen zu senden. Dies ist auch eine durch Leerzeichen getrennte Liste von Schlüsseln unterstützen. Zum Deaktivieren der Alarm drückt setzen Sie dies auf `off`.
  * `PUSHOVER_ANNOUNCEMENT_KEY` - Eine optionale Pushover Benutzer / Gruppenschlüssel wird für systemweite Benutzer erzeugt Ankündigungen verwendet werden. Wenn nicht definiert ist, wird dieser Rückfall auf `PUSHOVER_USER_KEY` oder` PUSHOVER_ALARM_KEY`. Dies ist auch eine durch Leerzeichen getrennte Liste von Schlüsseln unterstützen. Zum Deaktivieren der Ankündigung drückt setzen Sie dies auf `off`.
  * `BASE_URL` - Für Pushover Rückrufe, in der Regel die URL Ihrer Website Night, https verwenden, wenn möglich.
  * `API_SECRET` - verwendet, um die Pushover Rückrufanfrage für Bestätigungen für Ihre Anmeldung.

   Wenn Sie noch nie Infoebene Benachrichtigungen (Behandlungen) erhalten möchten verwenden `PUSHOVER_USER_KEY =" off "`
   Wenn Sie nie einen Alarm über Pushover Verwendung zu erhalten `PUSHOVER_ALARM_KEY =" off "`
   Wenn Sie nie eine Ansage über Pushover Verwendung zu erhalten `PUSHOVER_ANNOUNCEMENT_KEY =" off "`
  
  Wenn nur `PUSHOVER_USER_KEY` gesetzt ist, wird es für alle Info-Benachrichtigungen, Alarme verwendet werden und Ankündigungen

  Für den Test / Entwicklung versuchen [localtunnel] (http://localtunnel.me/).
    
    
 
 #### IFTTT Maker
 Zusätzlich zu den normalen web-basierten Alarme und Pushover, gibt es auch die Integration für [IFTTT Maker] (https://ifttt.com/maker).
  
 Mit Maker Sie mit allen anderen [IFTTT Kanäle] (https://ifttt.com/channels) sind in der Lage zu integrieren. Zum Beispiel können Sie einen Tweet senden, wenn es eine Warnung gibt, die Farbe des Farbtons Licht zu ändern, eine E-Mail, SMS senden und zu senden, und so vieles mehr.
 
 1. Setup-IFTTT Konto: [Anmelden] (https://ifttt.com/login) oder [ein Konto erstellen] (https://ifttt.com/join)
 2. Finden Sie Ihren geheimen Schlüssel auf dem [Hersteller Seite] (https://ifttt.com/maker)
 3. Konfigurieren Night durch diese Umgebungsvariablen:
  * `ENABLE` -` maker` sollte in die Liste der Plugin hinzugefügt werden, zum Beispiel: `ENABLE =" maker "`.
  * `MAKER_KEY` - Setzen Sie diese auf Ihre geheimen Schlüssel, der in Schritt 2 befindet, zum Beispiel:` MAKER_KEY = "abcMyExampleabc123defjt1DeNSiftttmak-XQb69p" `Dies ist auch eine durch Leerzeichen getrennte Liste von Schlüsseln unterstützen.
  * `MAKER_ANNOUNCEMENT_KEY` - Ein optionaler Maker Schlüssel wird für systemweite Benutzer erzeugt Ankündigungen verwendet werden. Wenn nicht definiert ist, wird dies auf `MAKER_KEY` Rückfall. Eine mögliche Verwendung für diese sendet wichtige Meldungen und Alarme an einen CWD, die Sie wollen nicht zu alle Benachrichtigungen zu senden. Dies ist auch eine durch Leerzeichen getrennte Liste von Schlüsseln unterstützen.
 4. [Erstellen Sie ein Rezept] (https://ifttt.com/myrecipes/personal/new) oder siehe [ausführliche Anleitung] (lib / plugins / maker-setup.md # create-a-Rezept)
 
 Plugins können benutzerdefinierte Ereignisse erstellen, aber alle Ereignisse an Hersteller gesendet werden mit `ns-` vorangestellt werden. Die Kern Ereignisse sind:
  * `Ns-event` - Dieses Ereignis wird für alle Alarme und Benachrichtigungen an den Hersteller-Service gesendet. Das ist gut, fangen alle Ereignis für die allgemeine Protokollierung.
  * `Ns-allclear` - Dieses Ereignis wird an den Hersteller-Service gesendet wird, wenn ein Alarm ack'd wurde oder wenn der Server startet ohne Alarme auslösen. Zum Beispiel könnten Sie mit diesem Ereignis ein Licht grün.
  * `Ns-info` - Plugins, die Benachrichtigungen auf der Infoebene generieren wird dieses Ereignis dazu führen, auch ausgelöst werden. Es wird zusätzlich zu `ns-event` gesendet werden.
  * `Ns-warning` - Alarme auf der Warnstufe mit Ursache dieses Ereignis auch ausgelöst werden. Es wird zusätzlich zu `ns-event` gesendet werden.
  * `Ns-urgent` - Alarme auf dringendes Ebene mit Ursache dieses Ereignis auch ausgelöst werden. Es wird zusätzlich zu `ns-event` gesendet werden.
  * siehe die [vollständige Liste der Veranstaltungen] (lib / plugins / maker-setup.md # events)


    
**Pushover** - Benachrichtigungen.

Der [Pushover](https://pushover.net/) Internetdienst bietet die Möglichkeit, sich Nachrichten, welche Nightscout erzeugen kann, auf einem Android oder Apple Iphone mit einer entspr. App anzeigen zu lassen. Nach Registrierung auf der Website erhält man einen Benutzer Key - Schlüssel, den man sich notiert. Nightscout konfiguriert man dort als eine Anwendung.
In den App.-Einstellungen ist der Wert **pushover** hinzuzufügen. 
Als Minimum ist der **API_TOKEN_KEY**, welcher über die Pushover Website generiert wurde, abzuspeichern.Jetzt können wir Alarme definieren, welche über die App auf dem Smartphone ausgegeben werden.
Eine detaiilierte Beschreibung findet man hier: [Pushover in Funnel Cake](http://www.nightscout.info/wiki/labs/pushover-in-funnel-cake).










    
    
    
