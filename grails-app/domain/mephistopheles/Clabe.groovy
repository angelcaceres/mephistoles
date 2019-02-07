package mephistopheles

/*
* Domain class for storing bank clabe info including a list of banks that are allowed
* Author: Angel Caceres Licona
*/

class Clabe {
    String clabe
    String description
    String bank
    Boolean deleted = false
    static constraints = {
        clabe blank:false, size:(18..18), unique:true
        bank nullable:false, inList:["Afirme", "American Express", "Azteca", "Bajio", "Banamex", "Banorte", "Banregio", "Bancomer", "HSBC", "Inbursa", "IXE", "Santander"]
        description nullable:false
        //user blank:true
    }
}
