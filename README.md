# Métodos analiticos (ITAM, 2018)
Notas y material para el curso de Métodos Analíticos (ITAM, 2018).

- [Notas](http://clever-mestorf-ee3f54.netlify.com). Estas notas son producidas
en un contenedor (con [imagen base de rocker](https://www.rocker-project.org), y unos
8G de memoria)  construido con el Dockerfile del repositorio:

```
docker build -t ma-rstudio .
docker run --rm -p 8787:8787 -v ~/tu/carpeta/local:/home/rstudio/ma ma-rstudio
```

- Para correr las notas usa el script notas/\_build.sh. Abre el archivo notas/\_book/index.html para ver tu copia local de las notas.

- Todos los ejercicios y tareas corren también en ese contenedor. Es opcional usarlo,
pero si tienes problemas de reproducibilidad puedes intentarlo.
