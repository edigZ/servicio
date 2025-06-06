# Usa una imagen base de Java con JDK 17
FROM eclipse-temurin:17-jdk-alpine

# Copia el jar construido al contenedor
COPY target/servicio-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto (puedes cambiar si usas otro)
EXPOSE 8080

# Define la variable de entorno PORT, opcional si la configuras en Spring
ENV PORT=8080

# Comando para ejecutar el jar
ENTRYPOINT ["java","-jar","/app.jar"]
