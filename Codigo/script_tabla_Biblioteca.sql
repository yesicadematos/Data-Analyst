CREATE TABLE IF NOT EXISTS public."BIBLIOTECA"
(
    "Cod_Loc" integer,
    "Observacion" text COLLATE pg_catalog."default",
    "Categoria" text COLLATE pg_catalog."default",
    "Subcategoria" text COLLATE pg_catalog."default",
    "Nombre" text COLLATE pg_catalog."default",
    "Domicilio" text COLLATE pg_catalog."default",
    "Piso" text COLLATE pg_catalog."default",
    "Telefono" character varying(100) COLLATE pg_catalog."default",
    "Mail" character varying(100) COLLATE pg_catalog."default",
    "Web" character varying(100) COLLATE pg_catalog."default",
    "Informacion Adicional" double precision,
    "Latitud" double precision,
    "Longitud" numeric,
    "TipoLatitudLongitud" text COLLATE pg_catalog."default",
    "Fuente" character varying(100) COLLATE pg_catalog."default",
    "Tipo_gestion" character varying(100) COLLATE pg_catalog."default",
    "Ano_Inicio" double precision,
    "Ano_Actualizacion" bigint,
    "Id" character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "BIBLIOTECA_pkey" PRIMARY KEY ("Id"),
    CONSTRAINT "BIBLIOTECA_Cod_Loc_fkey" FOREIGN KEY ("Cod_Loc")
        REFERENCES public."Localidad" ("Cod_Loc") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)