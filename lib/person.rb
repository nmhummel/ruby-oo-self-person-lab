require "pry"

class Person

    attr_accessor :bank_account, :hygiene, :happiness
    #attr_writer :people #rewrites variable
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @hygiene = 8
        @happiness = 8
       # @salary = salary
    end

    def happiness
        @happiness.clamp(0,10)
    end

    def hygiene
        @hygiene.clamp(0,10)
    end    

    def happy?
        @happiness > 7
    end
   
    def clean?
        @hygiene > 7
    end

    #  non-attribute instance methods

    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        # increment person's happiness by 2 points BUT decrease hygiene points by 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        [friend, self].each do |f| 
            f.happiness += 3
        end
            "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(pal, topic)
        if topic == "politics"
            [pal, self].each {|p| p.happiness -=2}
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            [pal, self].each {|p| p.happiness +=1}
            "blah blah sun blah rain"
        else topic != "politics" || "weather"
            "blah blah blah blah blah"
        end
    end


        
end  