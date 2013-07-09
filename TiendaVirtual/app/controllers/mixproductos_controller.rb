class MixproductosController < ApplicationController
  layout "AdminLayout"
  # GET /mixproductos
  # GET /mixproductos.json
  def index
    @mixproductos = Mixproducto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mixproductos }
    end
  end

  # GET /mixproductos/1
  # GET /mixproductos/1.json
  def show
    @mixproducto = Mixproducto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mixproducto }
    end
  end

  # GET /mixproductos/new
  # GET /mixproductos/new.json
  def new
    @mixproducto = Mixproducto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mixproducto }
    end
  end

  # GET /mixproductos/1/edit
  def edit
    @mixproducto = Mixproducto.find(params[:id])
    @mixboton = "Editar "
  end

  # POST /mixproductos
  # POST /mixproductos.json
  def create
    @mixproducto = Mixproducto.new(params[:mixproducto])
    @mixboton = "Crear "
    respond_to do |format|
      if @mixproducto.save
        format.html { redirect_to @mixproducto, notice: 'Mixproducto was successfully created.' }
        format.json { render json: @mixproducto, status: :created, location: @mixproducto }
      else
        format.html { render action: "new" }
        format.json { render json: @mixproducto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mixproductos/1
  # PUT /mixproductos/1.json
  def update
    @mixproducto = Mixproducto.find(params[:id])

    respond_to do |format|
      if @mixproducto.update_attributes(params[:mixproducto])
        format.html { redirect_to @mixproducto, notice: 'Mixproducto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mixproducto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mixproductos/1
  # DELETE /mixproductos/1.json
  def destroy
    @mixproducto = Mixproducto.find(params[:id])
    @mixproducto.destroy

    respond_to do |format|
      format.html { redirect_to mixproductos_url }
      format.json { head :no_content }
    end
  end
end
