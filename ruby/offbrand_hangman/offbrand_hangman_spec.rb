require_relative 'offbrand_hangman'

describe Offbrand_hangman do
  let(:offbrand_hangman) { Offbrand_hangman.new("hello") }

  it "Displays word" do
    expect(offbrand_hangman.display_word).to eq "_ _ _ _ _ "
  end

  it "Checks correct guess" do
    expect(offbrand_hangman.check_guess("hello")).to eq "Congratulations, you guessed it!"
  end

  it "Checks letter that is in the word" do
    offbrand_hangman.check_guess("e")
    expect(offbrand_hangman.display_word).to eq "_ e _ _ _ "
  end

  it "Checks letter that isn't in the word" do
    expect(offbrand_hangman.check_guess("n")).to eq "That letter isn't in the word! Guess again."
  end

  it "Checks if the user is out of guesses" do
    offbrand_hangman.check_guess("e")
    offbrand_hangman.check_guess("p")
    offbrand_hangman.check_guess("a")
    offbrand_hangman.check_guess("s")
    offbrand_hangman.check_guess("t")
    expect(offbrand_hangman.check_guess("q")).to eq "lmao get gud scrub"
  end

end