package mephistopheles


class Position {
    String position
    String salary
    Boolean current

    static belongsTo = [user:User]

    static constraints = {
        position blank:false
        salary salary:false
        current nullable:false
    }
}
