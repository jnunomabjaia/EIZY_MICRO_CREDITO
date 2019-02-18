package microcredito

import grails.converters.JSON
import grails.validation.ValidationException
import org.grails.core.io.ResourceLocator

import javax.annotation.Resource

import static org.springframework.http.HttpStatus.*

class GarantiaController {

    GarantiaService garantiaService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond garantiaService.list(params), model:[garantiaCount: garantiaService.count()]
    }

    def show(Long id) {
        respond garantiaService.get(id)
    }

    def create() {
        respond new Garantia(params)
    }

    def save(Garantia garantia) {
        if (garantia == null) {
            notFound()
            return
        }

        try {
            garantiaService.save(garantia)
        } catch (ValidationException e) {
            respond garantia.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'garantia.label', default: 'Garantia'), garantia.id])
                redirect garantia
            }
            '*' { respond garantia, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond garantiaService.get(id)
    }

    def update(Garantia garantia) {
        if (garantia == null) {
            notFound()
            return
        }

        try {
            garantiaService.save(garantia)
        } catch (ValidationException e) {
            respond garantia.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'garantia.label', default: 'Garantia'), garantia.id])
                redirect garantia
            }
            '*'{ respond garantia, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        garantiaService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'garantia.label', default: 'Garantia'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'garantia.label', default: 'Garantia'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    ResourceLocator r1l

    def upload(){
//        def file = request.getFile('file')
//        def file = params.file
        def rs = [:]
//        if(file.empty){
//            rs["msg"]="vazio"
//        }else{
//            File f = grailsApplication.mainContext.getResource(file.originalFilename).file  //indica o diretorio dentro do project
//            file.transferTo(f)                                                              //transfere o file para diretorio indicado acima
//            f.renameTo(new File('grails-app/assets/images/'+file.originalFilename))         //remove o file para um diretorio especifico
//            rs["msg"]= "Done"
//        }
//        rs["msg"]=file
//        render rs as JSON


//        def files = request.getFiles('file[]')
//        for (def fi: files){
//            File f = grailsApplication.mainContext.getResource(fi.originalFilename).file  //indica o diretorio dentro do project
//            fi.transferTo(f)                                                              //transfere o file para diretorio indicado acima
//            f.renameTo(new File('grails-app/assets/images/'+fi.originalFilename))
//        }

        request.getMultiFileMap().file.each{
//            println it.originalFilename                                                     //'it' e filme
            File f = grailsApplication.mainContext.getResource(it.originalFilename).file    //indica o diretorio dentro do project
            it.transferTo(f)
            f.renameTo(new File('grails-app/assets/images/upload/'+it.originalFilename))    //transfere o file para diretorio indicado acima
        }

        rs["msg"]="Done"
        render rs as JSON
    }
}
