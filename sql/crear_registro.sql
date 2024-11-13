-- Crea la tabla registros
CREATE TABLE REGISTROS (
  ID SERIAL PRIMARY KEY,
  TIPO_REGISTRO VARCHAR(20) NOT NULL CHECK (TIPO_REGISTRO IN ('Donacion', 'Solicitud')),
  TIPO_SANGRE VARCHAR(3) NOT NULL CHECK (TIPO_SANGRE IN ('AB+', 'AB-', 'A+', 'A-', 'B+', 'B-', 'O+', 'O-')),
  CANTIDAD INT NOT NULL,
  RAZON TEXT,
  COMENTARIOS TEXT,
  PRIORIDAD INT,
  ESTADO VARCHAR(20) CHECK (ESTADO IN ('Pendiente', 'Aprobado', 'Denegado', 'Entregado')),
  FECHA DATE NOT NULL,
  USUARIO_DOCUMENTO VARCHAR(10) NOT NULL,
  USUARIO_TIPO_DOCUMENTO VARCHAR(50) NOT NULL CHECK (USUARIO_TIPO_DOCUMENTO IN ('Cedula de Ciudadania', 'Cedula de Extranjeria'))
);