module SavingsAccount
  def self.interest_rate(balance)
    case balance
      when (0...1000)
        return 0.5
      when (1000...5000)
        return 1.621
      when (5000..Float::INFINITY)
        return 2.475
    else 
      return 3.213
    end
  end

  def self.annual_balance_update(balance)
    return self.interest_rate(balance) / 100.0 * balance + balance;
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    # require 'pry-byebug' ;binding.pry;
    balance_atual = self.annual_balance_update(current_balance);
    quantidade_em_anos = 1;
    until balance_atual >= desired_balance do 
      balance_atual = self.annual_balance_update(balance_atual);
      quantidade_em_anos += 1;
    end
    return quantidade_em_anos;
  end
end
