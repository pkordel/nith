require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe LogItemsController do

  # This should return the minimal set of attributes required to create a valid
  # LogItem. As you add validations to LogItem, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all log_items as @log_items" do
      log_item = LogItem.create! valid_attributes
      get :index
      assigns(:log_items).should eq([log_item])
    end
  end

  describe "GET show" do
    it "assigns the requested log_item as @log_item" do
      log_item = LogItem.create! valid_attributes
      get :show, :id => log_item.id.to_s
      assigns(:log_item).should eq(log_item)
    end
  end

  describe "GET new" do
    it "assigns a new log_item as @log_item" do
      get :new
      assigns(:log_item).should be_a_new(LogItem)
    end
  end

  describe "GET edit" do
    it "assigns the requested log_item as @log_item" do
      log_item = LogItem.create! valid_attributes
      get :edit, :id => log_item.id.to_s
      assigns(:log_item).should eq(log_item)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new LogItem" do
        expect {
          post :create, :log_item => valid_attributes
        }.to change(LogItem, :count).by(1)
      end

      it "assigns a newly created log_item as @log_item" do
        post :create, :log_item => valid_attributes
        assigns(:log_item).should be_a(LogItem)
        assigns(:log_item).should be_persisted
      end

      it "redirects to the created log_item" do
        post :create, :log_item => valid_attributes
        response.should redirect_to(LogItem.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved log_item as @log_item" do
        # Trigger the behavior that occurs when invalid params are submitted
        LogItem.any_instance.stub(:save).and_return(false)
        post :create, :log_item => {}
        assigns(:log_item).should be_a_new(LogItem)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        LogItem.any_instance.stub(:save).and_return(false)
        post :create, :log_item => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested log_item" do
        log_item = LogItem.create! valid_attributes
        # Assuming there are no other log_items in the database, this
        # specifies that the LogItem created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        LogItem.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => log_item.id, :log_item => {'these' => 'params'}
      end

      it "assigns the requested log_item as @log_item" do
        log_item = LogItem.create! valid_attributes
        put :update, :id => log_item.id, :log_item => valid_attributes
        assigns(:log_item).should eq(log_item)
      end

      it "redirects to the log_item" do
        log_item = LogItem.create! valid_attributes
        put :update, :id => log_item.id, :log_item => valid_attributes
        response.should redirect_to(log_item)
      end
    end

    describe "with invalid params" do
      it "assigns the log_item as @log_item" do
        log_item = LogItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LogItem.any_instance.stub(:save).and_return(false)
        put :update, :id => log_item.id.to_s, :log_item => {}
        assigns(:log_item).should eq(log_item)
      end

      it "re-renders the 'edit' template" do
        log_item = LogItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LogItem.any_instance.stub(:save).and_return(false)
        put :update, :id => log_item.id.to_s, :log_item => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested log_item" do
      log_item = LogItem.create! valid_attributes
      expect {
        delete :destroy, :id => log_item.id.to_s
      }.to change(LogItem, :count).by(-1)
    end

    it "redirects to the log_items list" do
      log_item = LogItem.create! valid_attributes
      delete :destroy, :id => log_item.id.to_s
      response.should redirect_to(log_items_url)
    end
  end

end
