
Using this image, you must read the section "Working with containers" of the document "The Top 10 Docker commands" on Cyberlearn. You should:

    run the image heigvddai/chucknorris,
        `docker run heigvddai/chucknorris`

    run the image as background process,
        `docker run -d heigvddai/chucknorris`

    run the image, which uses TCP port 80 and map it to another port, for example 8080 (you can then open a browser and connect to localhost:8080 to see a Chuck Norris joke and refresh the page several times),
        `docker run -d -p 8081:80 heigvddai/chucknorris`
        or
        `myContId=$(docker run -d -p 8081:80 heigvddai/chucknorris)`

    open a shell in the running container,
        `docker exec -it $myContId /bin/bash`

    list the running containers with docker ps,
        `docker ps`

        Use this command to list all containers
        `docker ps -a`

    stop the running container,
        `docker stop $myContId`

    remove the downloaded image.
        ```bash
        ### Use this command to list all containers
        docker ps -a
        docker rm <containerId>
        ### OR to automate
        # containerIds=$(docker ps -a | cut -d' ' -f1)
        # for contId in $containerIds; do docker rm $contId; done

        ### after dependancies removed, remove the image
        docker rmi heigvddai/chucknorris
        ```

Write down the commands you used for each of these steps.


