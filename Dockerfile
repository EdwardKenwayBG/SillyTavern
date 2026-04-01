# 1. Вземаме готовата и работеща база
FROM ghcr.io/sillytavern/sillytavern:latest

# 2. Отиваме в папката на приложението
WORKDIR /home/node/app

# 3. Копираме твоите неща (герои, настройки) от GitHub
COPY --chown=node:node . .

# 4. Настройки за порта на Hugging Face
ENV PORT=7860
EXPOSE 7860

# 5. КРИТИЧНО: Махаме стария "началник", който ни пращаше на порт 8000
ENTRYPOINT []

# 6. Стартираме директно на порт 7860
CMD ["node", "server.js", "--no-whitelist", "--port", "7860"]

EXPOSE 7860

# Ensure proper handling of kernel signals
CMD ["tini", "--", "node", "server.js", "--no-whitelist", "--port", "7860"]

