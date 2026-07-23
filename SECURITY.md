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

Gravitee Team Vulnerability Disclosure Key <salieu.mansaray@graviteesource.com>

- Fingerprint: `2609 018E AC3E 29A8 7B47 DB4B 369A BFDE 36B7 4C05`
- Key ID: `369A BFDE 36B7 4C05`
- Created: 21 July 2026
- Expires: 21 July 2027
- Purpose: secure vulnerability disclosure submissions

```text
-----BEGIN PGP PUBLIC KEY BLOCK-----

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
VjCm4qiJLF5p+a+4RnKzuQ==
=qTO9
-----END PGP PUBLIC KEY BLOCK-----


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
