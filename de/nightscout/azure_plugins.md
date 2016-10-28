# Nightscout Plugins

Wir befassen uns hier mit der Beschreibung der Programm - Module, den sogenannten **Plugins**. Die Nightscout Website besteht aus vielen kleinen **Plugins**. Diese Plugins können konfiguriert werden. Die Konfigurationseinstellungen können wir in den **Azure** Anwendungseinstellungen speichern.

### Pflichtwerte

  * `MONGO_CONNECTION` - Deine Mongo uri, zum Beispiel:` mongodb: // sally: sallypass@ds099999.mongolab.com: 99999 / nightscout`
  * `DISPLAY_UNITS` (` mg / dl`) - Auswahl: `mg / dl` und` mmol`. Die Einstellung auf `mmol` setzt den gesamten Server auf ` mmol` Modus als Standard, weitere Einstellungen sind nicht erforderlich.
  * `API_SECRET` - Ein geheimes Passwort zur Authentifizierung. Es muss mindestens **12 Zeichen** lang sein und ist frei wählbar. 
     Das API_SECRET wird für Careportal Eingaben, Pushover Notifications und REST API Upload benötigt.
 

### Eigenschaften

  * `ENABLE` - Wird verwendet, um optionale Funktionen zu aktivieren, erwartet eine durch Leerzeichen getrennte Liste, wie zum Beispiel:` careportal rawbg iob` 
  - * `DISABLE` wird genutzt, um  Standardfunktionen zu deaktivieren, erwartet eine durch Leerzeichen getrennte Liste 
  * `TREATMENTS_AUTH` (` off`) - mögliche Werte `on` oder` off`. Bei Einstellung auf `on` muss man sich bei Eingaben auf dem jeweiligen Gerät mit dem `API_SECRET` authentisieren.
  * `BASE_URL` - Wird verwendet für den Aufbau von Verbindungen zu deinem Websiten api, dh pushover callbacks, in der Regel die URL deiner Nightscout Website, statt http möchtest du vielleicht lieber https verwenden
  
  * `AUTH_DEFAULT_ROLES (readable)` - mögliche Werte `readable`, `denied`, oder ein beliebiger Rollenname. Wenn **lesend** gesetzt, kann jeder ohne einen Zugriffstoken auf die Website zugreifen. Die Einstellung `denied `bewirkt, das man sich bei jedem Besuch der Website authentifizieren muss, die Einstellung `status-only` bewirkt ein Anmelden über das **API Secret**.

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
  * `MONGO_TREATMENTS_COLLECTION` (` treatments`) - Diese Sammlung speichert sog. treatments (eingegebene Therapiemaßnahmen oder kurz: Eingaben), die im Care Portal eingegeben worden sind, s.o. unter `ENABLE` env var
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

Wir können **Browsereinstellungen** zentral in den Azure App. Einstellungen speichern. Das hat den Vorteil, dass man egal von welchem Browser oder einer Smartphone App aus immer die gleichen Einstellungen hat. Machen wir dies nicht, werden die Einstellungen nur im Browser Cache gespeichert und müssen ggf. immer wieder neu eingegeben werden. Jeder Parameter mit Wert steht in einer extra Zeile.

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
  * `EDIT_MODE` (` on`) - mögliche Werte `on` oder` off`. Aktivieren oder deaktivieren des Symbols, das den Bearbeitungsmodus der treatments (Behandlungsmaßnahmen) ermöglicht.


Nach Eingabe der Daten das **Speichern** nicht vergessen.

Die Einstellungen sehen dann z.B. so aus:

![azure_app_entries](../images/azure/azure_app_entries.jpg)


#### Erweiterte Plugins:

