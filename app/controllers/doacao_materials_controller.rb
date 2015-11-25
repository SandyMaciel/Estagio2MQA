class DoacaoMaterialsController < ApplicationController
  before_action :set_doacao_material, only: [:show, :edit, :update, :destroy]

  # GET /doacao_materials
  # GET /doacao_materials.json
  def index
    @doacao_materials = DoacaoMaterial.all
  end

  # GET /doacao_materials/1
  # GET /doacao_materials/1.json
  def show
  end

  # GET /doacao_materials/new
  def new
    @doacao_material = DoacaoMaterial.new
  end

  # GET /doacao_materials/1/edit
  def edit
  end

  # POST /doacao_materials
  # POST /doacao_materials.json
  def create
    @doacao_material = DoacaoMaterial.new(doacao_material_params)

    respond_to do |format|
      if @doacao_material.save
        format.html { redirect_to @doacao_material, notice: 'Material cadastrado com sucesso.' }
        format.json { render :show, status: :created, location: @doacao_material }
      else
        format.html { render :new }
        format.json { render json: @doacao_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doacao_materials/1
  # PATCH/PUT /doacao_materials/1.json
  def update
    respond_to do |format|
      if @doacao_material.update(doacao_material_params)
        format.html { redirect_to @doacao_material, notice: 'Material atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @doacao_material }
      else
        format.html { render :edit }
        format.json { render json: @doacao_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doacao_materials/1
  # DELETE /doacao_materials/1.json
  def destroy
    @doacao_material.destroy
    respond_to do |format|
      format.html { redirect_to doacao_materials_url, notice: 'Material deletado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doacao_material
      @doacao_material = DoacaoMaterial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doacao_material_params
      params.require(:doacao_material).permit(:instuicao_id, :quantidade, :descricao)
    end
end
