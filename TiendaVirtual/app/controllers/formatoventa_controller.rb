class FormatoventaController < ApplicationController
   layout "AdminLayout"
  # GET /formatoventa
  # GET /formatoventa.json
  def index
    @formatoventa = Formatoventum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @formatoventa }
    end
  end

  # GET /formatoventa/1
  # GET /formatoventa/1.json
  def show
    @formatoventum = Formatoventum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @formatoventum }
    end
  end

  # GET /formatoventa/new
  # GET /formatoventa/new.json
  def new
    @formatoventum = Formatoventum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @formatoventum }
    end
  end

  # GET /formatoventa/1/edit
  def edit
    @formatoventum = Formatoventum.find(params[:id])
  end

  # POST /formatoventa
  # POST /formatoventa.json
  def create
    @formatoventum = Formatoventum.new(params[:formatoventum])

    respond_to do |format|
      if @formatoventum.save
        format.html { redirect_to @formatoventum, notice: 'Formatoventum was successfully created.' }
        format.json { render json: @formatoventum, status: :created, location: @formatoventum }
      else
        format.html { render action: "new" }
        format.json { render json: @formatoventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /formatoventa/1
  # PUT /formatoventa/1.json
  def update
    @formatoventum = Formatoventum.find(params[:id])

    respond_to do |format|
      if @formatoventum.update_attributes(params[:formatoventum])
        format.html { redirect_to @formatoventum, notice: 'Formatoventum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @formatoventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formatoventa/1
  # DELETE /formatoventa/1.json
  def destroy
    @formatoventum = Formatoventum.find(params[:id])
    @formatoventum.destroy

    respond_to do |format|
      format.html { redirect_to formatoventa_url }
      format.json { head :no_content }
    end
  end
end
