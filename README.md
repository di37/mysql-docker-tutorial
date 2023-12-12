# Running MySQL using Docker

Our primary objective is to deploy and operate a MySQL database using Docker, enabling us to utilize MySQL functionalities without the need for installing it directly on our local machine.

## Pre-requisites for running MySQL on Docker

- **Docker Desktop:** Docker Desktop is essential for running Docker containers on your local PC. You can download and install it from the official Docker website for your operating system (Windows, macOS, or Linux).
- **Docker Compose:** Docker Compose is a tool for defining and running multi-container Docker applications. It allows you to define your container configurations in a single YAML file. You can typically install Docker Compose as a separate component, but it often comes bundled with Docker Desktop for Windows and macOS users.
- Also, know the commands on how to use Docker image and Docker compose.

## Running MySQL on Docker

This section outlines the steps to run MySQL in a Docker container and explains how to access the database using two different methods.

### Starting the MySQL Container

**Start the Container:**
Use the following command to bring up the MySQL container using Docker Compose:

```bash
docker compose up
```

### Data Persistence Configuration

To ensure data persists across container restarts, configure volumes in your Docker Compose file:

```bash
services:
  db:
  ...
    volumes:
    - ./db_data:/var/lib/mysql
    - ./scripts:/docker-entrypoint-initdb.d

volumes:
  db_data:
```

- The `db_data` directory on your host is mapped to `var/lib/mysql` inside the container, preserving the database data.
- The `scripts` directory contains the initialization SQL script `codebasics-movies-db.sql`. This directory is mounted to `docker-entrypoint-initdb.d` in the container. MySQL automatically executes scripts in this directory upon container initialization. Scripts are executed in ascending / alphabetical order.

### Accessing the MySQL Database

You can access the MySQL database in two ways:

Method 1: Docker Exec Command
Command:

```bash
docker exec -it my_mysql_container /bin/bash mysql -p
```

Replace `my_mysql_container` with your actual container name if different.

- **Password:** When prompted, enter the `MYSQL_ROOT_PASSWORD` (in this case, `root`).

Method 2: Using mycli

- Install mycli (if not installed):

```bash
pip install mycli
```

- Connect to MySQL:

```bash
mycli -u user -h 127.0.0.1 -P 5004 -p password moviesdb
```

Here, replace:

- `user` with your MySQL username.
- `127.0.0.1` with your Docker host address (use `localhost` if running locally).
- `5004` with the port number mapped to MySQL's default port 3306.
- `password` with your MySQL password.
- `moviesdb` with your database name.

For reference, here are the related MySQL configuration settings in the Docker Compose file:

```bash
db:
    container_name: my_mysql_container
    ...
    environment:
    MYSQL_ROOT_PASSWORD: root
    MYSQL_DATABASE: moviesdb
    MYSQL_USER: user
    MYSQL_PASSWORD: password
    ports:
    - "5004:3306"
```

Now, we are ready to run SQL commands.

## Example scripts

The purpose of this tutorial is for the users to get started with using MySQL on Docker. We will just see if we can execute some SQL commands if SQL script is correctly executed or not during creation of the container.

1. Lists all the current databases that exists in the server.

```base
SHOW DATABASES;
```

2. Use a specific database from the list of databases in the server

```base
USE moviesdb;
```

3. Show the tables from the selected database.

```base
SHOW TABLES;
```

4. Fetch all the data from the `movies` table.

```base
SELECT * FROM movies;
```

5. Lets try a little complex SQL query:

```base
SELECT * FROM movies WHERE industry="hollywood";
```

We can see all these commands are working properly which indicates our sample sql script executed successfully.

## Advantages of Using a Docker Image for MySQL

Using a Docker image of MySQL over installing it on your local PC offers several advantages:

1. **Easy Setup:** Setting up MySQL using a Docker image is as simple as pulling the image and running a container. When you're done, you can remove the container, leaving no residual configurations or data on your local machine.
2. **Portability:** Docker containers are highly portable. You can easily share the MySQL container image with others, deploy it on different machines, or move it to a cloud environment without worrying about compatibility or configuration is.
3. **Isolation:** Docker containers are isolated environments, which means that the MySQL instance running in a container won't interfere with other applications or services on your local PC. This isolation helps avoid conflicts and dependency issues.
4. **Version Control:** Docker images can be version-controlled using tools like Docker Compose or Kubernetes. This ensures that you can easily manage different versions of MySQL and switch between them as needed.
5. **Testing and Dev:** Docker makes it easy to create isolated testing and development environments. You can quickly create a container for MySQL, test your application against it, and then discard the container when you're finished.
6. **Backup/Restore:** Docker provides tools for backing up and restoring containers, making it straightforward to manage MySQL data. You can easily create snapshots of container data for disaster recovery.
7. **Dependency Management:** Docker allows you to package not only MySQL but also other dependencies (e.g., web servers, application servers) into containers, making it easier to manage complex development or production environments.

## Conclusion

This setup provides a robust and flexible development environment, allowing you to work with MySQL in a containerized manner. Should you encounter any issues, refer back to the specific sections for troubleshooting tips. Happy database managing!

## Reference

- Movie database taken from Codebasics: https://codebasics.io/resources/sql-tutorials-for-beginners
