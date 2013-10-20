require_relative 'spec_helper.rb'

describe 'Term' do
	let(:term) {Term.new}

	describe '.name' do
		it 'should give term a name' do
			term.name = "Array"
			term.name.should eq("Array")
		end
	end

	describe '.definition' do
		it 'should give term a definition' do
			term.definition = "An array is a Ruby data type that holds an ordered collection of values, which can be any type of object including other arrays."
			term.definition.should eq("An array is a Ruby data type that holds an ordered collection of values, which can be any type of object including other arrays.")
		end
	end

	describe '.syntax' do
		it 'should give term a syntax' do
			term.syntax = "here is the syntax!"
			term.syntax.should eq("here is the syntax!")
		end
	end

	describe '.more' do
		it 'should give term a more' do
			term.more = MoreInfo.new
			term.more.should be_a(MoreInfo)
		end
	end

	describe '.reset' do
		it 'should return an empty array with no instances' do
			Term.reset
			Term.reset.should eq([])		
		end
	end

	describe '.all' do
		it 'should return all of the Term instances' do
			term
			Term.all
			Term.all.should eq([term])		
		end
	end
	
end




