FROM tomcat:9.0-jdk17-temurin

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Kubernetes-friendly settings
EXPOSE 8000

# Run Tomcat in foreground (IMPORTANT for Pods)
CMD ["catalina.sh", "run"]
