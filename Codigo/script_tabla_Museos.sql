CREATE TABLE IF NOT EXISTS public."MUSEOS"
(
    "Id" character varying COLLATE pg_catalog."default" NOT NULL,
    "Cod_Loc" integer,
    "Nombre" text COLLATE pg_catalog."default",
    "Categoria" text COLLATE pg_catalog."default",
    subcategoria text COLLATE pg_catalog."default",
    "Direccion" text COLLATE pg_catalog."default",
    "Observacion" text COLLATE pg_catalog."default",
    "Piso" double precision,
    "Web" character varying COLLATE pg_catalog."default",
    "Info_adicional" text COLLATE pg_catalog."default",
    "Telefono" character varying(200) COLLATE pg_catalog."default",
    "Mail" character varying(200) COLLATE pg_catalog."default",
    "Latitud" numeric,
    "Longitud" numeric,
    "TipoLatitudLongitud" text COLLATE pg_catalog."default",
    "Fuente" character varying(200) COLLATE pg_catalog."default",
    "Jurisdiccion" character varying(200) COLLATE pg_catalog."default",
    "Ano_inauguracion" integer,
    "Ano_actualizacion" integer,
    CONSTRAINT "MUSEOS_pkey" PRIMARY KEY ("Id"),
    CONSTRAINT "MUSEOS_Cod_Loc_fkey" FOREIGN KEY ("Cod_Loc")
        REFERENCES public."Localidad" ("Cod_Loc") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)