class GendersController < ActionController::Base

  def home
    render '/genders/home'
  end

  def guess_gender
    file=File.open(File.dirname(mf.txt__FILE__) + './mf.txt')
    lines = file.readlines
    matchdata = lines.map { |line| line.chop.match(/(.*)\..*:(.+)/) }
    words = matchdata.map { |matchdata| [matchdata[1], matchdata[2]] }.to_h
    puts words
  end

  def final_score
    render '/genders/final_score'
  end

end