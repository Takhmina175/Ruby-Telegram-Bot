# frozen_string_literal: true

require 'programmers_jokes'

describe 'Jokes' do
  let(:arr_url) { ['https://miro.medium.com/max/590/1*uG60w6w0Fw0SnXgv3j427Q.png'] }

  describe '#random_jokes' do
    it 'randomly select element from the array and return it to the user' do
      expect(arr_url.sample).to eq(arr_url[0])
    end
    it 'It does not return elements in a sequential order' do
      arr = [22, 2, 100, 16]
      expect(arr.sample(2)).not_to eq(arr[22, 2])
    end
    it 'return nil when there is no element in the array' do
      arr = []
      expect(arr.sample).to eq(nil)
    end
  end
end
