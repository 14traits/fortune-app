class MyExamplesController < ApplicationController
  def get_fortune
    index = rand(0..2)
    array = ["Easy is the path to wisdom for those not blinded by themselves.", "Most powerful is he who controls his own power.", "Fail with honor rather than succeed by fraud."]
    fortune = { fortune: array[index] }
    render json: fortune
  end

  def get_lotto
    lotto_numbers = []
    6.times do
      lotto_numbers << rand(1..60)
    end
    render json: { lotto_numbers: lotto_numbers }
  end

  # def get_page_count
  #   count = 0
  # end

  def get_bottle_song
    count = 99
    array = []
    while count > 1
      array << "#{count} bottles of beer on the wall, #{count} bottles of beer."
      count -= 1
      array << "Take one down and pass it around, #{count} bottles of beer on the wall."
    end
    array << "1 bottle of beer on the wall, 1 bottle of beer."
    array << "Take one down and pass it around, no more bottles of beer on the wall."
    array << "No more bottles of beer on the wall, no more bottles of beer."
    array << "Go to the store and buy some more, 99 bottles of beer on the wall."
    render json: array
  end
end
