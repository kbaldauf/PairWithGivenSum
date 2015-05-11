module PairWithGivenSum
	def PairWithGivenSum.run(str, sum)
		if str.nil?  || str.length <=2 || sum.nil?
			puts "Must be given a string representing an integer array and an integer sum."
		else
      array = PairWithGivenSum.parseArray(str)
      array.sort!
      smallIndex = 0
      largeIndex = array.length - 1
      while largeIndex > smallIndex
        tmpSum = array[largeIndex] + array[smallIndex]
        if tmpSum == sum
          puts "Sum of #{array[smallIndex]} & #{array[largeIndex]} = #{sum}"
          return
        elsif tmpSum > sum
          largeIndex -= 1
        else
          smallIndex += 1
        end
      end
      puts "No pair with sum of #{sum}"
		end
	end

	def PairWithGivenSum.parseArray(arr)
    return arr.scan(/\d+/).map(&:to_i)
	end
end
