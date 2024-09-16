Feature: Post de ejemplos

  @get-posts
  Scenario: Obtener todas los posts de tipycode
    Given url 'https://jsonplaceholder.typicode.com/posts'
    When method get
    Then print response

  @posts-schema-vaidation
  Scenario: validar el esquema del response
    Given url 'https://jsonplaceholder.typicode.com/posts'
    When method get
    Then match each response[*] ==
      """
      {
        'userId': '#number',
        'id': '#number',
        'title': '#string',
        'body': '#string'
      }
      """