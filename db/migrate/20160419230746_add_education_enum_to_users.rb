class AddEducationEnumToUsers < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TYPE education AS ENUM ('hs_drop_out', 'high_school', 'some_college', 'college');
    SQL

    add_column :users, :education, :education, index: true
  end

  def down
    remove_column :users, :education

    execute <<-SQL
      DROP TYPE education;
    SQL
  end
end
