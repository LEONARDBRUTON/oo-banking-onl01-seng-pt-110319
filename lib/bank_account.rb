class BankAccount
    attr_reader :name, :balance
    attr_accessor :status, :amount, :balance

    def initialize(name)
        @name = name
        @balance = (1000)
        @status = ("open")
    end

    def deposit(amount)
        puts self.name
        @balance += amount
    end

    def display_balance
        "Your balance is $#{balance}."
    end

    def valid?
        @status == ("open") && (@balance > 0 ? true : false)
    end

    def close_account
    @status = ("closed")
    end
end
