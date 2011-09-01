class LogItemsController < ApplicationController
  
  before_filter :find_goal
  
  # GET /log_items
  # GET /log_items.json
  def index
    @log_items = LogItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @log_items }
    end
  end

  # GET /log_items/1
  # GET /log_items/1.json
  def show
    @log_item = LogItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @log_item }
    end
  end

  # GET /log_items/new
  # GET /log_items/new.json
  def new
    @log_item = @goal.log_items.build
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @log_item }
    end
  end

  # GET /log_items/1/edit
  def edit
    @log_item = LogItem.find(params[:id])
  end

  # POST /log_items
  # POST /log_items.json
  def create
    @log_item = @goal.log_items.build(params[:log_item])

    respond_to do |format|
      if @log_item.save
        format.html { redirect_to goal_log_items_path(@goal), notice: 'Log item was successfully created.' }
        format.json { render json: @log_item, status: :created, location: @log_item }
      else
        format.html { render action: "new" }
        format.json { render json: @log_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /log_items/1
  # PUT /log_items/1.json
  def update
    @log_item = LogItem.find(params[:id])

    respond_to do |format|
      if @log_item.update_attributes(params[:log_item])
        format.html { redirect_to @log_item, notice: 'Log item was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @log_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /log_items/1
  # DELETE /log_items/1.json
  def destroy
    @log_item = LogItem.find(params[:id])
    @log_item.destroy

    respond_to do |format|
      format.html { redirect_to log_items_url }
      format.json { head :ok }
    end
  end
  
  def find_goal
    @goal = Goal.find(params[:goal_id]) if params[:goal_id]
  end
end
