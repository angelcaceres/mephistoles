package mephistopheles



import grails.test.mixin.*
import spock.lang.*

@TestFor(GithubController)
@Mock(Github)
class GithubControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.githubInstanceList
            model.githubInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.githubInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def github = new Github()
            github.validate()
            controller.save(github)

        then:"The create view is rendered again with the correct model"
            model.githubInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            github = new Github(params)

            controller.save(github)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/github/show/1'
            controller.flash.message != null
            Github.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def github = new Github(params)
            controller.show(github)

        then:"A model is populated containing the domain instance"
            model.githubInstance == github
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def github = new Github(params)
            controller.edit(github)

        then:"A model is populated containing the domain instance"
            model.githubInstance == github
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/github/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def github = new Github()
            github.validate()
            controller.update(github)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.githubInstance == github

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            github = new Github(params).save(flush: true)
            controller.update(github)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/github/show/$github.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/github/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def github = new Github(params).save(flush: true)

        then:"It exists"
            Github.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(github)

        then:"The instance is deleted"
            Github.count() == 0
            response.redirectedUrl == '/github/index'
            flash.message != null
    }
}
