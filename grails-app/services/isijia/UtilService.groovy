package isijia

import grails.transaction.Transactional

import java.text.SimpleDateFormat

@Transactional
class UtilService {

    def convertStringToDate(String dateString, String format = "yyyy-MM-dd"){
        return new SimpleDateFormat(format, Locale.ENGLISH).parse(dateString);
    }

}
