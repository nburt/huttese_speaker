class PhrasesController < ApplicationController

  def index
    offset = rand(PhraseRepository.count)
    @phrase_repository = PhraseRepository.offset(offset).first
  end

end