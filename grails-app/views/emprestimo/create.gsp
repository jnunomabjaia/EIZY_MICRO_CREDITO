<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'emprestimo.label', default: 'Emprestimo')}" />
    <title>Registar Emprestimo</title>
</head>
<body>

<div class="row">
    <div class="col-md-12">
        %{--<div class="main">--}%
            <div class="container">
                <form id="signup-form" class="signup-form" autocomplete="off" enctype="multipart/form-data">
                    <input type="hidden" name="codigo" id="codigo"  class="form-control" value="12342">
                    <g:hiddenField name="testemunhas" id="testemunhas"/>
                    <g:hiddenField name="idCliente" id="idCliente" value="0"/>
                    <div>
                        <h3>Dados Pessoais</h3>
                        <fieldset id="fieldset-cliente">
                            <h4 class="wizzard-title"><i class="fa fa-user"></i>&nbsp;Dados Pessoais</h4>
                            <hr class="hr">
                            <div class="fieldset-content">
                                <div class="row margin-bottom">
                                    <div class="col-sm-6 pr-0">
                                        <label class="form-label" for="nomeCompleto">Nome Completo</label>
                                        <div class="input-group">
                                            <div class="has-feedback has-clear">
                                                <input type="text" class="form-control" id="nomeCompleto" name="nomeCompleto" required>
                                                <span id="clear-nomeCompleto" class="form-control-feedback fa fa-times"
                                                    title="Limpar campo">
                                                </span>
                                            </div>
                                            <div class="input-group-btn">
                                                <button type="button" class="btn btn-default btn-open-modal"
                                                        title="Selecionar Cliente ja Existente"
                                                        data-modal="modal-cliente">Add
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="row">
                                            <div class="col-sm-6 pr-0">
                                                <label class="form-label" for="tipoDocumento">Tipo de Documento</label>
                                                <g:select id="tipoDocumento" name="tipoDocumento" optionKey="id" optionValue="descricao"
                                                          from="${tipoDocumentoList.list()}" class="form-control select"
                                                />
                                            </div>
                                            <div class="col-sm-6">
                                                <label class="form-label" for="nrDocumento">Nº do Documento</label>
                                                <input type="text" name="nrDocumento" id="nrDocumento" class="form-control"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row margin-bottom">
                                    <div class="col-sm-6 pr-0">
                                        <label class="form-label" for="localEmissao">Local de Emissão</label>
                                        <input type="text" name="localEmissao" id="localEmissao" class="form-control"/>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="row">
                                            <div class="col-sm-6 pr-0">
                                                <label class="form-label" for="dataEmissao">Data de Emissão</label>
                                                <input type="date" name="dataEmissao" id="dataEmissao" class="form-control select data-hoje" />
                                            </div>
                                            <div class="col-sm-6">
                                                <label class="form-label" for="dataValidade">Data de validade</label>
                                                <input type="date" name="dataValidade" id="dataValidade" class="form-control select data-hoje" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row  margin-bottom">
                                    <div class="col-sm-6">
                                        <div class="row">
                                            <div class="col-sm-6 pr-0">
                                                <label class="form-label" for="nrDependentes">Nº de Dependentes</label>
                                                <input type="number" name="nrDependentes" id="nrDependentes" class="form-control"/>
                                            </div>
                                            <div class="col-sm-6 pr-0">
                                                <label class="form-label" for="estadoCivil">Estado Civil</label>
                                                <g:select  class="form-control select" id="estadoCivil" name="estadoCivil"
                                                           from="${cliente.constrainedProperties.estadoCivil.inList}"
                                                />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <label class="form-label" for="nomeConjuge">Nome do Cônjuge</label>
                                        <input type="text" name="nomeConjuge" id="nomeConjuge" class="form-control"/>
                                    </div>
                                </div>
                                <div class="row margin-bottom">
                                    <div class="col-sm-6">
                                        <div class="row">
                                            <div class="col-sm-6 pr-0">
                                                <label class="form-label" for="nrFihos">Nº de Filhos</label>
                                                <input type="number" name="nrFihos" id="nrFihos" class="form-control"/>
                                            </div>

                                            <div class="col-sm-6 pr-0">
                                                <label class="form-label" for="anoAdmissao">Ano de Admissão</label>
                                                <input type="text" name="anoAdmissao" id="anoAdmissao" class="form-control anoAdmissao" title="Ano de admissao no trabalho"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="form-label" for="tipoContrato">Tipo de Contrato de Trabaho</label>
                                        <input type="text" name="tipoContrato" id="tipoContrato" class="form-control"/>
                                    </div>
                                </div>
                            </div>
                        </fieldset>

                        <h3>Contacto e Endereço</h3>
                        <fieldset id="fieldset-cont-endereco">
                            <h4 class="wizzard-title"><i class="fa fa-phone-square"></i>&nbsp;Contacto e Endereço</h4>
                            <hr class="hr">
                            <div class="fieldset-content">

                                <div class="row margin-bottom">
                                    <div class="col-sm-3 pr-0">
                                        <label class="form-label" for="contacto1">Contacto</label>
                                        <input type="text" name="contacto1" id="contacto1" class="form-control contacto">
                                    </div>

                                    <div class="col-sm-3 pr-0">
                                        <label class="form-label" for="contacto2">Contacto Opcional</label>
                                        <input type="text" name="contacto2" id="contacto2" class="form-control contacto"/>
                                    </div>

                                    <div class="col-sm-6">
                                        <label class="form-label" for="email">Email</label>
                                        <input type="email" name="email" id="email" class="form-control select"/>
                                    </div>
                                </div>

                                <div class="row margin-bottom">
                                    <div class="col-sm-6">
                                        <div class="row margin-bottom">
                                            <div class="col-sm-6 pr-0">
                                                <label class="form-label" for="provincia">Província</label>
                                                <g:select id="provincia" name="provincia" optionKey="id"  optionValue="designacao"
                                                          from="${provinciaList}" class="form-control select provincia" data-div="div-distrito-1"/>
                                            </div>
                                            <div class="col-sm-6 pr-0" id="div-distrito-1"></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12 pr-0">
                                                <label class="form-label" for="endereco">Morada</label>
                                                <textarea rows="5" class="form-control select" name="endereco" id="endereco">

                                                </textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="row">
                                            <div class="col-sm-12 margin-bottom">
                                                <label class="form-label" for="tipoCasa">Casa</label>
                                                <g:select id="tipoCasa" name="tipoCasa" optionKey="descricao"  optionValue="descricao"
                                                          from="${tipoCasaList}" class="form-control select"
                                                />
                                            </div>

                                            <div class="col-sm-12 margin-bottom">
                                                <label class="form-label" for="amplitude">Amplitude</label>
                                                <input type="text" id="amplitude" name="amplitude"   class="form-control">
                                            </div>

                                            <div class="col-sm-12 mb-5">
                                                <label class="form-label" for="longitude">Longitude</label>
                                                <input type="text" name="longitude" id="longitude"  class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>

                        <h3>Empréstimo</h3>
                        <fieldset>
                            <h4 class="wizzard-title"><i class="fa fa-file"></i>&nbsp;Empréstimo</h4>
                            <hr class="hr">
                            <div class="fieldset-content">
                                <div class="row margin-bottom">
                                    <div class="col-sm-3 pr-0">
                                        <label class="form-label" for="valorPedido">Valor Pretendido</label>
                                        <input type="text" name="valorPedido" id="valorPedido" class="form-control" required />
                                    </div>
                                    <div class="col-sm-3 pr-0">
                                        <label class="form-label" for="taxaJuros">Taxa de Juros (%)</label>
                                        <input type="text" min="0" max="100" name="taxaJuros" id="taxaJuros" class="form-control"/>
                                    </div>
                                    <div class="col-sm-3 pr-2">
                                        <label class="form-label" for="valorApagar">Valor a Pagar</label>
                                        <input type="text" readonly name="valorApagar" id="valorApagar" class="form-control"/>
                                    </div>
                                    <div class="col-sm-3 pl-3">
                                        <label class="form-label" for="modoPagamento">Modo de Pagamento</label>
                                        <g:select id="modoPagamento" name="modoPagamento" optionKey="descricao"
                                                  optionValue="descricao" from="${modoPagamentoList}" class="form-control select"
                                        />
                                    </div>
                                </div>

                                <div class="row margin-bottom">
                                    <div class="col-sm-3 pr-0">
                                        <label class="form-label" for="nrPrestacoes">Numero de Prestações</label>
                                        %{--<input type="number" name="nrPrestacoes" id="nrPrestacoes" class="form-control input-valor" value="1" min="1" max="13"/>--}%
                                        <input type="number" name="nrPrestacoes" id="nrPrestacoes" class="form-control input-valor"/>
                                    </div>
                                    <div class="col-sm-3 pr-0">
                                        <label class="form-label" for="valorPorPrestacao">Valor Por Prestação</label>
                                        <input readonly type="text" name="valorPorPrestacao" id="valorPorPrestacao" class="form-control" title="Valor a pagar por prestação" />
                                    </div>
                                    <div class="col-sm-3 pr-2">
                                        <label class="form-label" for="dataInicioPagamento">Inicio de Pagamento</label>
                                        <input  type="date" name="dataInicioPagamento" id="dataInicioPagamento" class="form-control select"/>
                                    </div>
                                    <div class="col-md-3 pl-3">
                                        <label class="form-label" for="destinoCredito">Destino do Crédito</label>
                                        <g:select id="destinoCredito" name="destinoCredito" optionKey="descricao"  optionValue="descricao"
                                                  from="${destinoCreditoList}" class="form-control select"/>
                                    </div>
                                </div>

                                <div class="row margin-bottom">
                                    <div class="col-sm-4">
                                        <label class="form-label" for="tipoNegocio">Tipo de Nogócio</label>
                                        <input type="text" name="tipoNegocio" id="tipoNegocio" class="form-control"/>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="localNegocio">Local do Nogócio</label>
                                        <input type="text" name="localNegocio" id="localNegocio" class="form-control"/>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="experienciaNegocio">Profissão</label>
                                        <input type="text" name="experienciaNegocio" title="Experiencia no negocio actual" id="experienciaNegocio" class="form-control" />
                                    </div>
                                </div>

                                <div class="row margin-bottom">
                                    <div class="col-sm-6">
                                        <label class="form-label" for="instituicoescredito">Crédito Em Outras Instituições</label>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <input data-id="outroCredito" type="checkbox" class="flat-red form-check" data-input="instituicoescredito">
                                            </span>
                                            <input type="text" name="instituicoescredito" id="instituicoescredito" class="form-control"
                                                   placeholder="Nomes das Instituições">
                                        </div>
                                        <input type="hidden" id="outroCredito" name="outroCredito">
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="form-label" for="bancos">Conta Bancária</label>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <input data-id="contaBancaria" type="checkbox" class="flat-red form-check" data-input="bancos">
                                            </span>
                                            <input type="text" id="bancos" name="bancos" class="form-control" placeholder="Em que bancos">
                                        </div>
                                        <input type="hidden" id="contaBancaria" name="contaBancaria">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6" id="div-avalista">
                                        <g:render template="/cliente/avalistaCombo"/>
                                    </div>
                                    <div class="col-sm-6 ">
                                        <label class="form-label" for="btn-testemunhas">&nbsp;</label>
                                        <button type="button" class="btn btn-warning pl-0 btn-open-modal" data-modal="modal-testemunhas"style="width: 100%" id="btn-testemunhas" title="Adicionar Testemunhas">
                                            <i class="fa fa-users"></i>&nbsp;Testemunhas
                                        </button>
                                    </div>
                                </div>
                            </div>
                            %{--<button type="submit" class="btn btn-success">Save</button>--}%
                        </fieldset>

                        <h3>Garantia</h3>
                        <fieldset>
                             <h4 class="wizzard-title"><i class="fa fa-phone-square"></i>&nbsp;Garantia</h4>
                             <hr class="hr">
                             <div class="fieldset-content">
                                 <div class="row margin-bottom">
                                     <div class="col-sm-12">
                                         <label class="form-label" for="relacaoBens">Relação de bens</label>
                                         <textarea name="relacaoBens" id="relacaoBens" class="form-control select" rows="3">
                                         </textarea>
                                     </div>
                                 </div>

                                 <div class="row" id="div-garantias">
                                     %{--as divs de garantias estarao aqui--}%
                                 </div>
                                 <input type="hidden" id="nrGarantias" name="nrGarantias">
                             </div>
                        </fieldset>
                    </div>
                </form>
            </div>
        %{--</div>--}%
    </div>
