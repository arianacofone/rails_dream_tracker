10.times do
  Dream.create({
    title: FFaker::Name.first_name,
    dream: FFaker::HipsterIpsum.paragraph,
  })
end
