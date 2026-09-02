-- Ejecutar en Supabase SQL Editor para adaptar la tabla existente

alter table public.hipotesis
  add column if not exists reformulacion text,
  add column if not exists prueba_estudiante text,
  add column if not exists chequeo_estructural text,
  add column if not exists puntaje_estructural integer;

-- Las columnas de la rúbrica anterior pueden permanecer; esta versión estudiantil no las usa.
-- Si esas columnas fueron creadas como NOT NULL, permitir null para inserciones estudiantiles:
alter table public.hipotesis alter column elemento drop not null;
alter table public.hipotesis alter column propiedad drop not null;
alter table public.hipotesis alter column causalidad drop not null;
alter table public.hipotesis alter column proceso drop not null;
alter table public.hipotesis alter column efecto drop not null;
alter table public.hipotesis alter column prueba drop not null;
alter table public.hipotesis alter column total drop not null;
