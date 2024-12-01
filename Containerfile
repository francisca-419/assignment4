FROM fedora:latest

# Upgrade the system
RUN dnf -y upgrade

# Install required applications
RUN dnf install -y tuxpaint vim httpd

# Copy the myinfo.html to the web server's root directory
COPY myinfo.html /var/www/html/

# Expose port 80/TCP
EXPOSE 80

# Start the httpd service
ENTRYPOINT ["/usr/sbin/httpd", "-DFOREGROUND"]

