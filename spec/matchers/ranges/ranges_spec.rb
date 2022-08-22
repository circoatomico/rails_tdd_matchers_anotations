describe (1..5), 'Ranges' do
  it '#cover' do
    expect(subject).to cover(2)
    expect(subject).to cover(2,5)
    expect(subject).not_to cover(0,6)
  end

  # One line syntax
  # o is_expected é o proprio subject
  # A vantagem de utilizar este modo de escrita, é que o rspec adota uma descrição implítica.
  # vc n precisa escrever o it alguma coisa...
  it { is_expected.to cover(2) }
  it { is_expected.to cover(2,5) }
  it { is_expected.not_to cover(0,6) }

  it { expect(subject).to cover(2) }
end
