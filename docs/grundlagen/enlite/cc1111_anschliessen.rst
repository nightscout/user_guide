CC1111 anschließen
==================

Beim Verbinden des CC1111 USB Dongle mit dem CC Debugger ist darauf zu
achten, dass dieselbe Ader des Flachbandkabels am Pin 1 des CC Debuggers
und am Pin 1 des Debug Anschlusses des CC1111 angeschlossen wird. Da es
verschiedene Lieferversionen gibt (Ader 1 rot oder Ader 10 rot), sollte
man versuchen, das Kabel anhand des folgenden Bildes richtig
anzuschließen.

|Kabelverbindung|

Nun müssen der CC1111 und der CC Debugger mit den USB Anschlüssen des
Computers verbunden werden.

|Anschluss an den Computer|

Danach sollte der CC Debugger von Windows erkannt und der USB Treiber
installiert werden (vorausgesetzt man hat die Software SmartRF Flash
Programmer bereits installiert).

Wenn alles richtig angeschlossen ist, leuchtet die LED am CC Debugger
grün, wenn nicht, hilft eventuell ein Blick in das Unterkapitel
`Fehlerbehebung <fehlerbehebung.md>`__.

.. |Kabelverbindung| image:: ../../images/enlite/Kabel.jpg
.. |Anschluss an den Computer| image:: ../../images/enlite/verbinden.png

