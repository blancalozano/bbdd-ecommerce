DELIMITER //

CREATE PROCEDURE RegistrarCliente(
    IN nombre_param VARCHAR(100),
    IN correo_param VARCHAR(100),
    IN telefono_param CHAR(9),
    IN ciudad_param VARCHAR(100),
    IN direccion_param VARCHAR(250),
    IN suscripcion_param ENUM('gratuito', 'premium')
)
BEGIN

	IF EXISTS (
		SELECT *
        FROM Clientes
        WHERE correo = correo_param
	) THEN
		signal sqlstate '45000'
        set message_text = 'El correo ya existe';
	END IF;
        
INSERT INTO Clientes(nombre, correo, telefono, ciudad, direccion, suscripcion)
VALUES(nombre_param, correo_param, telefono_param, ciudad_param, direccion_param, suscripcion_param);
END //

DELIMITER ; 

CALL RegistrarCliente(
    'Carlos Ruiz',
    'carlosr@gmail.com',
    '612345678',
    'Sevilla',
    'Calle Mayor 20',
    'gratuito'
);
