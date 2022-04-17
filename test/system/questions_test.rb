require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # end

  test "visiting /ask renders form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "visiting /answer" do
    visit answer_url
    assert_selector "a", text: "Ask your coach another question"
  end
end
