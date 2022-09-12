CREATE TABLE IF NOT EXISTS public."CINES"
(
    "Id" character varying COLLATE pg_catalog."default" NOT NULL,
    "Cod_Loc" integer,
    "Categoria" text COLLATE pg_catalog."default",
    "Nombre" text COLLATE pg_catalog."default",
    "Direccion" text COLLATE pg_catalog."default",
    "Piso" text COLLATE pg_catalog."default",
    "Observacion" text COLLATE pg_catalog."default",
    "Informacion Adicional" text COLLATE pg_catalog."default",
    "Telefono" text COLLATE pg_catalog."default",
    "Mail" character varying(200) COLLATE pg_catalog."default",
    "Web" character varying COLLATE pg_catalog."default",
    "Latitud" numeric,
    "Longitud" numeric,
    "TipoLatitudLongitud" text COLLATE pg_catalog."default",
    "Fuente" character varying(200) COLLATE pg_catalog."default",
    "Tipo_gestion" character varying(200) COLLATE pg_catalog."default",
    "Pantallas" integer,
    "Butacas" integer,
    "Espacio_Incaa" character varying COLLATE pg_catalog."default",
    "Ano_Actualizacion" integer,
    CONSTRAINT "CINES_pkey" PRIMARY KEY ("Id"),
    CONSTRAINT "CINES_Cod_Loc_fkey" FOREIGN KEY ("Cod_Loc")
        REFERENCES public."Localidad" ("Cod_Loc") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)