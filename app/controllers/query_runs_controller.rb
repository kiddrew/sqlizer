class QueryRunsController < ApplicationController
  # GET /query_runs
  # GET /query_runs.json
  def index
    @query_runs = QueryRun.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @query_runs }
    end
  end

  # GET /query_runs/1
  # GET /query_runs/1.json
  def show
    @query_run = QueryRun.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @query_run }
    end
  end

  # GET /query_runs/new
  # GET /query_runs/new.json
  def new
    @query_run = QueryRun.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @query_run }
    end
  end

  # GET /query_runs/1/edit
  def edit
    @query_run = QueryRun.find(params[:id])
  end

  # POST /query_runs
  # POST /query_runs.json
  def create
    @query_run = QueryRun.new(params[:query_run])

    respond_to do |format|
      if @query_run.save
        format.html { redirect_to @query_run, notice: 'Query run was successfully created.' }
        format.json { render json: @query_run, status: :created, location: @query_run }
      else
        format.html { render action: "new" }
        format.json { render json: @query_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /query_runs/1
  # PUT /query_runs/1.json
  def update
    @query_run = QueryRun.find(params[:id])

    respond_to do |format|
      if @query_run.update_attributes(params[:query_run])
        format.html { redirect_to @query_run, notice: 'Query run was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @query_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /query_runs/1
  # DELETE /query_runs/1.json
  def destroy
    @query_run = QueryRun.find(params[:id])
    @query_run.destroy

    respond_to do |format|
      format.html { redirect_to query_runs_url }
      format.json { head :no_content }
    end
  end
end
