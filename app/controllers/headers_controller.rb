class HeadersController < ApplicationController
  # GET /headers
  # GET /headers.xml
  def index
    @headers = Header.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @headers }
    end
  end

  # GET /headers/1
  # GET /headers/1.xml
  def show
    @header = Header.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @header }
    end
  end

  # GET /headers/new
  # GET /headers/new.xml
  def new
    @header = Header.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @header }
    end
  end

  # GET /headers/1/edit
  def edit
    @header = Header.find(params[:id])
  end

  # POST /headers
  # POST /headers.xml
  def create
    @header = Header.new(params[:header])

    respond_to do |format|
      if @header.save
        format.html { redirect_to(@header, :notice => 'Header was successfully created.') }
        format.xml  { render :xml => @header, :status => :created, :location => @header }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @header.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /headers/1
  # PUT /headers/1.xml
  def update
    @header = Header.find(params[:id])

    respond_to do |format|
      if @header.update_attributes(params[:header])
        format.html { redirect_to(@header, :notice => 'Header was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @header.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /headers/1
  # DELETE /headers/1.xml
  def destroy
    @header = Header.find(params[:id])
    @header.destroy

    respond_to do |format|
      format.html { redirect_to(headers_url) }
      format.xml  { head :ok }
    end
  end
end
