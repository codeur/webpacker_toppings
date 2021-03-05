require 'test_helper'

class PacksHelpersTest < ActionDispatch::IntegrationTest
  test 'should concat packs declared in individual helpers' do
    get root_url
    assert_response :ok
    assert @response.body.scan %r{<script src="/packs-test/js/foo-.*.js"></script>}
    assert @response.body.scan %r{<script src="/packs-test/js/bar-.*.js"></script>}
    assert @response.body.scan %r{<link rel="stylesheet" media="screen" href="/packs-test/css/baz-.*.css"></link>}
  end

  test 'should concat packs declared in the same helper' do
    get sample_url
    assert_response :ok
    assert @response.body.scan %r{<script src="/packs-test/js/foo-.*.js"></script>}
    assert @response.body.scan %r{<script src="/packs-test/js/bar-.*.js"></script>}
  end
end
