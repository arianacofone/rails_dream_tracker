10.times do
  Post.create({
    title: FFaker::Name.first_name,
    dream: FFaker::HipsterIpsum.paragraph,
  })
end
