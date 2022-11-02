class AccountVerificationController < ApplicationController
  def index
    @account_verification_document = AccountVerificationDocument.all
  end

  def new
    @account_verification_document= AccountVerificationDocument.new
  end

  def create
    # @account_verification_document= AccountVerificationDocument.new(album_params)

    # if @account_verification_document.valid?
    #   @account_verification_document.save
    #   redirect_to @account_verification_document
    # else
    #   render :new
    # end
  end

  def show
    # @account_verification_document= AccountVerificationDocument.find(params[:id])
  end

  def update
    # @account_verification_document= AccountVerificationDocument.find(params[:id])
    # @account_verification_document.assign_attributes(album_params)

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
    params.require(:album).permit(:name, :cover_photo, photos_attributes: {})
  end
end
