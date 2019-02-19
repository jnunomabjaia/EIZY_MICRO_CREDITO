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
<div class="js-sweetalert hidden">
    <button class="btn btn-primary" id="btnSuccess" data-type="success"></button>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="main">
            <div class="container">
                <form id="signup-form" class="signup-form" action="salvar" method="POST" autocomplete="off">
                    <div>
                        <h3>Dados Pessoais</h3>
                        <fieldset>
                            <h4 class="wizzard-title"><i class="fa fa-user"></i>&nbsp;Dados Pessoais</h4>
                            <hr class="hr">
                            <div class="fieldset-content">
                                <div class="row margin-bottom">
                                    <div class="col-sm-6">
                                        <label class="form-label" for="apelido">Apelido</label>
                                        <input type="text" name="apelido" id="apelido"  class="form-control"  required value="Macuvele">
                                        <input type="hidden" name="codigo" id="codigo"  class="form-control" value="12342">
                                        <g:hiddenField name="testemunhas" id="testemunhas"/>
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="form-label" for="nome">Nomes</label>
                                        <input type="text" name="nome" id="nome" class="form-control dis"  required value="Fader"/>
                                    </div>
                                </div>
                                <div class="row  margin-bottom">
                                    <div class="col-sm-6">
                                        <label class="form-label" for="estadoCivil">Estado Civil</label>
                                        <g:select  class="form-control select" id="estadoCivil" name="estadoCivil"
                                                   from="${Cliente.constrainedProperties.estadoCivil.inList}"
                                        />
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="form-label" for="nomeConjuge">Nome do Cônjuge</label>
                                        <input type="text" name="nomeConjuge" id="nomeConjuge" class="form-control" value="Ela Mesma" />
                                    </div>
                                </div>
                                <div class="row margin-bottom">
                                    <div class="col-sm-4">
                                        <label class="form-label" for="tipoDocumento">Tipo de Documento</label>
                                        <g:select id="tipoDocumento" name="tipoDocumento" optionKey="id" optionValue="descricao"
                                                  from="${tipoDocumentoList.list()}" class="form-control select"
                                        />
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="nrDocumento">Número do Documento</label>
                                        <input type="text" name="nrDocumento" id="nrDocumento" class="form-control" value="1222222223"/>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="localEmissao">Local de Emissão</label>
                                        <input type="text" name="localEmissao" id="localEmissao" class="form-control" value="Maputo" />
                                    </div>
                                </div>
                                <div class="row margin-bottom">
                                    <div class="col-sm-4">
                                        <label class="form-label" for="dataEmissao">Data de Emissão</label>
                                        <input type="date" name="dataEmissao" id="dataEmissao" class="form-control select" />
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="dataValidade">Data de validade</label>
                                        <input type="date" name="dataValidade" id="dataValidade" class="form-control select" />
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="tipoContrato">Tipo de Contrato de Trabaho</label>
                                        <input type="text" name="tipoContrato" id="tipoContrato" class="form-control" value="Tiposs" />
                                    </div>
                                </div>
                                <div class="row margin-bottom">
                                    <div class="col-sm-4">
                                        <label class="form-label" for="anoAdmissao">Ano de Admissão</label>
                                        <input type="text" name="anoAdmissao" id="anoAdmissao" class="form-control" value="2000" />
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="nrDependentes">Número de Dependentes</label>
                                        <input type="number" name="nrDependentes" id="nrDependentes" class="form-control" value="12" />
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="nrFihos">Número de Filhos</label>
                                        <input type="number" name="nrFihos" id="nrFihos" class="form-control" value="4" />
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
                                        <input type="number" name="contacto1" id="contacto1"  class="form-control" value="12334" required>
                                    </div>
                                    <div class="col-sm-6">
                                        <label class="form-label" for="contacto2">Contacto Opcional</label>
                                        <input type="number" name="contacto2" id="contacto2" class="form-control" value="434534" />
                                    </div>
                                </div>
                                <div class="row margin-bottom">
                                    <div class="col-sm-12">
                                        <label class="form-label" for="email">Email</label>
                                        <input type="email" name="email" id="email"  class="form-control" value="fader@gmail.com"/>
                                    </div>
                                </div>
                                <div class="row margin-bottom">
                                    <div class="col-sm-4">
                                        <label class="form-label" for="provincia">Província</label>
                                        <g:select id="provincia" name="provincia" optionKey="id"  optionValue="designacao"
                                                  from="${provinciaList}" class="form-control select"/>
                                    </div>
                                    <div class="col-sm-4" id="div-Distrito">
                                        %{--<select id="distrito" name="distrito" class="form-control"></select>--}%
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="tipoCasa">Casa</label>
                                        <g:select id="tipoCasa" name="tipoCasa" optionKey="descricao"  optionValue="descricao"
                                                  from="${tipoCasaList}" class="form-control select"
                                        />
                                    </div>
                                </div>
                                <div class="row margin-bottom">
                                    <div class="col-sm-12">
                                        <label class="form-label" for="endereco">Morada</label>
                                        <input type="text" name="endereco" id="endereco"  class="form-control" value="bairro polana case">
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
                                    <div class="col-sm-4">
                                        <label class="form-label" for="valorPedido">Valor Pretendido</label>
                                        <input type="number" min="0" name="valorPedido" id="valorPedido" class="form-control input-valor" value="0" />
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="taxaJuros">Taxa de Juros (%)</label>
                                        <input type="number" min="0" max="100" name="taxaJuros" id="taxaJuros" class="form-control input-valor" value="0"/>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="valorApagar">Valor Disposto a Pagar</label>
                                        <input type="text" readonly name="valorApagar" id="valorApagar" class="form-control" value="0" />
                                    </div>
                                </div>

                                <div class="row margin-bottom">
                                    <div class="col-sm-4">
                                        <label class="form-label" for="modalidadePagamento">Modo de Pagamento</label>
                                        <g:select id="modalidadePagamento" name="modalidadePagamento" optionKey="descricao"
                                              optionValue="descricao" from="${modoPagamentoList}" class="form-control select"
                                        />
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="nrPrestacoes">Numero de Prestações</label>
                                        <input type="number" name="nrPrestacoes" id="nrPrestacoes" class="form-control input-valor" value="1"/>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="valorPorPrestacao">Valor Por Prestação</label>
                                        <input readonly type="text" name="valorPorPrestacao" id="valorPorPrestacao" class="form-control" title="Valor a pagar por prestação" />
                                    </div>
                                </div>

                                <div class="row margin-bottom">
                                    <div class="col-sm-4">
                                        <label class="form-label" for="dataInicioPagamento">Data Inicial de Pagamento</label>
                                        <input  type="date" name="dataInicioPagamento" id="dataInicioPagamento" class="form-control select" value="2019-02-15"/>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="tipoNegocio">Tipo de Nogócio</label>
                                        <input type="text" name="tipoNegocio" id="tipoNegocio" class="form-control"/>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="localNegocio">Local de Nogócio</label>
                                        <input type="text" name="localNegocio" id="localNegocio" class="form-control"/>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-4 form-group">
                                        <label class="form-label" for="experienciaNegocio">Profissão</label>
                                        <input type="text" name="experienciaNegocio" id="experienciaNegocio" class="form-control" />
                                    </div>

                                    <div class="col-md-4">
                                        <label class="form-label" for="destinoCredito">Destino do Crédito</label>
                                        <g:select id="destinoCredito" name="destinoCredito" optionKey="descricao"  optionValue="descricao"
                                                  from="${destinoCreditoList}" class="form-control select"/>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="form-label" for="btn-testemunhas">&nbsp;</label>
                                        <button type="button" class="btn btn-warning" style="width: 100%" id="btn-testemunhas" title="Adicionar Testemunhas">
                                            <i class="fa fa-users"></i>&nbsp;Testemunhas
                                        </button>
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
                                         <input type="text" name="relacaoBens" id="relacaoBens" class="form-control" />
                                     </div>
                                 </div>
                                 <div class="row" id="div-garantias">
                                     %{--as divs de garantias estarao aqui--}%
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
%{--modal de testemunha--}%
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
                <table class="table table-bordered" id="tabelaTestemunha">
                    <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Endereco</th>
                        <th>Contacto</th>
                        <th>Grau de Parantesco</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" id="btn-saveTestemunhas"><i class="fa fa-save"></i>&nbsp;Salvar</button>
            </div>
        </div>
    </div>
