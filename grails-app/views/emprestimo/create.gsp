%{--<%@ page import="microcredito.Cliente" %>--}%
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
                <form method="POST" id="signup-form" class="signup-form" action="#">
                 <div>
                    <h3>Dados Pessoais</h3>
                    <fieldset>
                        <h4 class="wizzard-title"><i class="fa fa-user"></i>&nbsp;Dados Pessoais</h4>
                        <hr class="hr">
                        <div class="fieldset-content">
                            <div class="row margin-bottom">
                                <div class="col-sm-6">
                                    <label class="form-label" for="apelido">Apelido</label>
                                    <input type="text" name="" id="apelido"  class="form-control"/>
                                </div>
                                <div class="col-sm-6">
                                    <label class="form-label" for="nome">Nomes</label>
                                    <input type="text" name="" id="nome" class="form-control" />
                                </div>
                            </div>
                            <div class="row  margin-bottom">
                                <div class="col-sm-6">
                                    <label class="form-label" for="estado_civil">Estado Civil</label>
                                    <select id="estado_civil" name="estado_civil" class="form-control">
                                        <option value="solteiro">Solteiro</option>
                                        <option value="casado">Casado</option>
                                    </select>
                                </div>
                                <div class="col-sm-6">
                                    <label class="form-label" for="nome_conjuge">Nome do Cônjuge</label>
                                    <input type="text" name="nome_conjuge" id="nome_conjuge" class="form-control" />
                                </div>
                            </div>
                            <div class="row margin-bottom">
                                <div class="col-sm-6">
                                    <label class="form-label" for="tipo_documento">Tipo de Documento</label>
                                    <select id="tipo_documento" name="tipo_documento" class="form-control">
                                        <option value="solteiro">BI</option>
                                        <option value="casado">Passporte</option>
                                    </select>
                                </div>
                                <div class="col-sm-6">
                                    <label class="form-label" for="nr_documento">Nº do Documento</label>
                                    <input type="text" name="" id="nr_documento" class="form-control" />
                                </div>
                            </div>
                            <div class="row margin-bottom">
                                <div class="col-sm-4">
                                    <label class="form-label" for="local_emissao">Local de Emissão</label>
                                    <input type="text" name="local_emissao" id="local_emissao" class="form-control" />
                                </div>
                                <div class="col-sm-4">
                                    <label class="form-label" for="data_emissao">Data de Emissão</label>
                                    <input type="text" name="data_emissao" id="data_emissao" class="form-control" />
                                </div>
                                <div class="col-sm-4">
                                    <label class="form-label" for="local_emissao">Data de validade</label>
                                    <input type="text" name="local_emissao" id="data_validade" class="form-control" />
                                </div>
                            </div>
                            <div class="row margin-bottom">
                                <div class="col-sm-6">
                                    <label class="form-label" for="tipo_contrato">Tipo de Contrato</label>
                                    <input type="text" name="tipo_contrato" id="tipo_contrato" class="form-control" />
                                </div>
                                <div class="col-sm-6">
                                    <label class="form-label" for="ano_admissao">Ano de Admissão</label>
                                    <input type="text" name="ano_admissao" id="ano_admissao" class="form-control" />
                                </div>
                            </div>
                            <div class="row margin-bottom">
                                <div class="col-sm-6">
                                    <label class="form-label" for="nr_fihos">Número de Filhos</label>
                                    <input type="number" name="nr_fihos" id="nr_fihos" class="form-control" />
                                </div>
                                <div class="col-sm-6">
                                    <label class="form-label" for="nr_dependentes">Número de Dependentes</label>
                                    <input type="number" name="nr_dependentes" id="nr_dependentes" class="form-control" />
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
                                    <input type="text" name="contacto1" id="contacto1"  class="form-control"/>
                                </div>
                                <div class="col-sm-6">
                                    <label class="form-label" for="contacto2">Contacto Opcional</label>
                                    <input type="text" name="contacto2" id="contacto2" class="form-control" />
                                </div>
                            </div>
                            <div class="row margin-bottom">
                                <div class="col-sm-12">
                                    <label class="form-label" for="email">Email</label>
                                    <input type="text" name="email" id="email"  class="form-control"/>
                                </div>
                            </div>
                            <div class="row margin-bottom">
                                <div class="col-sm-6">
                                    <label class="form-label" for="provincia">Província</label>
                                    <select id="provincia" class="form-control"></select>
                                </div>
                                <div class="col-sm-6">
                                    <label class="form-label" for="selectDistrito">Distrito</label>
                                    <select id="selectDistrito" class="form-control"></select>
                                    <input type="hidden" name="distrito_id" id="distrito_id" class="form-control" />
                                </div>
                            </div>
                            <div class="row margin-bottom">
                                <div class="col-sm-12">
                                    <label class="form-label" for="endereco">Endereço</label>
                                    <input type="text" name="endereco" id="endereco"  class="form-control"/>
                                </div>
                            </div>
                            <div class="row margin-bottom">
                                <g:each var="inputt" in="${Cliente.constrainedProperties.tipoCasa.inList}">
                                    <div class="form-group col-md-4">
                                        <label class="form-label">
                                            <input type="radio" name="tipoCasa" value="${inputt}" class="flat-red">&nbsp;
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
                        </div>
                    </fieldset>

                    <h3>Empréstimo</h3>
                    <fieldset>
                        <h4 class="wizzard-title"><i class="fa fa-file"></i>&nbsp;Empréstimo</h4>
                        <hr class="hr">
                        <div class="fieldset-content">
                            <div class="row margin-bottom">
                                <div class="col-sm-4">
                                    <label class="form-label" for="valor_pedido">Valor Pretendido</label>
                                    <input type="text" name="valor_pedido" id="valor_pedido" class="form-control" />
                                </div>
                                <div class="col-sm-4">
                                    <label class="form-label" for="taxa_juros">Taxa de Juros</label>
                                    <input type="text" name="taxa_juros" id="taxa_juros" class="form-control" />
                                </div>
                                <div class="col-sm-4">
                                    <label class="form-label" for="modo_pagamento">Modo de Pagamento</label>
                                    <input type="text" name="modo_pagamento" id="modo_pagamento" class="form-control" />
                                </div>
                            </div>

                            <div class="row margin-bottom">
                                <div class="col-sm-6">
                                    <label class="form-label" for="tipo_negocio">Tipo de Nogócio</label>
                                    <input type="text" name="tipo_negocio" id="tipo_negocio" class="form-control" />
                                </div>
                                <div class="col-sm-6">
                                    <label class="form-label" for="local_negocio">Local de Nogócio</label>
                                    <input type="text" name="local_negocio" id="local_negocio" class="form-control" />
                                </div>
                            </div>

                            <div class="row margin-bottom">
                                <div class="col-sm-6 form-group">
                                    <label class="form-label" for="experiencia_negocio">Experiência no negócio actual</label>
                                    <input type="text" name="experiencia_negocio" id="experiencia_negocio" class="form-control" />
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label" for="experiencia_negocio">Destino do Crédito</label>
                                    <div class="row" style="padding-top: 4px">
                                        <div class="col-sm-6">
                                            <label class="form-label">
                                                <input type="radio" name="destino" value="" class="flat-red">&nbsp;Negocio
                                            </label>
                                        </div>
                                        <div class="col-sm-6">
                                            <label class="form-label">
                                                <input type="radio" name="destino" value="" class="flat-red">&nbsp;Consumo
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row margin-bottom">
                                <div class="col-sm-12">
                                    <label class="form-label" for="outroCredito">Crédito Em Outras Instituições</label>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <input type="checkbox" class="flat-red form-check" data-input="outroCredito">
                                        </span>
                                        <input type="text" name="outroCredito" id="outroCredito" class="form-control" placeholder="Se sim, Indique os Nomes das Instituições">
                                    </div>
                                </div>
                            </div>

                            <div class="row margin-bottom">
                                <div class="col-sm-9">
                                    <label class="form-label" for="instituicoesCredito">Conta Bancária</label>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <input type="checkbox" class="flat-red form-check" data-input="instituicoesCredito">
                                        </span>
                                        <input type="text" id="instituicoesCredito" name="instituicoesCredito" class="form-control"
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
        // alert('')
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
        })
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