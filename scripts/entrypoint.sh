#!/bin/bash

# Startăm serviciile necesare
freshclam &  # Update la semnături antivirus
clamd &      # Demon ClamAV

# Pornim scriptul de monitorizare
/opt/scripts/capture-activity.sh

# Ținem containerul activ
tail -f /dev/null

