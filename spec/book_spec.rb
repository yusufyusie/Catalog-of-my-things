require_relative '../book'

describe Book do
  let(:published_date) { '2022-01-01' }
  let(:title) { 'Sample Book' }
  let(:author) { 'John Doe' }
  let(:cover_state) { 'good' }
  let(:publisher) { 'Sample Publisher' }

  subject(:book) { described_class.new(published_date, title, author, cover_state, publisher) }

  describe '#to_hash' do
    it 'returns a hash with book details' do
      expected_hash = {
        published_date: published_date,
        title: title,
        author: author,
        cover_state: cover_state,
        publisher: publisher
      }

      expect(book.to_hash).to eq(expected_hash)
    end
  end

  describe '#title' do
    it 'returns the book title' do
      expect(book.title).to eq(title)
    end
  end

  describe '#author' do
    it 'returns the book author' do
      expect(book.author).to eq(author)
    end
  end

  describe '#cover_state' do
    it 'returns the cover state of the book' do
      expect(book.cover_state).to eq(cover_state)
    end
  end

  describe '#publisher' do
    it 'returns the publisher of the book' do
      expect(book.publisher).to eq(publisher)
    end
  end

  it 'should false true for can_be_archieved?' do
    expect(book.can_be_archived?).to eq(false)
  end
end
