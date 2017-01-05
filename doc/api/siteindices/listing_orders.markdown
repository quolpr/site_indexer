# SiteIndices API

## Listing orders

### GET /site_indices
### Request

#### Headers

<pre>Host: example.org
Cookie: </pre>

#### Route

<pre>GET /site_indices</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/&quot;b5db4a7832f6ee14d2697e0569531b43&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 1db7f4d1-a837-4e83-8374-2a4f49c9e9bc
X-Runtime: 0.045344
Content-Length: 1112</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "data": [
    {
      "id": "34",
      "type": "site-indices",
      "attributes": {
        "url": "http://rubyonrails.org/",
        "status": "in_progress",
        "http-status": null,
        "created-at": "2017-01-05T20:35:43.174Z",
        "updated-at": "2017-01-05T20:35:43.174Z"
      },
      "relationships": {
        "contents": {
          "data": [
            {
              "id": "37",
              "type": "site-index-contents"
            },
            {
              "id": "38",
              "type": "site-index-contents"
            },
            {
              "id": "39",
              "type": "site-index-contents"
            }
          ]
        }
      }
    }
  ],
  "included": [
    {
      "id": "37",
      "type": "site-index-contents",
      "attributes": {
        "tag": "h1",
        "content": "content",
        "created-at": "2017-01-05T20:35:43.178Z",
        "updated-at": "2017-01-05T20:35:43.178Z"
      },
      "relationships": {
        "site-index": {
          "data": {
            "id": "34",
            "type": "site-indices"
          }
        }
      }
    },
    {
      "id": "38",
      "type": "site-index-contents",
      "attributes": {
        "tag": "h1",
        "content": "content",
        "created-at": "2017-01-05T20:35:43.180Z",
        "updated-at": "2017-01-05T20:35:43.180Z"
      },
      "relationships": {
        "site-index": {
          "data": {
            "id": "34",
            "type": "site-indices"
          }
        }
      }
    },
    {
      "id": "39",
      "type": "site-index-contents",
      "attributes": {
        "tag": "h1",
        "content": "content",
        "created-at": "2017-01-05T20:35:43.181Z",
        "updated-at": "2017-01-05T20:35:43.181Z"
      },
      "relationships": {
        "site-index": {
          "data": {
            "id": "34",
            "type": "site-indices"
          }
        }
      }
    }
  ]
}</pre>
