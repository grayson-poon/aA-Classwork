require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET #new" do
    it "renders the new template" do
      get :new, {}
      expect(response).to render_template("new")
    end
  end

  describe "POST #create" do
    context "with invalid params" do
      it "validates the presence of the user's email and password" do
        get :create, {}
        expect(response).to eq("Invalid username or password")
      end

      it "validates that the password is at least 6 characters long" do
        user = User.new(email: "test@test.com", password: "test")
        
        if user.password.length < 6
          expect(response).to eq("Password is too short")
        end
      end
    end

    context "with valid params" do
      it "redirects user to bands index on success" do
        
      end
    end
  end
end