##### `Careportal` (Careportal)
  Eine optionale Form, Therapiemaßnahmen einzugeben.

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
  Erzeugt Benachrichtigungen, wenn eine Therapiemaßnahme eingegeben wurde, und legt Alarme für bestimmte Minuten nach einer Eingabe schlafen. Die Standardeinstellung ist 10 Minuten und kann über `TREATMENTNOTIFY_SNOOZE_MINS` [Erweiterte Einstellung] (# extended-Einstellungen) verändert werden.

##### `Basal` (Basal-Profil)
  Fügt ein Textfeld, eine sog. Pillbox, für das Basalinsulin ein, in dem du die aktuelle Basalrate ablesen kannst. Außerdem ermöglicht es dem `bwp` Plugin, Vorschläge für eine temporäre Basalkorrektur zu berechnen. Verwendet das `basal` Feld aus dem [Behandlungsprofil] (# behandlungs Profil). Es nutzt auch die erweiterte Einstellung:
  * `BASAL_RENDER` (` none`) - Mögliche Werte sind `none`,` default` oder `icicle` (invertiert, auf den Kopf gestellt)

##### `Bridge` (Share2Nightscout Brücke)
Die Share2Nightscout Bridge Funktionalität ist derzeit nur für Dexcom Share Benutzer interessant. Die Verbindung zum Dexcom G5 System wird über diesen Weg konfiguriert. Um die Bridge Funktionalität nutzen zu können, müssen wir **bridge** zu ENABLE in den App-Einstellungen hinzufügen. Die Einstellungen erfolgen über die `Connection Strings`. 
  * `BRIDGE_USER_NAME` - Dein Benutzername für den Share-Dienst
  * `BRIDGE_PASSWORD` - Dein Passwort für den Share-Dienst
  * `BRIDGE_INTERVAL` (` 150000` * 2,5 Minuten *) - Die Wartezeit zwischen den Updates
  * `BRIDGE_MAX_COUNT` ( '1') - Die maximale Anzahl der Datensätze pro Update
  * `BRIDGE_FIRST_FETCH_COUNT` (` 3`) - Ändert Brigde_Max_Count nur während des ersten Updates
  * `BRIDGE_MAX_FAILURES` (` 3`) - Die Anzahl der Fehlversuche, bevor aufgegeben wird
  * `BRIDGE_MINUTES` (` 1400`) - Das Zeitfenster für die Suche nach neuen Updates (Standard ist ein Tag in Minuten)

##### `Mmconnect` (MiniMed Connect-Brücke)
  Überträgt Echtzeit MiniMed Connect Daten vom Medtronic Carelink-Server an Nightscout ([mehr lesen] (https://github.com/mddub/minimed-connect-to-nightscout))
  * `MMCONNECT_USER_NAME` - Dein Benutzername für CareLink® Connect
  * `MMCONNECT_PASSWORD` - Dein Passwort für CareLink® Connect
  * `MMCONNECT_INTERVAL` (` 60000` * 1 Minute *) - Anzahl der Millisekunden zwischen den einzelnen Anfragen an den CareLink® Server
  * `MMCONNECT_MAX_RETRY_DURATION` (` 32`) - Maximale Gesamtanzahl der Sekunden, nach denen bei fehlgeschlagenen Anfragen aufgegeben wird
  * `MMCONNECT_SGV_LIMIT` (` 24`) - Maximale Anzahl der letzten Sensorwerte, die bei jeder Anfrage gesendet werden
  * `MMCONNECT_VERBOSE` - Setze dies auf" true ", um Informationen über CareLink® Anfragen auf der Konsole wiederzugeben.
  * `MMCONNECT_STORE_RAW_DATA` - Setze dies auf" true ", um Rohdaten zu speichern, die von CareLink® als` Typ: "carelink_raw" `Datenbankeinträge zurück kommen (nützlich für die Entwicklung).

##### `Pump` (Pumpenüberwachung)
  Allgemeingültige Pumpenüberwachung für OpenAPS, MiniMed Connect, RileyLink, t:slim, mit mehr auf dem Weg
  * Erfordert `DEVICESTATUS_ADVANCED =" true "` 
  * `PUMP_ENABLE_ALERTS` (` false`) - Auf `true` werden Anzeigen über die Pumpenbatterie und das -reservoir bereitgestellt.
  * `PUMP_FIELDS` (` reservoir battery`) - Diese Felder werden standardmäßig angezeigt. Wähle aus: `reservoir`,` battery`, `clock`,` status` und `device`
  * `PUMP_RETRO_FIELDS` (` reservoir battery clock`) - Die Textfelder, die im Retro-Modus angezeigt werden. Jede der oben genannten Möglichkeiten.
  * `PUMP_WARN_CLOCK` (` 30`) - Die Anzahl der Minuten, die verstrichen sein müssen, bevor ein Alarm ausgelöst wird
  * `PUMP_URGENT_CLOCK` (` 60`) - Die Anzahl der Minuten, die verstrichen sein müssen, bevor ein dringender Alarm ausgelöst wird
  * `PUMP_WARN_RES` (` 10`) - Bei Unterschreiten der ausgewählten Insulinrestmenge im Reservoir wird eine Warnung ausgelöst.
  * `PUMP_URGENT_RES` ( '5') - Bei Unterschreiten der ausgewählten Insulinrestmenge wird ein dringender Alarm ausgelöst.
  * `PUMP_WARN_BATT_P` (` 30`) - Bei Unterschreiten der ausgewählten Restleistung der Pumpenbatterie in % wird eine Warnung ausgelöst.
  * `PUMP_URGENT_BATT_P` (` 20`) - Bei Unterschreiten der ausgewählten Restleistung der Batterie in % wird ein dringender Alarm ausgelöst.
  * `PUMP_WARN_BATT_V` (` 1.35`) - Bei Unterschreiten der ausgewählten Restleistung der Pumpenbatterie in Voltzahl (falls Prozent nicht verfügbar ist) wird eine Warnung ausgelöst.
  * `PUMP_URGENT_BATT_V` (` 1.30`) - Bei Unterschreiten der ausgewählten Restleistung der Batterie in Voltzahl (falls Prozent nicht verfügbar ist) wird ein dringender Alarm ausgelöst.

##### `Openaps` (OpenAPS)
  Integrierte OpenAPS Loopüberwachung nutzt diese erweiterten Einstellungen:
  * `DEVICESTATUS_ADVANCED =" true "` muss gesetzt werden
  * `OPENAPS_ENABLE_ALERTS` (` false`) - Auf `true` setzen, um benachrichtigt zu werden, wenn OpenAPS nicht loopt. Wenn du mit OpenAPS für einen bestimmten Zeitraum offline gehst, kannst du ein `OpenAPS Offline` Ereignis für die erwartete Dauer vom Careportal aus hinzufügen, um Warnmeldungen zu vermeiden.
  `* OPENAPS_WARN` (` 30`) - Die Anzahl der Minuten seit dem letzten Loop, die überschreiten werden muss, bevor ein Alarm ausgelöst wird
  `* OPENAPS_URGENT` (` 60`) - Die Anzahl der Minuten seit dem letzten Loop, die überschreiten werden muss, bevor ein dringender Alarm ausgelöst wird
  * `OPENAPS_FIELDS` (` status-symbol status-label iob meal-assist rssi`) - Die standardmäßig angezeigten Textfelder. Jedes der folgenden Felder ist möglich: `status-symbol`,` status-label`, `iob`,` meal-assist`, `freq` und` rssi`
  * `OPENAPS_RETRO_FIELDS` (` status-symbol status-label iob meal-assist rssi`) - Die Felder, die im Retro-Modus angezeigt werden sollen. Jede der oben genannten Möglichkeiten.


#### Pushover
  Zusätzlich zu den normalen web-basierten Alarmen können auch [Pushover] Alarme (https://pushover.net/) eingerichtet werden.
  Zuerst installierst du die Pushover-Anwendung auf deinem iOS oder Android-Gerät und erstellst ein Konto .

  Beim Konto Login in [Pushover] (https://pushover.net/) findest du oben links deinen User Key, du benötigst diesen Key und einen Anwendungs API Token / Schlüssel, um dieses Setup abzuschließen.

  Gehe auf [Erstellen eines Pushover Application] (https://pushover.net/apps/build). Du benötigst nur einen Namen für die Anwendung, um sie zu installieren, alle anderen Einstellungen kannst du ignorieren.

  Pushover ist mit folgenden Umgebungsvariablen konfiguriert:
  
  * `ENABLE` -` pushover` sollte zu der Liste der Plugins hinzugefügt werden, zum Beispiel: `ENABLE =" Pushover "`.
  * `PUSHOVER_API_TOKEN` - Um Pushover Benachrichtigungen zu ermöglichen, ist dieses Token speziell für deine erstellte Anwendung [Pushover] (https://pushover.net/) *** [zusätzliche Pushover Informationen] (# Pushover) ** * unten.
  * `PUSHOVER_USER_KEY` - Deinen Pushover Benutzerschlüssel findest du in der oberen linken Ecke der [Pushover] (https://pushover.net/) Seite. Es kann sich dabei auch um einen Benutzerschlüssel für eine Pushover delivery group statt für einen einzelnen Benutzer handeln. Dies unterstützt auch eine durch Leerzeichen getrennte Liste von Schlüsseln. Um `INFO` Level pushes zu deaktivieren, stelle dies auf` off`.
   * `PUSHOVER_ALARM_KEY` - Ein optionaler Pushover Benutzer- / Gruppenschlüssel wird für systemweite Alarme (level>` WARN`) verwendet. Wenn hier nichts definiert ist, wird ersatzweise auf `PUSHOVER_USER_KEY` zurückgegriffen. Eine mögliche Verwendung für dies ist, wichtige Meldungen und Alarme an einen CWD zu senden, an den du nicht alle Benachrichtigungen senden möchtest. Auch dies unterstützt eine durch Leerzeichen getrennte Liste von Schlüsseln. Zum Deaktivieren der Alarmpushes setze dies auf `off`.
  * `PUSHOVER_ANNOUNCEMENT_KEY` - Ein optionaler Pushover Benutzer- / Gruppenschlüssel wird für systemweite vom Benutzer erzeugte Ankündigungen verwendet. Wenn hier nichts definiert ist, wird auf `PUSHOVER_USER_KEY` oder` PUSHOVER_ALARM_KEY`zurückgegriffen. Dies unterstützt ebenfalls eine durch Leerzeichen getrennte Liste von Schlüsseln. Zum Deaktivieren setzt du dies auf `off`.
  * `BASE_URL` - Wird für Pushover Rückrufe genutzt, in der Regel die URL deiner Nightscout Website, verwende dafür möglichst https.
  * `API_SECRET` - wird für die Pushover Rückrufanfrage als Bestätigungen verwendet für deine Identifizierung.

   Wenn du keine Infolevel Benachrichtigungen (treatments, Therapiemaßnahmen) erhalten möchtest, verwende `PUSHOVER_USER_KEY =" off "`
   Wenn du keinen Alarm über Pushover erhalten möchtest, verwende `PUSHOVER_ALARM_KEY =" off "`
   Wenn du keine Mitteilung über Pushover erhalten möchtest, verwende `PUSHOVER_ANNOUNCEMENT_KEY =" off "`
  
  Wenn nur `PUSHOVER_USER_KEY` gesetzt ist, wird es für alle Info-Benachrichtigungen, Alarme und Mitteilungen verwendet werden.

  Für Test / Entwicklung versuche [localtunnel] (http://localtunnel.me/).
    
    
 
 #### IFTTT Maker
 Zusätzlich zu den normalen web-basierten Alarmen und zu Pushover, gibt es auch die Integration für [IFTTT Maker] (https://ifttt.com/maker).
  
 Mit Maker kannst du dich mit allen anderen [IFTTT Kanälen] (https://ifttt.com/channels) verknüpfen. Zum Beispiel kannst du einen Tweet senden, wenn es eine Warnung gibt, die Farbe von Hue Lampen ändern, eine E-Mail oder eine SMS senden und vieles mehr.
 
 1. Setup-IFTTT Konto: [Anmelden] (https://ifttt.com/login) oder [ein Konto erstellen] (https://ifttt.com/join)
 2. Finde deinen Geheimschlüssel auf der [Hersteller Seite] (https://ifttt.com/maker)
 3. Konfiguriere Nightscout mithilfe dieser Umgebungsvariablen:
  * `ENABLE` -` maker` sollte zu der Liste der Plugins hinzugefügt werden, zum Beispiel: `ENABLE =" maker "`.
  * `MAKER_KEY` - Setze diesen auf deinen Geheimschlüssel, siehe Schritt 2, zum Beispiel:` MAKER_KEY = "abcMyExampleabc123defjt1DeNSiftttmak-XQb69p" `Dies unterstützt auch eine durch Leerzeichen getrennte Liste von Schlüsseln.
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










    
    
    
