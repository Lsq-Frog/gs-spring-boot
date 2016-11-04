FROM 222.211.65.73:5000/java

LABEL Vendor="Ghostcloud" \
    Name="gs-spring-boot" \
    Version="1.0.0" \
    Date="011/04/2016"

COPY initial/target /
COPY up.sh /
RUN chmod +x /up.sh

EXPOSE 8080

ENTRYPOINT ["/up.sh"]
