# SiteIndices API

## Creating site index

### POST /site_indices

### Parameters

Name : url *- required -*
Description : Url of the site

### Request

#### Headers

<pre>Content-Type: application/json
Accept: application/json</pre>

#### Route

<pre>POST /site_indices</pre>

#### Body

<pre>{"site_index":{"url":"http://google.com"}}</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8
Content-Length: 246</pre>

#### Status

<pre>201 Created</pre>

#### Body

<pre>{
  "data": {
    "id": "50",
    "type": "site-indices",
    "attributes": {
      "url": "http://google.com",
      "status": "in_progress",
      "http-status": null,
      "created-at": "2017-01-05T21:02:20.460Z",
      "updated-at": "2017-01-05T21:02:20.460Z"
    },
    "relationships": {
      "contents": {
        "data": [

        ]
      }
    }
  }
}</pre>
