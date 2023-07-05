require 'rails_helper'

RSpec.describe Task, type: :model do
  # タスクのタイトルが空ならバリデーションにひっかかるテスト
  it 'is not valid without a title' do
    task = Task.new(title: '', description: 'Description')
    expect(task).not_to be_valid
  end

  # タスクの詳細が空ならバリデーションにひっかかるテスト
  it 'is not valid without a description' do
    task = Task.new(title: 'Title', description: '')
    expect(task).not_to be_valid
  end

  # タスクのタイトルと詳細に内容が記載されていれば、バリデーションが通るテスト
  it 'is valid with a title and description' do
    task = Task.new(title: 'Title', description: 'Description')
    expect(task).to be_valid
  end
end
