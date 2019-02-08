package mephistopheles

class ImgTagLib {
    static defaultEncodeAs = [taglib:'html']
    static namespace = 'm'
    def renderDocumentById = {attrs ->
        def imgInstance = Equipment.findById(attrs.id)
        //def  = equipment.get(attrs.id)
        def img = imgInstance.foto
        if(!imgInstance.foto){
            response.sendError(404)
            return
        }
        response.setContentType("image/jpg")
        OutputStream out = response.getOutputStream()
        out<<img
        out.flush()
    }
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
}
