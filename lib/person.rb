require 'pry'
class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
    # attr_writer 

   def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
    end

    def happiness=(happy)
        if happy > 10
         happy = 10
        end
        if happy < 0
            happy = 0
        end
        @happiness = happy
    end

def bank_account=(num)
    @bank_account = num
end

def hygiene=(dirt)
    if dirt > 10
     dirt = 10
    end
    if dirt < 0
        dirt = 0
    end
    @hygiene = dirt
end

def clean?
    if @hygiene > 7
        true
    else
        false
    end
end

def happy?
    if @happiness > 7
        true
        else
            false
        end 
end

def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
end

def take_bath
    @hygiene += 4
    self.hygiene=(@hygiene)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    @happiness += 2
    @hygiene -= 3
    self.happiness=(@happiness)
    self.hygiene=(@hygiene)
    return "♪ another one bites the dust ♫"
end

def call_friend(friend)
    self.happiness+=3
    friend.happiness+=3
return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
    if topic == "politics"
       person.happiness-=2
       self.happiness-=2
       return "blah blah partisan blah lobbyist"  
    elsif topic == "weather"
        person.happiness+=1
       self.happiness+=1
       return "blah blah sun blah rain"
    else 
        return "blah blah blah blah blah"
    end
end



end