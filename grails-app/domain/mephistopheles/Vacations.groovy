package mephistopheles

class Vacations {
    Date dateOfRequest
    Date startDate
    Date endDate
    Boolean approved = false
    static belongsTo = [user:User]
    static constraints = {
        dateOfRequest blank:false
        startDate blank:false
        endDate blank:false
    }
}
