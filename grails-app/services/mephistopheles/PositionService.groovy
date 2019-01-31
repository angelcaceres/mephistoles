package mephistopheles

import grails.transaction.Transactional

@Transactional
class PositionService {

    def listPastPositions(userId) {
        def position = new Position()
        def user = User.findById(1) 
        position.findAllWhere(current:false, user:user)
        
    }
    def savePosition(userId, params){
        def position = new Position(params)
        def currentPos = position.findAllWhere(current:true, userId:userId)
        if(currentPos.size() > 0){
            for(i in currentPos){
                currentPos.current = false
            }
            position.save()
        }else{
            position.save()

        }
    }
}
