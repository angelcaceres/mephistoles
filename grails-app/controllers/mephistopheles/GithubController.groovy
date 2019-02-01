package mephistopheles



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GithubController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Github.list(params), model:[githubInstanceCount: Github.count()]
    }

    def formulario() {
                
    }

    def form() {
                
    }

    def show(Github githubInstance) {
        respond githubInstance
    }

    def create() {
        respond new Github(params)
    }

    @Transactional
    def save(Github githubInstance) {
        if (githubInstance == null) {
            notFound()
            return
        }

        if (githubInstance.hasErrors()) {
            respond githubInstance.errors, view:'create'
            return
        }

        githubInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'github.label', default: 'Github'), githubInstance.id])
                redirect githubInstance
            }
            '*' { respond githubInstance, [status: CREATED] }
        }
    }

    def edit(Github githubInstance) {
        respond githubInstance
    }

    @Transactional
    def update(Github githubInstance) {
        if (githubInstance == null) {
            notFound()
            return
        }

        if (githubInstance.hasErrors()) {
            respond githubInstance.errors, view:'edit'
            return
        }

        githubInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Github.label', default: 'Github'), githubInstance.id])
                redirect githubInstance
            }
            '*'{ respond githubInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Github githubInstance) {

        if (githubInstance == null) {
            notFound()
            return
        }

        githubInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Github.label', default: 'Github'), githubInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'github.label', default: 'Github'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
