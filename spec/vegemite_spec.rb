# frozen_string_literal: true
require_relative '../lib/vegemite'

describe Vegemite do
  describe 'compute_vegemite_packs' do
    context 'creating a new order of 0, 1, 2, or 7' do
      it "returns error message" do
        expect(Vegemite.new(7).to eq("Invalid amount")
      end
    end
  end
end
