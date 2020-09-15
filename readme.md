## Docker cron con alpine sobrescribiendo entrypoint

Lab de referencia para casos donde se desarrolla una app backend que requiere la ejecucion de scripst o jobs periodicos que usan el mismo codigo fuente.

La estrategia es usar la misma imagen pero sobrescribir el entrypoint para levantar un segundo servicio que ejecute el cron
