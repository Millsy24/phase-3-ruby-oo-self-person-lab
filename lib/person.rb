require 'pry'
class Person 
    attr_reader :name, :happiness, :hygiene, :happy, :clean 
    attr_accessor :bank_account, :get_paid
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @happy = happy?
        @clean = clean?
        @get_paid = get_paid
        
    end

    
    def happiness=(value)
        if value > 10 
            @happiness = 10
        elsif value < 0
            @happiness = 0
        else
            @happiness = value
        end
    end


    def hygiene=(value)
        if value > 10 
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        else
            @hygiene = value
        end
    end


    def happy?
        if @happiness > 7
            true
        elsif @happiness <= 7
            false
        end
    end


    def clean?
        if @hygiene > 7
            true
        elsif @hygiene <= 7
            false
        end
    end

    def get_paid(amount=100)
        @bank_account += amount
        "all about the benjamins"
    end
    

    
    

end

p = Person.new('Stella')

binding.pry




