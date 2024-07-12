class GendersController < ApplicationController

  def home
    render '/genders/home'
  end

  def guess_gender
    n=20
    file = File.open("#{Rails.root}/mf.txt")
    lines = file.readlines
    matchdata = lines.map { |line| line.chop.match(/(.*)\..*:(.+)/) }
    words = matchdata.map { |matchdata|
      word=matchdata[1].split(',')[0] #matchdata[1]=="string1,string2"
      [word, matchdata[2]]
    }
    @words=words.sample(n).to_h
    render '/genders/guess_gender'
    end

end
