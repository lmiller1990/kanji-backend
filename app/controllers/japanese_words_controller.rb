class JapaneseWordsController < ApplicationController
  def index
    search_terms = params[:characters]
    query = ""
    search_terms.each_with_index do |word, idx|
      query << "word LIKE '%#{word}%'"
      query << " AND " unless idx + 1 == search_terms.length 
    end
    words = JapaneseWord.where(query).order("LENGTH(word) ASC")
    render json: words, status: :ok
  end
end
