# RESTful API Pattern

For this project, the code pattern for RESTful implementation is described as:

```ruby
  # Collection
  resources "collection" do
    get  do
    end

    post do
    end
  end

  # Member
  resources "collection/:member_id" do
    get do
    end

    put do
    end

    delete do
    end
  end
```
