# Tor

```bash
sudo apt update
sudo apt install tor
```

```bash
sudo systemctl start tor
sudo systemctl enable tor
```

```bash
sudo systemctl status tor
```

Podemos definir un servicio oculto editando `/etc/tor/torrc` y añadiendo las siguientes líneas:

```bash
HiddenServiceDir /var/lib/tor/hidden_service/
HiddenServicePort 80 127.0.0.1:80
```

Si haces `sudo systemctl restart tor` se creará un servicio oculto en `/var/lib/tor/hidden_service/`.

Dentro tienes:

- `hostname`: La dirección `.onion` de tu servicio.
- `private_key`: La clave privada de tu servicio.
- `hs_ed25519_public_key`: La clave pública de tu servicio.
- `hs_ed25519_secret_key`: La clave secreta de tu servicio.
- `authorized_clients/`: Lista de clientes autorizados a acceder a tu servicio.

Para acceder a tu servicio oculto, puedes usar el navegador Tor y poner la dirección `.onion` de tu servicio.

Para configurar `authorized_clients/` puedes añadir una línea por cada cliente autorizado con su clave pública.

```bash
client-name=public-key
```

## Mas servicios

Si configuramos mas servicios podemos añadirlos a `torrc`, usar `systemctl restart tor` y se creará automaticamente nuestro servicio oculto.