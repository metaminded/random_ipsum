module RandomIpsum

  Words = %w{a ac accumsan adipiscing aenean aliquam aliquet amet ante 
    arcu at auctor augue bibendum blandit commodo condimentum congue
    consectetuer consequat convallis cras curabitur cursus dapibus
    diam dictum dignissim dolor donec dui duis egestas eget
    eleifend elementum elit enim erat eros est et etiam eu euismod
    facilisi facilisis fames faucibus felis fermentum feugiat
    fringilla fusce gravida habitant hendrerit iaculis id imperdiet
    in integer interdum ipsum justo lacinia lacus laoreet lectus
    leo libero ligula lobortis lorem luctus maecenas magna
    malesuada massa mattis mauris metus mi molestie mollis morbi
    nam nec neque netus nibh nisi nisl non nonummy nulla nullam
    nunc odio orci ornare pede pellentesque pharetra phasellus
    placerat porta porttitor posuere praesent pretium proin
    pulvinar purus quam quis quisque rhoncus risus rutrum sagittis
    sapien scelerisque sed sem semper senectus sit sodales
    sollicitudin suscipit suspendisse tellus tempor tempus
    tincidunt tortor tristique turpis ullamcorper ultrices
    ultricies urna ut varius vehicula vel velit venenatis
    vestibulum vitae vivamus viverra volutpat vulputate}
  N                  = Words.length
  CapitalizedPercent = 15
  CommaPercent       = 18
  ParagraphJoiner    = "\n"
  SentenceJoiner     = " "
  
  def self.words(n=5)
    (1..n).map {
      Words[rand(N)]
    }.join(" ").capitalize
  end
  
  def self.sentence(words=10)
    (1..words).map { |i|
      w = Words[rand(N)]
      w = w.capitalize if (i==1 or rand(100) < CapitalizedPercent)
      w = w+"," if (i < words and rand(100) < CommaPercent)
      w
    }.join(" ") + "."
  end
  
  def self.paragraphs(n=2, s=2, w=12)
    (1..n).map { |i|
      (1..s).map { |j|
        sentence(w + rand(4) - 2)
      }.join(SentenceJoiner)
    }.join(ParagraphJoiner)
  end
end
