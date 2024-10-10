# Introduccion

Elit cillum irure veniam non mollit officia. Exercitation ea elit do sunt veniam nisi. Laboris pariatur cillum et ullamco reprehenderit ea incididunt.

Ad non anim voluptate laborum cillum voluptate laboris ea. Pariatur quis ipsum consectetur do proident id. Qui do sit culpa ex duis tempor aliqua incididunt ex laboris aliquip consequat.

Qui occaecat sit fugiat laborum nostrud cupidatat irure. Laborum proident nostrud Lorem laborum officia commodo. Cupidatat enim ex amet anim ex consectetur amet consectetur amet ea velit.

## Lorem ipsum

Et consectetur consectetur qui ad ut ad nulla amet ad in. Veniam nulla ad tempor quis Lorem duis consequat id mollit et nostrud voluptate. Ea reprehenderit quis cupidatat commodo nulla. Irure veniam ipsum est non proident reprehenderit cupidatat excepteur eu sunt. Ullamco ut nulla pariatur consectetur aute reprehenderit ut irure reprehenderit sunt qui ea.

Reprehenderit consectetur ut labore aute sit et. Magna anim aliquip nostrud magna do sint velit dolore proident deserunt qui elit est. Id et eu ipsum sunt ex aute tempor pariatur. Veniam consequat laborum sit est laborum voluptate tempor mollit sint laborum deserunt nisi labore. Quis elit dolore ad qui nisi est ad nisi non aute et proident consequat. Nulla anim officia voluptate esse nulla esse irure nisi ut est.

## Dolor sit amet

Dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.# Encabezado 1
## Encabezado 2
### Encabezado 3

Este es un párrafo en **negrita** y otro en *cursiva*.

Otro párrafo con un [enlace](https://www.google.com).

Una lista desordenada:

- Elemento 
- Elemento
- Elemento

Una lista ordenada:

1. Elemento
2. Elemento
3. Elemento
  3.1. Elemento anidado
    3.2. Elemento anidado
4. Elemento

![alt](./IMG0100.png)

> Una cita.

```python
# Algo de código python
print("Hola, mundo")
```

```bash
# Algo de código bash
echo "Hola, mundo"
```

```c
// Algo de código C
#include <stdio.h>
```

Un diagrama de markdown:

[![](https://mermaid.ink/img/pako:eNqNk01uwjAQRq9izbb0AlkgVaVdV6RLbwZ7AEuJbfxTqSCO1FWPwMXqBEJxGtJk5cTve1K-sQ8gjCQowNMukha0ULhxWHPN0mPRBSWURR1YSVqS-_udwzNaZK-nL68EcrhLSGIvukJBzWqBwfhxeElyHHh3qL01LtA4V5JXp289Dr058qQDiv_RJ1ulP70LLkmQ-uiqOtf2OJ_3eyouHbRUf_OXH2rtEmUPaUvgivYoTeYZCmXKttspmhbMoretTzHc8pnoOpYpliucKXpDmyLqRTJdNtgpsiyQVN3oh7Iwg5pcjUqm23ZoTBzCluq2Rg6S1hir0ByoY0IxBlN-agFFcJFm4EzcbKFYY-XTW7QSQ3dVz8jxB9zjRvA?type=png)](https://mermaid.live/edit#pako:eNqNk01uwjAQRq9izbb0AlkgVaVdV6RLbwZ7AEuJbfxTqSCO1FWPwMXqBEJxGtJk5cTve1K-sQ8gjCQowNMukha0ULhxWHPN0mPRBSWURR1YSVqS-_udwzNaZK-nL68EcrhLSGIvukJBzWqBwfhxeElyHHh3qL01LtA4V5JXp289Dr058qQDiv_RJ1ulP70LLkmQ-uiqOtf2OJ_3eyouHbRUf_OXH2rtEmUPaUvgivYoTeYZCmXKttspmhbMoretTzHc8pnoOpYpliucKXpDmyLqRTJdNtgpsiyQVN3oh7Iwg5pcjUqm23ZoTBzCluq2Rg6S1hir0ByoY0IxBlN-agFFcJFm4EzcbKFYY-XTW7QSQ3dVz8jxB9zjRvA)
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