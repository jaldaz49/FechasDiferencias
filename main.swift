import Foundation

/**
var someDateComponents = DateComponents()

someDateComponents.day = 23
someDateComponents.month = 04
someDateComponents.year = 2017
someDateComponents.calendar = Calendar(identifier: .gregorian)
someDateComponents.timeZone = TimeZone(abbreviation: "UTC")

let someDateComponentsFormatter = DateComponentsFormatter()

someDateComponentsFormatter.unitsStyle = .full
someDateComponentsFormatter.includesApproximationPhrase = true
someDateComponentsFormatter.includesTimeRemainingPhrase = true
someDateComponentsFormatter.allowedUnits = [.month, .day, .hour]

DateComponentsFormatter.string(from: Date(), to: futureDate!)!

let outputDateFormatter = DateFormatter()
print(outputDateFormatter)
outputDateFormatter.dateFormat = "dd/MM/yyyy"
print(outputDateFormatter.dateFormat)
print("From today \(outputDateFormatter.string(from: Date())) to 23/04/2017 there is \(remainingTime)")
*/

//let date = Date()
//print(date)

//let dateFormatter = DateFormatter()

//dateFormatter.locale = Locale(identifier: "es_AR")

//dateFormatter.dateStyle = .full
//dateFormatter.timeStyle = .full

//print(dateFormatter.string(from: date))

// Compara dos fechas
//Antes de comparar dos fechas necesitamos tenerlas como información, como dato manejable, en nuestro caso como instancias de Date
//con las cuales podamos trabajar, así que, de paso, veamos como definir un momento en el tiempo distinto al actual:

//var firstDateComponents = DateComponents()

//firstDateComponents.day = 01
//firstDateComponents.month = 01
//firstDateComponents.year = 2017

//firstDateComponents.timeZone = TimeZone(abbreviation: "UTC")

//var firstDate = Calendar(identifier: Calendar.Identifier.gregorian).date(from: firstDateComponents)
//print(firstDate!)

/** Dicho esto continuemos con nuestra comparación, añadamos otra fecha con un mes de diferencia con respecto a la primera:
var firstDateComponents = DateComponents()
var secondDateComponents = DateComponents()

//dateFormatter.setLocalizedDateFormatFromTemplate("ddMMyy")
  dateFormatter.setLocalizedDateFormatFromTemplate("dd/MM/yy")

firstDateComponents.day = 01
firstDateComponents.month = 01
firstDateComponents.year = 2017

firstDateComponents.timeZone = TimeZone(abbreviation: "UTC")

secondDateComponents.day = 01
secondDateComponents.month = 02
secondDateComponents.year = 2017

secondDateComponents.timeZone = TimeZone(abbreviation: "UTC")

var firstDate = Calendar(identifier: Calendar.Identifier.gregorian).date(from: firstDateComponents)
var secondDate = Calendar(identifier: Calendar.Identifier.gregorian).date(from: secondDateComponents)

print(firstDate!)
print(secondDate!)
//*/

// Compara fechas pero no funciona en el Swift de Repl.it
/** var someDateComponents = DateComponents()

someDateComponents.day = 23
someDateComponents.month = 04
someDateComponents.year = 2017
someDateComponents.calendar = Calendar(identifier: .gregorian)
someDateComponents.timeZone = TimeZone(abbreviation: "UTC")

var someDateComponentsFormatter = DateComponentsFormatter()

someDateComponentsFormatter.unitsStyle = .full
someDateComponentsFormatter.includesApproximationPhrase = true
someDateComponentsFormatter.includesTimeRemainingPhrase = true
someDateComponentsFormatter.allowedUnits = [.month, .day, .hour]

let futureDate = someDateComponents.date

let remainingTime = someDateComponentsFormatter.string(from: Date(), to: futureDate!)!

var outputDateFormatter = DateFormatter()

outputDateFormatter.dateFormat = "dd/MM/yyyy"

print("From today \(outputDateFormatter.string(from: Date())) to 23/04/2017 there is \(remainingTime)")
*/

