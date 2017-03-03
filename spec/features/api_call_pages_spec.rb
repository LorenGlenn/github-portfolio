require 'rails_helper'

describe 'api call page' do
  it 'adds projects' do
    visit projects_path
    expect(page).to have_content "Project Name:"
  end
end
