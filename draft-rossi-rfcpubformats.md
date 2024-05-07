---
title: "Implementation of RFC Publication Formats"
abbrev: "rfcpubformats"
category: editorial

docname: draft-rossi-rfcpubformats-latest
submissiontype: IETF  # also: "editorial"
number:
date: May 7, 2024
consensus: true
v: 3
# area: Editorial
# workgroup: RFC Series Working Group
keyword:
 - RFC publication formats
venue:
#  group: RSWG
#  type: Working Group
#  mail: rswg@rfc-editor.org
#  arch: [https://example.com/WG](https://datatracker.ietf.org/edwg/rswg/documents/)
  github: "alexisannerossi/id-RFCPubFormats"
  latest: "https://alexisannerossi.github.io/id-RFCPubFormats/draft-rossi-rfcpubformats.html"

author:
 -
    fullname: "Alexis Rossi"
    organization: RFC Series Consulting Editor
    email: "rsce@rfc-editor.org"

normative:

informative:


--- abstract

This document assigns responsibility for the code level implementation decisions for RFC publication formats (currently HTML, PDF, and TXT) and the CSS file to the Tools Team and the RPC. It assigns responsibility for defining high level design requirements for the RFC publication formats to the RSWG. This document updates [RFC7992], [RFC7993], [RFC7994], and [RFC7995]. This document makes no changes to the RFCXML format described in [RFC7991] or subsequent documents.


--- middle

# Introduction

The intent of this document is to allow the code level implementation of RFC publication formats to evolve without requiring the publication of new RFCs. High level design requirements for publication formats are determined by the RFC Series Working Group (RSWG), but code level implementation decisions will now be made by the Tools Team and the RFC Production Center (RPC). This document specifically does not change anything about the definitive RFCXML format described in [RFC7991] or subsequent documents.

Changes to the HTML and PDF publication formats are expected in the near future to allow accessibility improvements, and a new HTML version will be used on rfc-editor.org at the RFC “info” pages after a planned site redesign. This document also allows for other implementation changes that may arise for other reasons. 

The Tools Team and the RPC are expected to abide by the design requirements set out by the RSWG, to seek expert input before making any changes to the publication formats, and to take community needs, recommendations, and requests into account. 

The Tools Team will maintain a public space where the implementation decisions for the publication formats are documented and community requests can be made, as well as a public mailing list for discussion. 

Changes to the implementation of publication formats will be announced via the Tools Team mailing list. They may also be announced on the rfc-interest and rswg mailing lists if there are changes that are likely to affect the whole community.


# Conventions and Definitions

{::boilerplate bcp14-tagged}


# Security Considerations

Changes to the publication formats of RFCs introduce risk. A risk is that unintended changes could occur in publication versions of an RFC as a result of an unintentional bug. This may result in the corruption of a standard, practice, or critical piece of information about a protocol, and harm to the reputation of the RFC series. However, nothing in this document changes the definitive RFCXML format, so risk is limited to the publication formats and versions.

The Tools Team and the RPC are expected to identify, track, and actively mitigate risks introduced by this policy.


# IANA Considerations

This document has no IANA actions.


--- back

# Acknowledgments
{:numbered="false"}

TODO acknowledge.
