<div class="nav-tabs-custom box box-primary m-0">
    <!-- Tabs within a box -->
    <ul class="nav nav-tabs pull-right" style="background-color: #ecf0f5">
        <li>
            <a class="btn btn-info btn-sm" title="Fechar" data-dismiss="modal" aria-label="Close"><i class="fa fa-times text-red"></i></a>
        </li>
        <li><a href="#contacto-endereco" data-toggle="tab"><i class="fa fa-phone"></i>&nbsp;Contacto & Endereço</a></li>
        <li class="active"><a href="#dados-pessoas" data-toggle="tab"><i class="fa fa-user"></i>&nbsp;Dados Pessoais</a></li>
        <li class="pull-left header wizzard-title"><i class="fa fa-pencil"></i> Adicionar Avalista</li>
    </ul>
    <div class="tab-content" style="background-color: transparent">
        <div class="tab-pane active p-3" id="dados-pessoas" >
            <div class="row margin-bottom">
                <div class="col-sm-6">
                    <label class="form-label" for="nome">Nome Completo</label>
                    <input type="text" name="nomeCompleto" id="nome" class="form-control">
                    <input type="hidden" name="codigo" id="codigo"  class="form-control" value="12342">
                </div>

                <div class="col-sm-3">
                    <label class="form-label" for="estadoCivil">Estado Civil</label>
                    <g:select  class="form-control select" id="estadoCivil" name="estadoCivil"
                               from="${cliente.constrainedProperties.estadoCivil.inList}"
                    />
                </div>

                <div class="col-sm-3">
                    <label class="form-label" for="nomeConjuge">Nome do Cônjuge</label>
                    <input type="text" name="nomeConjuge" id="nomeConjuge" class="form-control"/>
                </div>
            </div>
            <div class="row  margin-bottom">
                <div class="col-sm-3">
                    <label class="form-label" for="tipoDocumento">Tipo de Documento</label>
                    <g:select id="tipoDocumento" name="tipoDocumento" optionKey="id" optionValue="descricao"
                              from="${tipoDocumentoList.list()}" class="form-control select"
                    />
                </div>
                <div class="col-sm-3">
                    <label class="form-label" for="nrDocumento">Número do Documento</label>
                    <input type="text" name="nrDocumento" id="nrDocumento" class="form-control"/>
                </div>
                <div class="col-sm-3">
                    <label class="form-label" for="localEmissao">Local de Emissão</label>
                    <input type="text" name="localEmissao" id="localEmissao" class="form-control"/>
                </div>
                <div class="col-sm-3">
                    <label class="form-label" for="dataEmissao">Data de Emissão</label>
                    <input type="date" name="dataEmissao" id="dataEmissao" class="form-control select data-hoje" />
                </div>
            </div>
            <div class="row margin-bottom">
                <div class="col-sm-3">
                    <label class="form-label" for="dataValidade">Data de validade</label>
                    <input type="date" name="dataValidade" id="dataValidade" class="form-control select data-hoje" />
                </div>
                <div class="col-sm-3">
                    <label class="form-label" for="tipoContrato">Tipo de Contrato de Trabaho</label>
                    <input type="text" name="tipoContrato" id="tipoContrato" class="form-control" value="Tiposs" />
                </div>

                <div class="col-sm-6">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="form-label" for="anoAdmissao">Ano de Admissão</label>
                            <input type="text" name="anoAdmissao" id="anoAdmissao" class="form-control anoAdmissao"/>
                        </div>
                        <div class="col-sm-4">
                            <label class="form-label" for="nrDependentes">Nº de Dependentes</label>
                            <input type="number" name="nrDependentes" id="nrDependentes" class="form-control"/>
                        </div>
                        <div class="col-sm-4">
                            <label class="form-label" for="nrFihos">Nº de Filhos</label>
                            <input type="number" name="nrFihos" id="nrFihos" class="form-control"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane p-3" id="contacto-endereco">
            <div class="row margin-bottom">
                <div class="col-sm-6">
                    <div class="row">
                        <div class="col-sm-6">
                            <label class="form-label" for="contacto1">Contacto</label>
                            <input type="text" name="contacto1" id="contacto1"  class="form-control contacto" >
                        </div>
                        <div class="col-sm-6">
                            <label class="form-label" for="contacto2">Contacto Opcional</label>
                            <input type="text" name="contacto2" id="contacto2" class="form-control contacto"/>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6">
                    <label class="form-label" for="email">Email</label>
                    <input type="email" name="email" id="email"  class="form-control select"/>
                </div>
            </div>

            <div class="row margin-bottom">
                <div class="col-sm-3">
                    <label class="form-label" for="provinciaAvalista">Província</label>
                    <g:select id="provinciaAvalista" name="provinciaAvalista" optionKey="id"  optionValue="designacao"
                              from="${provinciaList}" class="form-control select provincia" data-div="div-Distrito-2"/>
                </div>
                <div class="col-sm-3" id="div-Distrito-2">
                    %{--<select id="distrito" name="distrito" class="form-control"></select>--}%
                </div>

                <div class="col-sm-3">
                    <label class="form-label" for="amplitude">Amplitude</label>
                    <input type="text" id="amplitude" name="amplitude"   class="form-control">
                </div>

                <div class="col-sm-3">
                    <label class="form-label" for="longitude">Longitude</label>
                    <input type="text" name="longitude" id="longitude"  class="form-control">
                </div>
            </div>
            <div class="row margin-bottom">
                <div class="col-sm-9">
                    <label class="form-label" for="endereco">Morada</label>
                    <input type="text" name="endereco" id="endereco"  class="form-control" value="bairro polana case">
                </div>
                <div class="col-sm-3">
                    <label class="form-label" for="tipoCasa">Casa</label>
                    <g:select id="tipoCasa" name="tipoCasa" optionKey="descricao"  optionValue="descricao"
                              from="${tipoCasaList}" class="form-control select"
                    />
                </div>
            </div>
        </div>
    </div>
</div>

%{--<script type="text/javascript">--}%
    %{--$(document).ready(function () {--}%
        %{--$('#distrito').selectpicker()--}%
    %{--});--}%
%{--</script>--}%