from django.db import models

class Ciudad (models.Model):
    
    nombre = models.CharField(max_length = 50)
    
    class Meta:
        #nombre en el admin del modelo --> breadcrums, titulos, botones, etc
        verbose_name = 'Ciudad' #Nombre del objeto singular
        verbose_name_plural = 'Ciudades' #Nombre del objeto plural
        ordering = ['nombre'] #campo por el cual se ordena el listado en el backend
    def __str__(self):
        return '%s - %s' %(self.id, self.nombre)
    
class Comando (models.Model):    
    
    nombre = models.CharField(max_length = 3)
    
class CiudadComando(Comando):
   
    ciudad = models.OneToOneField(Ciudad, primary_key = True)
    
    def __str__(self):
        return self.nombre
    
class CandidatoComando(Comando):
    
    candidato = models.OneToOneField('Candidato')
    ciudadComando = models.ForeignKey(CiudadComando)
    
    def __str__(self):
        return self.nombre
    
class Persona(models.Model):
    
    nombre = models.CharField(max_length = 50)
    apellido = models.CharField(max_length = 50)
    fechaNac = models.DateField(null = True, blank = True)
    documento = models.CharField(max_length = 11)
    direccion = models.CharField(max_length = 50, null = True, blank= True)
    telefono = models.CharField(max_length = 20, unique=True, db_index = True)
    
    ciudad = models.ForeignKey(Ciudad)
    
class Pin (models.Model):
   
    pin = models.CharField(max_length = 4)
    tel = models.CharField(max_length = 20)   
    
class Candidato (Persona):
   
    informacion = models.TextField()
   
    def __str__(self):
        return '%s - %s %s' % (self.id, self.nombre, self.apellido)
    
class Usuario(Persona):
   
    habilitado = models.BooleanField()
    
class Sms(models.Model):
    
    texto = models.CharField(max_length = 160)
    fecha = models.DateTimeField(auto_now_add = True)
    
    usuario = models.ForeignKey(Usuario, null = True)
    telefono = models.CharField(max_length = 20)
    
class Mo(Sms):
    
    pass
class Mt(Sms):
   
    sent = models.BooleanField()
    
class Campania(models.Model):
    
    nombre = models.CharField(max_length = 50)
    descripcion = models.TextField(null = True, blank= True)
    fechaIni = models.DateTimeField()
    fechaFin = models.DateTimeField()
    
    votaciones = models.ManyToManyField(Candidato, through = 'Voto')
    
    statuses = models.ManyToManyField(Usuario,through = 'Status')
    
    @staticmethod
    def activa():
        from datetime import date
        #gt Grater than
        #gte Greater then other
        #lt...
        #lte...
        try:
            C = Campania.objects.get(fechaIni__lte = date.today(), fechaFin__gte = date.today())
            return C
        
        except Campania.MultipleObjectsReturned:
            return False
        except Campania.DoesNotExist:
            return False
    
    def __str__(self):
        return self.nombre
    
        
class Voto(models.Model):
    candidato = models.ForeignKey(Candidato)
    campania = models.ForeignKey(Campania)
    usuario = models.OneToOneField(Usuario)
    fecha = models.DateTimeField(auto_now_add = True)
    
class Sesion(models.Model):
    
	candidato   = models.ForeignKey(Candidato, null=True)
	campania    = models.ForeignKey(Campania)
	usuario     = models.ForeignKey(Usuario)
	list_status = (('IN','Inicial'),('CF','Esperando confirmacion'), ('VE','Voto emitido'))
	estado      = models.CharField(max_length=2, choices=list_status)
    #candidato = models.OneToOneField(Candidato)
    #usuario = models.OneToOneField(Usuario)
    
class Status(models.Model):
    usuario = models.ForeignKey(Usuario)
    campania = models.ForeignKey(Campania)
    list_status = (('IN', 'Inicial'),('CF','Esperando cofirmacion'),('VE','Voto emitido'))
    estado = models.CharField(max_length = 3, choices = list_status)

class Reporte(models.Model):
	qfy=models.IntegerField(max_length = 5)
	
class ReporteCandidato(Reporte):
	candidato = models.ForeignKey(Candidato)
	campania = models.ForeignKey(Campania)
	unique_together = ('Candidato','Campania')
	
class ReporteCiudad(Reporte):
	ciudad = models.ForeignKey(Ciudad)
	campania = models.ForeignKey(Campania)
	unique_together = ('Ciudad','Campania')
	
class Carrier (models.Model):
    def recieve(Self):
        #telefono = '0999656565'
        #mensaje = 'hola'
        mo = Mo()
        mo.texto = mensaje
        mo.telefono = telefono        
        return Mo
    
    @staticmethod
    def send(mt):
        mt.sent = True
        mt.save()

