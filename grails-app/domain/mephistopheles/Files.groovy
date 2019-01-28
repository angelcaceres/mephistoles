package mephistopheles

/*
* Domain class for storing users files info such as cv's, birth certificates, etc
* Maximum allowed file size is 10 mb
* Author: Angel Caceres Licona
*/


class Files {
    String description
    Boolean deleted = false
    byte[] profilePicture
    static belongsTo = [user:User]

    static constraints = {
        description nullable:true
        profilePicture nullable:false , maxSize: 10*1024*1024
    }
}
