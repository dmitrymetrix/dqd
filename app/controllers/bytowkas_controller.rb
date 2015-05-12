class BytowkasController < ApplicationController
  def index
    @bytowkas = Bytowka.all
  end

  def new
    @bytowka = Bytowka.new
  end

  def show
    @bytowka = Bytowka.find(params[:id])
  end

  def create
    @bytowka = Bytowka.new(bytowka_params)
    if @bytowka.save
      redirect_to @bytowka
    else
      render 'new'
    end
  end

  def edit
    @bytowka = Bytowka.find(params[:id])
  end

  def update
    @bytowka = Bytowka.find(params[:id])
    if @bytowka.update_attributes(bytowka_params)
      redirect_to @bytowka
    else
      render 'edit'
    end
  end

  def destroy
    Bytowka.find(params[:id]).destroy
    redirect_to bytowkas_url
  end

  private

  def bytowka_params
    params.require(:bytowka).permit(:parametr, :kosht, :ilosc)
  end
end