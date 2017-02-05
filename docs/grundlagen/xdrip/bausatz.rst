Bausatz
-------

| Es gibt verschiedene Varianten, um ein xDrip zu bauen. Das betrifft
  die verwendete Hardware, die Art die Hardware zu verlöten und auch die
  Software. (Auf eines der Bauteile - das Wixel - wird eine Software
  aufgespielt.)
| Daher gibt es im Netz unterschiedliche Anleitungen und verschiedene
  Namen für ähnliche Dinge.
| Die Varianten haben unterschiedliche Eigenschaften, letztlich aber
  dieselbe Aufgabe: CGM-Daten vom Transmitter zu empfangen und an ein
  Bluetooth-Handy zu übertragen.

Hier soll zunächst der Schwerpunkt darauf liegen, eine leichte Anleitung
zum Nachbauen zu haben. Es ist nicht der Anspruch, alle bekannten
Bauformen zu beschreiben.

Hier werden drei verschiedene Bauformen vorgestellt. Eine "Bauform"
meint eine Art, die Hardware-Komponenten miteinander zu verlöten.

| Bauform 1.): "xDrip classic"
| Dies ist die einfachste Bauform. Es hat sich der Name der "xDrip
  classic" etabliert.
| Vorteil: Weniger Lötstellen. Einfach und robust. (Was nicht dran ist,
  kann nicht kaputt gehen.) Im Regelbetrieb leuchtet immer eine LED. Das
  verbraucht etwas Strom, aber man sieht auf den ersten Blick, ob der
  xDrip noch "lebt".
| Nachteil: Keine Anzeige der Akku-Ladung. Kürzere Laufzeit, als bei
  xBridge-Bauform.

| Bauform 2.): "xDrip classic mit Spannungsteiler"
| Diese Bauform lohnt sich eigentlich nur dann, wenn mit möglichst
  geringem Aufwand ein "xDrip classic" um eine Anzeige der Akku-Ladung
  erweitert werden soll.
| Vorteil: Mit Anzeige der Akku-Ladung. Geringer Aufwand beim Umbau von
  "xDrip classic".
| Nachteil: Kürzere Laufzeit, als bei xBridge-Bauform.

| Bauform 3.): "xBridge"
| Die Stromversorgung des Bluetooth-Moduls läuft etwas anders, als beim
  "xDrip classic". Im Vergleich zum "xDrip mit Spannungsteiler" müssen
  zwei Lötstellen mehr gelötet werden. Insbesondere müssen die Kabel für
  die Anbindung an das Bluetooth-Modul etwas anders geschaltet werden.
| Vorteil: Von den hier vorgestellten Varianten die längste
  Akku-Laufzeit. Von der Anzeige der Akku-Ladung bitte keine Wunder
  erwarten - es ist nur eine grobe Orientierung. Der aangezeigte
  Prozentwert sinkt nicht linear.
| Nachteil: Ungeeignet, wenn sich die Bluetooth-Verbindung zum Handy
  sich schlecht oder langsam aufbaut.

Tipps und Rat für Einsteiger:

-  Baut zunächst einen xDrip in der "klassischen Verschaltung".
   Es entfallen die beiden Widerstände, dafür fehlt in der App die
   Batterieanzeige. Wenn das später gewünscht ist, kann man diese Teile
   problemlos nachrüsten (und die Spannungsversorgung für das
   Bluetooth-Modul ggf. ändern).
-  Verwendet für das Wixel die "xBridge2.wxl"-Software. Für alle hier
   gezeigten Schaltkreise/Bauformen ist diese Software geeignet.
-  Große Akkus bringen (natürlich) eine längere Laufzeit. Es kann aber
   sein, dass ein großer Akku den Empfang der Antennen verschlechtert.
   Es kommen alle LiPo-Akkus mit 3,7V in Frage. Eine Empfehlung aus
   Erfahrungswerten ist, für xDrip classic mindestens 500 mAh verwenden.
   Große Akkus mit 1100 mAh und mehr bieten auch für xDrip classic
   mehrere Tage Laufzeit. Für "xBridge"-Schaltkreise können schon Akkus
   ab 200 mAh mehr als 24 Stunden Laufzeit erreichen. (Tipp aus der
   Praxis: In aller Regel kann man den Akku über Nacht aufladen - extrem
   lange Laufzeiten sind also in vielen Fällen unnötig. Das Handy wird
   ja in aller Regel auch über Nacht aufgeladen... Um etwas Puffer zu
   haben: Empfehlung etwa 400 bis 500 mAh nehmen.)
-  Die Brücke "for faster charging with large batteries" beeinflusst den
   Ladestrom. Ist die Brücke geöffnet, fließen 100 mA. Wird sie
   geschlossen, fließen 500 mA. Ein kleinerer Ladestrom schont den Akku
   - aber die Ladezeit erhöht sich.
   Der Akku-Hersteller empfiehlt, die Brücke für Akkus ab 500 mAh zu
   schließen.
   Zur Information: LiPo Akkus können sich beim Laden erhitzen. Laut
   Wikipedia kann das eine ernste Brandgefahr mit sich bringen.
