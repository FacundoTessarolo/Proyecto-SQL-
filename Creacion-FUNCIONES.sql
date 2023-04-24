use ProyectofinalSQL;

-- Funcion para calcular el monto total mas el IVA en las ventas del ecommerce dependiendo del recargo que se le haya realizado a la orden

drop function if exists fn_calcular_iva ;

delimiter $$
create function fn_calcular_iva ( p_iva decimal(4,2),
									 p_total decimal(16,2),
                                     p_recargo decimal(16,2))
                                   
returns int
deterministic
begin	
    
    declare v_con_iva int ;
   set v_con_iva = 
      (select distinct total * p_iva as con_iva from ventas where total > p_total and recargo = p_recargo) ;
      return v_con_iva;
	end $$
    delimiter ;
    
   select ecommerce_proyecto.fn_calcular_iva (1.21, 500.50, 5) as con_iva;    
   
   
   -- Funcion para saber cuantas ordenes tenemos dependiendo del estado en el que se encuntre actualmente esa orden


drop function if exists fn_cantidadorden_estado;

delimiter $$
create function fn_cantidadorden_estado ( p_estado varchar(15))
									
returns int
deterministic
begin	
    
    declare v_cantidadorden_estado int;
    set v_cantidadorden_estado = 
      (select count(e.tipo) from estado_orden as e inner join ordenes as o on e.id_estado = o.id_estado where e.tipo = p_estado);
      return v_cantidadorden_estado;
	end $$
    delimiter ;
    
  select ecommerce_proyecto.fn_cantidadorden_estado ( 'Finalizado') as cantidad_ordenes; 
