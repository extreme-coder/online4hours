class PicCharadesController < ApplicationController
  def pic_charades
    unless params[:category] == nil
      category = params[:category].to_i
      @card = Card.where("category = ? and is_used = false", category).order('rand()').first
      @card.is_used = true
      @card.save
    end
  end
end
