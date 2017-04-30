require 'test_helper'

class JapaneseWordsControllerTest < ActionDispatch::IntegrationTest
  def setup
    JapaneseWord.create(word: "漢字", meaning: "Kanji characters")
    JapaneseWord.create(word: "漢字検定", meaning: "Kanji test")
    JapaneseWord.create(word: "文字通り", meaning: "Literally")
  end

  test "returns some words based on kanji" do
    get japanese_words_path, params: {
      characters: [ "漢","字" ]
    }
    json = JSON.parse(response.body)

    assert_equal json.length, 2
  end
end
