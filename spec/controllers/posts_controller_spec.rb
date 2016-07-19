require 'rails_helper'

describe PostsController do

  describe "GET index" do
    it "assigns @posts and renders the index template" do
      post = Post.create(title:"No holiday, just testing", content: "Some text here about this Holiday post")

      get :index

      expect(assigns(:posts)).to eq([post])
      expect(response).to render_template("index")
    end
  end

  # rest of spec omitted ...
end
