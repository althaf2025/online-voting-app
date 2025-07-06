# Use the official Tomcat 9 base image with OpenJDK 8
FROM tomcat:9-jdk8

# Set maintainer (optional)
LABEL maintainer="althaf2025"

# Remove default webapps to avoid clutter
RUN rm -rf /opt/tomcat9/webapps/*

# Copy the built WAR into the Tomcat webapps directory
COPY target/OnlineVotingSystemV3-1.0-SNAPSHOT.war /opt/tomcat9/webapps/ROOT.war

# Expose port 8080 (Tomcat default)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
