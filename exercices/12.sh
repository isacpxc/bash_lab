#!/bin/bash

# ramon deu ruim no pc de lucas. Fiz o commit por ele

cat /etc/passwd | grep -E "root|home" | cut -d ":" -f 1,6 | sort | sed 's/:/ => /'