</div>

<div class="modal fade" id="modal-cliente">
    <div class="vertical-alignment-helper">
        <div class="modal-dialog vertical-align-center">
            <div class="modal-content" style="border-radius: 5px; width: 35%">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <label class="form-label" for="clienteSelecionado">Selecione o Cliente</label>
                            <g:select id="clienteSelecionado" name="clienteSelecionado" optionKey="id"  optionValue="nome"
                                      from="${cliente.list()}" class="form-control select2" data-size="13" style="width: 100%"
                            />
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger pull-left" data-dismiss="modal">Cancelar</button>
                    <button type="button" class="btn btn-success" id="btn-select-cliente"><i class="fa fa-save"></i>&nbsp;Salvar</button>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal-avalista">
    <div class="vertical-alignment-helper">
        <div class="modal-dialog vertical-align-center">
            <div class="modal-content" style="border-radius: 5px">
                <div class="modal-body m-0 p-0" id="avalista-corpo">
                    <form id="form-avalista">
                        <g:render template="/cliente/avalista"/>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger pull-left" data-dismiss="modal" id="btn-cancel-avalista">Cancelar</button>
                    <button type="button" class="btn btn-success" id="btn-save-avalista"><i class="fa fa-save"></i>&nbsp;Salvar</button>
                </div>
            </div>
        </div>
    </div>