-  Die Kabel können sehr dünn sein - das erhöht die Flexibilität.
   Verschiedene Farben machen es leichter, die Übersicht zu behalten,
   solange der xDrip noch im Bau ist.
-  Das Schutzmodul für Lipo-Akkus (unten in der Stückliste mit Nr. 2)
   hat sich in einem Fall nicht bewährt: Es gab fortwährendes Ein- und
   Ausschalten. Das könnte am kleinen Akku gelegen haben. Evtl. war es
   aber Pech oder fehlerhaft verlötet. Im Prinzip ist ein Schutz vor
   Tiefenentladung sicher sehr sinnvoll. Die Schaltkreise funktionieren
   aber auch ohne dieses Modul.
-  In den Schaltbildern sind keine Schalter eingetragen. Ein Schalter
   kann sinnvoll sein, um einen zweiten (geladenen, aber abgeschalteten)
   xDrip als Ersatz dabei haben zu können. Ggf. kann das xDrip
   abgeschaltet werden, wenn absehbar ist, dass für eine Zeit keine
   Daten empfangen werden können. (CGM vorübergehend abgelegt, während
   des Schwimmengehens,...).

**Schaltbild für xDrip in der "klassischen Verschaltung" (Empfehlung für
Einsteiger)**

| (ohne Widerstände für Batterieanzeige)
| |xDrip Schaltbild|

\*\* Hinweise zum Löten: \*\*

-  Wenn ihr ein anderes Bluetooth-Modul habt als in der Abbildung
   dargestellt, achtet auf die korrekte Verlötung vom Wixel zum
   Bluetooth-Modul. (Achtet auf die Beschriftung der Pins in der
   Abbildung).
-  Anleitung zum Löten:
   `Film <https://www.youtube.com/watch?v=YuxCUeJ9xAU&feature=youtu.be>`__

\*\* Zur Software auf dem Wixel: \*\*

-  | xBridge Firmware:
     `xBridge2.wxl <https://github.com/jstevensog/wixel-sdk/raw/master/apps/xBridge2/xBridge2.wxl>`__
     (Auch empfohlen bei Verlötung nach "xDrip classic".)
   | (Update 01/2017: Mit der xBridge-Verdrahtung wird alternativ diese
     wxl empfohlen:
   | https://github.com/savek-cc/wixel-sdk/blob/master/apps/xBridge2/xBridge2.c
   | Achtung: Nur in Zusammenspiel mit der Handy-App "xDrip+" lauffähig.
     Nicht mit xDrip.)
   | Die Ansteuerung der Dioden ist anders, als unten beschrieben. Die
     Laufzeit ist höher, als in den anderen Versionen. Wenn es Lücken in
     der Verbindung von xDrip-Box und Handy gab, werden diese
     nachträglich auch für mehrere Stunden aufgefüllt.)

-  Software zum Aufspielen der wxl-Datei auf das Wixel `Wixel
   Configuration
   Utility <https://www.pololu.com/product/1337/resources>`__

-  Weitere Infos: siehe
   `hier <https://github.com/jstevensog/wixel-sdk/blob/master/apps/xBridge2/xBridge2.pdf>`__
-  | Tipp: Wenn auf dem Wixel schon eine xBridge2.wxl Software
     aufgespielt ist, dann legt die Software das Wixel zyklisch in einen
     passiven Modus. In dieser Zeit kannst Du das Wixel nicht via
     USB-Kabel mit dem PC verbinden.
   | Es gibt zwei Möglichkeiten: Warten, bis das Wixel (alle 5 Minuten)
     aufwacht, die Verbindung aufbauen und in der "Wixel Configuration
     Utility" die Anwendung auf dem Wixel stoppen. Oder das Wixel kurz
     von der Spannungsversorgung trennen und dann die Verbindung
     aufbauen.

\*\* Info zu den Widerständen: \*\* (wichtig für die Batterie-Anzeige)

-  "xDrip classic" (ohne Spannungsteiler) Also keine Widerstände
   verbaut.
-  "xDrip classic zzgl. Spannungsteiler". Dann muss der Spannungsteiler
   ein Verhältnis von 1:2,2 haben. Empfohlen werden 10k und 22k. (Aber
   die Kombination mit 1k und 2,2k geht auch.)
-  "xBridge" (incl. Spannungsteiler). Dann muss der Spannungsteiler ein
   Verhältnis von 1:2,7 haben. Empfohlen werden 10k und 27k.
-  Wenn Widerstände neu eingebaut wurden, wenn die eingebauten
   Widerstände verändert wurden oder wenn der Akku getauscht wurde, muss
   anschließend die xBridge2.wxl neu aufgespielt werden. Sonst stimmen
   die "angelernten" Werte nicht und die angezeigten Werte des
   Battery-Levels in der xDrip-App sind falsch.
-  Metallschicht-Widerstände sind etwas größer und damit leichter zu
   handhaben. Es können auch CMD-Widerstände genutzt werden. Damit kann
   man etwas Platz sparen, aber man braucht dann wirklich eine ruhige
   Hand beim Löten.

--------------

| Anzeigen der LED (bzw. in der App) und die Bedeutung (mit xBridge2.wxl
  auf dem Wixel).
