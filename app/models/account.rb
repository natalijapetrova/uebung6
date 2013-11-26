class Account < ActiveRecord::Base
	


	has_many :transactions
	belongs_to :customer
	validates :number,
		presence: true,
		uniqueness: true
	validates :balance,
		presence: true,
		numericality: { greater_than_or_equal_to: 0 }





def withdraw(amount)    
        if (amount <= 0 || ((self.balance - amount) < 0))
                puts "Einen positiven Einzahlungsbetrag eingeben / oder Konto nicht ausreichend gedeckt: "
            else    
                puts "#{amount}Euro wurde/-n abgehoben "
                self.balance -= amount
                self.save
            end    
    end

    def deposit(amount)    
            if amount <= 0
                puts "Einen positiven Einzahlungsbetrag eingeben: "
            else    
                puts "#{amount}Euro wurde/-n erfolgreich eingezahlt"
                self.balance += amount
                self.save
            end    
    end
    
    	def transfer(amount, accountnr)
        if (amount <= 0 || (self.balance - amount) < 0)
                puts "Einen positiven Ueberweisungsbetrag eingeben / oder Konto nicht ausreichend gedeckt: "
            else
                self.withdraw(amount)
                account2 = Account.where(number: accountnr).first
                account2.deposit(amount)
        end    
    end

    def statement
            puts "Account Number: " +self.number.to_s
    
            puts "Last Name: " + self.customer.last_name
    
    end




end
