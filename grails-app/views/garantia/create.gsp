<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'garantia.label', default: 'Garantia')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-garantia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-garantia" class="content scaffold-create" role="main">
            %{--<h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
            %{--<g:if test="${flash.message}">--}%
            %{--<div class="message" role="status">${flash.message}</div>--}%
            %{--</g:if>--}%
            %{--<g:hasErrors bean="${this.garantia}">--}%
            %{--<ul class="errors" role="alert">--}%
                %{--<g:eachError bean="${this.garantia}" var="error">--}%
                %{--<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>--}%
                %{--</g:eachError>--}%
            %{--</ul>--}%
            %{--</g:hasErrors>--}%
            %{--<g:form resource="${this.garantia}" method="POST">--}%
                %{--<fieldset class="form">--}%
                    %{--<f:all bean="garantia"/>--}%
                %{--</fieldset>--}%
                %{--<fieldset class="buttons">--}%
                    %{--<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
                %{--</fieldset>--}%
            %{--</g:form>--}%



            <g:uploadForm action="upload" name="form">
                %{--<input type="file" name="file[]" multiple>--}%
                <label class="label label-default" for="in">Upload</label>
                <input type="file" name="file" id="in" class="hidden">
                <input type="file" name="file">
                <g:submitButton name="create" class="save" value="Upload"/>
            </g:uploadForm>
        </div>
    %{--Double valor--}%
    %{--String descricao--}%
    %{--String localizacao--}%
    %{--String foto--}%
    %{--TipoGarantia tipoGarantia--}%

        <div class="row margin-bottom">
            <div class="col-sm-3">
                <label class="form-label">Tipo de Garantia</label>
                <input type="text" name="tipoGarantia"  class="form-control" value=""/>
            </div>

            <div class="col-sm-3">
                <label class="form-label">Descricao</label>
                <input type="text" name="descricao" class="form-control" value="">
            </div>
            <div class="col-sm-3">
                <label class="form-label">Localizacao</label>
                <input type="text" name="localizacao"   class="form-control" value="">
            </div>
            <div class="col-sm-3">
                <label class="form-label">Valor</label>
                <input type="text" name="valor"  class="form-control" value=""/>
            </div>
        </div>
        <div class="row margin-bottom">
            <div class="col-sm-6">
                <label class="form-label">Foto</label>
                <input type="text" name="descricao" class="form-control" value="">
            </div>
        </div>
    </body>
</html>
