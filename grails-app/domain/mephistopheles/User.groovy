package mephistopheles

/*
* Domain class for storing users info
* Author: Angel Caceres Licona
*/

class User {
    String firstName
    String lastName
    String maternalLastName
    Date startDate
    Date birthDate
    Date exitDate
    String gender
    String homePhone
    String cellPhoneNumber
    String idNumber
    String nss
    String institutionalMail
    String personalMail
    Boolean active = true
    //MultipartFile profilePicture
    static hasMany = [equipment:Equipment, address:Address, reference:Reference, files:Files, clabe:Clabe]
    static hasOne = [github:Github]
        

    static constraints = {
        firstName blank:false
        lastName blank:false
        maternalLastName blank:true, nullable:true
        gender inList:["Masculino", "Femenino", "Otro"]
        homePhone size:(10..10), blank:false
        cellPhoneNumber size:(10..10), blank:false
        idNumber size:(10..10), blank:false
        nss size:(11..11), blank:false
        institutionalMail email:true, blank:false
        personalMail email:true
        //profilePicture blank:false
    }
}
