FROM ghcr.io/sillytavern/sillytavern:latest

WORKDIR /home/node/app

# Казваме на Hugging Face кой порт да гледа
ENV PORT=7860
EXPOSE 7860

# Нулираме всичко и стартираме директно с вградена парола
# ЗАМЕНИ 'Max' и 'TvoiataParola' с твоите реални данни тук
ENTRYPOINT ["node", "server.js", "--listen", "true", "--port", "7860", "--no-whitelist", "--basic-auth-mode", "true", "--basic-auth-user", "Max", "--basic-auth-password", "MaX38076240"
