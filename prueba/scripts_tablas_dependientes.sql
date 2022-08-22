CREATE TABLE IF NOT EXISTS public."Localidad"
(
    "Cod_Loc" integer NOT NULL,
    "Localidad" text COLLATE pg_catalog."default",
    "IdDepartamento" integer,
    "CP" text COLLATE pg_catalog."default",
    "Cod_tel" character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT "Localidad_pkey" PRIMARY KEY ("Cod_Loc"),
    CONSTRAINT "Localidad_IdDepartamento_fkey" FOREIGN KEY ("IdDepartamento")
        REFERENCES public."Departamento" ("IdDepartamento") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)


CREATE TABLE IF NOT EXISTS public."Departamento"
(
    "IdDepartamento" integer NOT NULL,
    "Departamento" text COLLATE pg_catalog."default",
    "IdProvincia" integer,
    CONSTRAINT "Departamento_pkey" PRIMARY KEY ("IdDepartamento"),
    CONSTRAINT "Departamento_IdProvincia_fkey" FOREIGN KEY ("IdProvincia")
        REFERENCES public."Provincia" ("IdProvincia") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)


CREATE TABLE IF NOT EXISTS public."Provincia"
(
    "IdProvincia" integer NOT NULL,
    "Provincia" text COLLATE pg_catalog."default",
    CONSTRAINT "Provincia_pkey" PRIMARY KEY ("IdProvincia")
)