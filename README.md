# Site Creation Script

Dieses Skript ermöglicht es Ihnen, eine neue Website in XAMPP zu erstellen, indem es folgende Schritte durchführt:

1. Es erstellt ein Verzeichnis für die Site in `htdocs`, das standardmäßig in `G:/xampp` installiert ist. Sie können den Installationspfad für XAMPP anpassen, indem Sie die Variable `XAMPP_Home` am Anfang des Skripts aktualisieren.
2. Es fügt einen virtuellen Host-Eintrag in die `httpd.conf`-Datei hinzu, um den Zugriff auf die Site über einen bestimmten Namen zu ermöglichen.
3. Es fügt einen Eintrag in der `hosts`-Datei hinzu, um den Site-Namen auf `localhost` abzubilden.

## Verwendung

1. Stellen Sie sicher, dass XAMPP installiert ist.
2. Führen Sie das Skript aus.
3. Geben Sie den Namen der neuen Site ein, wenn Sie dazu aufgefordert werden.
4. Das Skript erstellt ein Verzeichnis für die Site in `htdocs`, fügt einen virtuellen Host-Eintrag in `httpd.conf` hinzu und fügt einen Eintrag in der `hosts`-Datei hinzu.
5. Starten Sie den Apache-Server neu, damit die neue Site funktioniert.
6. Sie können die neue Site nun über den von Ihnen angegebenen Namen aufrufen.

## Hinweise

- Das Skript geht davon aus, dass XAMPP in `G:/xampp` installiert ist. Wenn Sie XAMPP an einem anderen Ort installiert haben, müssen Sie die Variable `XAMPP_Home` am Anfang des Skripts aktualisieren.
- Das Skript erstellt eine `index.html`-Datei im Site-Verzeichnis mit einer grundlegenden Struktur und einer Willkommensnachricht. Sie können diese Datei nach Bedarf anpassen.
- Das Skript fügt den virtuellen Host-Eintrag am Ende der httpd.conf-Datei hinzu. Wenn Sie andere virtuellen Host-Einträge in der Datei haben, wird der neue Eintrag am Ende angefügt.
- Das Skript fügt den Site-Namen in die hosts-Datei mit der localhost-IP-Adresse (`127.0.0.1`) hinzu. Dadurch können Sie die Site aufrufen, indem Sie den Site-Namen in die Adressleiste des Browsers eingeben.

## Beispiel

```js
<VirtualHost *:80>
ServerName newsite.local
DocumentRoot "G:/xampp/htdocs/newsite"
DirectoryIndex index.html index.php
</VirtualHost>
```

```js
127.0.0.1 newsite.local
```

#### Support

> Webseite: [Panda-Network.de](https://panda-network.de) \
> Support [Discord-Server](https://pnnet.dev/discord)
