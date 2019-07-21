updateTable = (data) ->
  $('.post_list').append """
    <tr>
        <td>#{data.title}</td>
        <td>#{data.content}</td>
        <td><a href="/posts/#{data.id}">Show</a></td>
        <td><a href="/posts/#{data.id}/edit">Edit</a></td>
        <td><a data-confirm="정말 지우시겠습니까?" rel="nofollow" data-method="delete" href="/posts/#{data.id}">Delete</a></td>
    </tr>
  """
  return
  
$ ->
      $('#add_post').on 'ajax:success', (data) ->
        $('#add_post')[0].reset()
        return
      pusher = new Pusher('3c6e48bc6c219fd4c700',
        cluster: 'ap3'
        encrypted: true)
      channel = pusher.subscribe('post')
      channel.bind 'new', (data) ->
        updateTable data
        return
      return