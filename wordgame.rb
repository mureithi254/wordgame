class GuessMyName
	attr_accessor :name
  def intialize(name)
  	@name = name
  end

  def CountName
	@sentence_array = @name.split("").map(&:downcase)
	@accurate_count = @sentence_array - [" "]
	@final_sentence = @name.gsub(/[a-zA-Z]/ , "_").split("")
  end

  def Guess
  	while @sentence_array.count("") < @accurate_count.count
	   puts "Guess a letter: "
	   guess = gets.downcase.chomp
 
	   if @sentence_array.include?(guess)
	     letter_index = @sentence_array.find_index(guess)
	     @sentence_array[letter_index] = ""
	     @final_sentence[letter_index] = guess
	     puts "Correct! The sentence is now: #{@final_sentence.join}"
	   else
	     puts "Sorry, that letter isn't the right answer, please try again."

	   end
	 end
  end

end

P = GuessMyName.new
P.intialize("jay")
P.CountName
P.Guess