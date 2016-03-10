class Bank 
  class << self
  def initialize
    @accounts = []
  end
  
  def create_accounts(account)
    @accounts.push(account)
  end
  
  def account
    @accounts
    
  end
end

class Account
  @@transid = 0
  def initialize(first_name, last_name, balance=0)
    @first_name = first_name
    @last_name = last_name
    @balance = balance
    @@transid += 1 
  end
  
  def transid
    @@transid 
  end
  
  def deposit(balance)
    @@transid += 1
    @balance += balance    
  end

  def withdrawl(balance)
    @@transid += 1
    @balance -= balance
  end
  
  def last_transaction
    time = Time.now
    return "transaction # #{@@transid}, => $#{@balance} at #{time}"
  end
  
  def account_details
    return "First Name : #{@first_name} \n Last Name : #{@last_name} \n Account Balance : #{@balance}"
  end
end

new_person = Account.new("tom", "sdf", 200)

# # new_person
 new_person.last_transaction

new_2 = Account.new("Brittney", "xyz", 1000)
# new_2.last_transaction

# p new_2.deposit(500)
new_3 = Account.new("Anshul", "abc", 400)
 new_2.last_transaction

chase = Bank.new

chase.create_accounts(new_2)
chase.create_accounts(new_3)
p chase.accounts