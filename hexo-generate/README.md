# Hexo Static Files Generator Image
This image is used to create a container for generating Hexo static files.   
So it wouldn't share port as normal. It will generate static file when the files in sources or themes folder have changed.   

Forgive the folder name. :)
## Docker Compose Example:
```yaml
version: '3'
services:
  HexoServer:
    container_name: hexo
    image: lee170528/hexo-generate:latest
    restart: always
    volumes:
      - "your/path:/blog/public"
      - "your/path:/blog/source/_posts"
      - "your/path:/blog/config"
      - "your/path:/blog/themes"
``` 
