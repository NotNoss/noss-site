---
id: Windows could be removing Kernel Anti-Cheats?
aliases: []
tags: []
date: "2024-08-21"
draft: false
title: Windows could be removing Kernel Anti-Cheats?
description: There are a lot of rumors about Windows removing access to Kernel level anti-cheats. We discuss these rumors in this article.
showComments: true
---

I daily drive Arch and don't use Windows outside of work. I've been seeing people talking about the [Windows Endpoint Security Ecosystem Summit](https://blogs.windows.com/windowsexperience/2024/09/12/taking-steps-that-drive-resiliency-and-security-for-windows-customers/) on Reddit saying Microsoft is removing kernel level access to security applications. After reading the article myself, this does not seem to be the case.

"Both our customers and ecosystem partners have called on Microsoft to provide additional security capabilities outside of kernel mode which, along with SDP, can be used to create highly available security solutions. At the summit, Microsoft and partners discussed the requirements and key challenges in creating a new platform which can meet the needs of security vendors." - [David Weston, Vice President Enterprise and OS Security at Microsoft](https://blogs.windows.com/windowsexperience/2024/09/12/taking-steps-that-drive-resiliency-and-security-for-windows-customers/)

Microsoft seems to be adding more features to the user space to eliminate as much reliance on the Windows kernel. This does not mean that anti-cheat software will 100% be removed from the kernel but it does still provide some hope to myself. We've seen some talks with anti-cheats not being in the kernel in the future from Riot, makers of Valorant and League of Legends, two very popular games.

"Microsoft has been developing these features to secure their operating system, and if they continue down this road, kernel level anti-cheats will no longer be necessary to secure your games. In fact, we can see Windows trying to move all third party applications out of the kernel entirely (as they begin to secure and sandbox everything)." - [Jose “the3” Chavez, Data Engineer at Riot](https://x.com/VALORANT/status/1837162362282946893)

This snippet was taken from an article from Jose "the3" Chavez at Riot. He predicts that in the future there will be enough security features in the user space that an anti-cheat in the kernel will no longer be needed. This would be great news for the Linux community but it does not mean that Proton or any other wine prefixes will be able to run these games. Vanguard is highly regarded by the LoL and Valorant communities as it is known for being aggressive in banning cheaters. If Vanguard is removed from the kernel, I believe other anti-cheat software will move out of kernel space too. This gives us a brighter future using wine prefixes to play the games we have been missing but I am not holding my breath and I don't believe you should either. Even if we see these advances, we aren't sure how far out it is.

Chavez does believe that windows will eventually kill kernel level access to security software such as anti-cheat, however, that is after the user space provides enough security precautions for the security software to move. This could still mean that they can block everything they are blocking now which would effectively put us right back at square one. I do not believe we will see these games working on Linux in a long time but until then, I will continue to hold out hope that I can destroy kids on Rust once again.
