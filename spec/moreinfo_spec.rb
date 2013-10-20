require_relative 'spec_helper.rb'

describe 'MoreInfo' do
	let(:moreinfo) {MoreInfo.new}

	describe '.name' do
		it 'should give moreinfo a name' do
			moreinfo.name = ".each"
			moreinfo.name.should eq(".each")
		end
	end

	describe '.definition' do
		it 'should give moreinfo a definition' do
			moreinfo.definition = "You can iterate over the elements in an array using Array.each, which takes a block."
			moreinfo.definition.should eq("You can iterate over the elements in an array using Array.each, which takes a block.")
		end
	end

	describe '.syntax' do
		it 'should give moreinfo a syntax' do
			moreinfo.syntax = "here is the syntax!"
			moreinfo.syntax.should eq("here is the syntax!")
		end
	end

	
end