package mephistopheles

class UserController {
    def index = {
        redirect action: "list"
    }
    def create = {}
    def save = {
        def User = new User (params)
        user.save flush:true,failOnError: true
        redirect action: "show", id: contact.id
    }
    def edit = {
        def User = User.get(params.id)
        [user:user]
    }
    def update = {
        def user = User.get(params.id)
        user.properties = params
        user.save flush: true, failOnError: true
        redirect action: "show", id: params.id
        
    }
    def show = {
        def user = User.get(params.id)
        [user: user]
    }
    def list = {
        def user = User.list()
        [user: user]
    }
    def delete = {
        def user = User.get(params.id)
        user.delete flush: true, failOnError: true
        redirect action: "index"
    }

}