| Die Anzeigen sind von der Version der wxl-Datei und von der verbauten
  Hardware abhängig - in der folgenden Tabelle gibt es eine grobe
  Orientierung.

Erklärung zur folgenden Tabelle:

-  **Die Inhalte sind noch nicht abgesichert. **
-  "[STRIKEOUT:grün]" bedeutet: Es gibt verschiedene Bauformen für die
   Bluetooth-Module (HM10 und HM11), die Farbe der LED kann eine andere
   sein.
-  "-" bedeutet: Diese Anzeige sollte nicht vorkommen.

+------+------+------+------+------+
| Baut | Anze | xDri | xDri | xBri |
| eil  | ige  | p    | p    | dge  |
|      |      | clas | clas |      |
|      |      | sic  | sic  |      |
|      |      |      | mit  |      |
|      |      |      | Span |      |
|      |      |      | nung |      |
|      |      |      | stei |      |
|      |      |      | ler  |      |
+======+======+======+======+======+
| HM17 | --   | --   | --   | --   |
+------+------+------+------+------+
| HM11 | Klär |      |      |      |
|      | ung  |      |      |      |
|      | nöti |      |      |      |
|      | g    |      |      |      |
+------+------+------+------+------+
| HM10 | [STR | Rege | Rege | -    |
|      | IKEO | lbet | lbet |      |
|      | UT:g | rieb | rieb |      |
|      | rün] |      |      |      |
|      | Daue |      |      |      |
|      | rleu |      |      |      |
|      | chte |      |      |      |
|      | n    |      |      |      |
+------+------+------+------+------+
| HM10 | [STR | kein | kein | kein |
|      | IKEO | e    | e    | e    |
|      | UT:g | BT-V | BT-V | BT-V |
|      | rün] | erbi | erbi | erbi |
|      | blin | ndun | ndun | ndun |
|      | kend | g    | g    | g    |
|      |      | zum  | zum  | zum  |
|      |      | Hand | Hand | Hand |
|      |      | y    | y    | y    |
+------+------+------+------+------+
| HM10 | [STR | -    | -    | Rege |
|      | IKEO |      |      | lbet |
|      | UT:g |      |      | rieb |
|      | rün] |      |      |      |
|      | aus, |      |      |      |
|      | aber |      |      |      |
|      | alle |      |      |      |
|      | 5    |      |      |      |
|      | Minu |      |      |      |
|      | ten  |      |      |      |
|      | kurz |      |      |      |
|      | es   |      |      |      |
|      | Blin |      |      |      |
|      | ken, |      |      |      |
|      | dann |      |      |      |
|      | ca.  |      |      |      |
|      | 30   |      |      |      |
|      | Sek. |      |      |      |
|      | an   |      |      |      |
+------+------+------+------+------+
| Wixe | oran | kein | kein | -    |
| l    | ge   | e    | e    |      |
|      | Daue | Verb | Verb |      |
|      | rbli | indu | indu |      |
|      | nken | ng   | ng   |      |
|      |      | zum  | zum  |      |
|      |      | Tran | Tran |      |
|      |      | smit | smit |      |
|      |      | ter  | ter  |      |
+------+------+------+------+------+
| Wixe | oran | -    | -    | kein |
| l    | ge   |      |      | e    |
|      | Daue |      |      | Verb |
|      | rleu |      |      | indu |
|      | chte |      |      | ng   |
|      | n    |      |      | zum  |
|      |      |      |      | Tran |
|      |      |      |      | smit |
|      |      |      |      | ter  |
+------+------+------+------+------+
| Wixe | oran | Rege | Rege | -    |
| l    | ge   | lbet | lbet |      |
|      | alle | rieb | rieb |      |
|      | 5    |      |      |      |
|      | Minu |      |      |      |
|      | ten  |      |      |      |
|      | blin |      |      |      |
|      | kend |      |      |      |
+------+------+------+------+------+
| Wixe | oran | -    | -    | Rege |
| l    | ge   |      |      | lbet |
|      | alle |      |      | rieb |
|      | 5    |      |      |      |
|      | Minu |      |      |      |
|      | ten  |      |      |      |
|      | ca.  |      |      |      |
|      | 30   |      |      |      |
|      | Sek. |      |      |      |
|      | Daue |      |      |      |
|      | rleu |      |      |      |
|      | chte |      |      |      |
|      | n    |      |      |      |
+------+------+------+------+------+
| Wixe | ab   | ?    | ?    | Rege |
| l    | und  |      |      | lbet |
|      | zu   |      |      | rieb |
|      | oran |      |      |      |
|      | ge   |      |      |      |
|      | und  |      |      |      |
|      | rot  |      |      |      |
|      | glei |      |      |      |
|      | chze |      |      |      |
|      | itig |      |      |      |
+------+------+------+------+------+
| App  | "not | kein | kein | kein |
| Stat | conn | e    | e    | e    |
| usan | ecte | Verb | Verb | Verb |
| zeig | d"   | indu | indu | indu |
| e    | daue | ng   | ng   | ng   |
|      | rhaf | zum  | zum  | zum  |
|      | t    | BT-M | BT-M | BT-M |
|      |      | odul | odul | odul |
+------+------+------+------+------+
| App  | "not | -    | -    | Rege |
| Stat | conn |      |      | lbet |
| usan | ecte |      |      | rieb |
| zeig | d",  |      |      | (!)  |
| e    | aber |      |      |      |
|      | alle |      |      |      |
|      | 5    |      |      |      |
|      | Minu |      |      |      |
|      | ten  |      |      |      |
|      | für  |      |      |      |
|      | ca.  |      |      |      |
|      | 30   |      |      |      |
|      | Sek  |      |      |      |
|      | "con |      |      |      |
|      | nect |      |      |      |
|      | ed"  |      |      |      |
+------+------+------+------+------+
| App  | "con | Rege | Rege | -    |
| Stat | nect | lbet | lbet |      |
| usan | ed"  | rieb | rieb |      |
| zeig | daue |      |      |      |
| e    | rhaf |      |      |      |
|      | t    |      |      |      |
+------+------+------+------+------+

