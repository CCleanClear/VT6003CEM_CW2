export const article = {
  "$schema": "http://json-schema.org/draft-04/schema#",
  "id": "/article",
  "title": "Article",
  "description": "An article in the blog",
  "type": "object",
  "properties": {
    "dogname": {
      "description": "Main title of the blog article",
      "type": "string"
    },
    "breed": {
      "description": "Body text of the blog article",
      "type": "string"
    },
    "summary": {
      "description": "Optional short text summary of article",
      "type": "string"
    },
    "imageurl": {
      "description": "URL for main image to show in article",
      "type": "uri"
    },
    "adopted": {
      "description": "Is the article published or not",
      "type": "boolean"
    },
    "location": {
      "description": "User ID of the article author",
      "type": "string"
     
    },
    "writerid": {
      "description": "User ID of the article author",
      "type": "integer",
      "minimum": 0
    },
    "description": {
      "description": "description of articles in more details",
      "type": "string"  
    }        
  },
  "required": ["dogname", "breed", "writerid"]
}