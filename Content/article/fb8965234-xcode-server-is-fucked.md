---
date: 2021-02-11 16:54
description: When Xcode Server first launched, I was all over it. But, the last couple of versions have completely broken my ability to rely and use this product. Please Apple… fix it.
tags: Xcode Server, Feedback Assistant, Apple
layout: ContentLayout
published: true
---
# FB8965234 - Xcode Server is Fucked

**Recent Similar Reports**: None

**Resolution**: Open

### Basic Information

**Please provide a descriptive title for your feedback:**
Non-macOS Xcode Server Integrations do not product a Build Product.

**What version of Xcode are you using?**
12.4 (12D4e)
_First reported with 11.3_

**Please describe the issue:**
All (non-macOS) Integrations fail to produce an installable build product, with the following error:

Build Service Error: exportArchive: Found no compatible export methods for: <DVTFilePath:0x12849a640:'/Users/xcodeserver/Library/Caches/XCSBuilder/Integration-3147b2510b6a7eaae5db46c5052a1745/Brainfog (iOS).xcarchive'>

The archive does exist (Product Failure - iOS).
macOS Integrations do produce an installable build product, and to not have the error (Product Success - macOS).

**Please list the steps you took to reproduce the issue:**
1. Setup Xcode Server
2. Configure a Bot using an iOS or tvOS scheme (Bot Configuration), Be sure to configure with 'Archive' checked (default) and 'Installable Product & Thinned Variants' (default).
3. Run Integration

Obverse failures.

**What did you expect to happen?**
The integration to succeed without a 'Build Service Error' and an installable .ipa is present along with the .xcarchive (pre Xcode 11 behavior).

**What actually happened?**
A build service error indicating failure along with the non-production of an installable .ipa.

---

Let me start with an unpopular opinion: I like Xcode.
I've always appreciated how good Xcode was with information density on screen.
In its current iteration, it comes bundled with an amazing set of tools for Apple platform development.
But, as with much of Apple's recent software, it's quality seems to be in continual decline.

When Xcode Server first launched, I was all over it. I really appreciated have a bundled CI solutions (even if you needed OS X Server 😞 to run it.)
I've even gone so far to have written a framework and app that's only job is to interact with the Xcode Server API.
But, the last couple of versions have completely broken my ability to rely and use this product.
The key thing Xcode Server is designed to do, is to build (_integrate_) your project, run tests, and spit out a build product when successful.
So why doesn't it do that?

I've continued to see nothing but the error noted about for _years_ now, and have all but abandoned the idea of using the product for what it was intended.

Please Apple... fix it.

---

Do you have the same issue? Do you have solutions? Reach out to me on Twitter, StackOverflow, or the Apple Dev Forums.
