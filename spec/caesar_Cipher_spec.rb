#spec/caesar_Cipher_spec.rb

require './lib/caesar_Cipher'

describe Caesar do
    describe "#caesar_cipher" do
        it "returns code cipher from text send" do
            wordcipher = Caesar.new
            expect(wordcipher.caesar_cipher("What a string!",5)).to eql("Bmfy f xywnsl!")
        end
    end
end