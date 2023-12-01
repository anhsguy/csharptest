run main.cs (main.csproj) steps:
1. PC local: git clone https://github.com/anhsguy/csharptest.git
2. cd csharptest
3. docker build -t csharptest_image .
4. docker run csharptest_image  - only 188MB

View detail on container or PC terminal: Hello World
The sum is 8
Car Type: Sedan
Car Color:  Red

Steps to push local to hub:

1. PC local: docker images >csharptest_image   tag:latest
2. Don't Open hub.docker.com: docker login
3. rename: docker tag csharptest_image anhsguy792/csharptest_image:latest
4. To hub: docker push anhsguy792/csharptest_image:latest
5. run image in hub: docker run anhsguy792/csharptest_image or
   search on top: anhsguy792 > run

remove any image: docker rmi csharptest_image
