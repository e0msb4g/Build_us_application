require 'rails_helper'

RSpec.describe Board, type: :model do
  before do
    @board = FactoryBot.build(:board)
  end

  describe '掲示板の作成' do
    context '商品の出品がうまくいく時' do
      it 'title,municipalityと、question,impressionsのうちquestionが存在すれば出品できる' do
        @board.question = ''
        expect(@board).to be_valid
      end
      it 'title,municipalityと、question,impressionsのうちimpressionsが存在すれば出品できる' do
        @board.impressions = ''
        expect(@board).to be_valid
      end
      it 'prefecture_idが０でなければ登録できる' do
        expect(@board).to be_valid
      end
      it 'titleが40字以内、question,impressionsのうちいずれか一つが1000文字以内であれば登録できる' do
        expect(@board).to be_valid
      end
    end

    context '掲示板の作成ができない時' do
      it 'titleが空だと作成できない' do
        @board.title = ''
        @board.valid?
        expect(@board.errors.full_messages).to include("Title：タイトルを入力してください。")
      end

      it 'prefecuture_idが０だと作成できない' do
        @board.prefecture_id = 0
        @board.valid?
        expect(@board.errors.full_messages).to include("Prefecture：都道府県を選択してください")
      end

      it 'municipalityが空だと作成できない' do
        @board.municipality = ''
        @board.valid?
        expect(@board.errors.full_messages).to include('Municipality：市区町村を入力してください。')
      end

      it 'question,impressionsがともに空だと作成できない' do
        @board.question = ''
        @board.impressions = ''
        @board.valid?
        expect(@board.errors.full_messages).to include("Question or impressions：「質問内容」もしくは「住んでみての感想」のいずれかは必須です。")
      end

      it 'titleの文字数が41文字以上だと作成できない' do
        @board.title = 'a'*100
        @board.valid?
        expect(@board.errors.full_messages).to include('Titleは40文字以内で入力してください')
      end

      it 'questionの文字数が1001文字以上だと作成できない' do
        @board.question = 'a'*1001
        @board.valid?
        expect(@board.errors.full_messages).to include('Questionは1000文字以内で入力してください')
      end

      it 'impressionsの文字数が1001文字以上だと作成できない' do
        @board.impressions = 'a'*1001
        @board.valid?
        expect(@board.errors.full_messages).to include('Impressionsは1000文字以内で入力してください')
      end
    end
  end
end
