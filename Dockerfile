FROM nginx
COPY /dist/DemoArduino usr/share/nginx/html
EXPOSE 80
