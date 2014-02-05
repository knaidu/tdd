require '../sorting_and_searching/rotated_sorted_array_search'

describe 'search' do
  context 'with a rotated sorted array' do
    context 'with a key that exists' do
      let(:array) { [5,6,7,8,1,2,3,4] }
      context 'with a key in the mid of the array' do
        let(:key) { 8 }
        subject { search(array, key) }
        it { should eq 3 }
      end
      context 'with a key in the left half of the array' do
        let(:key) { 7 }
        subject { search(array, key) }
        it { should eq 2 }
      end
      context 'with a key in the right half of the array' do
        let(:key) { 3 }
        subject { search(array, key) }
        it { should eq 6 }
      end
    end
    context 'with a key that does not exist' do
      let(:array) { [5,6,7,8,1,2,3,4] }
      let(:key) { 10 }
      subject { search(array, key) }
      it { should eq -1 }
    end
  end

  context 'with a nil array' do
    expect { search(nil, 5) }.to raise_error(ArgumentError)
  end

  context 'with a nil key' do

  end

end