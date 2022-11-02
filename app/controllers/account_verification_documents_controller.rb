class AccountVerificationDocumentsController < ApplicationController
  def index
    @account_verification_document = AccountVerificationDocument.all
  end

  def new
    @account_verification_document= AccountVerificationDocument.new

  end

  def create
    @account_verification_document1= AccountVerificationDocument.new(file: params[:account_verification_document][:file])
    @account_verification_document2= AccountVerificationDocument.new(file: params[:account_verification_document][:ine])
    @account_verification_document3= AccountVerificationDocument.new(file: params[:account_verification_document][:comp_domicilio])
    @account_verification_document4= AccountVerificationDocument.new(file: params[:account_verification_document][:selfie])
    
    
    if @account_verification_document1.valid?
      @account_verification_document1.save
      @account_verification_document2.save
      @account_verification_document3.save
      @account_verification_document4.save
      
      redirect_to new_account_verification_path
      #redirect_back_to
    else
      redirect_to new_account_verification_path
      #render :new
    end
  end

  def show
    # @account_verification_document= AccountVerificationDocument.find(params[:id])
  end

  def update
    # @account_verification_document= AccountVerificationDocument.find(params[:id])
    # @album.assign_attributes(album_params)

    # if @album.valid?
    #   @album.save
    #   redirect_to @album
    # else
    #   render :show
    # end
  end

  def delete
    # @album.destroy
    # redirect_to action: :index
  end

  private

  def album_params
    binding.pry  
    params.require(:account_verification_document).permit(:selfie, :ine, :file, :comp_domicilio)
  end
end
