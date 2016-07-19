require 'rails_helper'

# Anatomy of a controller spec:

describe PostsController do
  # describe "GET #index" do
  #   it "gets index"
  #   it "assigns posts variable"
  # end
  describe "GET #index" do
    it "assigns @recipes and renders the index template" do
      post = Post.create(title: "A summer on Ibiza", content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.")
      get :index

      expect(assigns(:posts)).to eq([post])
      expect(response).to render_template("index")
    end
  end


#   describe "GET #show" do
#     it "assigns the requested post as @post"
#   end

  describe "GET #show" do
    it "assigns @post and renders the show template" do
      post = Post.create(title: "A summer on Ibiza", content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.")
      get :show, id: post.id

      expect(assigns(:post)).to eq(post)
      expect(response).to render_template("show")
    end
  end
#

#   describe "GET #new" do
#     it "assigns a new post as @post"
#   end
#
#   describe "GET #edit" do
#     it "assigns the requested post as @post"
#     it "renders the edit template"
#   end
#
#   describe "POST #create" do
#     context "with valid params"
#     it "creates a new Post"
#     it "assigns a newly created post as @post"
#     it "redirects to the created post"
#     end
#
#     context "with invalid params"
#     it "assigns a newly created but unsaved post as @post"
#     it "re-renders the 'new' template"
#     end
#   end
#
#   describe "PUT #update" do
#     context "with valid params"
#       it "updates the requested post"
#       it "assigns the requested post as @post"
#       it "redirects to the post"
#     end
#     context "with invalid params" do
#       it "assigns the post as @post"
#       it "re-renders the 'edit' template"
#     end
#   end
#   describe "DELETE #destroy" do
#     it "destroys the requested post"
#     it "redirects to the posts list"
#   end
end
