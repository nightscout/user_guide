# Nightscout Plugins

Die Nightscout Website besteht aus vielen kleinen Programm - Modulen den sogenannten **Plugins** Die Plugins können konfiguriert werden. Die Konfigurationseinstellungen können wir in den **Azure** Anwendungseinstellungen speichern.

**Standard PLugins**

Wir können einige Standard Plugins **deaktivieren**, die standardmäßig aktiv sind. Dieses erfolgt über den DISABLE Parameter in den Azure App. Einstellungen:

 
| Plugin |  Hinweise |
| -- | -- |
|delta | berechnet und zeigt die Veränderung zwischen den letzten beiden BZ - Werten an|
|direction |zeigt den Blutzuckertrend an|
|upbat |zeigt den aktuellsten Batterieladezustand des Uploader - Smartphones an|
|errorcodes |erzeugt Alarme für CGM Fehlermeldungen |
|ar2 | erzeugt Alarme basierend auf prognostizierten Werten|
|simplealarms |nutzt BG_HIGH, BG_TARGET_TOP, BG_TARGET_BOTTOM, BG_LOW Schwellenwerte, um Alarme zu erzeugen|



**Weiterentwickelte Plugins**


    careportal (Careportal)
    boluscalc (Bolus Wizard)
    food (Custom Foods)
    rawbg (Raw BG)
    iob (Insulin-on-Board)
    cob (Carbs-on-Board)
    bwp (Bolus Wizard Preview)
    cage (Cannula Age)
    sage (Sensor Age)
    iage (Insulin Age)
    treatmentnotify (Treatment Notifications)
    basal (Basal Profile)
    bridge (Share2Nightscout bridge)
    mmconnect (MiniMed Connect bridge)
    pump (Pump Monitoring)
    openaps (OpenAPS)



Wir können **Browsereinstellungen** zentral in den Azure App. Einstellungen speichern. Das hat den Vorteil, dass man egal von welchem Browser oder einer Smartphone App immer die gleichen Einstellungen hat. Machen wir dieses nicht, werden die Einstellungen nur im Browser Cache gespeichert und müssen sehr häufig neu eingegeben werden. Jeder Parameter mit Wert steht in einer extra Zeile.


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
|ALARM_TIMEAGO_WARN_MINS |15|  Minuten seit dem letzten Lesen, um eine Warnung auszugeben|
|ALARM_TIMEAGO_URGENT |on|  mögliche Werte: on oder off|
|ALARM_TIMEAGO_URGENT_MINS |30|  Minuten seit dem letzten Lesen, um eine alarmierende Warnung auszugeben|
|SHOW_PLUGINS|  enabled |Zeigt an, welche Plugins in der Grafik angezeigt werden sollen. Diese müssen vorher mit ENABLE bei den Azure App.-Settings konfiguriert sein|




Nach Eingabe der Daten das **Speichern** nicht vergessen.

Die Einstellungen sehen dann z.B. so aus:

![azure_app_entries](../images/azure/azure_app_entries.jpg)




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










    
    
    
