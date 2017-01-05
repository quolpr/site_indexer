# SiteIndices API

## creating site index

### POST /site_indices

### Parameters

Name : site_index
Description :  site index

### Request

#### Headers

<pre>Host: example.org
Content-Type: application/x-www-form-urlencoded
Cookie: </pre>

#### Route

<pre>POST /site_indices</pre>

#### Body

<pre>site_index[url]=http%3A%2F%2Fgoogle.com</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/&quot;edaf69d5242d20bd9145eb97cd125551&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 94a3355b-c77e-43a7-ae59-bdc8ad49e062
X-Runtime: 0.023222
Content-Length: 246</pre>

#### Status

<pre>201 Created</pre>

#### Body

<pre>{
  "data": {
    "id": "35",
    "type": "site-indices",
    "attributes": {
      "url": "http://google.com",
      "status": "in_progress",
      "http-status": null,
      "created-at": "2017-01-05T20:35:43.245Z",
      "updated-at": "2017-01-05T20:35:43.245Z"
    },
    "relationships": {
      "contents": {
        "data": [

        ]
      }
    }
  }
}</pre>
