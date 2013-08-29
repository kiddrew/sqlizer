class QueryTokensController < ApplicationController
  # GET /query_tokens
  # GET /query_tokens.json
  def index
    @query_tokens = QueryToken.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @query_tokens }
    end
  end

  # GET /query_tokens/1
  # GET /query_tokens/1.json
  def show
    @query_token = QueryToken.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @query_token }
    end
  end

  # GET /query_tokens/new
  # GET /query_tokens/new.json
  def new
    @query_token = QueryToken.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @query_token }
    end
  end

  # GET /query_tokens/1/edit
  def edit
    @query_token = QueryToken.find(params[:id])
  end

  # POST /query_tokens
  # POST /query_tokens.json
  def create
    @query_token = QueryToken.new(params[:query_token])

    respond_to do |format|
      if @query_token.save
        format.html { redirect_to @query_token, notice: 'Query token was successfully created.' }
        format.json { render json: @query_token, status: :created, location: @query_token }
      else
        format.html { render action: "new" }
        format.json { render json: @query_token.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /query_tokens/1
  # PUT /query_tokens/1.json
  def update
    @query_token = QueryToken.find(params[:id])

    respond_to do |format|
      if @query_token.update_attributes(params[:query_token])
        format.html { redirect_to @query_token, notice: 'Query token was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @query_token.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /query_tokens/1
  # DELETE /query_tokens/1.json
  def destroy
    @query_token = QueryToken.find(params[:id])
    @query_token.destroy

    respond_to do |format|
      format.html { redirect_to query_tokens_url }
      format.json { head :no_content }
    end
  end
end
