FROM node:20-alpine

# 添加 pnpm 版本控制
ENV PNPM_VERSION=9.15.4

WORKDIR /app

# 安装 pnpm
RUN npm install -g pnpm@${PNPM_VERSION}

# 复制 package 文件
COPY package.json pnpm-lock.yaml ./

# 安装依赖
RUN pnpm install

# 复制其他文件
COPY . .

# 暴露端口
EXPOSE 3000

# 添加健康检查
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
    CMD node -e "try { require('http').get('http://localhost:3000/api/health', (r) => r.statusCode === 200 ? process.exit(0) : process.exit(1)); } catch (e) { process.exit(1); }"

CMD ["pnpm", "dev"]