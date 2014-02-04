require './spiral.rb'

# Given a matrix print it in spiral order
describe Matrix do
  context 'with a regular matrix' do
    let(:regular_matrix) { Matrix.new([[1,2,3], [4,5,6], [7,8,9]]) }
    let(:result) { '123698745'}
    specify { regular_matrix.print_spiral.should eq result }
  end

  context 'with a single row matrix' do
    let(:result) { '123' }
    let(:matrix) { Matrix.new([[1,2,3]]) }
    specify { matrix.print_spiral.should eq result }
  end

  context 'with a single column matrix' do
    let(:result) { '1,2,3' }
    let(:matrix) { Matrix.new([ [1], [2], [3] ]) }
    specify { matrix.print_spiral.should eq result }
  end

  #context 'with a nil matrix' do
  #  let(:matrix) { Matrix.new(nil) }
  #  expect { matrix.print_spiral }.to raise_error
  #end
  #
  #context 'with a single cell matrix' do
  #    let(:result) { '1' }
  #    let(:matrix) { [1] }
  #    specify { print_spiral matrix == result }
  #end
end