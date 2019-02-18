<div class="col-sm-4">
    <div class="box box-warning">
        <div class="box-header with-border">
            <h3 class="box-title">${params.index}ª Garantia</h3>
            <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool btn-add-upload" ><i class="fa fa-plus"></i>
                </button>
            </div>
        </div>
        <div class="box-body">
            <input placeholder="Tipo de garantia" name="tipo" type="text" class="form-control mb-1">
            <input placeholder="Descricao" name="descricao" type="text" class="form-control mb-1">
            <input placeholder="Localização" name="localizacao" type="text" class="form-control mb-1">
            <input placeholder="valor" name="valor" type="number" class="form-control mb-1">
            <label for="file${params.index}" class="btn btn-sm btn-primary form-control" title="Upload de Foto">Upload</label>
            <input type="file${params.index}" id="file" name="foto" class="hidden">
        </div>
    </div>
</div>