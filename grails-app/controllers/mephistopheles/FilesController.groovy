package mephistopheles



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FilesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Files.list(params), model:[filesInstanceCount: Files.count()]
    }

    def show(Files filesInstance) {
        respond filesInstance
    }

    def create() {
        respond new Files(params)
    }

    @Transactional
    def save(Files filesInstance) {
        if (filesInstance == null) {
            notFound()
            return
        }

        if (filesInstance.hasErrors()) {
            respond filesInstance.errors, view:'create'
            return
        }

        filesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'files.label', default: 'Files'), filesInstance.id])
                redirect filesInstance
            }
            '*' { respond filesInstance, [status: CREATED] }
        }
    }

    def edit(Files filesInstance) {
        respond filesInstance
    }

    @Transactional
    def update(Files filesInstance) {
        if (filesInstance == null) {
            notFound()
            return
        }

        if (filesInstance.hasErrors()) {
            respond filesInstance.errors, view:'edit'
            return
        }

        filesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Files.label', default: 'Files'), filesInstance.id])
                redirect filesInstance
            }
            '*'{ respond filesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Files filesInstance) {

        if (filesInstance == null) {
            notFound()
            return
        }

        filesInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Files.label', default: 'Files'), filesInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'files.label', default: 'Files'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
