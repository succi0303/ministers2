class ChangeDataTypeForTenure < ActiveRecord::Migration
  def up
    change_table :ministers do |t|
      t.change :tenure, :string
    end
  end

  def down
    change_table :ministers do |t|
      t.change :tenure, :integer
    end
  end
end
