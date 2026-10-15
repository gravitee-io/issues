# Responsible Disclosure Policy

## Reporting a Vulnerability

Gravitee consider the security of our systems a top priority. But no matter how much effort we put into system security, there can still be vulnerabilities present.

If you discover a serious vulnerability with a realistic and tested risk assessment we would like to know about it so we can take steps to address it as quickly as possible.

We would like to ask you to help us better protect our clients and our systems and submit:

- **Critical risk vulnerabilities** which could result in non-trivial data loss for Gravitee or our customers:
    - Bugs which could lead to sensitive massive/complete data leakage
    - Bugs leading to remote code execution
    - Bugs which can lead to private keys leakage or other cryptographic flaws

- **High risk vulnerabilities** that we would consider to be High risk would include:
    - Permanent subdomain takeover
    - XSS or CSRF resulting in significant security or privacy impact to customers
    - Ability to view, modify, or delete sensitive data in misconfigured on data repository
    - Authentication/Authorisation issues that allow bypass the security settings
    - Security misconfigurations that result in data leakage or system compromise
    - Bugs allowing unauthorised operations on user accounts, with a low amount of effort required to attack/compromise a large number users
    - Website, blogs or forums with relevant discussions on how to abuse Gravitee systems

Only after review, assessment and confirmation by the Gravitee Information Security Team a risk critical score will be determined.

# CVSS Score defined

**CVSS V3 Score rating will be used as priority:**

Low - 0.1 - 3.9

Medium 4.0 - 6.9

High - 7.0 - 8.9

Critical - 9.0 - 10.0


**CVSS V2 Score rating will be used where no CVSS score is given:**

Low - 0.1 - 3.9

Medium 4.0 - 6.9

High - 7.0 - 10.0

**How to Submit**
To submit a vulnerability please use the following template:
- Name:
- Github ID:
- Vulnerability Severity:
- CVSS Score:
- Exploitable: Y/N
- Detailed report (Stating method, Screenshots, URLs):
- Tools Used:
- Recommended Remediation:
- E-mail your findings to bug@graviteesource.com using the subject "Vulnerability Submission".
  
**Encrypt your findings using our public PGP key:**

Gravitee Vulnerability Disclosure <bug@graviteesource.com>

- Fingerprint: `8A22 2243 CAC5 1056 E52A A0B9 A937 8959 89FF 237A`
- Key ID: `A937 8959 89FF 237A`
- Created: 15 October 2026
- Expires: 14 October 2028
- Purpose: secure vulnerability disclosure submissions

```text
-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=ec1L
-----END PGP PUBLIC KEY BLOCK-----
```


**IMPORTANT NOTES:**

- Do not take advantage of the vulnerability or problem you have discovered, for example by downloading more data than necessary to demonstrate the vulnerability or deleting or modifying other people's data;
- Do not reveal the problem to others until it has been resolved;
- Do not use attacks on physical security, social engineering, distributed denial of service, spam or applications of third parties; and
- Do provide sufficient information to reproduce the problem, so we will be able to resolve it as quickly as possible. 

**What we promise:**
- We will respond to your report within 5 business days with our evaluation of the report and an expected resolution date;
- If you have followed the instructions above, we will not take any legal action against you in regard to the report;
- We will handle your report with strict confidentiality, and not pass on your personal details to third parties without your permission;
- We will keep you informed of the progress towards resolving the problem;
- In the public information concerning the problem reported, we will give your name as the discoverer of the problem (unless you desire otherwise); 

We strive to resolve all problems as quickly as possible, and we would like to play an active role in the ultimate publication on the problem after it is resolved."
