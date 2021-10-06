require_relative 'db_connection'
require 'active_support/inflector'
# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.

class SQLObject
  def self.columns
    all = DBConnection.execute2(<<-SQL).first
      SELECT
        *
      FROM
        #{self.table_name}
    SQL

    all.map! { |str| str.to_sym }
  end

  def self.finalize!
    self.columns.each do |col_name|
      define_method(col_name) do
        self.attributes[col_name]
      end
    end

    self.columns.each do |col_name|
      define_method("#{col_name}=") do |arg|
        self.attributes[col_name] = arg
      end
    end
  end

  def self.table_name=(table_name)
    return "#{table_name.downcase}s"
  end

  def self.table_name
    return "#{self.to_s.downcase}s"
  end

  def self.all
    # ...
  end

  def self.parse_all(results)
    # ...
  end

  def self.find(id)
    # ...
  end

  def initialize(params = {})
    params.each do |name, val|
      raise "unknown attribute '#{name}'" if !self.class.columns.include?(name)
      self.send("#{name}=", val)
    end
  end

  def attributes
    @attributes ||= {}
  end

  def attribute_values
    # ...
  end

  def insert
    # ...
  end

  def update
    # ...
  end

  def save
    # ...
  end
end