\*\* Stückliste \*\* ( Stand: September 2015 )

+-------+-------+-------+-------+-------+-------+-------+-------+
|       | Nr.   | Bemer | Baute | Vertr | Verka | Artik | Herst |
|       |       | kung  | il:   | ieb:  | ufspr | elnum | eller |
|       |       |       |       |       | eis:  | mer:  | -Nr.: |
+=======+=======+=======+=======+=======+=======+=======+=======+
|       | 1     | optio | `IC   | Voelk | 2,96  | Q3393 | S-826 |
|       |       | nal   | Lithi | ner   | €     | 9     | 1ABJM |
|       |       |       | um-Po |       |       |       | D-G3J |
|       |       |       | lymer |       |       |       | 2G    |
|       |       |       | Akku- |       |       |       |       |
|       |       |       | Schut |       |       |       |       |
|       |       |       | zscha |       |       |       |       |
|       |       |       | ltung |       |       |       |       |
|       |       |       |  <htt |       |       |       |       |
|       |       |       | p://w |       |       |       |       |
|       |       |       | ww.vo |       |       |       |       |
|       |       |       | elkne |       |       |       |       |
|       |       |       | r.de/ |       |       |       |       |
|       |       |       | produ |       |       |       |       |
|       |       |       | cts/1 |       |       |       |       |
|       |       |       | 28243 |       |       |       |       |
|       |       |       | /IC-L |       |       |       |       |
|       |       |       | ithiu |       |       |       |       |
|       |       |       | m-Pol |       |       |       |       |
|       |       |       | ymer- |       |       |       |       |
|       |       |       | Akku- |       |       |       |       |
|       |       |       | Schut |       |       |       |       |
|       |       |       | zscha |       |       |       |       |
|       |       |       | ltung |       |       |       |       |
|       |       |       | .html |       |       |       |       |
|       |       |       | >`__  |       |       |       |       |
+-------+-------+-------+-------+-------+-------+-------+-------+
|       | 2     | optio | `Schu | Conra | 2,96  | 15515 | S-826 |
|       |       | nal   | tzmod | d     | €     | 1     | 1ABJM |
|       |       | (und  | ul    |       |       | - VQ  | D-G3J |
|       |       | Alter | für   |       |       |       | 2G    |
|       |       | nativ | Lithi |       |       |       |       |
|       |       | e     | um-Po |       |       |       |       |
|       |       | zu 1) | lymer |       |       |       |       |
|       |       |       | -Akku |       |       |       |       |
|       |       |       | mulat |       |       |       |       |
|       |       |       | or    |       |       |       |       |
|       |       |       | S-826 |       |       |       |       |
|       |       |       | 1ABJM |       |       |       |       |
|       |       |       | D-G3J |       |       |       |       |
|       |       |       | 2G <h |       |       |       |       |
|       |       |       | ttps: |       |       |       |       |
|       |       |       | //www |       |       |       |       |
|       |       |       | .conr |       |       |       |       |
|       |       |       | ad.de |       |       |       |       |
|       |       |       | /de/s |       |       |       |       |
|       |       |       | chutz |       |       |       |       |
|       |       |       | modul |       |       |       |       |
|       |       |       | -fuer |       |       |       |       |
|       |       |       | -lith |       |       |       |       |
|       |       |       | ium-p |       |       |       |       |
|       |       |       | olyme |       |       |       |       |
|       |       |       | r-akk |       |       |       |       |
|       |       |       | umula |       |       |       |       |
|       |       |       | tor-s |       |       |       |       |
|       |       |       | -8261 |       |       |       |       |
|       |       |       | abjmd |       |       |       |       |
|       |       |       | -g3j2 |       |       |       |       |
|       |       |       | g-geh |       |       |       |       |
|       |       |       | aeuse |       |       |       |       |
|       |       |       | art-a |       |       |       |       |
|       |       |       | ufgeb |       |       |       |       |
|       |       |       | aute- |       |       |       |       |
|       |       |       | plati |       |       |       |       |
|       |       |       | ne-au |       |       |       |       |
|       |       |       | sfueh |       |       |       |       |
|       |       |       | rung- |       |       |       |       |
|       |       |       | schut |       |       |       |       |
|       |       |       | zmodu |       |       |       |       |
|       |       |       | l-fue |       |       |       |       |
|       |       |       | r-lit |       |       |       |       |
|       |       |       | hium- |       |       |       |       |
|       |       |       | polym |       |       |       |       |
|       |       |       | er-ak |       |       |       |       |
|       |       |       | kumul |       |       |       |       |
|       |       |       | ator- |       |       |       |       |
|       |       |       | 15515 |       |       |       |       |
|       |       |       | 1.htm |       |       |       |       |
|       |       |       | l?ref |       |       |       |       |
|       |       |       | =sear |       |       |       |       |
|       |       |       | chDet |       |       |       |       |
|       |       |       | ail>` |       |       |       |       |
|       |       |       | __    |       |       |       |       |
+-------+-------+-------+-------+-------+-------+-------+-------+
|       | 3     | notwe | `Polo | EXP   | 18,60 | EXP-R | Polol |
|       |       | ndig  | lu    | TECH  | €     | 25-07 | u     |
|       |       |       | Wixel |       |       | 0     | 1337  |
|       |       |       | Progr |       |       |       |       |
|       |       |       | ammab |       |       |       |       |
|       |       |       | le    |       |       |       |       |
|       |       |       | USB   |       |       |       |       |
|       |       |       | Wirel |       |       |       |       |
|       |       |       | ess   |       |       |       |       |
|       |       |       | Modul |       |       |       |       |
|       |       |       | e <ht |       |       |       |       |
|       |       |       | tp:// |       |       |       |       |
|       |       |       | www.e |       |       |       |       |
|       |       |       | xp-te |       |       |       |       |
|       |       |       | ch.de |       |       |       |       |
|       |       |       | /polo |       |       |       |       |
|       |       |       | lu-wi |       |       |       |       |
|       |       |       | xel-p |       |       |       |       |
|       |       |       | rogra |       |       |       |       |
|       |       |       | mmabl |       |       |       |       |
|       |       |       | e-usb |       |       |       |       |
|       |       |       | -wire |       |       |       |       |
|       |       |       | less- |       |       |       |       |
|       |       |       | modul |       |       |       |       |
|       |       |       | e>`__ |       |       |       |       |
+-------+-------+-------+-------+-------+-------+-------+-------+
|       | 4     | notwe | `Adaf | EXP   | 7,65  | EXP-R | Adafr |
|       |       | ndig  | ruit  | TECH  | €     | 15-44 | uit   |
|       |       |       | Mini  |       |       | 6     | 1905  |
|       |       |       | Lipo  |       |       |       |       |
|       |       |       | w/Min |       |       |       |       |
|       |       |       | i-B   |       |       |       |       |
|       |       |       | USB   |       |       |       |       |
|       |       |       | Jack  |       |       |       |       |
|       |       |       | - USB |       |       |       |       |
|       |       |       | LiIon |       |       |       |       |
|       |       |       | /LiPo |       |       |       |       |
|       |       |       | ly    |       |       |       |       |
|       |       |       | charg |       |       |       |       |
|       |       |       | er <h |       |       |       |       |
|       |       |       | ttp:/ |       |       |       |       |
|       |       |       | /www. |       |       |       |       |
|       |       |       | exp-t |       |       |       |       |
|       |       |       | ech.d |       |       |       |       |
|       |       |       | e/ada |       |       |       |       |
|       |       |       | fruit |       |       |       |       |
|       |       |       | -mini |       |       |       |       |
|       |       |       | -lipo |       |       |       |       |
|       |       |       | -w-mi |       |       |       |       |
|       |       |       | ni-b- |       |       |       |       |
|       |       |       | usb-j |       |       |       |       |
|       |       |       | ack-u |       |       |       |       |
|       |       |       | sb-li |       |       |       |       |
|       |       |       | ion-l |       |       |       |       |
|       |       |       | ipoly |       |       |       |       |
|       |       |       | -char |       |       |       |       |
|       |       |       | ger>` |       |       |       |       |
|       |       |       | __    |       |       |       |       |
+-------+-------+-------+-------+-------+-------+-------+-------+
|       | 5     | notwe | `Seee | EXP   | 12,28 | EXP-R | Seeed |
|       |       | ndig, | d     | TECH  | €     | 02-30 | Studi |
|       |       | alter | Studi |       |       | 8     | o     |
|       |       | nativ | o     |       |       |       | 21000 |
|       |       | auch  | Bluet |       |       |       | 5001  |
|       |       | HM10  | ooth  |       |       |       |       |
|       |       | mögli | V4.0  |       |       |       |       |
|       |       | ch    | HM-11 |       |       |       |       |
|       |       |       | BLE   |       |       |       |       |
|       |       |       | Modul |       |       |       |       |
|       |       |       | e <ht |       |       |       |       |
|       |       |       | tp:// |       |       |       |       |
|       |       |       | www.e |       |       |       |       |
|       |       |       | xp-te |       |       |       |       |
|       |       |       | ch.de |       |       |       |       |
|       |       |       | /seee |       |       |       |       |
|       |       |       | d-stu |       |       |       |       |
|       |       |       | dio-b |       |       |       |       |
|       |       |       | lueto |       |       |       |       |
|       |       |       | oth-v |       |       |       |       |
|       |       |       | 4-0-h |       |       |       |       |
|       |       |       | m-11- |       |       |       |       |
|       |       |       | ble-m |       |       |       |       |
|       |       |       | odule |       |       |       |       |
|       |       |       | >`__  |       |       |       |       |
+-------+-------+-------+-------+-------+-------+-------+-------+
|       | 6     | optio | `Hand | Voelk | 12,38 | S2326 | D9006 |
|       |       | nal   | gehäu | ner   | €     | 1     | 178   |
|       |       |       | se    |       |       |       |       |
|       |       |       | Minit |       |       |       |       |
|       |       |       | ec    |       |       |       |       |
|       |       |       | El,   |       |       |       |       |
|       |       |       | 78x48 |       |       |       |       |
|       |       |       | x20,  |       |       |       |       |
|       |       |       | Lava/ |       |       |       |       |
|       |       |       | Grün  |       |       |       |       |
|       |       |       | <http |       |       |       |       |
|       |       |       | ://ww |       |       |       |       |
|       |       |       | w.voe |       |       |       |       |
|       |       |       | lkner |       |       |       |       |
|       |       |       | .de/p |       |       |       |       |
|       |       |       | roduc |       |       |       |       |
|       |       |       | ts/21 |       |       |       |       |
|       |       |       | 3275/ |       |       |       |       |
|       |       |       | Minit |       |       |       |       |
|       |       |       | ec-El |       |       |       |       |
|       |       |       | -78x4 |       |       |       |       |
|       |       |       | 8x20- |       |       |       |       |
|       |       |       | Lava- |       |       |       |       |
|       |       |       | Gruen |       |       |       |       |
|       |       |       | .html |       |       |       |       |
|       |       |       | >`__  |       |       |       |       |
+-------+-------+-------+-------+-------+-------+-------+-------+
|       | 7     | optio | `Hand | Conra | 13,57 | 53538 | D9006 |
|       |       | nal,  | -Gehä | d     | €     | 4     | 178   |
|       |       | Alter | use   |       |       | - 62  |       |
|       |       | nativ | Kunst |       |       |       |       |
|       |       | e     | stoff |       |       |       |       |
|       |       | zu 6  | Lava, |       |       |       |       |
|       |       |       | Grün  |       |       |       |       |
|       |       |       | 78 x  |       |       |       |       |
|       |       |       | 48 x  |       |       |       |       |
|       |       |       | 20    |       |       |       |       |
|       |       |       | OKW   |       |       |       |       |
|       |       |       | D9006 |       |       |       |       |
|       |       |       | 178   |       |       |       |       |
|       |       |       | 1     |       |       |       |       |
|       |       |       | Set < |       |       |       |       |
|       |       |       | https |       |       |       |       |
|       |       |       | ://ww |       |       |       |       |
|       |       |       | w.con |       |       |       |       |
|       |       |       | rad.d |       |       |       |       |
|       |       |       | e/de/ |       |       |       |       |
|       |       |       | hand- |       |       |       |       |
|       |       |       | gehae |       |       |       |       |
|       |       |       | use-7 |       |       |       |       |
|       |       |       | 8-x-4 |       |       |       |       |
|       |       |       | 8-x-2 |       |       |       |       |
|       |       |       | 0-kun |       |       |       |       |
|       |       |       | ststo |       |       |       |       |
|       |       |       | ff-la |       |       |       |       |
|       |       |       | va-gr |       |       |       |       |
|       |       |       | uen-o |       |       |       |       |
|       |       |       | kw-mi |       |       |       |       |
|       |       |       | nitec |       |       |       |       |
|       |       |       | -d900 |       |       |       |       |
|       |       |       | 6178- |       |       |       |       |
|       |       |       | 1-set |       |       |       |       |
|       |       |       | -5353 |       |       |       |       |
|       |       |       | 84.ht |       |       |       |       |
|       |       |       | ml?re |       |       |       |       |
|       |       |       | f=sea |       |       |       |       |
|       |       |       | rchDe |       |       |       |       |
|       |       |       | tail> |       |       |       |       |
|       |       |       | `__   |       |       |       |       |
+-------+-------+-------+-------+-------+-------+-------+-------+
| 8     | notwe | `Lipo | Lipop | 6,95  | 7.011 | 1C    |       |
|       | ndig, | Akku  | ower. | €     | .0-11 | 60345 |       |
|       | oder  | 1100  | de    |       | \_34  | 0     |       |
|       | ein   | mAh   |       |       |       |       |       |
|       | ander | 3,7V  |       |       |       |       |       |
|       | er    | Einze |       |       |       |       |       |
|       | 3,7v  | lzell |       |       |       |       |       |
|       | LiPo- | e <ht |       |       |       |       |       |
|       | Akku  | tp:// |       |       |       |       |       |
|       |       | shop. |       |       |       |       |       |
|       |       | lipop |       |       |       |       |       |
|       |       | ower. |       |       |       |       |       |
|       |       | de/11 |       |       |       |       |       |
|       |       | 00-mA |       |       |       |       |       |
|       |       | h-37V |       |       |       |       |       |
|       |       | -Einz |       |       |       |       |       |
|       |       | elzel |       |       |       |       |       |
|       |       | le-1C |       |       |       |       |       |
|       |       | -34mm |       |       |       |       |       |
|       |       | -brei |       |       |       |       |       |
|       |       | t>`__ |       |       |       |       |       |
+-------+-------+-------+-------+-------+-------+-------+-------+
|       | 9     | optio | Metal |       |       |       |       |
|       |       | nal   | lschi |       |       |       |       |
|       |       | (für  | chtwi |       |       |       |       |
|       |       | Batte | derst |       |       |       |       |
|       |       | riean | and   |       |       |       |       |
|       |       | zeige | 1%,   |       |       |       |       |
|       |       | bei   | 0,5   |       |       |       |       |
|       |       | **xBr | Watt  |       |       |       |       |
|       |       | idge* | je    |       |       |       |       |
|       |       | *-Sch | ein   |       |       |       |       |
|       |       | altun | Stück |       |       |       |       |
|       |       | g)    | 10k   |       |       |       |       |
|       |       |       | und   |       |       |       |       |
|       |       |       | 27k   |       |       |       |       |
+-------+-------+-------+-------+-------+-------+-------+-------+
|       | 10    | optio | Metal |       |       |       |       |
|       |       | nal   | lschi |       |       |       |       |
|       |       | (für  | chtwi |       |       |       |       |
|       |       | Batte | derst |       |       |       |       |
|       |       | riean | and   |       |       |       |       |
|       |       | zeige | 1%,   |       |       |       |       |
|       |       | bei   | 0,5   |       |       |       |       |
|       |       | **xDr | Watt  |       |       |       |       |
|       |       | ip**- | je    |       |       |       |       |
|       |       | Schal | ein   |       |       |       |       |
|       |       | tung) | Stück |       |       |       |       |
|       |       |       | 10k   |       |       |       |       |
|       |       |       | und   |       |       |       |       |
|       |       |       | 22k   |       |       |       |       |
+-------+-------+-------+-------+-------+-------+-------+-------+
|       | 11    | notwe | flexi | exp-t | 0,80  | EXP-R | Adafr |
|       |       | ndig  | ble   | ech.d | €     | 15-68 | uit   |
|       |       |       | Leitu | e     |       | 6     |       |
|       |       |       | ngen  |       |       |       |       |
|       |       |       | (dünn |       |       |       |       |
|       |       |       | )     |       |       |       |       |
|       |       |       | `Beis |       |       |       |       |
|       |       |       | piel  |       |       |       |       |
|       |       |       | <http |       |       |       |       |
|       |       |       | ://ww |       |       |       |       |
|       |       |       | w.exp |       |       |       |       |
|       |       |       | -tech |       |       |       |       |
|       |       |       | .de/s |       |       |       |       |
|       |       |       | ilico |       |       |       |       |
|       |       |       | ne-co |       |       |       |       |
|       |       |       | ver-s |       |       |       |       |
|       |       |       | trand |       |       |       |       |
|       |       |       | ed-co |       |       |       |       |
|       |       |       | re-wi |       |       |       |       |
|       |       |       | re-30 |       |       |       |       |
|       |       |       | awg-b |       |       |       |       |
|       |       |       | lack> |       |       |       |       |
|       |       |       | `__   |       |       |       |       |
+-------+-------+-------+-------+-------+-------+-------+-------+
|       | 12    | notwe | Lötzi |       |       |       |       |
|       |       | ndig  | nn,   |       |       |       |       |
|       |       |       | Lötko |       |       |       |       |
|       |       |       | lben  |       |       |       |       |
+-------+-------+-------+-------+-------+-------+-------+-------+
|       | 13    | optio | Schru |       |       |       |       |
|       |       | nal,  | mpfsc |       |       |       |       |
|       |       | aber  | hlauc |       |       |       |       |
|       |       | empfe | h     |       |       |       |       |
|       |       | hlens |       |       |       |       |       |
|       |       | wert  |       |       |       |       |       |
+-------+-------+-------+-------+-------+-------+-------+-------+
|       | 14    | optio | "drit |       |       |       |       |
|       |       | nal,  | te    |       |       |       |       |
|       |       | aber  | Hand" |       |       |       |       |
|       |       | empfe | ein   |       |       |       |       |
|       |       | hlens | Beisp |       |       |       |       |
|       |       | wert  | iel:  |       |       |       |       |
|       |       |       | `Link |       |       |       |       |
|       |       |       |  <htt |       |       |       |       |
|       |       |       | p://w |       |       |       |       |
|       |       |       | ww.am |       |       |       |       |
|       |       |       | azon. |       |       |       |       |
|       |       |       | de/Si |       |       |       |       |
|       |       |       | lverl |       |       |       |       |
|       |       |       | ine-6 |       |       |       |       |
|       |       |       | 33830 |       |       |       |       |
|       |       |       | -Drit |       |       |       |       |
|       |       |       | te-Ha |       |       |       |       |
|       |       |       | nd-Lu |       |       |       |       |
|       |       |       | pe/dp |       |       |       |       |
|       |       |       | /B000 |       |       |       |       |
|       |       |       | O3RJF |       |       |       |       |
|       |       |       | C/ref |       |       |       |       |
|       |       |       | =sr_1 |       |       |       |       |
|       |       |       | _4?ie |       |       |       |       |
|       |       |       | =UTF8 |       |       |       |       |
|       |       |       | &qid= |       |       |       |       |
|       |       |       | 14536 |       |       |       |       |
|       |       |       | 57700 |       |       |       |       |
|       |       |       | &sr=8 |       |       |       |       |
|       |       |       | -4&ke |       |       |       |       |
|       |       |       | yword |       |       |       |       |
|       |       |       | s=dri |       |       |       |       |
|       |       |       | tte+h |       |       |       |       |
|       |       |       | and>` |       |       |       |       |
|       |       |       | __    |       |       |       |       |
+-------+-------+-------+-------+-------+-------+-------+-------+
|       | 15    | optio | Epoxi |       |       |       |       |
|       |       | nal   | d     |       |       |       |       |
|       |       |       | Trenn |       |       |       |       |
|       |       |       | schic |       |       |       |       |
|       |       |       | ht    |       |       |       |       |
+-------+-------+-------+-------+-------+-------+-------+-------+
|       | 16    | notwe | Kabel | Beisp |       |       |       |
|       |       | ndig  | mit   | iel:  |       |       |       |
|       |       |       | Mini- | `Link |       |       |       |
|       |       |       | USB-S |  <htt |       |       |       |
|       |       |       | tecke | p://w |       |       |       |
|       |       |       | r,    | ww.am |       |       |       |
|       |       |       | um    | azon. |       |       |       |
|       |       |       | das   | de/dp |       |       |       |
|       |       |       | Wixel | /B00N |       |       |       |
|       |       |       | zu    | H11N5 |       |       |       |
|       |       |       | bespi | A>`__ |       |       |       |
|       |       |       | elen  |       |       |       |       |
+-------+-------+-------+-------+-------+-------+-------+-------+

