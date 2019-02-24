<div class="col-sm-4" id="box-garantia-${params.index}">
    <div class="box box-warning">
        <div class="box-header with-border">
            <h3 class="box-title"><strong id="box-title-nr-${params.index}">${params.index}ª</strong> Garantia</h3>
            <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool btn-add-garantia" title="Adicionar Outra Garantia"><i class="fa fa-plus"></i></button>
                %{--<button type="button" class="btn btn-box-tool btn-remove-garantia" data-id="${params.index}" id="btn-remove-${params.index}" data-widget="remove" title="Remover"><i class="fa fa-times"></i></button>--}%
            </div>
        </div>
        <div class="box-body">
            <div class="input-group input-group-sm mb-2">
                <g:select id="tipoGarantia" name="tipoGarantia${params.index}" optionKey="descricao"  optionValue="descricao" title="Tipo de garantia"
                          from="${tipoGarantiaList}" class="form-control select" />
                <span class="input-group-btn p-0">
                    <button type="button" class="btn btn-info btn-flat" id="btn-add-tipoGarantia" title="Adicionar Outro Tipo de Garantia">Add</button>
                </span>
            </div>

            <textarea placeholder="Descricao" name="descricao${params.index}" class="mb-1 form-control select" rows="3"></textarea>
            <input placeholder="Localização" name="localizacao${params.index}" type="text" class="form-control mb-1">
            <input placeholder="valor" name="valor${params.index}" type="text" class="form-control mb-2">
            <label for="file-${params.index}" id="label-file-${params.index}" class="btn btn-sm btn-primary form-control" title="Carregar Foto">Foto</label>
            <input type="file" id="file-${params.index}" name="foto${params.index}" accept="image/*" class="hidden input-upload">
            </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $('#tipoGarantia').selectpicker();
    });
</script>