ALTER TABLE cliente
ADD (
    nombre VARCHAR2(50) NOT NULL,
    apellido VARCHAR2(50) NOT NULL,
    email VARCHAR2(100),
    fecha_creacion DATE DEFAULT SYSDATE
)