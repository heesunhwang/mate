class PicnicsController < ApplicationController
  def index
    @areas = ['서울', '경기', '강원', '충청도', '경상도', '전라도', '제주']
  end
end
