# Usamos imagen base ligera con OpenJDK 17
FROM eclipse-temurin:17-jdk-alpine

# Copiamos el JAR generado desde la carpeta del subproyecto
COPY target/servicio-0.0.1-SNAPSHOT.jar app.jar

# Exponemos el puerto 8080 que usa Spring Boot por defecto
EXPOSE 8080

# Comando para ejecutar la app Java
ENTRYPOINT ["java", "-jar", "/app.jar"]
