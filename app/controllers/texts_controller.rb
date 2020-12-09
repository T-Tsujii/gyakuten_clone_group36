class TextsController < ApplicationController
  def index
    if index.save
      redirect_to root_path, notice:  "登録が完了しました。"  
    else
      flash[:alert] = "名前を入力してください"
      render :new
    end
    
  end
end
