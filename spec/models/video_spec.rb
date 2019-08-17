describe Video do
  it 'saves itself' do
    category = Category.create(name: 'Comedy')
    video = Video.new(title: 'Family Guy', description: 'This is Family Guy.',
                      category: category)
    video.save

    expect(Video.first.title).to eq('Family Guy')
    expect(Video.first.description).to eq('This is Family Guy.')
    expect(Video.first).to eq(video)
  end

  it 'belongs to category' do
    dramas = Category.create(name: 'dramas')
    monk = Video.create(title: 'monk', description: 'This is Monk.',
                        category: dramas)
    expect(monk.category).to eq(dramas)
  end

  it 'does not save a video without a title' do
    video = Video.create(description: 'a great video!')
    expect(Video.count).to eq(0)
  end

  it 'does not save a video without a description' do
    video = Video.create(title: 'monk')
    expect(Video.count).to eq(0)
  end
end
