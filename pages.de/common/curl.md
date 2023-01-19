# curl

> Überträgt Daten von oder zu einem Server.
> Unterstützt die meisten Protokolle, inklusive HTTP, FTP und POP3.
> Weitere Informationen: <https://curl.se>.

- Lade den Inhalt einer URL in eine Datei:

`curl {{https://beispiel.de}} --output {{pfad/zu/datei}}`

- Lade eine Datei von einer URL herunter:

`curl --remote-name {{https://beispiel.de/datei}}`

- Lade eine Datei herunter, folge Weiterleitungen und setze vergangene Dateitransfers automatisch fort:

`curl --remote-name --location --continue-at - {{https://beispiel.de/datei}}`

- Sende formular-codierte Daten (POST Anfragen des Typs `application/x-www-form-urlencoded`). Benutze `--data @dateiname` oder `--data @'-'`, um von STDIN zu lesen:

`curl --data {{'name=karl-dieter'}} {{https://beispiel.de/formular}}`

- Sende eine Anfrage mit einem extra Header mit einer eigenen HTTP-Methode:

`curl --header {{'X-Mein-Header: 123'}} --request {{PUT}} {{https://beispiel.de}}`

- Sende Daten im JSON-Format und lege den geeigneten Inhaltstyp-Header fest:

`curl --data {{'{"name":"karl-dieter"}'}} --header {{'Content-Type: application/json'}} {{https://beispiel.de/benutzer/1234}}`

- Übergib einen Benutzernamen und Passwort für die Server-Authentifizierung:

`curl --user benutzername:passwort {{https://beispiel.de}}`

- Übergib Client-Zertifikat und -Schlüssel für eine Ressource und überspringe die Zertifikatsüberprüfung:

`curl --cert {{client.pem}} --key {{key.pem}} --insecure {{https://beispiel.de}}`
