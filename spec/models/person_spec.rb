require 'spec_helper'

describe Person do

  before { @person = Person.new(first_name: "Luther",
                              last_name: "Blissett")}
  # Replace with factory

  subject { @person }

  it { should respond_to(:first_name) }
  it { should respond_to(:middle_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:date_of_birth) }
  
end
