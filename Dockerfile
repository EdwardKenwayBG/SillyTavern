FROM ghcr.io/sillytavern/sillytavern:latest

WORKDIR /home/node/app

# Настройки за Hugging Face
ENV PORT=7860
EXPOSE 7860

# Нулираме ENTRYPOINT и стартираме с режим "User Accounts"
ENTRYPOINT ["node", "server.js", "--listen", "true", "--port", "7860", "--no-whitelist", "--enable-user-accounts", "true"]
