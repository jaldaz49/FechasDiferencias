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

//** Dicho esto continuemos con nuestra comparación, añadamos otra fecha con un mes de diferencia con respecto a la primera:
var firstDateComponents = DateComponents()
var secondDateComponents = DateComponents()

//dateFormatter.setLocalizedDateFormatFromTemplate("ddMMyy")

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
