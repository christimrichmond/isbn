  isbn = StdNum::ISBN.normalize(goodISBN)
        # => a 13-digit ISBN with no dashes/spaces

      isbn = StdNum::ISBN.normalize(badISBN)
        # => nil (if it's not an ISBN or the checkdigit is bad)

      tenDigit = StdNum::ISBN.convert_to_10(isbn13)
      thirteenDigit = StdNum::ISBN.convert_to_13(isbn10)

      thirteenDigit,tenDigit = StdNum::ISBN.allNormalizedValues(issn)
        # => array of the ten and thirteen digit isbns if valid;
        #    an empty array if not

      digit = StdNum::ISBN.checkdigit(rawisbn)
        # => '0'..'9' (for isbn13) or '0'..'9','X' (for isbn10)

      digit = StdNum::ISBN.checkdigit(StdNum::ISBN.normalize(rawisbn))
        # => '0'..'9', the checkdigit of the 13-digit ISBN

      if StdNum::ISBN.valid?(rawisbn)
        puts "#{isbn} has a valid checkdigit"
      end