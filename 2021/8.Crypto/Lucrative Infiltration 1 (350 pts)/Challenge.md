# Lucrative Infiltration 1

### Description
You've been part of a shady hackers organization for a while now, and your team is preparing a big shot.

A new cryptocurrency, ph0wncoin is flooding the market and claiming  to be THE next-gen currency. You know for a fact that this is not even  close to be true, and that this is just a cover for a new centralized  currency.

However, your team has been passively trying to find vulnerabilities to infiltrate the central server, located at `challenges.ph0wn.org:12346`, without success... The authentication mechanism seems strong enough and resisted all kind of enumerations and exploits, but today one of your  pen-tester teammates managed to find an entry-point to eavesdrop on what  appears to be the authentication logs sent to an ELK instance : `challenges.ph0wn.org:12345`.
A reverser from your team managed to build the source code generating  these logs from the public client binary. It's now your job as a  cryptanalyst to find a way to get into this server (a flag will be  waiting for you there).

#### Files
- [client.py](./files/client.py)
