CREATE OR REPLACE VIEW public.total_registro
AS
SELECT "CINES"."Categoria",
"CINES"."Fuente"
FROM "CINES";


CREATE OR REPLACE VIEW public.total_registro2
AS
SELECT "MUSEOS"."Categoria",
"MUSEOS"."Fuente"
FROM "MUSEOS";


CREATE OR REPLACE VIEW public.total_registro3
AS
SELECT "BIBLIOTECA"."Categoria",
"BIBLIOTECA"."Fuente"
FROM "BIBLIOTECA";