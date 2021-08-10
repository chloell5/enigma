require 'date'
require './lib/shift'
require 'simplecov'
SimpleCov.start

RSpec.describe Shift do
  before(:each) do
    @shift = Shift.new
  end

  it 'exists' do
    expect(@shift).to be_a(Shift)
  end

  it 'creates_shifts' do
    expect(@shift.create_shifts('02715', '040895')).to eq({
                                                            A: 3,
                                                            B: 27,
                                                            C: 73,
                                                            D: 20
                                                          })
  end

  it 'creates rotated arrays' do
    @shift.create_shifts('02715', '040895')

    expect(@shift.create_rotated_arrays).to eq(
      ['u', 'v', 'w', 'x', 'y', 'z', ' ', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',
       'p', 'q', 'r', 's', 't']
    )
  end

  it 'rotates array a' do
    @shift.create_shifts('02715', '040895')

    expect(@shift.rotated_array_a).to eq(
      ['d', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y',
       'z', ' ', 'a', 'b', 'c']
    )
  end

  it 'rotates array b' do
    @shift.create_shifts('02715', '040895')

    expect(@shift.rotated_array_b).to eq(
      ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
       'w', 'x', 'y', 'z', ' ']
    )
  end

  it 'rotates array c' do
    @shift.create_shifts('02715', '040895')

    expect(@shift.rotated_array_c).to eq(
      ['t', 'u', 'v', 'w', 'x', 'y', 'z', ' ', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
       'o', 'p', 'q', 'r', 's']
    )
  end

  it 'rotates array d' do
    @shift.create_shifts('02715', '040895')

    expect(@shift.rotated_array_d).to eq(
      ['u', 'v', 'w', 'x', 'y', 'z', ' ', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',
       'p', 'q', 'r', 's', 't']
    )
  end

  it 'creates inverse rotated arrays' do
    @shift.create_shifts('02715', '040895')

    expect(@shift.create_inverses).to eq(
      ['h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' ', 'a', 'b',
       'c', 'd', 'e', 'f', 'g']
    )
  end

  it 'inverse rotates array a' do
    @shift.create_shifts('02715', '040895')

    expect(@shift.inverse_array_a).to eq(
      ['y', 'z', ' ', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's',
       't', 'u', 'v', 'w', 'x']
    )
  end

  it 'inverse rotates array b' do
    @shift.create_shifts('02715', '040895')

    expect(@shift.inverse_array_b).to eq(
      ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
       'w', 'x', 'y', 'z', ' ']
    )
  end

  it 'inverse rotates array c' do
    @shift.create_shifts('02715', '040895')

    expect(@shift.inverse_array_c).to eq(
      ['i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' ', 'a', 'b', 'c',
       'd', 'e', 'f', 'g', 'h']
    )
  end

  it 'inverse rotates array d' do
    @shift.create_shifts('02715', '040895')

    expect(@shift.inverse_array_d).to eq(
      ['h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' ', 'a', 'b',
       'c', 'd', 'e', 'f', 'g']
    )
  end
end
