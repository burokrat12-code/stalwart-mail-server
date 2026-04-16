[server]
hostname = "${HOSTNAME:-mail.cargo-port.eu}"
base-directory = "/var/lib/stalwart"
log-level = "${LOG_LEVEL:-info}"

[listener."smtp"]
bind = "0.0.0.0:25"
protocol = "smtp"

[listener."submission"]
bind = "0.0.0.0:587"
protocol = "smtp"
require-tls = false

[listener."submissions"]
bind = "0.0.0.0:465"
protocol = "smtp"
tls.implicit = true

[listener."imap"]
bind = "0.0.0.0:143"
protocol = "imap"

[listener."imaps"]
bind = "0.0.0.0:993"
protocol = "imap"
tls.implicit = true

[tls]
server.cert = "/etc/stalwart/certs/${HOSTNAME:-mail.cargo-port.eu}.crt"
server.key = "/etc/stalwart/certs/${HOSTNAME:-mail.cargo-port.eu}.key"

[auth]
directory = "internal"
fallback = "sqlite"

[auth.internal]
admin = "${ADMIN_HASH}"

[store]
type = "sqlite"
path = "/var/lib/stalwart/data.sqlite"

[queue]
type = "sqlite"
path = "/var/lib/stalwart/queue.sqlite"

[reporting]
to = "${REPORT_TO:-admin@cargo-port.eu}"
from = "${REPORT_FROM:-reports@cargo-port.eu}"
