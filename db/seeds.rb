Category.create(name: 'Comedy')
Category.create(name: 'Drama')

Video.create(
  title: 'Family Guy',
  description: 'This is Family Guy.',
  small_cover_url: '/tmp/family_guy.jpg',
  large_cover_url: '/tmp/family_guy.jpg',
  category: Category.first
)
Video.create(
  title: 'Monk',
  description: 'This is Monk.',
  small_cover_url: '/tmp/monk.jpg',
  large_cover_url: '/tmp/monk_large.jpg',
  category: Category.first
)
Video.create(
  title: 'Futurama',
  description: 'Pizza boy Philip J. Fry awakens in the 31st century after 1,000 years of cryogenic preservation in this animated series. After he gets a job at an interplanetary delivery service, Fry embarks on ridiculous escapades to make sense of his predicament.',
  small_cover_url: '/tmp/futurama.jpg',
  large_cover_url: '/tmp/futurama.jpg',
  category: Category.last
)
Video.create(
  title: 'South Park',
  description: 'This is South Park.',
  small_cover_url: '/tmp/south_park.jpg',
  large_cover_url: '/tmp/south_park.jpg',
  category: Category.first
)