</div>

%{--modal de testemunha--}%
<div class="modal fade" id="modal-testemunhas">
    <div class="vertical-alignment-helper">
        <div class="modal-dialog vertical-align-center">
            <div class="modal-content modal-lg centered">
                <div class="modal-body">
                    <h4 class="modal-title">  <i class="fa fa-users"></i>&nbsp;Testemunhas
                        <span style="float:right">
                            <button id="but_add" class="btn btn-primary margin-bottom">
                                <i class="fa fa-plus"></i>&nbsp;Adicionar
                            </button>
                        </span>
                    </h4>
                    <table class="table table-bordered" id="tabelaTestemunha">
                        <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Endereco</th>
                            <th>Contacto</th>
                            <th>Grau_de_Parentesco</th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger pull-left" data-dismiss="modal">Cancelar</button>
                    <button type="button" class="btn btn-success" data-dismiss="modal" id="btn-saveTestemunhas"><i class="fa fa-save"></i>&nbsp;Salvar</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- JS -->
<asset:javascript src="jquery-3.3.1.slim.min.js"/>
%{--<asset:javascript src="bootstrap.min.js"/>--}%

<script type="text/javascript">
    $(document).ready(function () {
        $('.select2').select2();
        // $('#nomeCompleto').editableSelect();
        $('#caminho').append('<li><a href="/emprestimo">Emprestimo</a></li><li><a href="/emprestimo/create">Registar</a></li>');

        $.fn.inputFilter = function(inputFilter) {
            return this.on("input keydown keyup mousedown mouseup select contextmenu drop", function() {
                if (inputFilter(this.value)) {
                    this.oldValue = this.value;
                    this.oldSelectionStart = this.selectionStart;
                    this.oldSelectionEnd = this.selectionEnd;
                } else if (this.hasOwnProperty("oldValue")) {
                    this.value = this.oldValue;
                    this.setSelectionRange(this.oldSelectionStart, this.oldSelectionEnd);
                }
            });
        };

        $('.btn-open-modal').click(function () {               //open testemunhas pop-up
            $('#'+$(this).attr('data-modal')).modal({
                show:true, backdrop: "static"
            })
        });


        $('#btn-select-cliente').click(function () {
            clienteSelecionado = $('#clienteSelecionado option:selected').text();
            clienteSelecionadoID = $('#clienteSelecionado').val();
            $('#idCliente').val(clienteSelecionadoID);                          //guarda id do cliente selecionado no hidden input
            $('#nomeCompleto').val(clienteSelecionado);                         //poe o nome do cliente selecionado no input
            $('#nomeCompleto').prop('readOnly',true);                           //desabilita campo
            // for(i=0;i<2;i++){$('.actions ul li:nth-child(2) a').trigger('click');}
            $('#modal-cliente').modal('toggle');
            $('#fieldset-cliente > .fieldset-content > input').prop('readOnly',true);
            $('#nomeCompleto').trigger('propertychange');               //dispara para aparecer btn-clear
        });

        $('#nomeCompleto').on('input propertychange',function () {
            var visible = Boolean($(this).val());
            $(this).siblings('#clear-nomeCompleto').toggleClass('hidden', !visible);
        }).trigger('propertychange');

        $('#clear-nomeCompleto').click(function () {
            $(this).siblings('input[type="text"]').val('').trigger('propertychange').focus();   //limpa o testo

            if(parseInt($('#idCliente').val()) !== 0){                                      //quando ja foi selecionado um cliente antes
                console.log('limpa cliente selected');
            $('#idCliente').val(0);                                                         //esvazia o input id do cliente
                $('#nomeCompleto').removeAttr('readOnly');                                  //abilita o input
            }
        });

        $('#tabelaTestemunha').SetEditable({ $addButton: $('#but_add')}); //habilita tabela de testemunhas para que seja editevel

        $('#but_add').click(function () {
            var rowCount = $('#tabelaTestemunha >tbody >tr').length;
            if(rowCount === 1){
                $('#bEdit').trigger('click');
            }
        });

        $('#btn-saveTestemunhas').click(function () {
            var myRows = [];
            var headersText = [];
            var $headers = $("th");

            $("#tabelaTestemunha tbody tr").each(function(index) {
                $cells = $(this).find("td:not(:last-child)");           //excluiu a ulmina coluna prk contem buttons
                myRows[index] = {};

                $cells.each(function(cellIndex) {
                    if(headersText[cellIndex] === undefined) { // Set the header text
                        headersText[cellIndex] = $($headers[cellIndex]).text();
                    }
                    myRows[index][headersText[cellIndex]] = $(this).text();
                });
            });

            var rowCount = $('#tabelaTestemunha >tbody >tr').length;
            if(rowCount >=1) {
                $('#testemunhas').val(JSON.stringify(myRows)); //prenche o input de testemunhas com dados da tabela no formato JSON
            }
            // alert(JSON.stringify(myRows));
        });

        /*buscar distritos de uma determinada provincia*/
        $('.provincia').on('change',function () {
            var provinciaId = $(this).val();
            var div = $(this).attr('data-div');
            $.ajax({
                method: 'POST',
                url: 'getDistrito', //metodo na controller
                data: {'id': provinciaId},
                success: function (data) {
                    $('#'+div).html(data); //renderiza combo de distritos
                    $('select').selectpicker();
                }
            });
        });
        $('.provincia').val($('.provincia').first().val()).trigger('change'); //prenche combo de distritos ao abrir a pagina

        /*credito em outras instituicoes e conta bancaria*/
        $('.form-check').on('ifChanged',function () {
            var value = $(this).iCheck('update')[0].checked; //verica o check se esta selecioonado ou nao e retorna o valor[true|false]
            $("#"+$(this).attr('data-id')).val(value); //poe o valor no input boolean
            if(value){
                $("#"+$(this).attr('data-input')).removeAttr('readonly') //habilita input
            }else{
                $("#"+$(this).attr('data-input')).prop('readonly',true) //desabiita input
            }
        });
        $('.form-check').trigger('ifChanged'); //inicializar os checks

        $('.input-valor').on('input',function () {
            calculoValorApagar()
        });

        $("#valorPedido").inputFilter(function(value) {
            calculoValorApagar();
            return /^\d*$/.test(value) && (value === "" || value.length <= 20);
        });
        $("#taxaJuros").inputFilter(function(value) {
            calculoValorApagar();
            return /^\d*$/.test(value) && (value === "" || parseInt(value) <= 100);
        });

        function calculoValorApagar() {
            valorPedido = $('#valorPedido').val();
            percent = $('#taxaJuros').val()/100; // valor em percentagem
            if(valorPedido === ''){
                $('#valorApagar').val("");
                $('#valorPorPrestacao').val("");
                return
            }
            valorApagar = parseFloat(valorPedido)+ parseFloat(valorPedido*percent); // calculo de valor total a pagar
            $('#valorApagar').val(valorApagar.toFixed(2));

            /*valor por gpagar*/
            nrPrestacoes = $('#nrPrestacoes').val();
            valorPorPrestacao = valorApagar/nrPrestacoes;                //caculo de valor a pagar por prestacao
            $('#valorPorPrestacao').val(valorPorPrestacao.toFixed(2))    //formatacao de valor
        }

        $('#dataInicioPagamento').val(formatDataHojeESeguinte(new Date(),1));
        $('.data-hoje').val(formatDataHojeESeguinte(new Date(),0));

        function formatDataHojeESeguinte(date,i) {
            var day = date.getDate()+i;     //dia
            if(date.getMonth() < 9){
                monthIndex = '0'+parseInt(date.getMonth()+1);  // mes corrente 0=Janeiro, 1=Fereveiro
            }else{
                monthIndex = date.getMonth()+1;
            }
            var year = date.getFullYear();
            return year + '-' + monthIndex + '-' + day;
        }

        $('#modoPagamento').on('change',function () {
            modoPagamento = $(this).val();                         //get value of modaidadadepagamento input
            nrPrestacoesElement = $('#nrPrestacoes');
            if(modoPagamento === 'Diaria'){                    //prestacao diaria
                nrPrestacoesElement.attr({"min":1,"max":13});
                nrPrestacoesElement.val(1);
                nrPrestacoesElement.removeAttr('readOnly');
                minimo = 1; maximo =13
            }else if(modoPagamento === 'Semanal'){             //prestacao semanal
                nrPrestacoesElement.attr({"min":3, "max":4});
                nrPrestacoesElement.val(3);
                minimo = 3; maximo =4;
                nrPrestacoesElement.removeAttr('readOnly');
            }else {                                         //prestacao mensal
                // nrPrestacoesElement.prop('readOnly',true);
                nrPrestacoesElement.val(1);
                minimo = 1; maximo = 6;
            }
            nrPrestacoesElement.inputFilter(function(value) {
                return /^\d*$/.test(value) && (value === "" || (parseInt(value) <= maximo && parseInt(value) >=minimo ))
            });

            calculoValorApagar();
        });
        $('#modoPagamento').val($('#modoPagamento').val()).trigger('change'); //prenche combo de distritos ao abrir a pagina

        $('#signup-form').submit(function () {
            event.preventDefault();
            var form_data = new FormData(this);                         //pega todos valores[inputs] no form
            var nrGarantias = parseInt($('#nrGarantias').val());      //busca nr de garantia k pretende-se salvar
            for(var id=1; id < nrGarantias+1; id++){
                var inputFile = $("#file-"+id).prop("files")[0];
                form_data.append("foto"+id, inputFile);
            }

            swal({
                title: "Salvar Emprestimo?",
                imageUrl: "../../assets/question.png",
                showCancelButton: true,
                closeOnConfirm: false,
                showLoaderOnConfirm: true
            }, function () {
                $.ajax({
                    url: 'salvar',
                    dataType: 'text',
                    cache: false,
                    contentType: false,
                    processData: false,
                    data: form_data,
                    type: 'POST',
                    success: function(data){
                        // $('#div-avalista').html(data);
                        setTimeout(function () {
                            swal({
                                title: "Certo!",
                                text: "Emprestimo Salvo com Sucesso!",
                                timer: 2500,
                                type:  "success",
                                showConfirmButton: false
                            });
                            removeAllGarantia();
                            appendGarantia();
                            $('#signup-form').trigger('reset');
                            $('#nomeCompleto').removeAttr('readOnly');

                            for (var r=1; r < 4; r++) {
                                $('.actions ul li:first-child a').trigger('click');     // clicks no btn previous
                            }
                        }, 2000);
                    },
                    error: function () {
                        swal("Erro", "Ocorreu algum erro ao salvar Emprestimo", "error");
                    }
                });
            });
        });

        /*Funcao que adiciona div de nova garantia*/
        function appendGarantia(){
            index = $('.box-garantia').length+1;        //conta divs de garantia que ja existem
            if(index === 4) return;                         //apenas so aceita 3 divs de garantia
            $.ajax({
                method: 'POST',
                url: 'addGarantiaForm',
                data: {'index':index},
                success: function (data) {
                    $('#div-garantias').append(data);
                    // $('#btn-remove-1').remove()         //desabilita/apaga button de remover box-garantia
                }
            });
            $('#nrGarantias').val(index)
        }
        function removeAllGarantia() {
            var nrGarantias = parseInt($('#nrGarantias').val());      //busca nr de garantia k pretende-se salvar
            for(i=1;i<nrGarantias+1;i++){
                $('#box-garantia-'+i).remove()
            }
        }
        appendGarantia();                                            //adiciona primeira div de garantia na inicializacao
        $(document).on('click','.btn-add-garantia',function () {
            appendGarantia() //adicona outra div de garantia
        });
        $(document).on('click','.btn-remove-garantia',function () {
            boxId = $(this).attr('data-id');
            if(boxId == 2 && $('.btn-add-garantia').length === 3){
                $('#box-title-nr-3').text(boxId+'ª');               //actualiza o titulo de divs de garantia
                $('#box-title-nr-3').attr('id','box-title-nr-2');
                $('#btn-remove-3').attr('data-id','2');             //mudanca de data-id
                $('#btn-remove-3').attr('id','btn-remove-2');       //
                $('#box-garantia-3').attr('id','box-garantia-2');
                $('#form-garantia-3').attr('id','form-garantia-2');
            }
            $('#box-garantia-'+boxId).remove();                     //remove o box de garantia usando id da div mae
        });

        $(document).on('change','.input-upload',function () {       //acao de input file depois de selecioonar o file
            labelUpload =  $('#label-'+$(this).attr('id'));
            if ($(this).get(0).files.length === 0) {
                labelUpload.html('Foto');     //caso nao selecionar um file
                labelUpload.prop('title','Carregar Foto');
                labelUpload.removeClass('btn-success');
                labelUpload.addClass('btn-primary');
            }else{
                fileName = $(this).val().split('\\');
                labelUpload.html('&nbsp;'+fileName[fileName.length-1].substr(0, 20)); //poe o nome do selected file na label e limita o string em 30 characters
                labelUpload.prop('title','Foto Carregada: '+fileName[fileName.length-1]);
                labelUpload.removeClass('btn-primary');
                labelUpload.addClass('btn-success');
                labelUpload.prepend('<i class="fa fa-check"></i>')
            }
        });

        /*Formatao*/
        $(".contacto").inputFilter(function(value) {
            return /^\d*$/.test(value) && (value === "" || value.length <= 9)
        });

        $('.anoAdmissao').inputFilter(function(value) {
            return /^\d*$/.test(value) && (value === "" || parseInt(value) <= new Date().getFullYear())
        });

        /*Remocao de label de erro*/
        $('input').on('focusin', function () {
            $('#'+$(this).attr('id')+'-error').remove();
        });

       $('#nomeCompleto').on('input',function () {
           // alert($(this).val());
       });

        //Avalista
        $(document).on('click','#btn-add-avalista',function () {
            $('#modal-avalista').modal({
                show:true, backdrop: "static"
            })
        });

        $(document).on('click',"#btn-clean-alavista",function () {
            $('#avalista').val($('#avalista option:first').val()).trigger('change');
        });

        $('#avalista').on('change',function () {                    //combo avalista
            var visible = Boolean($(this).val());
            $(this).siblings('#clear-avalista').toggleClass('hidden', !visible);
        }).trigger('propertychange');

        $('#clear-avalista').click(function () {
            // $(this).siblings('input[type="text"]').val('').trigger('propertychange').focus();   //limpa o testo
            $('#avalista').val($('#avalista option:first').val()).trigger('change');
        });

        $('#btn-cancel-avalista').click(function () {
            $('#form-avalista').trigger('reset')
        });
        $('#btn-save-avalista').click(function () {
           $('#form-avalista').trigger('submit')
        });

        $('#form-avalista').submit(function (x) {
            x.preventDefault();
            $.ajax({
                url: '/cliente/salvarAvalista',
                data: $(this).serialize(),
                type: 'POST',
                success: function (data) {
                    // console.log(data)
                    $('#div-avalista').html(data);                                              //actualiza o select de avalista
                    $('#avalista').val($('#avalista option:last').val()).trigger('change');         //poe o ultiomo o avalista criado no select ja selecionado
                    $('#modal-avalista').modal('toggle');       //fecha o modal principal
                    swal({
                        title: "Certo!",
                        text: "Avalista Salvo com Sucesso!",
                        timer: 2500,
                        type:  "success",
                        showConfirmButton: false
                    });
                },
                error: function () {
                    swal("Erro", "Ocorreu algum erro ao salvar Avalista", "error");
                }
            })
        });

        $('#estadoCivil').on('change',function () {
            estadoCivil = $('#estadoCivil option:selected').text();
            if(estadoCivil === "Casado"){
                $('#nomeConjuge').prop('required',true)
            }else{
                $('#nomeConjuge-error').remove();
                $('#nomeConjuge').removeAttr('required')
            }
        })
    });
</script>
</body>

</html>













%{--<div class="input-group">--}%
/>
%{--<div class="input-group-btn">--}%
%{--<button type="button" class="btn btn-flat text-red transparent-pattern" id="btn-clean-alavista" title="Limpar Campo">X</button>--}%
%{--<button type="button" class="btn btn-info btn-flat" id="btn-add-avalista" title="Selecionar Cliente ja Existente">Add</button>--}%
%{--</div>--}%
%{--<input type="text" class="form-control">--}%

%{--</div>--}%




// $('#nomeCompleto').on('keyup',function () {
 //     try {
 //         if (window.event) {
 //             charCode = window.event.keyCode;
 //         }else if (e) {
 //             charCode = e.which;
 //         }else {
 //             return true;
 //         }
 //
 //         if((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || charCode === 32) {
 //             return true;
 //         }else {
 //             return false;
 //         }
 //     } catch (err) {
 //         alert(err.Description);
 //     }
 // });