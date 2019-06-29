class Game < ApplicationRecord
  belongs_to :character
  belongs_to :user

  $game_prompt = TTY::Prompt.new

  def opponent_gen
    Character.all.shuffle.find {|char| char.team != character.team}
  end

  def compare_stats
  	@user_character = Character.find(self.character_id)
  	@opponent_character = Character.find_by(name: self.opponent)
  	if @user_character.overall > @opponent_character.overall
      puts "Your opponent appears to be weaker than you. This should be easy!"
  	elsif @user_character.overall < @opponent_character.overall
      puts "Your opponent appears to be stronger than you. Good luck!"
    else
      puts "Your opponent appears to be equally matched with you."
    end
    sleep 4
    system('clear')
  end

  def trivia_start
  	@user_character = self.character
  	@opponent_character = Character.find_by(name: self.opponent)
    answer_wrong_quotes = ["#{@user_character.name} lost health... Are you sure you're a fan?", "What are you doing? The world's depending on you...", "Come on! #{@opponent_character.name} is recking you right now.", "Don't let #{@opponent_character.name} do you like that...", "Are you serious?", "Maybe try on the next one..."].shuffle
  	answer_correct_quotes = ["Nice job! You successfully attacked #{@opponent_character.name}.", "You're doing well. Keep it up!", "Alright! I hear some cheers for you.", "You're really showing up to #{@opponent_character.name}.", "Wow. #{@opponent_character.name} doesn't stand a chance.", "Okay, I see you."].shuffle
    opp_answer_wrong_quotes = ["#{@opponent_character.name} lost health... Are you sure you're a fan?", "What are you doing? The world's depending on you...", "Come on! #{@user_character.name} is recking you right now.", "Don't let #{@user_character.name} do you like that...", "Are you serious?", "Maybe try on the next one..."].shuffle
    opp_answer_correct_quotes = ["Nice job! You successfully attacked #{@opponent_character.name}.", "You're doing well. Keep it up!", "Alright! I hear some cheers for you.", "You're really showing up to #{@user_character.name}.", "Wow. #{@user_character.name} doesn't stand a chance.", "Okay, I see you."].shuffle
    trivia_questions = @user_character.trivia.shuffle
    opp_questions = @opponent_character.trivia.shuffle
  	while self.character.health > 0 && trivia_questions.size > 0 && @opponent_character.health > 0
      if $solo == false
        puts "#{@user_character.name}'s turn."
      end
  	  curr_question = trivia_questions.pop
  	  user_response = $game_prompt.select(curr_question.question, [curr_question.correct_answer, curr_question.wrong_answer1, curr_question.wrong_answer2].shuffle)
  	  if user_response != curr_question.correct_answer
  	  	@user_character.health -= 1
        if (@user_character.health > 1)
  	  	  puts answer_wrong_quotes.pop
        elsif (@user_character.health == 1)
          puts "Oh no! You are on your last leg buddy."
        else
          puts "#{@user_character.name} is dissapointed in you..."
        end
  	  else
  	  	@opponent_character.health -=1
        if (@opponent_character.health > 1)
  	  	  puts answer_correct_quotes.pop
        elsif (@opponent_character.health == 1)
          puts "Awesome! You might need to land just one more hit on #{@opponent_character.name}."
        else 
          puts "#{@opponent_character.name} is down!"
        end
      end
      if $solo == false && self.character.health > 0 && trivia_questions.size > 0 && @opponent_character.health > 0
        sleep 3
        system ('clear')
        puts "#{$opponent_character}'s turn."
        opp_curr_question = opp_questions.pop
        user_response = $game_prompt.select(opp_curr_question.question, [opp_curr_question.correct_answer, opp_curr_question.wrong_answer1, opp_curr_question.wrong_answer2].shuffle)
        if user_response != opp_curr_question.correct_answer
          @opponent_character.health -= 1
        else
          @user_character.health -= 1
          puts opp_answer_correct_quotes.shuffle.pop
        end
        if (@opponent_character.health > 1)
          puts opp_answer_wrong_quotes.shuffle.pop
        elsif (@opponent_character.health == 1)
          puts "#{@opponent_character.name} might not have much left."
        else
          puts "#{@opponent_character.name} is down..."
        end
  	  end
      sleep 4
      system ('clear')
  	end
  	if (@user_character.health > @opponent_character.health)
      if $solo == true      
  	    puts "You Won!"
      else
        puts "#{self.user.name} won!"
      end
  	  user.wins += 1
      if $solo == false
        $opponent_user.losses += 1
      end
  	else
      if $solo == true    
  	    puts "You have been defeated!"
      else
        puts "#{$opponent_user.name} won!"
      end
  	  user.losses += 1
      if $solo == false
        $opponent_user.wins += 1
      end
  	end
  	user.save
  end
end
