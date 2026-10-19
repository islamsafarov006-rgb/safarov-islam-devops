FROM alpine:latest

WORKDIR /app

COPY . .

ENV STUDENT_NAME=Islam \
    STUDENT_SURNAME=Safarov \
    STUDENT_GROUP=IT2-2303 \
    STUDENT_ID=38061

EXPOSE 8080

CMD ["sh", "-c", "echo '================================' && echo 'DevOps Student Application' && echo '================================' && echo \"Name: $STUDENT_NAME\" && echo \"Surname: $STUDENT_SURNAME\" && echo \"Group: $STUDENT_GROUP\" && echo \"Student ID: $STUDENT_ID\" && echo 'Application is running successfully!'"]
