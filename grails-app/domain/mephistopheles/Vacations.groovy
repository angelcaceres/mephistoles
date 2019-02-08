package mephistopheles
import org.grails.databinding.BindingFormat

class Vacations {
    @BindingFormat('yyyy-MM-dd')
    Date dateOfRequest
    @BindingFormat('yyyy-MM-dd')
    Date startDate
    @BindingFormat('yyyy-MM-dd')
    Date endDate
    Boolean past
    Boolean approved = false
    static belongsTo = [user:User]
    static constraints = {
        dateOfRequest blank:false
        startDate blank:false
        endDate blank:false
        past nullable: true
    }
}