/**
//NS
import UIKit
let currentDate = NSDate()
//Especificamos locale de Francia 
dateFormatter.locale = NSLocale(localeIdentifier: "fr_FR")
 
//Especificamos locale de España
dateFormatter.locale = NSLocale(localeIdentifier: "es_ES")

dateFormatter.dateStyle = NSDateFormatterStyle.FullStyle
var convertedDate = dateFormatter.stringFromDate(currentDate)

dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
convertedDate = dateFormatter.stringFromDate(currentDate)

dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
convertedDate = dateFormatter.stringFromDate(currentDate)

dateFormatter.dateFormat = "EEEE, MMMM dd, yyyy"
convertedDate = dateFormatter.stringFromDate(currentDate)

dateFormatter.dateFormat = "HH:mm:ss"
convertedDate = dateFormatter.stringFromDate(currentDate)

var dateAsString = "13-09-2016 23:59"
dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
var newDate = dateFormatter.dateFromString(dateAsString)

dateAsString = "martes, 13 Septiembre 2016 09:22:33 GMT+2"
dateFormatter.dateFormat = "EEEE, dd MMMM yyyy HH:mm:ss zzz"
newDate = dateFormatter.dateFromString(dateAsString)

// PARTE 2
let dateComponents = NSDateComponents()
let calendar = NSCalendar.currentCalendar()

//Obtenemos la fecha actual
let currentDate = NSDate()
 
//Obtenemos la fecha de hoy dividida en componentes
let dateComponents = calendar.components([NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Year, NSCalendarUnit.WeekOfYear, NSCalendarUnit.Hour, NSCalendarUnit.Minute, NSCalendarUnit.Second, NSCalendarUnit.Nanosecond], fromDate: currentDate)
 
//Mostramos por pantalla los componentes
print("day = \(dateComponents.day)", "month = \(dateComponents.month)", "year = \(dateComponents.year)", "week of year = \(dateComponents.weekOfYear)", "hour = \(dateComponents.hour)", "minute = \(dateComponents.minute)", "second = \(dateComponents.second)", "nanosecond = \(dateComponents.nanosecond)" , separator: ", ", terminator: "")
print(dateComponents.timezone)
//Creamos un objeto de la clase NSDateComponents
let components = NSDateComponents()
 
//Especificamos los valores de sus componentes
components.day = 13
components.month = 05
components.year = 2016
components.hour = 10
components.minute = 15
 
//Convertimos ese objeto components a un objeto NSDate
var newDate = calendar.dateFromComponents(components)

//Establecemos la zona horaria a GMT
components.timeZone = NSTimeZone(abbreviation: "GMT")
newDate = calendar.dateFromComponents(components)
 
//Establecemos la zona horaria a CST
components.timeZone = NSTimeZone(abbreviation: "CST")
newDate = calendar.dateFromComponents(components)
 
//Establecemos la zona horaria a CET
components.timeZone = NSTimeZone(abbreviation: "CET")
newDate = calendar.dateFromComponents(components)

//Creamos nuestro dateFormatter y le aplicamos el formato que queremos
var dateFormatter = NSDateFormatter()
dateFormatter.dateFormat = "MMM dd, yyyy zzz"
 
//Creamos nuestro primer objeto NSDate
var dateAsString1 = "Oct 09, 2016 GMT"
var firstDate = dateFormatter.dateFromString(dateAsString1)
 
//Creamos nuestro segundo objeto NSDate
var dateAsString2 = "Oct 11, 2016 GMT"
var secondDate = dateFormatter.dateFromString(dateAsString2)

firstDate.earlierDate(secondDate)
firstDate.laterDate(secondDate)

// Comparando fechas
print("La fecha anterior es: \(firstDate!.earlierDate(secondDate!))")
print("La fecha posterior es: \(firstDate!.laterDate(secondDate!))")

//Declaramos nuestro dateFormatter
dateFormatter.dateFormat = "HH:mm:ss zzz"
 
//Declaramos nuestro primer objeto NSDate que almacena una hora
var hourAsString1 = "18:36:04 GMT"
var hour1 = dateFormatter.dateFromString(hourAsString1)
 
//Declaramos nuestro segundo objeto NSDate que almacena una hora
var hourAsString2 = "20:36:04 GMT"
var hour2 = dateFormatter.dateFromString(hourAsString2)
 
//Comparamos ambas horas
if hour1!.earlierDate(hour2!) == hour1{
    if hour1!.isEqualToDate(hour2!){
        print("Es la misma hora")
    }
    else{
        print("\(hour1) es anterior a \(hour2)")
    }
}
else{
        print("\(hour2) es anterior a \(hour1)")
}

//Obtenemos la fecha actual
let currentDate = NSDate()

let monthsToAdd = 4
let daysToAdd = 10

//Creamos un objeto NSDateComponents donde añadimos nuestros 4 meses y 10 días
let newDateComponents = NSDateComponents()
newDateComponents.month = monthsToAdd
newDateComponents.day = daysToAdd
 
//Usamos el método dateByAddingComponents para añadir estos 4 meses y 10 días
//a nuestra fecha actual (currentDate)
var calculatedDate = NSCalendar.currentCalendar().dateByAddingComponents(newDateComponents, toDate: currentDate, options: NSCalendarOptions.init(rawValue: 0))

//Comprobamos el valor de nuestra constante currentDate
print(currentDate)
 
//Establecemos el número de días que vamos a descontar a currentDate
let numberOfDays = -90
 
//Restamos esos 90 días a currentDate y lo almacenamos en calculatedDate
calculatedDate = NSCalendar.currentCalendar().dateByAddingUnit(NSCalendarUnit.Day, value: numberOfDays, toDate: currentDate, options: NSCalendarOptions.init(rawValue: 0))
 
//Usamos un dateFormatter para mostrar el día, mes y año por pantalla
dateFormatter.dateFormat = "EEEE, MMM dd, yyyy"
 
//Convertimos la fecha a String
var dateAsString = dateFormatter.stringFromDate(calculatedDate!)
 
//Mostramos por pantalla la fecha después de restarle 90 días
print(dateAsString)
*/

//8. Calculando el intervalo de tiempo entre dos fechas
//Declaramos nuestro dateFormatter
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
 
//Declaramos nuestro primer objeto NSDate
dateAsString = "2016-09-19 14:46:37"
var date1 = dateFormatter.dateFromString(dateAsString)!
 
//Declaramos nuestro segundo objeto NSDate
dateAsString = "2018-07-11 16:14:52"
var date2 = dateFormatter.dateFromString(dateAsString)!

//Crearemos un objeto NSDateComponentsFormatter y especificaremos su propiedad unitsStyle()
let dateComponentsFormatter = NSDateComponentsFormatter()
dateComponentsFormatter.unitsStyle = NSDateComponentsFormatterUnitsStyle.Full

//Especificamos la propiedad allowedUnits pasándole un array de unidades de tiempo
dateComponentsFormatter.allowedUnits = [NSCalendarUnit.Year, NSCalendarUnit.Month, NSCalendarUnit.Day, NSCalendarUnit.Hour, NSCalendarUnit.Minute, NSCalendarUnit.Second]
 
//Realizamos la llamada a stringFromDate() y almacenamos el resultado en autoFormattedDifference
let autoFormattedDifference = dateComponentsFormatter.stringFromDate(date1, toDate: date2)
