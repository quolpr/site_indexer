# SiteIndices API

## Listing orders

### GET /site_indices
### Request

#### Headers

<pre>Content-Type: application/json
Accept: application/json</pre>

#### Route

<pre>GET /site_indices</pre>

#### Query Parameters

<pre>{}: </pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8
Content-Length: 1112</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "data": [
    {
      "id": "51",
      "type": "site-indices",
      "attributes": {
        "url": "http://rubyonrails.org/",
        "status": "in_progress",
        "http-status": null,
        "created-at": "2017-01-05T21:02:20.559Z",
        "updated-at": "2017-01-05T21:02:20.559Z"
      },
      "relationships": {
        "contents": {
          "data": [
            {
              "id": "64",
              "type": "site-index-contents"
            },
            {
              "id": "65",
              "type": "site-index-contents"
            },
            {
              "id": "66",
              "type": "site-index-contents"
            }
          ]
        }
      }
    }
  ],
  "included": [
    {
      "id": "64",
      "type": "site-index-contents",
      "attributes": {
        "tag": "h1",
        "content": "content",
        "created-at": "2017-01-05T21:02:20.568Z",
        "updated-at": "2017-01-05T21:02:20.568Z"
      },
      "relationships": {
        "site-index": {
          "data": {
            "id": "51",
            "type": "site-indices"
          }
        }
      }
    },
    {
      "id": "65",
      "type": "site-index-contents",
      "attributes": {
        "tag": "h1",
        "content": "content",
        "created-at": "2017-01-05T21:02:20.570Z",
        "updated-at": "2017-01-05T21:02:20.570Z"
      },
      "relationships": {
        "site-index": {
          "data": {
            "id": "51",
            "type": "site-indices"
          }
        }
      }
    },
    {
      "id": "66",
      "type": "site-index-contents",
      "attributes": {
        "tag": "h1",
        "content": "content",
        "created-at": "2017-01-05T21:02:20.572Z",
        "updated-at": "2017-01-05T21:02:20.572Z"
      },
      "relationships": {
        "site-index": {
          "data": {
            "id": "51",
            "type": "site-indices"
          }
        }
      }
    }
  ]
}</pre>