class Plataforma(models.Model):
    
    def processMo(self, mo):
        #mo = Carrier.recieve()
        msg = self.process(mo)
        if msg:
            mt = Mt()
            mt.texto = msg
            mt.usuario = mo.usuario
            mt.telefono = mo.telefono
            Carrier.send(mt)
            return mt
        
    def process(self,mo):
        if mo.telefono is None:
            return False
        if mo.texto is None:
            return False

        try:
            u = Usuario.objects.get(telefono = mo.telefono)
        except Usuario.DoesNotExist:
            return False
        #Guardo el usuario del mensaje
        mo.usuario = u
        mo.save()
        return self.processMt(mo)
		
    def processMt(self,mo):
        if not mo.usuario.habilitado:
            return'{0} no es un usuario habilitado'.format(mo.telefono)
        c = Campania.activa()
        if not c:
            return 'No hay campania activa para votar'
        
        try:
            s= Sesion.objects.get(usuario = mo.usuario, campania = c)
        except Sesion.DoesNotExist:
            s= Sesion()
            s.campania = c
            s.usuario = mo.usuario
            s.estado = 'IN'
            s.save()
            st= Status()
            st.usuario = mo.usuario
            st.campania = c
            st.estado = 'IN'
            st.save()
            #return 'Envie CIUDAD COMANDO para votar en {0}'.format(c.nombre)
        
        if s.estado =='VE':
            return 'Ya votaste en {0}'.format(c.nombre)
        if s.estado == 'CF':
            return self.procesarConfirmacion(mo, s, c)
        if s.estado == 'IN':
            return self.procesarVoto(mo, s, c)
            
            
    def procesarConfirmacion(self, mo, s, c):
		comando = mo.texto
		st  = Status()
		if comando.upper() == 'SI':
			self.votar(mo, c, s)
			s.estado = 'VE'
			st.estado   = 'VE'
			s.save()
			st.usuario = mo.usuario
			st.campania = c
			st.save(force_insert=True)  
			return 'Gracias por vatar en {0}'.format(c.nombre)
		elif comando.upper() == 'NO':
			s.estado = 'IN'
			s.save()
			st.estado    = 'IN'
			st.usuario = mo.usuario
			st.campania = c
			st.save(force_insert=True)
			return 'Envie CIUDAD COMANDO para votar en {0}'.format(c.nombre)
		else:
			return 'Envia SI confirmacion votacion en {0}'.format(c.nombre) 
       
    def votar(self, mo, c, s):
        #creo voto
        vo = Voto()
        vo.campania = c
        vo.usuario = mo.usuario
        vo.candidato = s.candidato  
        vo.save()   
        
        try:
            rcandidato = ReporteCandidato.objects.get(candidato = vo.candidato)
            rcandidato.qfy += 1
            rcandidato.save()
        except ReporteCandidato.DoesNotExist:
            rcandidato = ReporteCandidato()
            rcandidato.campania = vo.campania
            rcandidato.candidato = vo.candidato
            rcandidato.qfy = 1
            rcandidato.save()
        
         
        try:       
            rciudad = ReporteCiudad.objects.get(ciudad = vo.candidato.ciudad)
            rciudad.qfy += 1
            rciudad.save()
        except ReporteCiudad.DoesNotExist:
            rciudad = ReporteCiudad()
            rciudad.campania = vo.campania
            rciudad.ciudad = vo.candidato.ciudad
            rciudad.qfy = 1
            rciudad.save()
       
            


        
    def procesarVoto(self, mo, s, c):
        comandos = mo.texto.split(' ')
        if len(comandos[0]) != 3:
            return 'Comando de ciudad invalido'
        try:
            #levanto comando para esa ciudad
            cc = CiudadComando.objects.get(nombre = comandos[0].upper())
        except CiudadComando.DoesNotExist:
            return 'Comando de ciudad invalido'
        else:
				#levante candidato comando
			try:
				comandos[1]
				if len(comandos[1]) != 3:
					return 'Comando de candidato invalido'
				try:
					cac = CandidatoComando.objects.get(ciudadComando = cc, nombre = comandos[1].upper())
				except CandidatoComando.DoesNotExist:
					return 'Comando de candidato invalido'
				else:
					#levanto candidato
					st  = Status()
					ca = Candidato.objects.get(id = cac.candidato.id)				
					s.estado = 'CF'
					s.campania = c
					s.usuario = mo.usuario
					s.candidato = ca
					s.save()
					
					#grabo historico
					st = Status()
					st.usuario = mo.usuario
					st.campania = c
					st.estado = 'CF'
					st.save()
					
					return 'Envia SI para confirmar la votacion en {0}'.format(c.nombre)
			except IndexError:
				return 'Envie comando de candidato para continuar'