package mephistopheles

/*
* Domain class for storing references info
* Author: Angel Caceres Licona
*/

class Reference {
    String firstName
    String lastName
    String maternalLastName
    String phoneNumber
    String email
    Boolean deleted = false
    String relationship
    static belongsTo = [user:User]

    static constraints = {
        firstName blank:false
        lastName blank:false
        maternalLastName nullable:true
        phoneNumber blank:false, size:(10..10)
        email email:true
        relationship inList:["Familiar", "Amistad", "Pareja"]
    }
}
