package mephistopheles
/*
* Domain class for storing users github information
* Author: Angel Caceres Licona
*/

class Github {
    String gitUserName
    Boolean active = true
    Boolean gitKey = true
    User user
    
    static constraints = {
        gitUserName blank:false
        active nullable: false
        gitKey nullable:false
    }
}
