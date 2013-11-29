require 'spec_helper'

describe UsersController do

    describe "GET new" do

      it "should render new page" do
        get :new #makes the request for the new action
        response.should render_template :new
      end
    end

    describe "POST create" do
      it "should save user to database" do
        expect {
        post :create, user: {name: "nico",
          email: "n@n.com", password: "password",
          password_confirmation: "password"}
        }.to change(User, :count).by(1)
      end
    end

end
