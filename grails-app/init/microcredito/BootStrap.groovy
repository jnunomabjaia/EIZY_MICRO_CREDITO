package microcredito

class BootStrap {

    def init = { servletContext ->
        //Registo de tipos de casa
        def tiposCasa =["Propria","Arrendada","Outro"]
        for(int i = TipoCasa.findAllByDescricaoInList(tiposCasa).size(); i < tiposCasa.size(); i++){
            new TipoCasa("descricao":tiposCasa.get(i)).save()
        }

        //Registo de Tipos de Destino de credito
        def listDestino =["Negocio","Consumo","Outro"]
        for(int i = DestinoCredito.findAllByDescricaoInList(listDestino).size(); i < listDestino.size(); i++){
            new DestinoCredito("descricao":listDestino.get(i)).save()
        }

        def listTipoDoc =["BI","Passaporte","DIRE"]
        for(int i = TipoDocumento.findAllByDescricaoInList(listTipoDoc).size(); i < listTipoDoc.size(); i++){
            new TipoDocumento("descricao":listTipoDoc.get(i)).save()
        }

        //Registo de tipos de Meio de pagameto
        def listMeioPagamento =["M-PESA","Conta Movel","POS"]
        for(int i = MeioPagamento.findAllByDescricaoInList(listMeioPagamento).size(); i < listMeioPagamento.size(); i++){
            new MeioPagamento("descricao":listMeioPagamento.get(i)).save()
        }

        // Registo de tipos de Prestacao
        def listTipoPestacao =["Renda Normal","Multa","Parcela","Taxa de Concessao"]
        for(int i = TipoPrestacao.findAllByDescricaoInList(listTipoPestacao).size(); i < listTipoPestacao.size(); i++){
            new TipoPrestacao("descricao":listTipoPestacao.get(i)).save()
        }

        //Registo de modalidades de pagamento
        def listModalidades =["Diaria","Semanal","Mensal"]
        def listDias =[1,7,30]
        for(int i = ModoPagamento.findAllByDescricaoInList(listModalidades).size(); i < listModalidades.size(); i++){
            new ModoPagamento("descricao":listModalidades.get(i),"nrDias":listDias.get(i)).save()
        }

        def listPerfil =["Developer"]
        for(int i = Perfil.findAllByDesignacaoInList(listPerfil).size(); i < listPerfil.size(); i++){
           new Perfil("designacao":listPerfil.get(i)).save()
        }
        new User("username":"Fader","password":123456,"perfil":Perfil.get(1)).save()

        //Registo de Tipos de garantia
        def listTipoGarantia =["Carro","Congelador","Geleira","Televisao"]
        for(int i = TipoGarantia.findAllByDescricaoInList(listTipoGarantia).size(); i < listTipoGarantia.size(); i++){
            new TipoGarantia("descricao":listTipoGarantia.get(i),"dataRegisto":new Date(),'dataModif':new Date(),
                      "userRegisto":User.get(1),"userModif": User.get(1)
            ).save()
        }
    }
    def destroy = {

    }
}