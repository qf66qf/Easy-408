# 使用官方 Java 17 运行环境
FROM eclipse-temurin:17-jre

# 设置工作目录
WORKDIR /app

# 复制 jar 包到容器
COPY easy408-app-1.0.0.jar app.jar

# 暴露端口（必须和 application.properties 一致）
EXPOSE 8080

# 容器启动命令
ENTRYPOINT ["java", "-jar", "app.jar"]
