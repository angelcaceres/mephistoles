package mephistopheles

class Vacations {
    //Usuario user
    //Usuarii approver
    Date dateOfRequest
    Date startDate
    Date endDate
    Boolean approved = false
    
    static constraints = {
        dateOfRequest blank:false
        startDate blank:false
        endDate blank:false
    }
}
