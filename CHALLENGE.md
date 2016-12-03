
# Reto Code Camp 2016

El reto consisitrá en obtener, procesar y exponer información de Twitter.
Se compondrá de 3 etapas sucesivas.

## Etapa 1

A partir de 2 nombres de usuario de Twitter, obtener la lista de followers comunes a estos usuarios.
La lista se debe componer de nombres de usuario, no de id's.

## Etapa 2

Basándose en la etapa anterior, ahora obtener los amigos que son comunes. 
En Twitter se considera que dos usuarios son amigos si se siguen mutuamente.

## Etapa 3

Basado en la etapa anterior, crear el grafo que forman los amigos comunes de estos dos usuarios.
El grafo debe estar en formato [TGF](https://en.wikipedia.org/wiki/Trivial_Graph_Format)

## Etapa 4

Crear un servicio REST que exponga las funcionalidades de las etapas anteriores. El servicio debe recibir y regresar información en formato JSON.

## Etapa 5

Crear un cliente web que:

- Recibe dos nombres de usuario.
- invoca al servicio de la etapa anterior.
- Crea una representacin gráfica del grafo.
