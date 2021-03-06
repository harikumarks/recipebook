#require 'spec_helper'
#
## This spec was generated by rspec-rails when you ran the scaffold generator.
## It demonstrates how one might use RSpec to specify the controller code that
## was generated by Rails when you ran the scaffold generator.
##
## It assumes that the implementation code is generated by the rails scaffold
## generator.  If you are using any extension libraries to generate different
## controller code, this generated spec may or may not pass.
##
## It only uses APIs available in rails and/or rspec-rails.  There are a number
## of tools you can use to make these specs even more expressive, but we're
## sticking to rails and rspec-rails APIs to keep things simple and stable.
##
## Compared to earlier versions of this generator, there is very limited use of
## stubs and message expectations in this spec.  Stubs are only used when there
## is no simpler way to get a handle on the object needed for the example.
## Message expectations are only used when there is no simpler way to specify
## that an instance is receiving a specific message.
#
#describe IngredientCategoriesController do
#
#  # This should return the minimal set of attributes required to create a valid
#  # IngredientCategory. As you add validations to IngredientCategory, be sure to
#  # update the return value of this method accordingly.
#  def valid_attributes
#    {}
#  end
#
#  # This should return the minimal set of values that should be in the session
#  # in order to pass any filters (e.g. authentication) defined in
#  # IngredientCategoriesController. Be sure to keep this updated too.
#  def valid_session
#    {}
#  end
#
#  describe "GET index" do
#    it "assigns all ingredient_categories as @ingredient_categories" do
#      ingredient_category = IngredientCategory.create! valid_attributes
#      get :index, {}, valid_session
#      assigns(:ingredient_categories).should eq([ingredient_category])
#    end
#  end
#
#  describe "GET show" do
#    it "assigns the requested ingredient_category as @ingredient_category" do
#      ingredient_category = IngredientCategory.create! valid_attributes
#      get :show, {:id => ingredient_category.to_param}, valid_session
#      assigns(:ingredient_category).should eq(ingredient_category)
#    end
#  end
#
#  describe "GET new" do
#    it "assigns a new ingredient_category as @ingredient_category" do
#      get :new, {}, valid_session
#      assigns(:ingredient_category).should be_a_new(IngredientCategory)
#    end
#  end
#
#  describe "GET edit" do
#    it "assigns the requested ingredient_category as @ingredient_category" do
#      ingredient_category = IngredientCategory.create! valid_attributes
#      get :edit, {:id => ingredient_category.to_param}, valid_session
#      assigns(:ingredient_category).should eq(ingredient_category)
#    end
#  end
#
#  describe "POST create" do
#    describe "with valid params" do
#      it "creates a new IngredientCategory" do
#        expect {
#          post :create, {:ingredient_category => valid_attributes}, valid_session
#        }.to change(IngredientCategory, :count).by(1)
#      end
#
#      it "assigns a newly created ingredient_category as @ingredient_category" do
#        post :create, {:ingredient_category => valid_attributes}, valid_session
#        assigns(:ingredient_category).should be_a(IngredientCategory)
#        assigns(:ingredient_category).should be_persisted
#      end
#
#      it "redirects to the created ingredient_category" do
#        post :create, {:ingredient_category => valid_attributes}, valid_session
#        response.should redirect_to(IngredientCategory.last)
#      end
#    end
#
#    describe "with invalid params" do
#      it "assigns a newly created but unsaved ingredient_category as @ingredient_category" do
#        # Trigger the behavior that occurs when invalid params are submitted
#        IngredientCategory.any_instance.stub(:save).and_return(false)
#        post :create, {:ingredient_category => {}}, valid_session
#        assigns(:ingredient_category).should be_a_new(IngredientCategory)
#      end
#
#      it "re-renders the 'new' template" do
#        # Trigger the behavior that occurs when invalid params are submitted
#        IngredientCategory.any_instance.stub(:save).and_return(false)
#        post :create, {:ingredient_category => {}}, valid_session
#        response.should render_template("new")
#      end
#    end
#  end
#
#  describe "PUT update" do
#    describe "with valid params" do
#      it "updates the requested ingredient_category" do
#        ingredient_category = IngredientCategory.create! valid_attributes
#        # Assuming there are no other ingredient_categories in the database, this
#        # specifies that the IngredientCategory created on the previous line
#        # receives the :update_attributes message with whatever params are
#        # submitted in the request.
#        IngredientCategory.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
#        put :update, {:id => ingredient_category.to_param, :ingredient_category => {'these' => 'params'}}, valid_session
#      end
#
#      it "assigns the requested ingredient_category as @ingredient_category" do
#        ingredient_category = IngredientCategory.create! valid_attributes
#        put :update, {:id => ingredient_category.to_param, :ingredient_category => valid_attributes}, valid_session
#        assigns(:ingredient_category).should eq(ingredient_category)
#      end
#
#      it "redirects to the ingredient_category" do
#        ingredient_category = IngredientCategory.create! valid_attributes
#        put :update, {:id => ingredient_category.to_param, :ingredient_category => valid_attributes}, valid_session
#        response.should redirect_to(ingredient_category)
#      end
#    end
#
#    describe "with invalid params" do
#      it "assigns the ingredient_category as @ingredient_category" do
#        ingredient_category = IngredientCategory.create! valid_attributes
#        # Trigger the behavior that occurs when invalid params are submitted
#        IngredientCategory.any_instance.stub(:save).and_return(false)
#        put :update, {:id => ingredient_category.to_param, :ingredient_category => {}}, valid_session
#        assigns(:ingredient_category).should eq(ingredient_category)
#      end
#
#      it "re-renders the 'edit' template" do
#        ingredient_category = IngredientCategory.create! valid_attributes
#        # Trigger the behavior that occurs when invalid params are submitted
#        IngredientCategory.any_instance.stub(:save).and_return(false)
#        put :update, {:id => ingredient_category.to_param, :ingredient_category => {}}, valid_session
#        response.should render_template("edit")
#      end
#    end
#  end
#
#  describe "DELETE destroy" do
#    it "destroys the requested ingredient_category" do
#      ingredient_category = IngredientCategory.create! valid_attributes
#      expect {
#        delete :destroy, {:id => ingredient_category.to_param}, valid_session
#      }.to change(IngredientCategory, :count).by(-1)
#    end
#
#    it "redirects to the ingredient_categories list" do
#      ingredient_category = IngredientCategory.create! valid_attributes
#      delete :destroy, {:id => ingredient_category.to_param}, valid_session
#      response.should redirect_to(ingredient_categories_url)
#    end
#  end
#
#end
