package mephistopheles
/*
* Domain class for storing users files info such as cv's, birth certificates, etc
* Author: Angel Caceres Licona
*/

class Files {
    String description

    static constraints = {
        description nullable:true
    }
}
