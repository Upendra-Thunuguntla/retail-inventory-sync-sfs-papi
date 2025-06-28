%dw 2.0
import isNumeric from dw::core::Strings

fun isValidRow(row) =  isValidLength(row) and isValidType(row) and isValidQnty(row)

fun isValidType(row) = (["Standard","Backorder"] contains row.Type)

fun isValidQnty(row) = isNumeric(row.Quantity)

fun isValidLength(row) = 
(valuesOf(row) reduce ((item, acc=(sizeOf(row) == 5)) -> (!isBlank(item) and acc)))

