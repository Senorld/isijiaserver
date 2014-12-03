package isijia

import com.mortennobel.imagescaling.AdvancedResizeOp
import com.mortennobel.imagescaling.ResampleOp
import grails.transaction.Transactional

import java.awt.image.BufferedImage
import java.text.SimpleDateFormat

@Transactional
class UtilService {

    def convertStringToDate(String dateString, String format = "yyyy-MM-dd"){
        return new SimpleDateFormat(format, Locale.ENGLISH).parse(dateString);
    }

    def static adjustImageSize(BufferedImage image, int maxWidth = 1000, int maxHeight = 1000){
        BufferedImage resizedImage

        int width = image.width, height = image.height
        if(width > maxWidth || height > maxHeight){

            if(width > height){
                float percent = width / maxWidth
                width = 1000
                height = height / percent
            }else if(width < height){
                float percent = height / maxHeight
                height = 1000
                width = width / percent
            }else{
                width = 1000
                height = 1000
            }

            ResampleOp resamp = new ResampleOp(width, height)
            resamp.setUnsharpenMask(AdvancedResizeOp.UnsharpenMask.Normal)
            resizedImage = resamp.filter(image, null)

        }else{
            resizedImage = image
        }

        return resizedImage

    }

}
