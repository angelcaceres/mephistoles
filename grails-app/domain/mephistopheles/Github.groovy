package mephistopheles

/*
* Domain class for storing users github information
* Author: Angel Caceres Licona
*/

class Github {
    String gitUserName
    Boolean active = true
    Boolean gitKey = true
    Boolean deleted = false

    
    static constraints = {
        gitUserName blank:false, nullable:true
        active nullable: false
        gitKey nullable:false
        }
}
