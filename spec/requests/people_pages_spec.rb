require 'spec_helper'

describe "People pages" do

  subject { person }

  describe "signup" do

    before { visit "/people/new" }

    let(:submit) { "Add a person" }

    describe "with invalid information" do
      it "should not create a person" do
        expect { click_button submit }.not_to change(Person, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "First name",   with: "Luther"
        fill_in "Last name",    with: "Blissett"
      end

      it "should create a person" do
        expect { click_button submit }.to change(Person, :count).by(1)
      end
    end
  end
end