</div>

<!-- JS -->
<asset:javascript src="jquery-3.3.1.slim.min.js"/>
%{--<asset:javascript src="bootstrap.min.js"/>--}%

<script type="text/javascript">
    $(document).ready(function () {
        // $('#btnSuccess').trigger('click');

        $('#caminho').append('<li><a href="/emprestimo">Emprestimo</a></li><li><a href="/emprestimo/create">Registar</a></li>');
        
        $('#btn-testemunhas').click(function () {               //open testemunhas pop-up
            $('#modal-testemunhas').modal({
                show:true, backdrop: "static"
            })
        });

        /*tabela de testemunhas*/
        $('#tabelaTestemunha').SetEditable({ $addButton: $('#but_add')}); //habilita tabela de testemunhas para que seja editevel

        $('#but_add').click(function () {
            var rowCount = $('#tabelaTestemunha >tbody >tr').length;
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

        function calculoValorApagar() {
            valorPedido = $('#valorPedido').val();
            percent = $('#taxaJuros').val()/100; // valor em percentagem
            if(valorPedido === ''){
                $('#valorApagar').val(0);
                return
            }
            valorApagar = parseFloat(valorPedido)+ parseFloat(valorPedido*percent); // calculo de valor total a pagar
            $('#valorApagar').val(valorApagar.toFixed(2));

            /*valor por gpagar*/
            nrPrestacoes = $('#nrPrestacoes').val();
            valorPorPrestacao = valorApagar/nrPrestacoes;                //caculo de valor a pagar por prestacao
            $('#valorPorPrestacao').val(valorPorPrestacao.toFixed(2))    //formatacao de valor
        }

        $('#dataInicioPagamento').val(formatDataSeguinte(new Date()));
        $('#dataEmissao').val(formatDataSeguinte(new Date()));
        $('#dataValidade').val(formatDataSeguinte(new Date()));

        function formatDataSeguinte(date) {
            var day = date.getDate()+1; //dia seguinte
            if(date.getMonth() < 9){
                monthIndex = '0'+parseInt(date.getMonth()+1);  // mes corrente 0=Janeiro, 1=Fereveiro
            }else{
                monthIndex = date.getMonth()+1;
            }
            var year = date.getFullYear();
            return year + '-' + monthIndex + '-' + day;
        }

        $('#modalidadePagamento').on('change',function () {
        modalidade = $(this).val();                         //get value of modaidadadepagamento input
            if(modalidade === 'Diaria'){                    //prestacao diaria
                $('#nrPrestacoes').attr({"min":1,"max":13});
                $('#nrPrestacoes').val(1)
            }else if(modalidade === 'Semanal'){             //prestacao semanal
                $('#nrPrestacoes').attr({"min":3, "max":4});
                $('#nrPrestacoes').val(3)
            }else {                                         //prestacao mensal
                console.log(modalidade)
            }
            calculoValorApagar();
        });

        $('#btn-saveTestemunhas').click(function () {
            var myRows = [];
            var headersText = [];
            var $headers = $("th");

            $("#tabelaTestemunha tbody tr").each(function(index) {
                $cells = $(this).find("td");
                myRows[index] = {};

                $cells.each(function(cellIndex) {
                    if(headersText[cellIndex] === undefined) { // Set the header text
                        headersText[cellIndex] = $($headers[cellIndex]).text();
                    }
                    // Update the row object with the header/cell combo
                    myRows[index][headersText[cellIndex]] = $(this).text();
                });
            });

            var myObj = {
                "Testemunhas": myRows
            };
            $('#testemunhas').val(JSON.stringify(myObj));
            // alert(JSON.stringify(myObj));
        });
        
        $('#signup-form').submit(function () {
            event.preventDefault();
            $.ajax({
                method: 'POST',
                url: 'salvar',
                data: $(this).serialize(),
                success: function (data) {
                    $('#btnSuccess').trigger('click');
                },
                error: function () {
                    alert('error')
                }
            });
        });

        function appendGarantia(){
            index = $('.btn-add-garantia').length+1; //conta divs de garantia que ja existem
            if(index === 4) return
            $.ajax({
                method: 'POST',
                url: 'addGarantiaForm',
                data: {'index':index},
                success: function (data) {
                    $('#div-garantias').append(data);
                    $('#btn-remove-1').remove()         //desabilita/apaga button de remover box-garantia
                }
            });
        }

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
            }
            $('#box-garantia-'+boxId).remove();                     //remove o box de garantia usando id da div mae
        });
        appendGarantia()                                            //adiciona primeira div de garantia na inicializacao
    })
</script>

</body>

</html>