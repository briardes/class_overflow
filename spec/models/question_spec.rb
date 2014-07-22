require 'rails_helper'
RSpec.describe Question, :type => :model do
  #this ^ is good practice
  let(:question) {subject.save}
  it 'validates presence of title' do
    expect(question).not_to be_valid
    expect(question.errors).to have_key(:title)
  end
  it 'validates the presence of content' do
    expect(question).not_to be_valid
    expect(question.errors).to have_key(:content)
  end
end
