Reconciliation API specifications
=================================
[![Build Status](https://travis-ci.org/reconciliation-api/specs.svg?branch=master)](https://travis-ci.org/reconciliation-api/specs)

This repository hosts the specifications of the reconciliation API, which can be viewed at:

https://reconciliation-api.github.io/specs/latest/

Initially, the aim is to document the existing state of the API,
as witnessed by the existing clients and servers, and the [original documentation
on OpenRefine's wiki](https://github.com/OpenRefine/OpenRefine/wiki/Reconciliation-Service-API).
Once the existing API is documented to a satisfactory level, we will incorporate improvements
discussed in the [Community Group](https://www.w3.org/community/reconciliation/) in further versions
of the document.

Feel free to contribute to this documentation effort by editing `latest/index.html`. Add yourself
to the list of editors in the preamble of the document (see the [available options](https://github.com/w3c/respec/wiki/person)
for editor metadata).

This specification is developed using [ReSpec](https://github.com/w3c/respec) and help about
its markup can be found in its [user guide](https://github.com/w3c/respec/wiki/ReSpec-Editor's-Guide).

Local setup
-----------

To edit and preview the `index.html` file locally, clone the repo and change into the `specs` directory:

`git clone https://github.com/reconciliation-api/specs.git ; cd specs`

Run a web server in the `specs` directory (for [`data-include`](https://github.com/w3c/respec/wiki/ReSpec-Editor's-Guide#inclusions--transformations) support):

`python3 -m http.server`

You can then view the specs at [http://localhost:8000](http://localhost:8000).

Testing
-------

You can check the JSON schemas used in the specifications against a set of valid and invalid examples. This relies on the `ajv` schema validator that can be installed with `npm install -g ajv-cli@3.0.0` (this requires the Node package manager `npm`). You can then run the tests with:

`./test.sh`
