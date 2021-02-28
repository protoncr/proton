require "../spec_helper"

Spectator.describe Proton::Crypto::Factorize do
  it "performs prime factorization 1" do
    pq = described_class.factorize(1470626929934143021)
    expect(pq).to eq({ 1206429347, 1218991343 })
  end

  it "performs prime factorization 2" do
    pq = described_class.factorize(2363612107535801713)
    expect(pq).to eq({ 1518968219, 1556064227 })
  end
end
