N = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
L = ["8th", "6th", "Union Square", "3rd",  "1st"]
S = ["Grand Central", "33rd", "28th", "23rd", "Union Square",  "Astor Place"]
total_stops = 0
$tr = ""
 def trip1(line,first,final , start)
 if line.index(first) > line.index(final)
   $total_stops= line.index(first) - line.index(final)  + $total_stops
       x =  line.index(first)
       y =  line.index(final)
       until y > x  do 
        $tr =  $tr +  line[x] + " ,"
        x = x - 1
        end 
else 
$total_stops= line.index(final) -  line.index(first)  
    x =  line.index(first)
    y =  line.index(final)
    until y < x  do 
 $tr =  $tr +  line[x] + " ,"
      x = x + 1
     end 
 end
if start == 1 
 return "You must travel through the following stops on the N line: #{$tr} , "
else 
return "Your journey continues through the following stops:#{$tr} "
end
end

  def planTrip(line1 , stop1 , line2 , stop2 )
  p trip1( line1 ,stop1 ,  "Union Square" , 1)
  p "Change at Union Square."
  p trip1( line2 , "Union Square",  stop2 , 2)
p "#{$total_stops} stops in total." 
end
planTrip(N, "Times Square", S, "33rd")