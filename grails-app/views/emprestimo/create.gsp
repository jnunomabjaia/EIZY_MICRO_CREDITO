<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'emprestimo.label', default: 'Emprestimo')}" />
    <%@ page import="microcredito.Cliente" %>

    <title>Registar Emprestimo</title>
</head>
<body>

<div class="row">
    <div class="col-md-6">
        <div class="main">
            <div class="container">
                <form id="signup-form" class="signup-form" action="salvar" method="POST">
                    <div>
                        <h3>Dados Pessoais</h3>
                        <fieldset>
                            <h4 class="wizzard-title"><i class="fa fa-user"></i>&nbsp;Dados Pessoais</h4>
                            <hr class="hr">
                            <div class="fieldset-content">
                                <div class="row margin-bottom">
                                    <div class="col-sm-6">
                                        <label class="form-label" for="apelido">Apelido</label>
                                        <input type="text" name="apelido" id="apelido"  class="form-control" value="Mac"/>
                                        <input type="hidden" name="codigo" id="codigo"  class="form-control" value="12342"/>
                                        <input type="hidden" name="testemunhas" id="testemunhas"  class="form-control" value="nanna"/>
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="form-label" for="nome">Nomes</label>
                                        <input type="text" name="nome" id="nome" class="form-control" value="Fader" />
                                    </div>
                                </div>
                                <div class="row  margin-bottom">
                                    <div class="col-sm-6">
                                        <label class="form-label" for="estadoCivil">Estado Civil</label>
                                        <g:select id="estadoCivil" name="estadoCivil" from="${Cliente.constrainedProperties.estadoCivil.inList}" class="form-control"/>
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="form-label" for="nomeConjuge">Nome do Cônjuge</label>
                                        <input type="text" name="nomeConjuge" id="nomeConjuge" class="form-control" value="Sabes como e" />
                                    </div>
                                </div>
                                <div class="row margin-bottom">
                                    <div class="col-sm-6">
                                        <label class="form-label" for="tipoDocumento">Tipo de Documento</label>
                                        <g:select id="tipoDocumento" name="tipoDocumento" optionKey="id" optionValue="descricao"
                                                  from="${tipoDocumentoList.list()}" class="form-control"/>
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="form-label" for="nrDocumento">Nº do Documento</label>
                                        <input type="text" name="nrDocumento" id="nrDocumento" class="form-control" value="1222222223"/>
                                    </div>
                                </div>
                                <div class="row margin-bottom">
                                    <div class="col-sm-4">
                                        <label class="form-label" for="localEmissao">Local de Emissão</label>
                                        <input type="text" name="localEmissao" id="localEmissao" class="form-control" value="Maputo" />
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="dataEmissao">Data de Emissão</label>
                                        <input type="date" name="dataEmissao" id="dataEmissao" class="form-control" />
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="dataValidade">Data de validade</label>
                                        <input type="date" name="dataValidade" id="dataValidade" class="form-control" />
                                    </div>
                                </div>
                                <div class="row margin-bottom">
                                    <div class="col-sm-6">
                                        <label class="form-label" for="tipoContrato">Tipo de Contrato</label>
                                        <input type="text" name="tipoContrato" id="tipoContrato" class="form-control" value="Tiposs" />
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="form-label" for="anoAdmissao">Ano de Admissão</label>
                                        <input type="text" name="anoAdmissao" id="anoAdmissao" class="form-control" value="2000" />
                                    </div>
                                </div>
                                <div class="row margin-bottom">
                                    <div class="col-sm-6">
                                        <label class="form-label" for="nrFihos">Número de Filhos</label>
                                        <input type="number" name="nrFihos" id="nrFihos" class="form-control" value="4" />
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="form-label" for="nrDependentes">Número de Dependentes</label>
                                        <input type="number" name="nrDependentes" id="nrDependentes" class="form-control" value="12" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>

                        <h3>Contacto e Endereço</h3>
                        <fieldset>
                            <h4 class="wizzard-title"><i class="fa fa-phone-square"></i>&nbsp;Contacto e Endereço</h4>
                            <hr class="hr">
                            <div class="fieldset-content">
                                <div class="row margin-bottom">
                                    <div class="col-sm-6">
                                        <label class="form-label" for="contacto1">Contacto</label>
                                        <input type="text" name="contacto1" id="contacto1"  class="form-control" value="12334"/>
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="form-label" for="contacto2">Contacto Opcional</label>
                                        <input type="text" name="contacto2" id="contacto2" class="form-control" value="434534" />
                                    </div>
                                </div>
                                <div class="row margin-bottom">
                                    <div class="col-sm-12">
                                        <label class="form-label" for="email">Email</label>
                                        <input type="text" name="email" id="email"  class="form-control" value="fader@gmail.com"/>
                                    </div>
                                </div>
                                <div class="row margin-bottom">
                                    <div class="col-sm-6">
                                        <label class="form-label" for="provincia">Província</label>
                                        <g:select id="provincia" name="provincia" optionKey="id"  optionValue="designacao"
                                                  from="${provinciaList}" class="form-control"/>
                                    </div>
                                    <div class="col-sm-6" id="div-Distrito">
                                        %{--<select id="distrito" name="distrito" class="form-control"></select>--}%
                                    </div>
                                </div>
                                <div class="row margin-bottom">
                                    <div class="col-sm-12">
                                        <label class="form-label" for="endereco">Endereço</label>
                                        <input type="text" name="endereco" id="endereco"  class="form-control" value="bairro polana case"/>
                                    </div>
                                </div>
                                <div class="row margin-bottom">
                                    <g:each var="inputt" in="${Cliente.constrainedProperties.tipoCasa.inList}">
                                        <div class="form-group col-md-4">
                                            <label class="form-label">
                                                <input type="radio" checked name="tipoCasa" value="${inputt}" class="flat-red">&nbsp;
                                                <g:if test="${inputt == 'Outra'}">
                                                    ${inputt}
                                                </g:if>
                                                <g:else>
                                                    Casa ${inputt}
                                                </g:else>
                                            </label>
                                        </div>
                                    </g:each>
                                </div>
                                %{--<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
                            </div>
                        </fieldset>
                        <h3>Empréstimo</h3>
                        <fieldset>
                            <h4 class="wizzard-title"><i class="fa fa-file"></i>&nbsp;Empréstimo</h4>
                            <hr class="hr">
                            <div class="fieldset-content">
                                <div class="row margin-bottom">
                                    <div class="col-sm-4">
                                        <label class="form-label" for="valorPedido">Valor Pretendido</label>
                                        <input type="text" name="valorPedido" id="valorPedido" class="form-control" value="1000" />
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="taxaJuros">Taxa de Juros</label>
                                        <input type="text" name="taxaJuros" id="taxaJuros" class="form-control" value="20"/>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="modalidadePagamento">Modo de Pagamento</label>
                                        <g:select id="modalidadePagamento" name="modalidadePagamento" optionKey="id"
                                                  optionValue="descricao" from="${modoPagamentoList}" class="form-control"/>
                                    </div>
                                </div>

                                <div class="row margin-bottom">
                                    <div class="col-sm-6">
                                        <label class="form-label" for="tipoNegocio">Tipo de Nogócio</label>
                                        <input type="text" name="tipoNegocio" id="tipoNegocio" class="form-control" />
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="form-label" for="localNegocio">Local de Nogócio</label>
                                        <input type="text" name="localNegocio" id="localNegocio" class="form-control" />
                                    </div>
                                </div>

                                <div class="row margin-bottom">
                                    <div class="col-sm-6 form-group">
                                        <label class="form-label" for="experienciaNegocio">Experiência no negócio actual</label>
                                        <input type="text" name="experienciaNegocio" id="experienciaNegocio" class="form-control" />
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label" for="destinoCredito">Destino do Crédito</label>
                                        <div class="row" style="padding-top: 4px" id="destinoCredito">
                                            <div class="col-sm-6">
                                                <label class="form-label">
                                                    <input checked type="radio" name="destinoCredito" value="Negocio" class="flat-red">&nbsp;Negocio
                                                </label>
                                            </div>
                                            <div class="col-sm-6">
                                                <label class="form-label">
                                                    <input type="radio" name="destinoCredito" value="Consumo" class="flat-red">&nbsp;Consumo
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row margin-bottom">
                                    <div class="col-sm-12">
                                        <label class="form-label" for="instituicoescredito">Crédito Em Outras Instituições</label>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <input type="checkbox" class="flat-red form-check" data-input="outroCredito">
                                            </span>
                                            <input type="text" name="instituicoescredito" id="instituicoescredito" class="form-control"
                                                   placeholder="Se sim, Indique os Nomes das Instituições"
                                            >
                                        </div>
                                    </div>
                                </div>

                                <div class="row margin-bottom">
                                    <div class="col-sm-9">
                                        <label class="form-label" for="bancos">Conta Bancária</label>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <input type="checkbox" class="flat-red form-check" data-input="instituicoesCredito">
                                            </span>
                                            <input type="text" id="bancos" name="bancos" class="form-control"
                                                   placeholder="Se sim, em que bancos">
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <label class="form-label" for="btn-testemunhas">&nbsp;</label>
                                        <button type="button" class="btn btn-default" style="width: 100%" id="btn-testemunhas">
                                            <i class="fa fa-users"></i>&nbsp;Testemunhas
                                        </button>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-success">Save</button>
                            </div>
                        </fieldset>

                        <h3>Garantia</h3>
                        <fieldset>
                             <h4 class="wizzard-title"><i class="fa fa-phone-square"></i>&nbsp;Garantia</h4>
                             <hr class="hr">
                             <div class="fieldset-content">
                                 <div class="row margin-bottom">
                                     <div class="col-sm-12">
                                         <label class="form-label" for="relacaoBens">Relação de bens</label>
                                         <input type="text" name="relacaoBens" id="relacaoBens" class="form-control" />
                                     </div>
                                 </div>
                             </div>
                         </fieldset>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <p>sadddddddddddd</p>
    </div>
</div>

<div class="modal fade" id="modal-testemunhas">
    <div class="modal-dialog">
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">  <i class="fa fa-users"></i>&nbsp;Testemunhas</h4>
            </div>
            <div class="modal-body">
                <span style="float:right">
                    <button id="but_add" class="btn btn-primary margin-bottom">
                        <i class="fa fa-plus"></i>&nbsp;Adicionar
                    </button>
                </span>
                <table class="table table-bordered" id="makeEditable">
                    <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Endereço</th>
                        <th>Contacto</th>
                        <th>Grau de Parantesco</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal"><i class="fa fa-save"></i>&nbsp;Salvar</button>
            </div>
        </div>
    </div>
</div>

<!-- JS -->
<asset:javascript src="jquery-3.3.1.slim.min.js"/>
%{--<asset:javascript src="bootstrap.min.js"/>--}%

<script type="text/javascript">
    $(document).ready(function () {

        // $('input[type=radio]:first').setAttribute('checked','checked');

        $('#btn-testemunhas').click(function () {
            $('#modal-testemunhas').modal({
                show:true, backdrop: "static"
            })
        });

        $('#makeEditable').SetEditable({ $addButton: $('#but_add')});

        $('#but_add').click(function () {
            var rowCount = $('#makeEditable >tbody >tr').length;
            if(rowCount === 1){
                $('#bEdit').trigger('click');
            }
        });

        /*buscar distritos de uma determinada provincia*/
        $('#provincia').on('change',function () {
            var provinciaId = $(this).val();
            $.ajax({
                method: 'POST',
                url: 'getDistrito', //metodo na controller
                data: {'id': provinciaId},
                success: function (data) {
                    $('#div-Distrito').html(data) //renderiza combo de distritos
                }
            });
        });
        $('#provincia').val($('#provincia').val()).trigger('change'); //prenche combo de distritos ao abrir a pagina
    })
</script>

</body>

</html>




















%{--<!DOCTYPE html>--}%
%{--<html>--}%
%{--<head>--}%
    %{--<meta name="layout" content="main" />--}%
    %{--<g:set var="entityName" value="${message(code: 'emprestimo.label', default: 'Emprestimo')}" />--}%
    %{--<title><g:message code="default.create.label" args="[entityName]" /></title>--}%
%{--</head>--}%
%{--<body>--}%
%{--<a href="#create-emprestimo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
%{--<div class="nav" role="navigation">--}%
    %{--<ul>--}%
        %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
        %{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
    %{--</ul>--}%
%{--</div>--}%
%{--<div id="create-emprestimo" class="content scaffold-create" role="main">--}%
    %{--<h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
    %{--<g:if test="${flash.message}">--}%
        %{--<div class="message" role="status">${flash.message}</div>--}%
    %{--</g:if>--}%
    %{--<g:hasErrors bean="${this.emprestimo}">--}%
        %{--<ul class="errors" role="alert">--}%
            %{--<g:eachError bean="${this.emprestimo}" var="error">--}%
                %{--<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>--}%
            %{--</g:eachError>--}%
        %{--</ul>--}%
    %{--</g:hasErrors>--}%
    %{--<p>Formulario</p>--}%
    %{--<g:form resource="${this.emprestimo}" method="POST">--}%
        %{--<fieldset class="form">--}%
            %{--<f:all bean="emprestimo"/>--}%
            %{--<g:select name="estado" from="${this.emprestimo.constrainedProperties.estado.inList}" value="${emprestimo?.estado}"/>--}%
        %{--</fieldset>--}%
        %{--<fieldset class="buttons">--}%
            %{--<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
        %{--</fieldset>--}%
    %{--</g:form>--}%
%{--</div>--}%
%{--</body>--}%
%{--</html>--}%


%{--<g:select id="tipo_casa" name="tipoCasa" from="${Cliente.constrainedProperties.tipoCasa.inList}" class="form-control"/>--}%