

 def englishNumber number
   if number < 0  # No negative numbers.
     return 'Please enter a number that isn\'t negative.'
   end
   if number == 0
     return 'zero'
   end

   numString = ''  # This is the string we will return.

   onesPlace = ['one',     'two',       'three',    'four',     'five',
                'six',     'seven',     'eight',    'nine']
   tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
                'sixty',   'seventy',   'eighty',   'ninety']
   teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
                'sixteen', 'seventeen', 'eighteen', 'nineteen']

   left  = number

   write = left/1000000000000
   left = left - write*1000000000000

   if write > 0
     trillions = englishNumber write
     numString = numString + trillions + ' trillion'

     if left > 0
       numString = numString + ' '
     end
   end

   write = left/1000000000
   left = left - write*1000000000

   if write > 0
     billions = englishNumber write
     numString = numString + billions + ' billion'

     if left > 0
       numString = numString + ' '
     end
   end

   write = left/1000000
   left = left - write*1000000

   if write > 0
     millions = englishNumber write
     numString = numString + millions + ' million'

     if left > 0
       numString = numString + ' '
     end
   end

   write = left/1000
   left = left - write*1000

   if write > 0
     thousands = englishNumber write
     numString = numString + thousands + ' thousand'

     if left > 0
       numString = numString + ' '
     end
   end


   write = left/100          # How many hundreds left to write out?
   left  = left - write*100  # Subtract off those hundreds.

   if write > 0
     # Now here's a really sly trick:
     hundreds  = englishNumber write
     numString = numString + hundreds + ' hundred'

     if left > 0
       numString = numString + ' '
     end
   end

   write = left/10          # How many tens left to write out?
   left  = left - write*10  # Subtract off those tens.

   if write > 0
     if ((write == 1) and (left > 0))
       numString = numString + teenagers[left-1]
       left = 0
     else
       numString = numString + tensPlace[write-1]
     end

     if left > 0
       # So we don't write 'sixtyfour'...
       numString = numString + '-'
     end
   end

   write = left  # How many ones left to write out?
   left  = 0     # Subtract off those ones.

   if write > 0
     numString = numString + onesPlace[write-1]
   end

   numString
 end


puts "How many beers?"
amount = gets.chomp
beers = amount.to_i
engBeers = englishNumber beers

 while beers > 1 do
   puts engBeers + " bottles of beer on the wall,"
   puts engBeers + " bottles of beer.."
   puts "If one of those bottles should happen to fall"
   beers = beers - 1
   engBeers = englishNumber beers
   puts engBeers + " bottles of beer on the wall!"
 end
  puts engBeers + " bottle of beer on the wall,"
  puts engBeers + " bottle of beer..."
  puts engBeers + " bottle of beer? You should drink that one."
