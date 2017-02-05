# CC1111 Programmierung

Um den CC1111 USB Dongle zu programmieren, muss der SmartRF Flash Programmer entsprechend konfiguriert werden. Im "System-on-Chip" Fenster sollte nun der CC1111 erscheinen. Im "Flash image" Fenster auf den Button mit den drei Punkten drücken und die bereits heruntergeladene HEX-Datei auswählen (MMCommander_EUR_0.89_NoTx.hex). Bei den "Actions" wählt man den Punkt "Erase, program and verify" aus.

![Konfiguration](../../images/enlite/config.png)

Anschließend nur noch auf "Perform actions" klicken und kurz warten. Hat alles geklappt, sollte es so aussehen:

![Ausgefuehrt](../../images/enlite/action.png)


Danach sollte Windows ein neues Gerät namens "MMCommander" finden.

Um zu prüfen, ob der MMCommander erfolgreich programmiert wurde, reicht es, diesen in einen USB Anschluss zu stecken und den Druckknopf auf dem CC1111 einige Sekunden gedrückt zu halten. Die LED des CC1111 geht an. Drückt man den Knopf nochmal für ein paar Sekunden, so geht diese LED wieder aus. Der Stick funktioniert.



