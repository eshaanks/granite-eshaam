# frozen_string_literal: true

class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :tasks, :body, :title
  end
end
