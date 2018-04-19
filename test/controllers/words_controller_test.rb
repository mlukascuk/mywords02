require 'test_helper'

class WordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @word = words(:one)
  end

  test "should get index" do
    get words_url
    assert_response :success
  end

  test "should get new" do
    get new_word_url
    assert_response :success
  end

  test "should create word" do
    assert_difference('Word.count') do
      post words_url, params: { word: { created: @word.created, image: @word.image, last_schedule: @word.last_schedule, learn_state: @word.learn_state, native: @word.native, native_sample_0: @word.native_sample_0, native_sample_1: @word.native_sample_1, native_sample_2: @word.native_sample_2, next_schedule: @word.next_schedule, owner_id: @word.owner_id, target: @word.target, target_sample_0: @word.target_sample_0, target_sample_1: @word.target_sample_1, target_sample_2: @word.target_sample_2, word_class: @word.word_class } }
    end

    assert_redirected_to word_url(Word.last)
  end

  test "should show word" do
    get word_url(@word)
    assert_response :success
  end

  test "should get edit" do
    get edit_word_url(@word)
    assert_response :success
  end

  test "should update word" do
    patch word_url(@word), params: { word: { created: @word.created, image: @word.image, last_schedule: @word.last_schedule, learn_state: @word.learn_state, native: @word.native, native_sample_0: @word.native_sample_0, native_sample_1: @word.native_sample_1, native_sample_2: @word.native_sample_2, next_schedule: @word.next_schedule, owner_id: @word.owner_id, target: @word.target, target_sample_0: @word.target_sample_0, target_sample_1: @word.target_sample_1, target_sample_2: @word.target_sample_2, word_class: @word.word_class } }
    assert_redirected_to word_url(@word)
  end

  test "should destroy word" do
    assert_difference('Word.count', -1) do
      delete word_url(@word)
    end

    assert_redirected_to words_url
  end
end
