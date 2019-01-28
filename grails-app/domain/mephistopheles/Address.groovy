package mephistopheles

/*
* Domain class for storing user's addresses info including type in case they have more than one address
* Author: Angel Caceres Licona
*/

class Address {
    String street
    Integer houseNumber
    String zipCode
    String state
    String apartment
    String locality
    String country
    String city
    Boolean deleted = false
    String type
    static belongsTo = [user:User]
    static constraints = {
        street blank:false
        houseNumber blank:false
        zipCode blank:false, size:(5..5)
        state blank:false
        apartment nullable:true
        locality blank:false
        country blank:false
        city blank:false
        type inlist:["Business", "Personal"]    
    }
}
