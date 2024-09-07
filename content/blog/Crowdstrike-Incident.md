---
id: Crowdstrike Incident
aliases: []
tags: []
date: "2024-07-19"
draft: false
title: Crowdstrike Incident
description: A small bit of information from the crowdstrike incident
showComments: true
---

What is something you expect when you get to the office on a Friday morning in IT? Personally, I expect to have an easy day going into the weekend as I got most of my work done during the week.

Today, however, when I got into the office I was met by hundreds of emails and my Microsoft Teams going crazy. After sifting through all the emails from end users notifying us that services were not working, I looked at my co-worker and asked what happened. I was met with a brief "Crowdstrike Happened".

Crowdstrike is a name I have never heard of before so after looking up the topic, I discovered they had a large, and I mean LARGE footprint. Flights have been grounded, banks are down, courts are closed, it's a mess. This post isn't meant to harass Crowdstrike or anyone involved with this mistake but to inform and poke fun at a situation that I was not expecting on my Friday morning.

For context, Crowdstrike is a cyber security firm out of Austin Texas. Crowdstrike provides cloud workload protection and endpoint security, threat intelligence, and cyberattack response services.

The issue was confirmed to be caused by a defect in a software content update by Crowdstrike. The specific issue was with their falcon sensor that is used to detect attacks such as malware.

To give credit where credit is due, they had a fairly quick response and recovery time. It is also worth noting, Crowdstrike confirmed this was an error on their end and not caused by an attack. This was re-assurring from all the news about companies getting hacked in the last week or so.

This is a late post so it may not be helpful but if anyone stumbles upon this and is looking for a manual solution, below are the steps provided by Crowdstrike to remediaite this issue manually.

1. boot into save mode
    a. NOTE: connect the host with a network cable and not wi-fi
2. Navigate to the %WINDIR%\System32\drivers\CrowdStrike directory
3. locate the file matching "C-00000291*.sys", and delete it
4. Boot the host normally
5. Profit

This is an unfortunate event to kick off our Friday but I hope everyone has a better weekend.

Sources:
Regarding the indident:
https://www.infosecurity-magazine.com/news/crowdstrike-fault-it-outages/
https://www.crowdstrike.com/blog/statement-on-falcon-content-update-for-windows-hosts/

Regarding Crowdstrike:
https://en.wikipedia.org/wiki/CrowdStrike
