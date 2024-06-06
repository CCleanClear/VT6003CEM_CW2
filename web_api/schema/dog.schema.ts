export const dog = {
  "$schema": "http://json-schema.org/draft-04/schema#",
  "id": "/dog",
  "title": "Dog",
  "description": "Dog record in the website",
  "type": "object",
  "properties": {
    "dogname": {
      "description": "Dogname of the dog",
      "type": "string"
    },
    "breed": {
      "description": "Breed of the dog",
      "type": "string"
    },
    "summary": {
      "description": "Optional short text summary of dog",
      "type": "string"
    },
    "imageurl": {
      "description": "URL for main image to show in dog",
      "type": "url"
    },
    "adopted": {
      "description": "Is the dog adopted or not",
      "type": "boolean"
    },
    "locationid": {
      "description": "Location ID of the dog place",
      "type": "string"
    },
    "writerid": {
      "description": "User ID of the dog record writer",
      "type": "integer",
      "minimum": 1
    },
    "description": {
      "description": "description of dog in more details",
      "type": "string"  
    }        
  },
  "required": ["dogname", "breed", "writerid"]
}