package mephistopheles



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VacationsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Vacations.list(params), model:[vacationsInstanceCount: Vacations.count()]
    }

    def show(Vacations vacationsInstance) {
        respond vacationsInstance
    }

    def create() {
        respond new Vacations(params)
    }

    @Transactional
    def save(Vacations vacationsInstance) {
        if (vacationsInstance == null) {
            notFound()
            return
        }

        if (vacationsInstance.hasErrors()) {
            respond vacationsInstance.errors, view:'create'
            return
        }

        vacationsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'vacations.label', default: 'Vacations'), vacationsInstance.id])
                redirect vacationsInstance
            }
            '*' { respond vacationsInstance, [status: CREATED] }
        }
    }

    def edit(Vacations vacationsInstance) {
        respond vacationsInstance
    }

    @Transactional
    def update(Vacations vacationsInstance) {
        if (vacationsInstance == null) {
            notFound()
            return
        }

        if (vacationsInstance.hasErrors()) {
            respond vacationsInstance.errors, view:'edit'
            return
        }

        vacationsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Vacations.label', default: 'Vacations'), vacationsInstance.id])
                redirect vacationsInstance
            }
            '*'{ respond vacationsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Vacations vacationsInstance) {

        if (vacationsInstance == null) {
            notFound()
            return
        }

        vacationsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Vacations.label', default: 'Vacations'), vacationsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'vacations.label', default: 'Vacations'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
