# curl

> Transfere dados entre o computador local e um servidor remoto.
> Suporta a maioria dos protocolos de comunicação, incluindo HTTP, FTP e POP3.
> Mais informações: <https://curl.se>.

- Descarregar os conteúdos de um URL para um arquivo:

`curl {{https://example.com}} --output {{arquivo}}`

- Descarregar um arquivo, gravando o resultado sob o nome do arquivo indicado pelo URL:

`curl --remote-name {{https://example.com/arquivo}}`

- Descarregar um arquivo, seguindo redirecionamentos e automaticamente continuando transferências idênticas que tenham sido interrompidas:

`curl --remote-name --location --continue-at - {{https://example.com/arquivo}}`

- Enviar dados codificados por formulário (pedido POST do tipo `application/x-www-form-urlencoded`):

`curl --data {{'nome=maria'}} {{https://example.com/formulario}}`

- Enviar um pedido com um cabeçalho adicional, usando um método HTTP personalizado:

`curl --header {{'X-Meu-Cabecalho: 123'}} --request {{PUT}} {{https://example.com}}`

- Enviar dados no formato JSON, especificando o cabeçalho de tipo de conteúdo (content-type) apropriado:

`curl --data {{'{"nome":"maria"}'}} --header {{'Content-Type: application/json'}} {{https://example.com/usuarios/123}}`

- Passar ao pedido o nome de usuário e senha para autenticação no servidor:

`curl -u usuario:senha {{https://example.com}}`

- Passar ao pedido o certificado do cliente e a chave para um recurso, omitindo a validação do certificado:

`curl --cert {{client.pem}} --key {{key.pem}} --insecure {{https://example.com}}`
