require 'spec_helper'

describe "StaticPages" do
  subject { page }

  shared_examples_for "all static pages" do
  	it { should have_selector('title', text: full_title(page_title)) }
  end

  describe "Resume" do
  	before { visit resume_path }
  	let(:page_title) { "Resume"}
    
    it_should_behave_like "all static pages"

    it { should have_selector('h1', text: "Nicholas Amante") }
  end

  describe "Contact" do
    before { visit contact_path }
    let(:page_title) { "Contact" }

    it_should_behave_like "all static pages"

    it { should have_selector('h1', text: "Contact") }
  end

  describe "About" do
    before { visit about_path }
    let(:page_title) { "About" }

    it_should_behave_like "all static pages"

    it { should have_selector('h1', text: "About") }
  end

end
