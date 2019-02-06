package mephistopheles



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ClabeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        def clabes = Clabe.list()
        [clabes:clabes]
    }

    def show(Clabe clabeInstance) {
        respond clabeInstance
    }

    def create() {
        respond new Clabe(params)
    }

    @Transactional
    def save(Clabe clabeInstance) {
        if (clabeInstance == null) {
            notFound()
            return
        }

        if (clabeInstance.hasErrors()) {
            respond clabeInstance.errors, view:'create'
            return
        }

        clabeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'clabe.label', default: 'Clabe'), clabeInstance.id])
                redirect clabeInstance
            }
            '*' { respond clabeInstance, [status: CREATED] }
        }
    }

    def edit(Clabe clabeInstance) {
        respond clabeInstance
    }

    @Transactional
    def update(Clabe clabeInstance) {
        if (clabeInstance == null) {
            notFound()
            return
        }

        if (clabeInstance.hasErrors()) {
            respond clabeInstance.errors, view:'edit'
            return
        }

        clabeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Clabe.label', default: 'Clabe'), clabeInstance.id])
                redirect clabeInstance
            }
            '*'{ respond clabeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Clabe clabeInstance) {

        if (clabeInstance == null) {
            notFound()
            return
        }

        clabeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Clabe.label', default: 'Clabe'), clabeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'clabe.label', default: 'Clabe'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
