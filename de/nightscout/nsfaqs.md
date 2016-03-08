# Nightscout FAQs



**Die Website reagiert sehr langsam, wenn sie längere Zeit nicht verwendet wurde: **
Wenn die Website längere Zeit nicht verwendet wird, z.B. wenn die Daten nachts direkt zur Mongo-Datenbank hochgeladen werden und keine Uhr Daten periodisch abfragt, baut Azure Verbindungen ab. Diese wieder herzustellen, braucht eine gewisse Zeit. Abhilfe schaffen Dienste, die die Website periodisch (z.B. alle 5 Minuten einmal) abrufen. Ein solcher Dienst ist https://uptimerobot.com/.
