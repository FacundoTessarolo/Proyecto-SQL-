use ProyectofinalSQL;

Select * from ordenes;

DROP PROCEDURE IF EXISTS SP_ORDENAR;

DELIMITER //
CREATE procedure SP_ORDENAR  (INOUT PARAM_ORDER VARCHAR(200),
                              INOUT PARAM_ASC_DESC VARCHAR (100))
BEGIN
	SET @t1 = CONCAT('SELECT * FROM ORDENES ORDER BY',' ', PARAM_ORDER,' ',PARAM_ASC_DESC);
    PREPARE  EJECUTAR from @t1;
    execute EJECUTAR;
    deallocate prepare EJECUTAR;
    END// 
    DELIMITER ;
    
    SET @PARAM_ORDER = 'total';
    SET @PARAM_ASC_DESC = 'DESC';
    
    CALL SP_ORDENAR(@PARAM_ORDER, @PARAM_ASC_DESC);
    
    
     SELECT * FROM PRODUCTOS;

 
 DROP PROCEDURE IF EXISTS SP_INSERTAR_PRODUCTOS;
DELIMITER //
CREATE procedure SP_INSERTAR_PRODUCTOS  ( 
										IN P_ID_PROD INT,
                                        IN P_NOMBRE VARCHAR (50), 
										IN P_ID_PROVEEDOR INT, 
                                        IN P_ID_CATEG int , 
                                        IN P_CODIGO_BARRA varchar(25), 
                                        IN P_COSTO DECIMAL(16,2),
                                        IN P_PRECIO_VENTA DECIMAL(16,2),
                                        IN P_STOCK DECIMAL(16,2),
                                        IN P_TIPO VARCHAR(20),
                                        IN P_ALICUOTA VARCHAR(20))
BEGIN
	INSERT INTO PRODUCTOS (id_prod, nombre, id_proveedor, id_categ, codigo_barra, costo, precio_venta, stock, tipo, alicuota)
				VALUES (P_ID_PROD, P_NOMBRE, P_ID_PROVEEDOR, P_ID_CATEG,P_CODIGO_BARRA,P_COSTO ,P_PRECIO_VENTA,P_STOCK,P_TIPO,P_ALICUOTA);
    END// 
    DELIMITER ;
    
    CALL SP_INSERTAR_PRODUCTOS ('16','Campera Lino', '3','7','0000089N','4500.55','6800.50','34.00','simple','21.00'); 
    
         SELECT * FROM PRODUCTOS;
    