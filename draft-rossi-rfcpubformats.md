---
title: "Implementation of RFC Publication Formats"
abbrev: "RFCPubFormats"
category: info

docname: draft-rossi-rfcpubformats-latest
submissiontype: IETF  # also: "independent", "editorial", "IAB", or "IRTF"
number:
date:
consensus: true
v: 3
# area: AREA
# workgroup: WG Working Group
keyword:
 - RFC Publication Formats
updates: 7992, 7993, 7994, 7995, 7996

venue:
#  group: RSWG
#  type: Working Group
#  mail: rswg@rfc-editor.org
#  arch: https://datatracker.ietf.org/edwg/rswg/
  github: "alexisannerossi/id-RFCPubFormats"
  latest: "https://alexisannerossi.github.io/id-RFCPubFormats/draft-rossi-rfcpubformats.html"

author:
 -
    fullname: "Alexis Rossi"
    organization: RFC Series Consulting Editor
    email: "rsce@rfc-editor.org"

--- abstract

This document assigns responsibility for implementation decisions for RFC publication formats (currently HTML, PDF, and TXT), the CSS file, and SVG files to a tools implementation team and the RPC. It assigns responsibility for defining high level design requirements for the RFC publication formats, CSS, and SVG files to the RSWG. This document updates RFC7992, RFC7993, RFC7994, RFC7995, RFC7996 and RFC9280. This document makes no changes to the RFCXML format described in RFC7991 or subsequent documents.


--- middle


# Introduction

The intent of this document is to allow the implementation decisions for RFC publication formats to evolve without requiring the publication of new RFCs. High level design requirements for publication formats are determined by the RFC Series Working Group (RSWG), but implementation decisions will now be made by a tools implementation team and the RFC Production Center (RPC). The difference between design requirements and implementation decisions are addressed in the next section.

This document specifically does not change anything about the definitive RFCXML format described in {{?RFC7991}} or subsequent documents.

We expect changes to the HTML and PDF publication formats in the future to allow accessibility improvements and to update the design of RFC “info” pages after a planned  redesign of rfc-editor.org. This document also allows for other publication format implementation changes that may arise for other reasons, including the creation of new publication formats.

The tools implementation team and the RPC are expected to abide by the design requirements set out by the RSWG, to seek expert input before making any changes to the publication formats, and to take community needs, recommendations, and requests into account.

The tools implementation team will maintain public documentation of the currently implemented formal grammar and any other rule sets related to the publication formats, as well as a public space for implementation updates (these may be the same space).  They will also maintain a public mailing list for discussion.

Changes to the implementation of publication formats will be announced via appropriate public mailing lists, as determined by the tools implementation team and the RPC.

## Relation to RFC 7990bis
RFC7990bis obsoletes {{?RFC7990}}, which contained some requirements for RFC publication formats. RFC7990bis does not specify implementation details that affect RFC publication formats, so that document does not affect the decisions in this RFC.

## Changes to RFC 7992
Section 2 of {{!RFC7992}} provides high level design requirements for the HTML format. These requirements remain in effect.

Sections 3 through 9 of RFC7992 provide implementation decisions for the HTML publication format. These are now considered to be recommendations from the community, and will be treated as such by the implementers of the HTML publication format in the future.

## Changes to RFC 7993
Sections 2 and 3 of {{!RFC7993}} provide high level design requirements for the CSS file. These requirements remain in effect.

Sections 4 through 7 of RFC7993 provide implementation decisions for the CSS file. These are now considered to be recommendations from the community, and will be treated as such by the implementers of the CSS file in the future.

## Changes to RFC 7994
{{!RFC7994}} outlines requirements for the TXT publication format. This document is now considered to be implementation recommendations from the community, and will be treated as such by the implementers of the TXT publication format in the future. It is not expected that there will be much change to the TXT publication format over time, but if any changes are needed extra care should be taken as those changes may affect tools used by the author community.

## Changes to RFC 7995
{{!RFC7995}} outlines requirements for the PDF publication format. This document is now considered to be implementation recommendations from the community, and will be treated as such by the implementers of the PDF publication format in the future.

