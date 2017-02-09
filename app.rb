require 'roda'
require './models'
require 'net/http'
require 'json'

class App < Roda
  plugin :json
  plugin :all_verbs

  route do |r|

    # responds with all accounts in the database.
    r.get do
      Account.all
    end

    # creates a new account or updates account balance if account already exists.
    r.post do

      address = r.params['address']
      balance = get_balance(address)
      account = Account.find(address: address) if balance

      if not balance
        'Address does not exist'

      elsif account
        account.update(balance: balance)
        'Updated existing account successfully'

      else
        Account.create(address: address, balance: balance)
        'Created account successfully'
      end
    end
  end

  ##
  # 'get_balance' returns the balance of a given Ethereum address
  #  or nil if address does not exist.
  ##
  def get_balance(address)
    url = "https://etherchain.org/api/account/#{address}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    json = JSON.parse(response)
    json['data'][0]['balance'] if json && json['data'][0]
  end
end