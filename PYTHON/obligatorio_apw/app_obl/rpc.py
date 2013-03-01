class Rpc():
    def rpc(self, telefono):
        import xmlrpclib
        user = 'daw'
        pwd = 'daw-123'
        import hashlib
        m = hashlib.md5(pwd)
        pwd = m.hexdigest()
        server_url = 'http://%s:%s@marcelocaiafa.com/daw/rpc/' % (user, pwd)
        try:
            server = xmlrpclib.ServerProxy(server_url)
        #except xmlrpclib.Fault as err:
            #raise Exception(err.faultCode)
        #except xmlrpclib.ProtocolError as err:
            #raise Exceptio(err.errmsg)
        except Exception as e:
            raise Exception(e) 
        else:
            telefono = telefono
            return server.info(telefono)


            

