require 'rails_helper'


describe Note do
	it "is valid with a title" do
	note = Note.new(title: 'title',content: 'content')
	expect(note).to be_valid
end
	it "is invalid without a title" do
	note = Note.new(title: nil)
	note.valid?
	expect(note.errors[:title]).to include("can't be blank")
end



end	
