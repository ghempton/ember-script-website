module TemplateHelpers

  def example(name)
    file = File.join(File.dirname(__FILE__), '..', 'source', 'examples', "#{name}.em")
    contents = IO.read(file)
    <<-eos
<figure class="example">
<pre class="emberscript">#{contents}</pre>
<pre class="javascript">wtf this is the output</pre>
</figure>
eos
  end

end