class GendersController < ActionController::Base

  def home
    render '/genders/home'
  end

  def guess_gender
    render '/genders/guess_gender'
  end

  def final_score
    render '/genders/final_score'
  end

end