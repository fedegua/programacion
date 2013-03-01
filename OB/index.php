<?php $title = 'inicio';
include("header.php"); ?>

				<aside>
                    <h2>PEDIDOS ONLINE<h2>
					<p>Recarga de supergas de 13 kg. <span>$378</span>. Encargue su garrafa por aqui y pagelo en la comodida de su hogar</p>
					
                    <form method="post" class="contacto">
					<fieldset>			

						<div><label class="lab">Nombre:</label><input type="text" class="nombre" name="nombre" /></div>
						<div><label class="lab">Direcci&oacuten:</label><input type="text" class="direccion" name="direccion" /></div>
						<div><label class="lab">Email:</label><input type="text" class="email" name="email" /></div>
						<div><label class="lab">Tel&eacutefono:</label><input type="text" class="telefono" name="telefono" /></div>
						<div><label class="lab">Pedido:</label><select name="pedido" id="pedido">	<option value="R" >  Recarga ($378)  </option><option value="V" >  Venta ($2000)  </option></select></div>
						
						<div class="ultimo">
							<img src="img/ajax.gif" class="ajaxgif hide" />
							<div class="msg"></div>
							<button class="boton_envio">SEND</button>
							
						</div>
					</fieldset>
					</form>
                </aside>


                <article>
                    <header>
                        <h1>Acerca del supergas</h1>
                        <p>El supergás es un subproducto del petróleo y corresponde a la mezcla de dos gases: gas Butano y gas Propano. La composición volumétrica aproximada es de 50% a 80% Butano y 20% a 50% Propano.</p>
                    </header>
                    <section>
                        <h2>Propiedades</h2>
                        <p>
                        <ul>
                        	<li>Es más pesado que el aire: en estado gaseoso pero casi el doble que el aire. En caso de una pérdida accidental, no se elevará; se desplazará a nivel del terreno y tenderá a acumularse en los puntos bajos.</li>
                            <li>Olor característico: originalmente el supergás no tiene olor, pero en la refinería de La Teja se le agregan compuestos denominados Mercaptanes, que le dan ese olor que permite detectar posibles escapes o fugas.</li>
                            <li>Es inflamable: Para que se inflame es necesario que exista una mezcla determinada de supergás y aire en presencia de una chispa, llama o fuente de calor. Para esto es necesario además que la mezcla se encuentre en una determinada proporción. A esta proporción se le denomina límite de inflamabilidad. La mezcla debe estar en una proporción mínima de 1,8% y una proporción máxima de 9,5% de supergás en el aire para que se inflame.</li>
                            <li>El supergás NO es tóxico (recomendamos ver consejos de seguridad).</li>
                            <li>Potencia calorífica es la mayor entre combustibles usuales: 11,850 Kcal/Kg.</li>
                        </ul></p>
                    </section>
                    
                </article>

                

            </div> <!-- #main -->
        </div> <!-- #main-container -->
<?php include("footer.html"); ?>

