# curl

> Trasferisci dati da o ad un server.
> Supporta molti protocollo, tra cui HTTP, FTP e POP3.
> Maggiori informazioni: <https://curl.se>.

- Scarica il contenuto di un URL in un file:

`curl {{https://example.com}} --output {{nome_file}}`

- Scarica un file, salvando l'output con lo stesso nome indicato nell'URL:

`curl --remote-name {{https://example.com/nome_file}}`

- Scarica un file, seguendo reindirizzamenti, e continuando automaticamente (riprendendo) un trasferimento precedente:

`curl --remote-name --location --continue-at - {{https://example.com/nome_file}}`

- Invia dati form-encoded (richiesta POST di tipo `application/x-www-form-urlencoded`):

`curl --data {{'nome=mario'}} {{https://example.com/form}}`

- Invia una richiesta con un header aggiuntivo, utilizzando un metodo HTTP personalizzato:

`curl --header {{'X-Mio-Header: 123'}} --request {{PUT}} {{https://example.com}}`

- Invia dati in formato JSON, specificando l'header content-type appropriato:

`curl --data {{'{"nome":"mario"}'}} --header {{'Content-Type: application/json'}} {{https://example.com/utenti/1234}}`

- Utilizza un nome utente ed una password per l'autenticazione con il server:

`curl --user utente:password {{https://example.com}}`

- Utilizza un certificato ed una chiave per una risorsa, ignorando la validazione dei certificati:

`curl --cert {{client.pem}} --key {{chiave.pem}} --insecure {{https://example.com}}`
