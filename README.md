
## phalcon devtools

```bash
$ docker pull iwai/phalcon-devtools

$ cd your-project-root

$ docker run -it --rm -v "$(pwd):/project" iwai/phalcon-devtools phalcon info

Phalcon DevTools (3.4.0)

Environment:
  OS: Linux f005e5bb885d 4.9.93-linuxkit-aufs #1 SMP Wed Jun 6 16:55:56 UTC 2018 x86_64
  PHP Version: 7.1.19
  PHP SAPI: cli
  PHP Bin: /usr/local/bin/php
  PHP Extension Dir: /usr/local/lib/php/extensions/no-debug-non-zts-20160303
  PHP Bin Dir: /usr/local/bin
  Loaded PHP config: 
Versions:
  Phalcon DevTools Version: 3.4.0
  Phalcon Version: 3.2.1
  AdminLTE Version: 2.3.6
```

## phalcon webtools

Access to http://127.0.0.1:8081/webtools.php

```bash
$ docker pull iwai/phalcon-webtools

$ cd your-project-root

$ docker run -d -p 8081:80 \
    -v "$(pwd):/project" \
    iwai/phalcon-webtools:latest
    
# Access to http://127.0.0.1:8081/webtools.php
```

### custom configuration

```bash
$ docker run -d -p 8081:80 \
    -v "$(pwd):/project" \
    -v "$(pwd)/config/webtools.config.php:/webtools/public/webtools.config.php" \
    iwai/phalcon-webtools:latest
```
