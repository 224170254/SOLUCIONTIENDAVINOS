class BodegasController < ApplicationController
   layout "AdminLayout"
  # GET /bodegas
  # GET /bodegas.json
  def index
    @bodegas = Bodega.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bodegas }
    end
  end

  # GET /bodegas/1
  # GET /bodegas/1.json
  def show
    @bodega = Bodega.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bodega }
    end
  end

  # GET /bodegas/new
  # GET /bodegas/new.json
  def new
    @bodega = Bodega.new
          @boton = "Nueva Bodega"

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bodega }
    end
  end

  # GET /bodegas/1/edit
  def edit
    @bodega = Bodega.find(params[:id])
    @boton = "Actualizar"
  end

  # POST /bodegas
  # POST /bodegas.json
  def create
    @bodega = Bodega.new(params[:bodega])

    respond_to do |format|
      if @bodega.save
        format.html { redirect_to @bodega, notice: 'Bodega was successfully created.' }
        format.json { render json: @bodega, status: :created, location: @bodega }
      else
        format.html { render action: "new" }
        format.json { render json: @bodega.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bodegas/1
  # PUT /bodegas/1.json
  def update
    @bodega = Bodega.find(params[:id])

    respond_to do |format|
      if @bodega.update_attributes(params[:bodega])
        format.html { redirect_to @bodega, notice: 'Bodega was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bodega.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bodegas/1
  # DELETE /bodegas/1.json
  def destroy
    @bodega = Bodega.find(params[:id])
    @bodega.destroy

    respond_to do |format|
      format.html { redirect_to bodegas_url }
      format.json { head :no_content }
    end
  end
end
