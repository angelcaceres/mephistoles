package mephistopheles

class BootStrap {

    def init = { servletContext ->
        def clabe1 = new Clabe(clabe : '123456789123456789', description: 'cuenta nómina', bank:'Santander')
        def github1 = new Github(gitUserName:'angelcaceres', active:true, gitKey:true)
        def address = new Address(street: 'Avenida Colonia del Valle', houseNumber = '712', zipCode:'03100', state:'CDMX', apartment:'7', locality:'Del Valle', country:'Mexico', city:'Benito Juarez', type: 'Personal')
        def equipment = new Equipment(type:'Laptop', make:'apple', model:'macbook pro', serialNumber:'12345', dateOfPurchase: '2019-01-01', price:'20000')
        def position = new Position(position: 'gerente', salary:'20000', current:true)
        
        new User(firstName: 'Angel', lastName:'Caceres', maternalLastName: 'Licona', startDate: '2019-01-07', birthDate:'1988-03-14', gender:'Male', homePhone:'5541327496', cellPhoneNumber:'541327496', idNumber:'1234567890', nss:'12345678901', institutionalMail:'angel.caceres@vincoorbis.com', personalMail:'angelcaceres@outlook.com', github:github, clabe:clabe, equipment:equipment, address:address, position:position)

    }
    def destroy = {
    }
}
