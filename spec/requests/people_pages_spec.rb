require 'spec_helper'

describe "People pages" do

  subject { person }

  describe "add new person" do

    before { visit "/people/new" }

    let(:submit) { "Add a person" }

    describe "with invalid information" do
      it "should not create a person" do
        expect { click_button submit }.not_to change(Person, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "First name",    with: "Luther"
        fill_in "Middle name",   with: "Loide"
        fill_in "Last name",     with: "Blissett"
        select '1958',           from: "person_date_of_birth_1i"
        select 'February',       from: "person_date_of_birth_2i"
        select '1',              from: "person_date_of_birth_3i"                
      end

      it "should create a person" do
        expect { click_button submit }.to change(Person, :count).by(1)
      end

      

    end
  end
end