import Foundation

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

let futureDate = someDateComponents.date

let remainingTime = someDateComponentsFormatter.string(from: Date(), to: futureDate!)!

let outputDateFormatter = DateFormatter()

outputDateFormatter.dateFormat = "dd/MM/yyyy"

print("From today \(outputDateFormatter.string(from: Date())) to 23/04/2017 there is \(remainingTime)")