## Changes to RFC 7996
{{!RFC7996}} outlines requirements for SVG files. This document is now considered to be implementation recommendations from the community, and will be treated as such by the implementers of the SVG tools in the future.

It is recommended that the RSWG define the design requirements (not implementation details) for SVGs in a future RFC in consultation with technical and accessibility experts. Until that time, the RPC may choose at their discretion to continue to view some elements of RFC7996 as requirements if needed. For example, we expect that SVGs will be black and white only until or unless that is specifically changed by new design requirements.

## Changes to RFC 9280
{{!RFC9280]}} Section 4.4 is updated to reflect the additional responsibility for resolution of publication format implementation and tooling disagreements.

The title of Section 4.4 of RFC 9280 is currently:

	"Resolution of Disagreements between Authors and the RPC"

This document replace that title with:

	"Resolution of Disagreements"

The first paragraph of Section 4.4  of RFC 9280 is currently:

	"During the process of editorial preparation and publication, disagreements can arise between the authors of an RFC-to-be and the RPC. Where an existing policy clearly applies, typically such disagreements are handled in a straightforward manner through direct consultation between the authors and the RPC, sometimes in collaboration with stream-specific contacts."

This document replaces that paragraph with:

	"Disagreements can arise when policies are implemented. Where an existing policy clearly applies, typically such disagreements are handled in a straightforward manner through direct consultation between the parties involved."

An additional bullet point is added to Section 4.4 of RFC 9280 that states:

	"If there is conflict involving tools intended to implement policy, the tool implementors should consult with the RPC as the RPC is responsible for the publication of RFCs. If policy is unclear, the RPC should consult with the RSAB to achieve a resolution."


# Design Requirements vs Implementation Decisions
This document makes a distinction between high level design requirements and  implementation decisions. The line between these may not be obvious, so this section tries to describe that difference.

Sections 1.2 and 1.3 of this document provide examples of that line being drawn.  In both cases, the high level design requirements are written entirely as prose (no markup language or code is used) and are meant to guide the implementation decisions made in subsequent sections of those documents. The implementation decisions are characterized by specifying particular tags to be used, or the values of those tags, the order in which the tags must be used, etc.

As a specific example to illustrate this difference further, we can look at {{!RFC7992}}. Section 2 lists a high level design requirement for the HTML this way: “All sections, subsections, figures, and paragraphs should have stable numbered link anchors.  Additionally, anchors expressed in the source XML should be exposed as anchors in the HTML output as well.” Section 5.2 of that same document is a description of implementation decisions that are meant to satisfy the design requirement.

# Community Participation in implementation of publication formats
The community is invited to participate in the implementation of RFC publication formats. As of this writing, the tools implementation team currently uses a mailing list at tools-discuss@ietf.org and Github at https://github.com/ietf-tools for communication and implementation, but may move to another public space as needed in the future. The RSWG may decide in the future to establish a more formal design team or other mechanism to provide community input to the tool implementors.

# Security Considerations

Changes to the publication formats of RFCs introduce risk. A risk is that unintended changes could occur in publication versions of an RFC as a result of an unintentional bug. This may result in the corruption of a standard, practice, or critical piece of information about a protocol, and harm to the reputation of the RFC series. However, nothing in this document changes the definitive RFCXML format, so risk is limited to the publication formats and versions.

The tools implementation team and the RPC are expected to identify, track, and actively mitigate risks introduced by this policy.


# IANA Considerations

This document has no IANA actions.


--- back

# Acknowledgments
{:numbered="false"}

The planning and work that went into the creation of RFC7992, RFC7993, RFC7994, RFC7995, and RFC7996 was invaluable and will continue to be the basis of how publication formats are created moving forward.

Thank you to the authors and editors of these documents: Heather Flanagan, Joe Hildebrand, Paul Hoffman, Tony Hansen, Larry Masinter, Matthew Hardy, and Nevil Brownlee. Also, thanks are owed to the RFC Format Design Team for their efforts: Nevil Brownlee (ISE), Tony Hansen, Joe Hildebrand, Paul Hoffman, Ted Lemon, Julian Reschke, Adam Roach, Alice Russo, Robert Sparks (Tools Team liaison), and Dave Thaler.