Hinweis: Es gibt Erfahrungsberichte, die besagen, dass ein HM17 sich
ebenso verwenden lässt.

--------------

Weiterführende Infos / Schaltbilder für xBridge
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| Alternative Schaltbilder / Varianten; wenn die Einsteiger-Variante
  "xDrip-classic" nicht gewünscht ist.
| Es gibt verschiedene Bluetooth-Module: HM10, HM11 oder HM-17 für die
  es verschiedene Bauformen gibt. Deswegen hier mehrere Bilder zur
  Verschaltung. Sucht euch das Bild raus, das zu eurem konkreten HM
  Modul passt. Falls ihr eine xDrip-Schaltung baut, könnt ihr aus den
  folgenden Abbildungen auch die Bezeichnungen der Anschlüsse ablesen.

| **Schaltbild für xBridge mit HM-10**
| |HM10\_xbridge\_Wiring\_Diagram|

| **Schaltbild für xBridge mit HM-10 auf Breakout Board**
| |HM10 + Breakout Board\_xbridge\_Wiring\_Diagram|

| **Schaltbild für xBridge mit HM-11**
| |HM11\_xbridge\_Wiring\_Diagram|

| **Schaltbild für "xDrip USB V3"**
| |xDrip V3usb Schaltbild|

\*\* Weitere Infos / empfohlene Links: \*\* (englische Seiten)

