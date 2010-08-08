class FirmsController < ApplicationController

  before_filter :find_firm, :only => [:show, :edit, :update, :destroy]

  # GET /firms
  # GET /firms.xml
  def index
    @firms = Firm.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @firms }
    end
  end

  # GET /firms/1
  # GET /firms/1.xml
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @firm }
    end
  end

  # GET /firms/new
  # GET /firms/new.xml
  def new
    @firm = Firm.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @firm }
    end
  end

  # GET /firms/1/edit
  def edit
  end

  # POST /firms
  # POST /firms.xml
  def create
    @firm = Firm.new(params[:firm])

    respond_to do |format|
      if @firm.save
        format.html { redirect_to(@firm, :notice => 'Firm was successfully created.') }
        format.xml  { render :xml => @firm, :status => :created, :location => @firm }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @firm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /firms/1
  # PUT /firms/1.xml
  def update
    respond_to do |format|
      if @firm.update_attributes(params[:firm])
        format.html { redirect_to(@firm, :notice => 'Firm was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @firm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /firms/1
  # DELETE /firms/1.xml
  def destroy
    @firm.destroy

    respond_to do |format|
      format.html { redirect_to(firms_url) }
      format.xml  { head :ok }
    end
  end

  private

    def find_firm
      @firm = Firm.find(params[:id])
    end

end

