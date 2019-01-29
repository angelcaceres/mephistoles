package mephistopheles

import grails.transaction.Transactional

@Transactional
class VacationsService {

    def calculateVacations(userId) {
        //TODO implement a method that calculates the remaining days of vacations
        try{
        def user = User.findById(userId)
        }catch(all){
            return "usuario no encontrado"
        }
        def today = new Date()
        def years = (today - user.startDate).years
        days_available = 6 + (years-1)*2
        if (years < 1){
            return "Tienes menos de un año laborando."
        }else{
            return days_available - ((Number) user.executeQuery('''select sum(timestampdiff(day, v.start_date, v.end_date))
            from vacations v join user u on u.id = v.user_id
            where v.start_date between  str_to_date(
                CONCAT(
                    YEAR(CURRENT_DATE())-1,
                    RIGHT(u.start_date,15)
                    ),'%Y-%m-%d')and current_date()
                    and v.approved is true and u.id = ?;''', [userId]))
        }

    }
}
