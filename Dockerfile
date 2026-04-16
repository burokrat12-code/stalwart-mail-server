FROM alpine:3.20

RUN apk add --no-cache \
    curl \
    ca-certificates \
    tzdata \
    bash \
    gettext \
    libgcc \
    libstdc++

# Установка Stalwart Mail Server
RUN curl -L https://github.com/stalwartlabs/mail-server/releases/latest/download/stalwart-mail-alpine-x86_64.tar.gz | tar xz -C /usr/local/bin

# Создание директорий
RUN mkdir -p /etc/stalwart /var/lib/stalwart /var/log/stalwart

# Копирование конфигурации
COPY config.toml /etc/stalwart/config.toml

EXPOSE 25 587 465 143 993 110 995 80 443 4190

VOLUME ["/var/lib/stalwart", "/etc/stalwart"]

CMD ["/usr/local/bin/stalwart-mail", "-c", "/etc/stalwart/config.toml"]
