class PagesController < ApplicationController
  def home

  end

  def about
    @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]
    if params[:member]
      @members = @members.select do |member|
        member.start_with?(params[:member].downcase)
      end
    end
  end
end
