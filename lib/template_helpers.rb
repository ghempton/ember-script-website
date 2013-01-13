module TemplateHelpers

  def example(name)
    file = File.join(File.dirname(__FILE__), '..', 'source', 'examples', "#{name}.em")
    contents = IO.read(file)
    <<-eos
<figure class="example #{name}">
<pre class="emberscript">#{contents}</pre>
<pre class="javascript"></pre>
</figure>
eos
  end

end