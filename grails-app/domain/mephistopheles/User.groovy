package mephistopheles
import org.grails.databinding.BindingFormat
/*
* Domain class for storing users info
* Author: Angel Caceres Licona
*/

class User {
    String firstName
    String lastName
    String maternalLastName
    @BindingFormat('yyyy-MM-dd')
    Date startDate
    @BindingFormat('yyyy-MM-dd')
    Date birthDate
    @BindingFormat('yyyy-MM-dd')
    Date exitDate
    String gender
    String homePhone
    String cellPhoneNumber
    Boolean deleted = false
    String idNumber
    String nss
    String institutionalMail
    String personalMail
    Boolean active = true
    Github github
    //Date = modified = null
    Clabe clabe
    static hasMany = [equipment:Equipment, address:Address, reference:Reference, vacations:Vacations,  files:Files, position:Position]


    static constraints = {
        firstName blank:false
        exitDate nullable:true
        lastName blank:false
        maternalLastName blank:true, nullable:false
        gender blank:false
        homePhone size:(10..10), blank:false
        cellPhoneNumber size:(10..10), blank:false
        idNumber size:(10..10), blank:false
        nss size:(11..11), blank:false
        institutionalMail email:true, blank:false
        personalMail email:true
        //profilePicture blank:false
    }
}
