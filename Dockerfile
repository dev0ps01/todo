
FROM        node
RUN         mkdir /todo
WORKDIR     /todo
COPY        server.js .
COPY        package.json .
COPY        package-lock.json .
COPY        routes.json .
COPY        todoController.js  .
RUN         npm install
CMD         [ "node", "server.js" ]