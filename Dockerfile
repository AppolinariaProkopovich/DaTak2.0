FROM node:20-slim

# утилиты: git (нужен Claude Code) и curl (для проверки IP)
RUN apt-get update && apt-get install -y git curl ca-certificates && rm -rf /var/lib/apt/lists/*

# ставим Claude Code глобально
RUN npm install -g @anthropic-ai/claude-code

# рабочая папка внутри контейнера
WORKDIR /work

CMD ["bash"]
