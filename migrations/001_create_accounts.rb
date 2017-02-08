# sequel -m migrations sqlite://data.sqlite
Sequel.migration do
  change do
    create_table(:accounts) do
      primary_key :id
      column :address, :varchar
      column :balance, :number
    end
  end
end