-  zu xBridge2: Ein
   `PDF <https://github.com/jstevensog/wixel-sdk/raw/master/apps/xBridge2/xBridge2.pdf>`__
   Dokument findet sich in diesem
   `Repository <https://github.com/jstevensog/wixel-sdk>`__
-  Eine weitere Seite mit Anleitungen findet sich
   `hier <http://circles-of-blue.winchcombe.org/index.php/2015/01/11/wearenotwaiting-thanks-to-dexdrip-introduction/>`__
-  Eine sehr hübsche Anleitung zu Bau der xDrip-Box findet sich hier:
   http://www.hypodiabetic.co.uk/home/blog/hacking-diabetes/xdrip-and-xbridge-build-instructions
-  Wichtige Quellen zu xDrip finden sich an diesen Stellen:
   `hier <https://github.com/StephenBlackWasAlreadyTaken/wixel-xDrip>`__
   und `hier <http://stephenblackwasalreadytaken.github.io/xDrip/>`__
   und
   `hier <https://github.com/StephenBlackWasAlreadyTaken/xDrip/blob/gh-pages/hardware_setup.md>`__

.. |xDrip Schaltbild| image:: ../../images/xdrip/xDrip_schaltbild_classic.png
.. |HM10\_xbridge\_Wiring\_Diagram| image:: ../../images/xdrip/HM10_xbridge_Wiring_Diagram.png
.. |HM10 + Breakout Board\_xbridge\_Wiring\_Diagram| image:: ../../images/xdrip/HM10_Breakout_Board_xbridge_Wiring_Diagram.png
.. |HM11\_xbridge\_Wiring\_Diagram| image:: ../../images/xdrip/HM11_xbridge_Wiring_Diagram.png
.. |xDrip V3usb Schaltbild| image:: ../../images/xdrip/xDrip_schaltbild-v3_usb.png

