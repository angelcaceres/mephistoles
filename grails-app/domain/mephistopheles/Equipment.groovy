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
    static belongsTo = [user:User]
    byte[] foto

    static constraints = {
        type inList:["Laptop", "Computadora de Escritorio", "Teléfono", "Celular", "Monitor", "Ventilador", "Regulador", "Impresora"]
        make blank:false
        model blank:false
        serialNumber blank:false
        dateOfPurchase blank:false
        dateOfAssignment nullable:true
        price blank:false
        foto maxSize: 10*1024*1024, nullable:true
        dateOfUnassignment nullable:true
    }

    static mapping = {
        foto sqlType: 'longblob'
    }
}
