require 'spec_helper'

module Arxiv
  describe Link do
    let(:manuscript) { Arxiv.get('1202.0819') }

    describe "title" do
      it "should fetch the link's title" do
        expect(manuscript.links.first.title).to eq 'doi'
      end
    end

    describe "content_type" do
      it "should fetch the link's content type" do
        expect(manuscript.links.last.content_type).to eq 'application/pdf'
      end
    end

    describe "rel" do
      it "should have a type attribute that combines the content_type and title" do
        expect(manuscript.links.first.type).to eq 'doi'
        expect(manuscript.links.last.type).to eq 'application/pdf'
      end
    end

    describe "url" do
      it "should fetch the link's url" do
        expect(manuscript.links.last.url).to eq 'http://arxiv.org/pdf/1202.0819v1'
      end
    end

    describe "rel" do
      it "should fetch the link's rel attribute" do
        expect(manuscript.links.last.rel).to eq 'related'
      end
    end

  end
end
