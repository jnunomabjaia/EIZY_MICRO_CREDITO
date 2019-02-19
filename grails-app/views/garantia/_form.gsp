<div class="col-sm-4" id="box-garantia-${params.index}">
    <div class="box box-warning">
        <div class="box-header with-border">
            <h3 class="box-title"><strong id="box-title-nr-${params.index}">${params.index}ª</strong> Garantia</h3>
            <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool btn-add-garantia" title="Adicionar Outra Garantia"><i class="fa fa-plus"></i></button>
                <button type="button" class="btn btn-box-tool btn-remove-garantia" data-id="${params.index}" id="btn-remove-${params.index}" data-widget="remove" title="Remover"><i class="fa fa-times"></i></button>
            </div>
        </div>
        <div class="box-body">
            <g:select id="tipoGarantia" name="tipoGarantia" optionKey="id"  optionValue="descricao"
                  from="${tipoGarantiaList}" class="form-control select mb-1"/>
            <input placeholder="Descricao" name="descricao" type="text" class="form-control mb-1">
            <input placeholder="Localização" name="localizacao" type="text" class="form-control mb-1">
            <input placeholder="valor" name="valor" type="number" class="form-control mb-1">
            <label for="file${params.index}" class="btn btn-sm btn-primary form-control" title="Upload de Foto">Upload</label>
            <input type="file" id="file${params.index}" name="foto" class="hidden">
        </div>
    </div>
</div>