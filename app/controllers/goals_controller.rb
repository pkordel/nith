class GoalsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :load_objects
  
  # GET /
  # GET /goals
  # GET /goals.json
  def index
    @goals = current_user.goals

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @goals }
    end
  end

  # GET /goals/1
  # GET /goals/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @goal }
    end
  end

  # GET /goals/new
  # GET /goals/new.json
  def new
    @goal = current_user.goals.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @goal }
    end
  end

  # GET /goals/1/edit
  def edit
  end

  # POST /goals
  # POST /goals.json
  def create
    @goal = current_user.goals.build(params[:goal])

    respond_to do |format|
      if @goal.save
        format.html { redirect_to goals_path, notice: 'Goal was successfully created.' }
        format.json { render json: @goal, status: :created, location: @goal }
      else
        format.html { render action: "new" }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /goals/1
  # PUT /goals/1.json
  def update
    respond_to do |format|
      if @goal.update_attributes(params[:goal])
        format.html { redirect_to goals_path, notice: 'Goal was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals/1
  # DELETE /goals/1.json
  def destroy
    @goal.destroy

    respond_to do |format|
      format.html { redirect_to goals_url }
      format.json { head :ok }
    end
  end
  
  def load_objects
    @goal = current_user.goals.find params[:id] if params[:id]
  end
end
