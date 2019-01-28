package mephistopheles

class Equipment {
    String type
    String make
    String model
    String serialNumber
    Date dateOfPurchase
    Date dateOfAssignment
    String price
    Boolean deleted = false
    Date dateOfUnassignment
    //Picture pic
    //Files file
    static belongsTo = [user:User]
    //User user

    static constraints = {
        type inList:["Laptop", "Computadora de Escritorio", "Teléfono", "Celular", "Monitor", "Ventilador", "Regulador", "Impresora"]
        make blank:false
        model blank:false
        serialNumber blank:false
        dateOfPurchase blank:false
        dateOfAssignment nullable:true
        price blank:false
        dateOfUnassignment nullable:true
    }
}
