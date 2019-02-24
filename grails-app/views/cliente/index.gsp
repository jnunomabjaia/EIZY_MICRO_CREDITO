<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <h3>${munhas}</h3>

        %{--<h5>${ts}</h5>--}%

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
            %{--println rs.Testemunhas.Nome--}%
                <g:each in="${munhas}">
                    <tr>
                        <td>${it.Nome}</td>
                        %{--<td>${t}</td>--}%
                        <td>sad</td>
                        <td>asd</td>
                        <td>sad</td>
                    </tr>
                </g:each>
            </tbody>
        </table>
    </body>
</html>





%{--<a href="#list-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
%{--<div class="nav" role="navigation">--}%
%{--<ul>--}%
%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
%{--</ul>--}%
%{--</div>--}%
%{--<div id="list-cliente" class="content scaffold-list" role="main">--}%
%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
%{--<g:if test="${flash.message}">--}%
%{--<div class="message" role="status">${flash.message}</div>--}%
%{--</g:if>--}%
%{--<f:table collection="${clienteList}" />--}%

%{--<div class="pagination">--}%
%{--<g:paginate total="${clienteCount ?: 0}" />--}%
%{--</div>--}%
%{--</div>--}%