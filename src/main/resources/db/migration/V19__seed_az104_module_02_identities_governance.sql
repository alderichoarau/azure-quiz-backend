INSERT INTO module (id, certification_id, code, title, description, position)
VALUES ('0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', '00000000-0000-0000-0000-000000000002', 'module-02-identities-governance', 'Module 2 - Manage Identities and Governance in Azure',
        NULL, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('76667d00-5f41-4a24-95ed-0fc6da4be06c', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is Microsoft Entra ID?',
        'Microsoft Entra ID is Microsoft''s cloud-based identity and access management service. It authenticates users and issues an access token that determines which resources they can access.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c2f48ff7-0654-42fa-bf00-c8c65cc40449', '76667d00-5f41-4a24-95ed-0fc6da4be06c', 'A cloud file storage service', FALSE, 1),
    ('609325bd-e7df-4de8-9f30-53a0a195b362', '76667d00-5f41-4a24-95ed-0fc6da4be06c', 'A virtual machine backup tool', FALSE, 2),
    ('f36bf1dc-d6ef-46a5-90aa-3e6267c5a738', '76667d00-5f41-4a24-95ed-0fc6da4be06c', 'A cloud-based identity and access management service', TRUE, 3),
    ('810eff8a-5fd7-4145-bbf1-c9aebd455df8', '76667d00-5f41-4a24-95ed-0fc6da4be06c', 'A virtual network firewall', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5437cd28-7b93-4ab3-ae70-f168f9e814a8', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Unlike Windows Server Active Directory Domain Services (AD DS), Microsoft Entra ID\...',
        'AD DS is organized into domains, trees, and forests with OUs and Group Policy. Microsoft Entra ID, by contrast, uses a flat directory structure optimized for cloud and SaaS authentication.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b67e7580-26f3-48e3-b72a-45d3c6a5f54d', '5437cd28-7b93-4ab3-ae70-f168f9e814a8', 'Only supports on-premises applications', FALSE, 1),
    ('93f83e24-ae39-40ce-b0fc-591452711da6', '5437cd28-7b93-4ab3-ae70-f168f9e814a8', 'Requires a physical domain controller', FALSE, 2),
    ('64426337-8fd4-4a19-b0cf-b01216aaa5e7', '5437cd28-7b93-4ab3-ae70-f168f9e814a8', 'Uses only the Kerberos protocol for authentication', FALSE, 3),
    ('60d05bba-af5f-4da8-b696-5cfdad1e9774', '5437cd28-7b93-4ab3-ae70-f168f9e814a8', 'Uses a flat structure with no organizational units (OUs) or Group Policy Objects', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9518b57e-bce8-4fe3-8e3d-b7938a72c36b', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which protocols does Microsoft Entra ID primarily use to authenticate users to cloud and SaaS applications?',
        'Unlike AD DS, which relies on Kerberos/NTLM for on-premises resources, Microsoft Entra ID relies on open web standards (SAML, OAuth, OpenID Connect) suited to cloud and SaaS authentication.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5e48b182-dc9b-4cee-aaf0-d67a8dfb9a7e', '9518b57e-bce8-4fe3-8e3d-b7938a72c36b', 'IPsec', FALSE, 1),
    ('dceeadeb-08ee-47b5-895b-f63e7584fb44', '9518b57e-bce8-4fe3-8e3d-b7938a72c36b', 'Open protocols such as SAML, OAuth, and OpenID Connect', TRUE, 2),
    ('08c90c1f-8d8f-4096-afd2-857ff54d7240', '9518b57e-bce8-4fe3-8e3d-b7938a72c36b', 'NTLM and Kerberos only', FALSE, 3),
    ('81f13473-e9fb-4fc2-9772-81ef8777efd9', '9518b57e-bce8-4fe3-8e3d-b7938a72c36b', 'SNMP', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('78479f33-4180-40f6-937f-14150d7ab540', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which license is required to use dynamic groups in Microsoft Entra ID?',
        'Dynamic group membership, which automatically adds or removes members based on rules, requires a Microsoft Entra ID P1 license (or an Intune for Education license for device-based rules).', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5f7a36c2-085b-43ef-9624-0284468c8ccf', '78479f33-4180-40f6-937f-14150d7ab540', 'Windows Server only', FALSE, 1),
    ('7afdb6b1-12e6-4257-921a-20fbcf3d8507', '78479f33-4180-40f6-937f-14150d7ab540', 'Microsoft Entra ID P1 or higher', TRUE, 2),
    ('512aa998-d096-4e66-bc48-f902f32cf63b', '78479f33-4180-40f6-937f-14150d7ab540', 'Microsoft Entra ID Free', FALSE, 3),
    ('0eed232e-416e-4299-ae77-9cdb034c759b', '78479f33-4180-40f6-937f-14150d7ab540', 'No license is required', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('103da92f-3681-45cb-a677-517f644196d4', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which feature is available only with Microsoft Entra ID P2 (not P1)?',
        'Identity Protection (sign-in risk detection) and Privileged Identity Management (just-in-time access to privileged roles) are exclusive to the Microsoft Entra ID P2 edition, unlike SSPR and conditional access, which are available starting with P1.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('349a2cb5-4224-42eb-9c99-7063625bb8b1', '103da92f-3681-45cb-a677-517f644196d4', 'Microsoft Entra Identity Protection and Privileged Identity Management (PIM)', TRUE, 1),
    ('de3bc30b-c597-4b66-9fc9-400c58662858', '103da92f-3681-45cb-a677-517f644196d4', 'Self-service password reset', FALSE, 2),
    ('8ce311b7-d248-4566-b0bf-677e8fb55d9e', '103da92f-3681-45cb-a677-517f644196d4', 'Synchronization with on-premises Active Directory', FALSE, 3),
    ('5a496a6b-cd60-4ab2-b198-6013cf38cbc8', '103da92f-3681-45cb-a677-517f644196d4', 'Basic conditional access', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bcd505f6-fdc5-42c1-a898-f1915ab43864', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What does Microsoft Entra Domain Services provide?',
        'Microsoft Entra Domain Services provides managed domain services (domain join, LDAP, Kerberos/NTLM authentication, Group Policy) compatible with Windows Server AD, without the administrator having to deploy or manage domain controllers.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('045b025b-726c-4de3-957c-46dfd115bfb3', 'bcd505f6-fdc5-42c1-a898-f1915ab43864', 'A complete replacement for Microsoft Entra ID', FALSE, 1),
    ('fb4d3aa3-fa9d-4313-be63-3a1335ae4b25', 'bcd505f6-fdc5-42c1-a898-f1915ab43864', 'The ability to create Linux virtual machines only', FALSE, 2),
    ('1c0b6d4a-840c-41ee-bb58-ddd1a163a9fa', 'bcd505f6-fdc5-42c1-a898-f1915ab43864', 'Managed domain services compatible with Windows Server AD (domain join, LDAP, Kerberos/NTLM) without managing domain controllers', TRUE, 3),
    ('6fe48a4d-8dee-4b03-bdf5-321e895e5e4e', 'bcd505f6-fdc5-42c1-a898-f1915ab43864', 'Database backup storage', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('134be9e4-fde0-409b-8a8f-dfd548c2dfcc', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'An organization migrating legacy applications that require LDAP authentication to Azure should use:',
        'Microsoft Entra ID does not natively support LDAP or Kerberos/NTLM. Microsoft Entra Domain Services bridges this gap by providing these legacy protocols for applications that still depend on them.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4ca38f45-e67b-494d-a4b6-c64efa4baa9c', '134be9e4-fde0-409b-8a8f-dfd548c2dfcc', 'Microsoft Entra ID alone', FALSE, 1),
    ('38f1cd46-6d67-4283-a8f1-353aa1c70db2', '134be9e4-fde0-409b-8a8f-dfd548c2dfcc', 'Microsoft Entra Domain Services', TRUE, 2),
    ('f805222d-10d0-4cbd-b2bb-c2e81adf02eb', '134be9e4-fde0-409b-8a8f-dfd548c2dfcc', 'Azure Key Vault', FALSE, 3),
    ('db469e3d-230e-4be8-ab26-20618c6286ee', '134be9e4-fde0-409b-8a8f-dfd548c2dfcc', 'Azure Policy', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('20a474a9-ded0-4366-8b3a-3ba4c1d463a8', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is one of the main use cases for Microsoft Entra ID in organizations?',
        'Microsoft Entra ID is designed to let users authenticate once (SSO) and then access many cloud and SaaS applications without signing in again each time.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('53de2794-d6f3-41a6-b760-17d577849751', '20a474a9-ded0-4366-8b3a-3ba4c1d463a8', 'Providing single sign-on (SSO) to SaaS and cloud applications', TRUE, 1),
    ('9f151fb8-dffb-4c08-a39f-e28dd2b76371', '20a474a9-ded0-4366-8b3a-3ba4c1d463a8', 'Configuring virtual networks', FALSE, 2),
    ('42f2dba4-aa45-40be-b0f7-3dd947b71782', '20a474a9-ded0-4366-8b3a-3ba4c1d463a8', 'Automatically deploying virtual machines', FALSE, 3),
    ('0cbb97a9-36dc-4fd3-93f2-9882f0e523d6', '20a474a9-ded0-4366-8b3a-3ba4c1d463a8', 'Managing Blob storage', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('765e6d7c-156a-435a-a908-ae3b00db12b2', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is a Microsoft Entra "tenant"?',
        'A Microsoft Entra tenant is a dedicated instance of the service, specific to an organization, that holds its users, groups, and applications isolated from other organizations.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c0a2d865-2094-4be9-b093-25957c7918ff', '765e6d7c-156a-435a-a908-ae3b00db12b2', 'A type of license', FALSE, 1),
    ('34ef4bd7-4fde-4ed9-b717-a94a72ff09c0', '765e6d7c-156a-435a-a908-ae3b00db12b2', 'A resource group', FALSE, 2),
    ('9425498c-7197-4854-a26c-1f72c1f84786', '765e6d7c-156a-435a-a908-ae3b00db12b2', 'A dedicated, isolated instance of Microsoft Entra ID representing an organization', TRUE, 3),
    ('85cd7136-12c5-4f7d-baed-e98970796e11', '765e6d7c-156a-435a-a908-ae3b00db12b2', 'An Azure virtual machine', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('da7de7d5-a064-4c95-9380-71ced6386b98', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What does Microsoft Entra ID generate after a user successfully authenticates, to determine which resources the user can access?',
        'Once the user is authenticated, Microsoft Entra ID issues an access token used to authorize the user and determine which resources they can access and what actions they can perform.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f9f94a0f-6fb6-425f-ad38-fcfd9237838f', 'da7de7d5-a064-4c95-9380-71ced6386b98', 'An access token', TRUE, 1),
    ('9e632c47-22d8-4425-8636-448220f53776', 'da7de7d5-a064-4c95-9380-71ced6386b98', 'A disk encryption key', FALSE, 2),
    ('d73b8a73-e5f5-4a6f-ac8d-ead19b400857', 'da7de7d5-a064-4c95-9380-71ced6386b98', 'An SSL certificate', FALSE, 3),
    ('2473c2c2-44ff-4183-9575-061ecc897410', 'da7de7d5-a064-4c95-9380-71ced6386b98', 'A static IP address', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cd5971e7-3269-41ff-ac6f-c2a2a0ba117f', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which Microsoft Entra ID P1 feature lets you restrict access to resources based on conditions such as device compliance or location?',
        'Conditional access, included in Microsoft Entra ID P1, lets you enforce access rules based on signals such as device compliance, location, or sign-in risk level.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ec91b520-92f8-4f04-b38f-437eea19c619', 'cd5971e7-3269-41ff-ac6f-c2a2a0ba117f', 'Microsoft 365 groups', FALSE, 1),
    ('9007a011-96de-4032-8165-752f61eb99fa', 'cd5971e7-3269-41ff-ac6f-c2a2a0ba117f', 'Conditional access', TRUE, 2),
    ('bc33e34b-0cdf-4b76-8dbd-1662f0c61f9f', 'cd5971e7-3269-41ff-ac6f-c2a2a0ba117f', 'Custom security attributes', FALSE, 3),
    ('4593954b-7371-49e5-97fa-94e6e9eaaf50', 'cd5971e7-3269-41ff-ac6f-c2a2a0ba117f', 'SSPR', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('08314c89-f3fd-4ae6-919a-49aec6bb6542', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'In an on-premises Active Directory Domain Services (AD DS) environment, which protocol is primarily used for authentication?',
        'AD DS has historically relied on the Kerberos and NTLM protocols to authenticate users within an on-premises corporate network, whereas Microsoft Entra ID favors open web protocols for the cloud.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bd37b069-b2c7-4de1-8e64-de74d94573db', '08314c89-f3fd-4ae6-919a-49aec6bb6542', 'OAuth', FALSE, 1),
    ('a9298a76-fca3-4d02-b595-7f08dec88609', '08314c89-f3fd-4ae6-919a-49aec6bb6542', 'SAML', FALSE, 2),
    ('2f72570f-59dc-4255-82f1-62b2ffe38153', '08314c89-f3fd-4ae6-919a-49aec6bb6542', 'OpenID Connect', FALSE, 3),
    ('8b6c4d76-eca2-473d-a56c-23240167f846', '08314c89-f3fd-4ae6-919a-49aec6bb6542', 'Kerberos/NTLM', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('62c8e3d8-4811-40f6-a7a4-96da6064aa91', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which two legacy protocols does Microsoft Entra Domain Services support to ensure compatibility with older applications?',
        'Microsoft Entra Domain Services exposes the LDAP and Kerberos/NTLM protocols, allowing legacy applications that depend on them to keep working while relying on Microsoft Entra ID identity.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('37ac6e9c-65bf-433e-8f1a-5b7634ce3cc4', '62c8e3d8-4811-40f6-a7a4-96da6064aa91', 'LDAP and Kerberos/NTLM', TRUE, 1),
    ('06b9647f-b790-48ee-9ef1-71f6fa50abdd', '62c8e3d8-4811-40f6-a7a4-96da6064aa91', 'SAML and OAuth', FALSE, 2),
    ('de296bd6-abcb-4b34-8879-33747b5ae617', '62c8e3d8-4811-40f6-a7a4-96da6064aa91', 'SNMP and FTP', FALSE, 3),
    ('bfcf60ca-8e04-497a-a53c-953951bd6fe9', '62c8e3d8-4811-40f6-a7a4-96da6064aa91', 'HTTP and HTTPS', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f25eb439-c98c-4a95-a39b-998ca7d735de', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which statement best describes Microsoft Entra ID?',
        'Microsoft Entra ID is not limited to the Windows ecosystem: it is a multi-tenant cloud service designed to manage identity and access across a wide variety of applications and platforms, including SaaS.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2346b1d4-519c-4b42-9a5e-44338fbbc2de', 'f25eb439-c98c-4a95-a39b-998ca7d735de', 'A component that only replaces network firewalls', FALSE, 1),
    ('b6cb5c23-0061-4491-a446-bc618f029743', 'f25eb439-c98c-4a95-a39b-998ca7d735de', 'A multi-tenant cloud identity management service usable with Windows, Linux, mobile, and SaaS applications', TRUE, 2),
    ('46ac18d0-6bbf-41a9-9e10-4f442f277605', 'f25eb439-c98c-4a95-a39b-998ca7d735de', 'A server virtualization tool', FALSE, 3),
    ('eb6bcce9-7bde-4ed1-96a1-e2323c0a8adf', 'f25eb439-c98c-4a95-a39b-998ca7d735de', 'A service limited to Windows Server environments only', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('97f06226-bbb0-421a-8acf-49be5040e3a4', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is the main benefit of using Microsoft Entra Domain Services instead of deploying and managing your own domain controllers on Azure virtual machines?',
        'With Microsoft Entra Domain Services, Microsoft manages the underlying domain controller infrastructure (patching, availability, backup), which reduces operational overhead compared to hosting domain controllers on customer-managed VMs.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0a515e52-19ef-4058-bba2-c1d6927e9e28', '97f06226-bbb0-421a-8acf-49be5040e3a4', 'The administrator does not have to manage the deployment, patching, or high availability of domain controllers', TRUE, 1),
    ('96f67001-acd3-476a-b578-c6a10948bd56', '97f06226-bbb0-421a-8acf-49be5040e3a4', 'It avoids the need to use Microsoft Entra ID', FALSE, 2),
    ('b5a9b820-08f6-454d-8bfd-e1cdb46087e6', '97f06226-bbb0-421a-8acf-49be5040e3a4', 'It removes the need for authentication', FALSE, 3),
    ('acbf745a-d362-421f-99bc-b35397c92852', '97f06226-bbb0-421a-8acf-49be5040e3a4', 'It always costs less', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('dc21f2d5-cdf6-4971-8ce5-7ff409a4604f', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'How many categories of users does Microsoft Entra ID generally define?',
        'Microsoft Entra ID generally distinguishes cloud identities (created and managed directly in Entra ID), identities synchronized from an on-premises Active Directory, and guest users from outside the organization.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5bf32928-1339-41d6-8eb2-2f77d4b2852b', 'dc21f2d5-cdf6-4971-8ce5-7ff409a4604f', 'Two', FALSE, 1),
    ('6d07cc35-8d60-4266-bdd3-d2d986df3ecc', 'dc21f2d5-cdf6-4971-8ce5-7ff409a4604f', 'Five', FALSE, 2),
    ('c88aff54-979e-43c8-af6e-fd04131546c5', 'dc21f2d5-cdf6-4971-8ce5-7ff409a4604f', 'Four', FALSE, 3),
    ('86e16a69-0414-451a-ad2d-0182242de9e5', 'dc21f2d5-cdf6-4971-8ce5-7ff409a4604f', 'Three: cloud identities, synchronized identities, and guest users', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('900e4aeb-38e0-4fc1-abc1-3756d79b1657', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which synchronization tool does Microsoft recommend for most organizations synchronizing their on-premises Active Directory to Microsoft Entra ID?',
        'Microsoft Entra Cloud Sync is the recommended tool for most organizations because it uses a lightweight cloud-managed agent and supports multiple disconnected forests, while Microsoft Entra Connect Sync remains reserved for complex scenarios.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7c32dc43-6c9e-455b-9404-fc62e1a1b529', '900e4aeb-38e0-4fc1-abc1-3756d79b1657', 'Azure Site Recovery', FALSE, 1),
    ('cc725d8a-9294-4015-949a-d88e8a065f7a', '900e4aeb-38e0-4fc1-abc1-3756d79b1657', 'Azure Migrate', FALSE, 2),
    ('e407fbf8-bf51-4ac5-a2cf-fdbeaf73ff84', '900e4aeb-38e0-4fc1-abc1-3756d79b1657', 'Microsoft Entra Cloud Sync', TRUE, 3),
    ('8b4751ad-e830-478d-bb0f-bad211c5bb64', '900e4aeb-38e0-4fc1-abc1-3756d79b1657', 'Microsoft Entra Connect Sync', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b09279b6-79d8-4b27-b836-a9212716d53e', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which type of Microsoft Entra ID group provides access to a shared mailbox, calendar, and SharePoint site?',
        'Microsoft 365 groups offer collaboration features including a shared mailbox, calendar, files, and a SharePoint site, unlike security groups, which are primarily designed to manage access to resources.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('125731f4-b607-46e6-b4c9-7ab46b8d9c7d', 'b09279b6-79d8-4b27-b836-a9212716d53e', 'Dynamic device group', FALSE, 1),
    ('3d1cb750-4f7c-45f6-ac11-7e999cfbbde1', 'b09279b6-79d8-4b27-b836-a9212716d53e', 'Microsoft 365 group', TRUE, 2),
    ('5a74f4c0-0e4a-44a3-805a-5d47df0ae14c', 'b09279b6-79d8-4b27-b836-a9212716d53e', 'Security group', FALSE, 3),
    ('75ed0379-7451-488c-8636-045df6c15cfc', 'b09279b6-79d8-4b27-b836-a9212716d53e', 'Administrative group', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('32549374-1843-457b-9cc6-5509eaafa2d4', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which type of group membership automatically adds or removes members based on rules using attributes like department?',
        'Dynamic membership continuously evaluates user or device attributes (such as department) against defined rules, and automatically adds or removes members accordingly, without manual intervention.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6bfc4c89-720c-4dac-9f0c-045b97ba29aa', '32549374-1843-457b-9cc6-5509eaafa2d4', 'Guest membership', FALSE, 1),
    ('79b3b6d4-cd90-4aa1-8df2-85f83640c386', '32549374-1843-457b-9cc6-5509eaafa2d4', 'Dynamic membership', TRUE, 2),
    ('a9689634-bdff-416c-931e-810d971b6e7c', '32549374-1843-457b-9cc6-5509eaafa2d4', 'Assigned membership', FALSE, 3),
    ('bb522c8a-434f-4388-a805-38d90b2742f8', '32549374-1843-457b-9cc6-5509eaafa2d4', 'Hybrid membership', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('42e9be62-a136-4e8e-a6a2-fac0019c75ac', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which license is required to use dynamic group membership?',
        'Dynamic group membership requires a Microsoft Entra ID P1 license (or Intune for Education for device-based rules).', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('65e2ba92-57c6-41e7-b6f5-9f66e6183a11', '42e9be62-a136-4e8e-a6a2-fac0019c75ac', 'Windows Server only', FALSE, 1),
    ('805d19d3-1e3d-4554-9cff-4fe353e878df', '42e9be62-a136-4e8e-a6a2-fac0019c75ac', 'Microsoft Entra ID Free', FALSE, 2),
    ('79bd7f9d-0df3-4e02-b260-239af57ab6a0', '42e9be62-a136-4e8e-a6a2-fac0019c75ac', 'No specific license', FALSE, 3),
    ('28ee0485-93cf-4636-b751-ae0693edf6dc', '42e9be62-a136-4e8e-a6a2-fac0019c75ac', 'Microsoft Entra ID P1', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6c4904dd-fa60-4bec-b05b-fefdfe5b7ac1', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'A personal device used in BYOD mode that accesses company resources with a work account added to it is an example of:',
        'Microsoft Entra registered devices are typically personal (BYOD) devices where a Microsoft Entra account is simply added alongside the local account, allowing limited, controlled access to corporate resources.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f37cf0ec-cfec-4c2a-9b83-3d9e057b5d88', '6c4904dd-fa60-4bec-b05b-fefdfe5b7ac1', 'An unmanaged device', FALSE, 1),
    ('42027443-c28b-4a1a-af63-78a36848fb89', '6c4904dd-fa60-4bec-b05b-fefdfe5b7ac1', 'A Microsoft Entra registered device', TRUE, 2),
    ('cae0c35a-7724-4cde-a4b1-f298d4eb1b60', '6c4904dd-fa60-4bec-b05b-fefdfe5b7ac1', 'A Microsoft Entra joined device', FALSE, 3),
    ('1caedf50-6604-4f46-a528-a66227ea2dbc', '6c4904dd-fa60-4bec-b05b-fefdfe5b7ac1', 'A Microsoft Entra hybrid joined device', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('af0bfe11-dc34-4092-8a72-f187bd91b14b', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which device join type best suits an organization that already has an on-premises Active Directory infrastructure and wants to keep using Group Policy?',
        'Microsoft Entra hybrid joined devices are both joined to the on-premises Active Directory and registered in Microsoft Entra ID, allowing continued use of Group Policy and Configuration Manager while gaining cloud capabilities.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('71f320a2-cb69-4d95-a176-45c2fae2d208', 'af0bfe11-dc34-4092-8a72-f187bd91b14b', 'Microsoft Entra hybrid joined device', TRUE, 1),
    ('1cdd45b4-dde6-4fe3-b589-d87c4d018bcf', 'af0bfe11-dc34-4092-8a72-f187bd91b14b', 'Microsoft Entra registered device', FALSE, 2),
    ('2ca084f9-7b6e-408e-9187-2b87ac266772', 'af0bfe11-dc34-4092-8a72-f187bd91b14b', 'Microsoft Entra joined device only', FALSE, 3),
    ('8bc32055-48e7-410d-bef5-2eae7ef456f9', 'af0bfe11-dc34-4092-8a72-f187bd91b14b', 'Unregistered device', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1527002b-5682-4b01-9f3d-a9d20581c3e7', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is the main benefit of group-based licensing in Microsoft Entra ID?',
        'Group-based licensing automatically assigns product licenses to all members of a group and removes them when they leave, eliminating the need for PowerShell scripts to manage licenses individually.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('217c8883-2189-4176-ad0c-a184c5185cb6', '1527002b-5682-4b01-9f3d-a9d20581c3e7', 'It reduces license costs', FALSE, 1),
    ('75b15d18-fa50-4cf2-9fef-c29d8e661702', '1527002b-5682-4b01-9f3d-a9d20581c3e7', 'It removes the need to purchase licenses', FALSE, 2),
    ('535b2cba-32f8-4d74-b5ac-4fe803f82caa', '1527002b-5682-4b01-9f3d-a9d20581c3e7', 'It automatically assigns and removes licenses based on group membership', TRUE, 3),
    ('cbb7dccb-d41f-47a0-8f9e-866e7fa6148a', '1527002b-5682-4b01-9f3d-a9d20581c3e7', 'It is available without a Premium subscription', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('395a8d3d-67fd-4183-86ac-6c3458300947', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What do custom security attributes in Microsoft Entra ID allow you to do?',
        'Custom security attributes are company-specific key-value pairs assignable to users and enterprise applications, used to classify objects, build a filterable inventory, or fine-tune access control.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('04499acb-b364-488c-a067-ba4da1c25b77', '395a8d3d-67fd-4183-86ac-6c3458300947', 'Replace Azure RBAC roles', FALSE, 1),
    ('66c717fe-aadb-4655-8c7e-07bfeb8bf3f6', '395a8d3d-67fd-4183-86ac-6c3458300947', 'Configure availability zones', FALSE, 2),
    ('11ea1450-8665-4fd3-b2f1-8f9f8fc2cac0', '395a8d3d-67fd-4183-86ac-6c3458300947', 'Encrypt user passwords', FALSE, 3),
    ('9866cd2f-9f39-40b7-a536-64a7bf2ac873', '395a8d3d-67fd-4183-86ac-6c3458300947', 'Define company-specific key-value pairs to classify objects and fine-tune access control', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('945f769f-2fc9-4b96-bd54-1b6fe76c0c2a', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which standard protocol does the Microsoft Entra Provisioning Service use to automate the creation and removal of user accounts with third-party applications?',
        'The Microsoft Entra provisioning service relies on the SCIM 2.0 protocol to connect to a target application''s endpoint and automate the creation, update, and removal of user accounts and groups.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4f278d07-501f-419b-b4ba-fa7badb00687', '945f769f-2fc9-4b96-bd54-1b6fe76c0c2a', 'LDAP', FALSE, 1),
    ('78dda4f8-a515-44e0-a397-81087f3c574d', '945f769f-2fc9-4b96-bd54-1b6fe76c0c2a', 'RADIUS', FALSE, 2),
    ('3e29597d-b9d9-4461-8e7a-11d8153c36bb', '945f769f-2fc9-4b96-bd54-1b6fe76c0c2a', 'SCIM 2.0', TRUE, 3),
    ('99f05fad-db91-4fd5-82a2-e961e40ccc58', '945f769f-2fc9-4b96-bd54-1b6fe76c0c2a', 'SNMP', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('06de4fb0-152d-4b05-bf07-b1080e0e2bdf', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is the source of "guest user" accounts in Microsoft Entra ID?',
        'Guest users are accounts external to the organization (other cloud providers, personal Microsoft accounts, etc.), useful for granting temporary access to partners or contractors, with the ability to easily remove their access once the work is complete.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('20117107-fcf6-49db-b8f8-d4cf260996ab', '06de4fb0-152d-4b05-bf07-b1080e0e2bdf', 'They come exclusively from a synchronized on-premises Active Directory', FALSE, 1),
    ('3213e329-abe5-4202-9614-8ef897ff345f', '06de4fb0-152d-4b05-bf07-b1080e0e2bdf', 'They are automatically generated by SCIM', FALSE, 2),
    ('951ae5c5-0647-406f-9cba-5a305af97d99', '06de4fb0-152d-4b05-bf07-b1080e0e2bdf', 'They are created directly by an administrator in the directory', FALSE, 3),
    ('f395a698-a639-4e59-ba26-75373c549983', '06de4fb0-152d-4b05-bf07-b1080e0e2bdf', 'They exist outside the organization, such as other cloud providers or Microsoft accounts', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c426c4db-6950-491f-a8f3-24cf57c881c1', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which tool allows you to apply compliance and configuration policies to devices enrolled in BYOD?',
        'Microsoft Intune, a mobile device management (MDM) tool, allows you to enforce required configurations such as storage encryption or password complexity on enrolled devices, including BYOD devices.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('de7c85dd-4d1b-499c-a045-92c76ef8d6df', 'c426c4db-6950-491f-a8f3-24cf57c881c1', 'Azure Key Vault', FALSE, 1),
    ('bd06b909-f186-473c-84d9-f872e5be00d2', 'c426c4db-6950-491f-a8f3-24cf57c881c1', 'Azure RBAC', FALSE, 2),
    ('2cbf2ac7-192b-4d57-89b3-8d785f6d5ded', 'c426c4db-6950-491f-a8f3-24cf57c881c1', 'Microsoft Intune', TRUE, 3),
    ('232affde-edc9-46a3-968c-e7219ef3566e', 'c426c4db-6950-491f-a8f3-24cf57c881c1', 'Azure Policy', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('81669e61-c622-403c-a6d4-da227a4a3bf6', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Why must a "usage location" be set in a user''s profile before assigning a license?',
        'Some Microsoft services aren''t available in every location. Setting the usage location ensures that the license assignment result is correct and that the user doesn''t receive services that aren''t authorized in their region.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('75d06ec1-ade5-441f-bc73-6096f21f6af2', '81669e61-c622-403c-a6d4-da227a4a3bf6', 'To set the time zone for notifications', FALSE, 1),
    ('cb1c1580-981f-4105-bb3a-2137b7cfdd18', '81669e61-c622-403c-a6d4-da227a4a3bf6', 'To speed up the network connection', FALSE, 2),
    ('892d88e3-7908-4046-b470-aac93529c0ff', '81669e61-c622-403c-a6d4-da227a4a3bf6', 'To choose the interface language', FALSE, 3),
    ('97f97bfc-7400-4613-94f5-be1a7aaaea5e', '81669e61-c622-403c-a6d4-da227a4a3bf6', 'To ensure the user only receives services authorized in their location', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d11ab96a-2d1f-4305-9ea7-a34d2600d7a7', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'If an organization has 1,000 unique members spread across licensed groups, what is the minimum number of licenses it must own?',
        'For any group to which a license is assigned, every unique member must also have a license available; the organization must therefore own at least as many licenses as there are unique members across the licensed groups.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3e02ce1a-07bd-4dbf-9f00-5a5405ed158e', 'd11ab96a-2d1f-4305-9ea7-a34d2600d7a7', '1,000', TRUE, 1),
    ('f5865806-3c1d-4686-b21a-515955a648b6', 'd11ab96a-2d1f-4305-9ea7-a34d2600d7a7', '500', FALSE, 2),
    ('7d7916d6-d410-4ca3-9e5c-487b0f66aaf7', 'd11ab96a-2d1f-4305-9ea7-a34d2600d7a7', 'None, group licenses are free', FALSE, 3),
    ('c75c1a00-5528-4dcd-b819-a98b81a5fe9c', 'd11ab96a-2d1f-4305-9ea7-a34d2600d7a7', '100', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('99db12e0-4c2c-479e-8a3f-f815ed76cd9c', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What alternative exists for automatic user provisioning when the source HR system does not expose a SCIM endpoint?',
        'For HR systems that don''t expose a SCIM endpoint, Microsoft Entra ID supports API-driven inbound provisioning, which lets an automation tool pull data from any HR system (such as Workday) and send it to the Microsoft Entra provisioning API.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('74d83919-0cf6-41f5-855e-dc31b82a1d27', '99db12e0-4c2c-479e-8a3f-f815ed76cd9c', 'Custom security attributes', FALSE, 1),
    ('1fa679f4-f509-4e16-8984-995be12db416', '99db12e0-4c2c-479e-8a3f-f815ed76cd9c', 'Azure RBAC', FALSE, 2),
    ('6590766d-bddd-4bf3-911b-b9da18b51b94', '99db12e0-4c2c-479e-8a3f-f815ed76cd9c', 'Microsoft Entra hybrid join', FALSE, 3),
    ('18862999-4642-4620-b6de-947e7905f5ce', '99db12e0-4c2c-479e-8a3f-f815ed76cd9c', 'API-driven inbound provisioning', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7a449a45-9f85-4fb2-83af-5059d315d5ef', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is an Azure region?',
        'An Azure region is a geographic area comprising at least one datacenter, sometimes several, connected to each other by a low-latency network to balance workloads.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('18313c8d-bce5-4a2f-8e3f-1845f6f868d7', '7a449a45-9f85-4fb2-83af-5059d315d5ef', 'A single, isolated datacenter', FALSE, 1),
    ('ca282b15-8811-4e56-afb9-4819d590f680', '7a449a45-9f85-4fb2-83af-5059d315d5ef', 'An Azure subscription', FALSE, 2),
    ('a0603ad9-f7d5-48a4-84cb-ec0890a9e5a1', '7a449a45-9f85-4fb2-83af-5059d315d5ef', 'A geographic area containing at least one datacenter connected by a low-latency network', TRUE, 3),
    ('1351c591-2ba5-41e0-bb10-97c4c5cbff07', '7a449a45-9f85-4fb2-83af-5059d315d5ef', 'A resource group', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7db98219-99b5-43b8-88eb-04a33065df56', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is the minimum number of availability zones in an Azure region that supports this feature?',
        'To ensure resiliency, at least three separate availability zones, each with independent power, cooling, and networking, are present in every region that supports this feature.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0bf25758-172c-4bc2-8f7e-1bd2cc6fcc11', '7db98219-99b5-43b8-88eb-04a33065df56', 'Three', TRUE, 1),
    ('7ae9848e-0664-46a5-970e-a1ab4a138341', '7db98219-99b5-43b8-88eb-04a33065df56', 'One', FALSE, 2),
    ('11b9107f-781d-4425-9862-0ad275d2014c', '7db98219-99b5-43b8-88eb-04a33065df56', 'Five', FALSE, 3),
    ('99a6016e-6191-4cbd-a38a-435139f7f0f5', '7db98219-99b5-43b8-88eb-04a33065df56', 'Two', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('713b2aaf-812c-4fab-a374-9ca525e91cb6', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is the main purpose of an Azure region pair?',
        'Most Azure regions are paired with another region in the same geography, at least 480 km away, to reduce the risk that the same event (natural disaster, outage) affects both regions simultaneously.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('65711092-b70e-4948-8fbc-964109bae092', '713b2aaf-812c-4fab-a374-9ca525e91cb6', 'Increasing local network speed', FALSE, 1),
    ('70211fc5-ec09-4aa1-a37c-36ee7e41ee8b', '713b2aaf-812c-4fab-a374-9ca525e91cb6', 'Providing dedicated technical support', FALSE, 2),
    ('d9928394-cb0c-41e5-9a46-7e0f0a430113', '713b2aaf-812c-4fab-a374-9ca525e91cb6', 'Reducing licensing costs', FALSE, 3),
    ('588c6ccc-9202-445d-bfb3-788217b906d1', '713b2aaf-812c-4fab-a374-9ca525e91cb6', 'Ensuring resiliency by replicating resources between two regions at least 480 km apart within the same geography', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8933b8b3-f292-4285-a575-2f8b1489946d', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which Azure region is an exception to the usual rule of bidirectional region pairing?',
        'The Brazil South region is paired unidirectionally with South Central US (outside its own geography), and South Central US does not serve as a backup for Brazil South, unlike most region pairs, which are reciprocal.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5dfc8dad-51dd-42e1-8574-75f5260cec97', '8933b8b3-f292-4285-a575-2f8b1489946d', 'Southeast Asia', FALSE, 1),
    ('b0a51091-6fd3-445b-b74c-40d5fef2f8a1', '8933b8b3-f292-4285-a575-2f8b1489946d', 'East US', FALSE, 2),
    ('69aff2ff-e50c-4878-b0b1-2902b35df499', '8933b8b3-f292-4285-a575-2f8b1489946d', 'Brazil South', TRUE, 3),
    ('e24ce789-879a-47a6-b98f-ade6c490a38c', '8933b8b3-f292-4285-a575-2f8b1489946d', 'West Europe', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3fe9594e-1e03-4d21-a470-3b8e7f917345', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Why might an organization subject to specific legal requirements use an Azure sovereign region?',
        'Sovereign regions, such as those for US government agencies or China (via 21Vianet), are isolated Azure instances that meet specific legal or compliance requirements that standard regions don''t satisfy.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('060c5186-402d-47e8-8891-6bffe2bbe4f0', '3fe9594e-1e03-4d21-a470-3b8e7f917345', 'To get reduced pricing', FALSE, 1),
    ('6812cdc9-5857-4cb3-b2c8-f2af6946ac75', '3fe9594e-1e03-4d21-a470-3b8e7f917345', 'To meet legal or compliance requirements through an isolated Azure instance', TRUE, 2),
    ('6661b30b-6009-48ac-b1aa-26faa12060dd', '3fe9594e-1e03-4d21-a470-3b8e7f917345', 'To get free priority support', FALSE, 3),
    ('b6e2a223-cddb-4a4c-a526-804b692e906a', '3fe9594e-1e03-4d21-a470-3b8e7f917345', 'To access more availability zones', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('09bbefe9-d35a-4d44-b59d-0fa576c29a98', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which statement about Azure resource groups is correct?',
        'Every Azure resource must belong to exactly one resource group at a time; it can be moved to another group, but never attached to multiple groups simultaneously.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6466b4a6-d1be-4a98-bb9d-eb8d0003321b', '09bbefe9-d35a-4d44-b59d-0fa576c29a98', 'A resource group can be renamed at any time', FALSE, 1),
    ('5695b7a1-85a5-4bbe-8d75-ceffe34bc5fe', '09bbefe9-d35a-4d44-b59d-0fa576c29a98', 'Resource groups can be nested', FALSE, 2),
    ('620c98c3-6092-48d9-b90b-3d5fee721fe8', '09bbefe9-d35a-4d44-b59d-0fa576c29a98', 'A resource can belong to multiple resource groups at the same time', FALSE, 3),
    ('a88f01f5-643b-466a-ba96-6afea03bbb24', '09bbefe9-d35a-4d44-b59d-0fa576c29a98', 'A resource belongs to only one resource group at a time', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1e7dad15-c9eb-44d8-8080-0ec01841bf25', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What happens when an Azure resource group is deleted?',
        'Actions applied to a resource group apply to all resources it contains; deleting the group therefore deletes all the resources it hosts.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('82d2917a-4e82-4da1-b07e-a81851fbc6ca', '1e7dad15-c9eb-44d8-8080-0ec01841bf25', 'All resources it contains are also deleted', TRUE, 1),
    ('06c78eae-7896-40cf-afe6-7b4caf43d041', '1e7dad15-c9eb-44d8-8080-0ec01841bf25', 'Only the group is deleted, the resources remain', FALSE, 2),
    ('977eb027-7e11-49e4-9cea-d758cb4f8375', '1e7dad15-c9eb-44d8-8080-0ec01841bf25', 'Nothing, extra confirmation is always required', FALSE, 3),
    ('971288e2-8e80-4287-ae69-173a7c9989aa', '1e7dad15-c9eb-44d8-8080-0ec01841bf25', 'The resources are automatically moved to another group', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('18f4c319-6b9d-4a50-97e6-4fdcdeb33acb', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'An Azure subscription primarily serves as a boundary for:',
        'An Azure subscription is both a billing boundary (separate reports and invoices) and an access control boundary (access management policies applied at the subscription level).', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2106e9c2-8499-4591-a62c-1c08991b106e', '18f4c319-6b9d-4a50-97e6-4fdcdeb33acb', 'Network bandwidth', FALSE, 1),
    ('bc3ae167-a6cb-4977-8d2d-c95a75bfd422', '18f4c319-6b9d-4a50-97e6-4fdcdeb33acb', 'The number of available regions', FALSE, 2),
    ('e6a07e1d-47af-4175-b621-c3a8245c493e', '18f4c319-6b9d-4a50-97e6-4fdcdeb33acb', 'Billing and access control', TRUE, 3),
    ('ea8f825c-774c-4d93-b312-bea6106e0203', '18f4c319-6b9d-4a50-97e6-4fdcdeb33acb', 'Availability zones only', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('13e2401c-1117-4dee-97f7-4898d751a74f', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'How many levels deep can Azure management groups be nested below the tenant root group?',
        'Azure management groups can be nested up to six levels (not counting the root level or the subscription level), allowing you to build a hierarchy that reflects the organization''s structure.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('290cd60b-7c81-4439-bf18-d92871ff8e06', '13e2401c-1117-4dee-97f7-4898d751a74f', 'Unlimited', FALSE, 1),
    ('6d68193f-c21d-443a-9483-b5145131b798', '13e2401c-1117-4dee-97f7-4898d751a74f', 'Ten', FALSE, 2),
    ('6c1f6893-caa3-4458-a555-256dfe9b5901', '13e2401c-1117-4dee-97f7-4898d751a74f', 'Six', TRUE, 3),
    ('3e824371-deda-49a7-867a-cd8a4c95b635', '13e2401c-1117-4dee-97f7-4898d751a74f', 'Three', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('25a73fb9-1c24-4998-82a8-0edbb952a9ba', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Among the availability-zone-enabled service categories, which one automatically replicates data across zones without manual intervention?',
        'Zone-redundant services (such as zone-redundant storage or certain managed database offerings) automatically replicate data across availability zones via the platform, unlike zonal services, which require manually pinning the resource to a specific zone.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5d844075-4bf5-4f5c-8846-3368f535c2ed', '25a73fb9-1c24-4998-82a8-0edbb952a9ba', 'Zonal services', FALSE, 1),
    ('c7afbb5d-49a2-4fa5-98cf-223f3bb9fead', '25a73fb9-1c24-4998-82a8-0edbb952a9ba', 'Local services', FALSE, 2),
    ('1220ccdd-3f6b-46a9-89ef-08eaf68e0a1e', '25a73fb9-1c24-4998-82a8-0edbb952a9ba', 'Non-regional services', FALSE, 3),
    ('13816d53-4eb5-45b4-9fb3-4ed3cc9407c0', '25a73fb9-1c24-4998-82a8-0edbb952a9ba', 'Zone-redundant services', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('55c186a6-2019-4181-9e8f-4f874f581a8b', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which of these global Azure services do not require selecting a specific region at deployment?',
        'Some global Azure services, such as Microsoft Entra ID, Azure Traffic Manager, and Azure DNS, don''t require you to select a specific region, unlike most resources such as virtual machines.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a917df77-169e-43c3-bb93-44b68ca6427f', '55c186a6-2019-4181-9e8f-4f874f581a8b', 'Resource groups', FALSE, 1),
    ('a4412c17-2dbe-421f-a49e-753496f3aed3', '55c186a6-2019-4181-9e8f-4f874f581a8b', 'Microsoft Entra ID, Azure Traffic Manager, and Azure DNS', TRUE, 2),
    ('aa8e905e-bc18-43d3-953e-03cf6b7f8060', '55c186a6-2019-4181-9e8f-4f874f581a8b', 'Virtual machines', FALSE, 3),
    ('6e2d4690-48db-45b1-b049-741f58e6ce97', '55c186a6-2019-4181-9e8f-4f874f581a8b', 'Availability zones', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8129f3f4-94a9-4165-ae28-a9f53ff321ff', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'How many tenant root groups exist per Microsoft Entra customer?',
        'Each Microsoft Entra tenant has a single tenant root group at the top level, to which all other management groups and subscriptions roll up in order to apply governance policies globally.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('79bd74ab-1603-497f-808d-25b6db71fba1', '8129f3f4-94a9-4165-ae28-a9f53ff321ff', 'Only one', TRUE, 1),
    ('addde8d1-447c-4ded-b02d-3cb85a4b625f', '8129f3f4-94a9-4165-ae28-a9f53ff321ff', 'As many as there are subscriptions', FALSE, 2),
    ('8ea31e78-99ea-4273-b4c5-6cfb60688860', '8129f3f4-94a9-4165-ae28-a9f53ff321ff', 'Two', FALSE, 3),
    ('3c9ae0ad-f56b-4266-b629-f02f1756a0ac', '8129f3f4-94a9-4165-ae28-a9f53ff321ff', 'None by default', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bd370456-4bf1-4066-84a8-6244d6280a61', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'The Azure free account includes free access to core Azure products for how long?',
        'The Azure free account includes free access to core Azure products for 12 months, a credit to use within the first 30 days, and access to more than 65 always-free services.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('712ef058-2e7f-483f-8db4-1ef4c67d04cc', 'bd370456-4bf1-4066-84a8-6244d6280a61', '3 months', FALSE, 1),
    ('68e2e169-9335-4812-9c43-5ece87916b4b', 'bd370456-4bf1-4066-84a8-6244d6280a61', '6 months', FALSE, 2),
    ('649880fb-28b9-4b67-80f3-5bb36ce0f0eb', 'bd370456-4bf1-4066-84a8-6244d6280a61', '12 months', TRUE, 3),
    ('32f67194-f38d-420e-a7da-d40c9c1a2782', 'bd370456-4bf1-4066-84a8-6244d6280a61', '24 months', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('196ed4c6-cfd5-473d-9a49-d4a66399089a', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What are the two types of boundaries an Azure subscription defines?',
        'An Azure subscription defines a billing boundary (determining how the account is billed) and an access control boundary (access management policies applied at the subscription level).', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a1b70893-5cf4-442b-a045-bb72eb0d9574', '196ed4c6-cfd5-473d-9a49-d4a66399089a', 'Billing boundary and access control boundary', TRUE, 1),
    ('dd70be01-7066-4a86-8c0c-edfdbfca6dd6', '196ed4c6-cfd5-473d-9a49-d4a66399089a', 'Storage boundary and network boundary', FALSE, 2),
    ('2ccb4863-3fd5-4f8a-b89e-5dcdc2a57953', '196ed4c6-cfd5-473d-9a49-d4a66399089a', 'User boundary and group boundary', FALSE, 3),
    ('15d0bc56-405c-4975-aa0e-c98b42dfaeba', '196ed4c6-cfd5-473d-9a49-d4a66399089a', 'Region boundary and zone boundary', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f7e54fcb-912b-4fdd-985c-f3d1817d3581', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Once a resource group has been created, what can you NOT do?',
        'Azure resource groups cannot be renamed after creation, so it''s recommended to choose a clear naming convention from the start.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('44002646-e109-41a6-bce9-b107afaf2a3c', 'f7e54fcb-912b-4fdd-985c-f3d1817d3581', 'Add resources to it', FALSE, 1),
    ('06011c0c-7570-4aff-bee2-1523379e7975', 'f7e54fcb-912b-4fdd-985c-f3d1817d3581', 'Delete it', FALSE, 2),
    ('22fe61a9-b52f-42ca-aaa7-de0e0c2c954e', 'f7e54fcb-912b-4fdd-985c-f3d1817d3581', 'Move resources to another group', FALSE, 3),
    ('fded6ec8-2ee3-43df-ac67-49c961b5f04d', 'f7e54fcb-912b-4fdd-985c-f3d1817d3581', 'Rename it', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b0e610e0-9b29-42c7-94fc-7b5124d7d95c', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is the main purpose of Azure Policy?',
        'Azure Policy is Azure''s primary governance tool: it helps enforce organizational standards and assess the compliance of current and future resources at scale.', 46, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ea46ed63-8223-4347-b81b-c61cf2eb7537', 'b0e610e0-9b29-42c7-94fc-7b5124d7d95c', 'Enforcing organizational standards and assessing resource compliance at scale', TRUE, 1),
    ('fc165ead-8f0a-4108-92e3-901d22e3883b', 'b0e610e0-9b29-42c7-94fc-7b5124d7d95c', 'Automatically deploying virtual machines', FALSE, 2),
    ('048619ef-b2d5-484c-8536-afd73abb62aa', 'b0e610e0-9b29-42c7-94fc-7b5124d7d95c', 'Backing up databases', FALSE, 3),
    ('fa35e741-88ee-47ce-9419-b7e6b485b22c', 'b0e610e0-9b29-42c7-94fc-7b5124d7d95c', 'Managing subscription billing', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('19556592-0015-42d4-bb74-537db3e03ea5', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is an Azure Policy initiative?',
        'An initiative (or policy set) groups several policy definitions together to simplify their assignment and management, treating them as a single item to track a broader compliance goal.', 47, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4ac07c2a-d021-447d-81cd-b40e2444ae83', '19556592-0015-42d4-bb74-537db3e03ea5', 'A type of management group', FALSE, 1),
    ('913b4b88-34b2-4b74-9048-a85c164f111f', '19556592-0015-42d4-bb74-537db3e03ea5', 'A grouping of several policy definitions managed as a single item', TRUE, 2),
    ('592d3f72-698e-4b55-bdfe-fcbb9b274cad', '19556592-0015-42d4-bb74-537db3e03ea5', 'An individual Azure resource', FALSE, 3),
    ('bf250217-e45a-4c95-8a77-a69fe3886335', '19556592-0015-42d4-bb74-537db3e03ea5', 'A custom RBAC role', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6d23189b-150a-426b-8f7e-bd0ecc5111ba', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is the difference between a built-in policy and a custom policy?',
        'A built-in policy is generated by Azure resource providers and available by default, while a custom policy is written by the user when no built-in policy meets their specific needs.', 48, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('409ebf02-fdd3-4291-9626-4439a58f0087', '6d23189b-150a-426b-8f7e-bd0ecc5111ba', 'There is no difference', FALSE, 1),
    ('8f43d92c-2ee4-4c62-b844-5bcab5d010c7', '6d23189b-150a-426b-8f7e-bd0ecc5111ba', 'Only custom policies can be assigned to a subscription', FALSE, 2),
    ('757c60ca-7a7d-4351-8db8-827f27a0bb77', '6d23189b-150a-426b-8f7e-bd0ecc5111ba', 'Built-in policies are provided by default by Microsoft, custom ones are written by the user to meet specific needs', TRUE, 3),
    ('c9281ca1-c869-4fad-bb78-d7df075cbc4d', '6d23189b-150a-426b-8f7e-bd0ecc5111ba', 'Built-in policies are created by the user, custom ones by Microsoft', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('51a90cab-8593-41f0-a06e-8a6c047feafd', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'At which levels can an Azure Policy be assigned?',
        'The scope of a policy or initiative corresponds to the Azure governance hierarchy levels: management group, subscription, resource group, or individual resource, with lower levels inheriting settings from higher levels.', 49, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('033f6ee6-fe0f-4862-a37a-f5d3d1e0c81d', '51a90cab-8593-41f0-a06e-8a6c047feafd', 'Management group, subscription, resource group, or resource', TRUE, 1),
    ('c636316c-0aee-453b-a9d1-bc67862b5034', '51a90cab-8593-41f0-a06e-8a6c047feafd', 'Only at the subscription level', FALSE, 2),
    ('a2a78b3c-6b40-4a38-816a-5c26e2143fa2', '51a90cab-8593-41f0-a06e-8a6c047feafd', 'Only at the management group level', FALSE, 3),
    ('2c6d1aba-887b-48e5-b843-f75bfcf2ce92', '51a90cab-8593-41f0-a06e-8a6c047feafd', 'Only at the individual resource level', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e82e5bbf-c593-474d-a234-cf5368e6f256', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which policy effect prevents the creation of a resource that doesn''t meet the defined conditions?',
        'The "deny" effect prevents the creation of a resource request that doesn''t match the standards defined by the policy, causing the request to fail.', 50, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4b7bd69d-3827-48e5-87c5-84cc5ca62f12', 'e82e5bbf-c593-474d-a234-cf5368e6f256', 'Deny', TRUE, 1),
    ('7e5d82b2-1620-449e-9591-4228dce5718b', 'e82e5bbf-c593-474d-a234-cf5368e6f256', 'Disabled', FALSE, 2),
    ('4b351a48-35de-4de8-b042-abeffc488db5', 'e82e5bbf-c593-474d-a234-cf5368e6f256', 'Audit', FALSE, 3),
    ('96301563-57ff-4d89-a6db-38fc10c05163', 'e82e5bbf-c593-474d-a234-cf5368e6f256', 'Append', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b5aaa95c-0784-4b68-b2c1-6c44fc2e3798', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which policy effect generates a warning in the activity log without blocking the creation of the non-compliant resource?',
        'The "audit" effect creates a warning event in the activity log when evaluating a non-compliant resource, but doesn''t prevent the request from succeeding, unlike "deny."', 51, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b0db875d-e675-4474-8263-482ba6fb5c8e', 'b5aaa95c-0784-4b68-b2c1-6c44fc2e3798', 'DenyAction', FALSE, 1),
    ('adf3e682-1e95-4273-aa46-1d2f66d1da34', 'b5aaa95c-0784-4b68-b2c1-6c44fc2e3798', 'Deny', FALSE, 2),
    ('9ee0d8c5-7762-425f-9733-1fb5c49ea58a', 'b5aaa95c-0784-4b68-b2c1-6c44fc2e3798', 'Audit', TRUE, 3),
    ('0b48ad9c-b8fd-4462-9ef3-22c13fbfdf02', 'b5aaa95c-0784-4b68-b2c1-6c44fc2e3798', 'Modify', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('374499c1-90f4-41fa-b293-a3dbff9c1350', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'How often does an automatic compliance evaluation cycle run by default in Azure Policy?',
        'A full compliance scan is automatically triggered every 24 hours, in addition to other triggers such as assigning a new policy or an on-demand scan.', 52, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('15049407-e949-4894-938c-637c10c80741', '374499c1-90f4-41fa-b293-a3dbff9c1350', 'Every 24 hours', TRUE, 1),
    ('c4885a92-01c8-4525-8003-8cf1d2510c9a', '374499c1-90f4-41fa-b293-a3dbff9c1350', 'Every hour', FALSE, 2),
    ('4dfa7b9b-7c0f-4ba8-8bb2-7a5964f1e5b4', '374499c1-90f4-41fa-b293-a3dbff9c1350', 'Once a month', FALSE, 3),
    ('54e7d0d6-8881-46d6-b289-e253d7c76a48', '374499c1-90f4-41fa-b293-a3dbff9c1350', 'Once a week', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2ca417ae-f063-44c9-a376-5c6e08263e86', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is the purpose of the "Disabled" (DoNotEnforce) enforcementMode in a policy assignment?',
        'The "Disabled" (DoNotEnforce) mode lets you observe the compliance evaluation result without the effect (such as deny) actually being applied, which corresponds to a "what-if" test scenario before fully enabling the policy.', 53, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3375a498-3656-4fc0-84b5-8daa9fe35d02', '2ca417ae-f063-44c9-a376-5c6e08263e86', 'To permanently delete the policy', FALSE, 1),
    ('bc4e11a7-a43a-4d60-b3af-f38461253375', '2ca417ae-f063-44c9-a376-5c6e08263e86', 'To exempt a resource from any evaluation', FALSE, 2),
    ('3383ec38-07b9-4725-892f-d3e877c726cd', '2ca417ae-f063-44c9-a376-5c6e08263e86', 'To disable auditing of resources', FALSE, 3),
    ('0f238ec3-4488-4f33-bb3c-68cf206bc1cb', '2ca417ae-f063-44c9-a376-5c6e08263e86', 'To evaluate compliance without applying the policy''s effect, to test its impact before fully enabling it', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('12093c1b-db08-4bcd-a289-f04af6245093', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is the first recommended step for establishing cloud governance according to the Cloud Adoption Framework?',
        'The Cloud Adoption Framework''s Govern methodology divides cloud governance into five steps, the first of which is building a dedicated governance team responsible for defining and tracking governance policies.', 54, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e9856291-1e4f-49bf-8876-58d705ff5adb', '12093c1b-db08-4bcd-a289-f04af6245093', 'Build a dedicated cloud governance team', TRUE, 1),
    ('eeaa07c7-108c-430a-8564-35086309b8d7', '12093c1b-db08-4bcd-a289-f04af6245093', 'Monitor cloud governance', FALSE, 2),
    ('e1f61d09-171e-4853-b804-df85e907f2c5', '12093c1b-db08-4bcd-a289-f04af6245093', 'Assess cloud risks', FALSE, 3),
    ('d6db8da8-09ab-4885-8cd7-3ef11b7dc461', '12093c1b-db08-4bcd-a289-f04af6245093', 'Document governance policies', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a9b222e3-1a73-4b70-8ac1-80311a6f4b12', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'In which Azure Resource Manager plane does Azure Policy primarily operate to enforce rules before resources are created?',
        'Azure Policy operates in the control plane, managed by Azure Resource Manager, which handles requests to create, update, or delete resources; the data plane, by contrast, concerns direct operations on the data of an already-deployed resource.', 55, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f6fa26d6-2267-4f54-9d46-2363741f81df', 'a9b222e3-1a73-4b70-8ac1-80311a6f4b12', 'The control plane', TRUE, 1),
    ('803f2824-f1d2-4c0a-b1ac-db1595f9b7e6', 'a9b222e3-1a73-4b70-8ac1-80311a6f4b12', 'The network plane', FALSE, 2),
    ('fef62db6-cbc0-4619-960a-6ed6697f994d', 'a9b222e3-1a73-4b70-8ac1-80311a6f4b12', 'The storage plane', FALSE, 3),
    ('8aebea09-5a57-478a-afbe-5842e81b1849', 'a9b222e3-1a73-4b70-8ac1-80311a6f4b12', 'The data plane', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('78717c72-4a49-4b02-8e0d-380ecee3b690', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'A scenario where an Azure Policy already exists before a resource is created or updated is called:',
        'The "Greenfield" (policy-first) scenario refers to a case where a policy already exists when a new resource is created or updated; the request then passes through RBAC and then Azure Policy before being accepted or denied.', 56, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('da9a343d-622d-44da-b496-31d65e9fc1a9', '78717c72-4a49-4b02-8e0d-380ecee3b690', 'Legacy', FALSE, 1),
    ('d0fa8f32-5f29-4765-bd05-484d35380164', '78717c72-4a49-4b02-8e0d-380ecee3b690', 'Brownfield', FALSE, 2),
    ('236d3838-a3ef-4f4a-b013-434b33faf067', '78717c72-4a49-4b02-8e0d-380ecee3b690', 'Greenfield', TRUE, 3),
    ('6defa3d4-05d0-41e1-8bfe-bfb26c2b926f', '78717c72-4a49-4b02-8e0d-380ecee3b690', 'Hybrid', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2f6fb185-896e-447b-a2cb-628c70f9f575', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'A scenario where a policy is assigned to already-existing resources is called "Brownfield." How does compliance evaluation happen in this case?',
        'In a Brownfield (resource-first) scenario, evaluation happens through a compliance scan that runs automatically every 24 hours or can be triggered manually, rather than at the moment the policy is assigned.', 57, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('756f5ca4-8447-4787-bfa6-d1b6c9a89c29', '2f6fb185-896e-447b-a2cb-628c70f9f575', 'Immediately and synchronously at the moment of assignment', FALSE, 1),
    ('6c3b428f-1948-43ef-ba46-496d88eaab62', '2f6fb185-896e-447b-a2cb-628c70f9f575', 'It never happens for existing resources', FALSE, 2),
    ('187e6749-680e-490b-be8d-bab7da7fd7c6', '2f6fb185-896e-447b-a2cb-628c70f9f575', 'Only when the resource is deleted', FALSE, 3),
    ('bec17019-76ce-4ecd-a7f1-03011340ed0a', '2f6fb185-896e-447b-a2cb-628c70f9f575', 'Through a compliance scan that runs automatically every 24 hours or can be triggered manually', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('015ea412-291f-4165-8982-a7e7b7c5e913', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What are the two categories of Azure Policy exemptions?',
        'Policy exemptions fall into two categories: "Mitigated," when the policy''s intent is met through another method, and "Waiver," when the resource''s non-compliant state is temporarily accepted.', 58, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c73e3a77-39bf-4260-a856-41769ddf9e1c', '015ea412-291f-4165-8982-a7e7b7c5e913', 'Built-in and Custom', FALSE, 1),
    ('57b3aa67-1dbc-4920-a7c5-1a033167e40f', '015ea412-291f-4165-8982-a7e7b7c5e913', 'Mitigated and Waiver', TRUE, 2),
    ('196f7890-1d40-4498-8725-a4b4117eeb3e', '015ea412-291f-4165-8982-a7e7b7c5e913', 'Compliant and Non-compliant', FALSE, 3),
    ('7742f155-1344-4598-964c-5499aded41bf', '015ea412-291f-4165-8982-a7e7b7c5e913', 'Enabled and Disabled', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4b8ec4fd-2608-4a9b-a046-fdbc6afbf97d', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is the purpose of a remediation task in Azure Policy?',
        'A remediation task brings non-compliant resources into compliance with a "modify" or "deployIfNotExists" definition assignment; newly created or updated applicable resources are automatically remediated.', 59, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4b0f2d49-e425-4a01-a67e-4cca1d413607', '4b8ec4fd-2608-4a9b-a046-fdbc6afbf97d', 'To create new initiatives', FALSE, 1),
    ('b8da66cd-8b2d-48a0-9f9a-173cbe0a998f', '4b8ec4fd-2608-4a9b-a046-fdbc6afbf97d', 'To bring non-compliant resources into compliance for "modify" or "deployIfNotExists" effects', TRUE, 2),
    ('4f036527-a1bc-4cdb-bf5d-1e29c3f5068f', '4b8ec4fd-2608-4a9b-a046-fdbc6afbf97d', 'To modify RBAC roles', FALSE, 3),
    ('ae4c55be-8dd7-43c2-8786-aa9d83567b7b', '4b8ec4fd-2608-4a9b-a046-fdbc6afbf97d', 'To delete outdated policies', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c2601eba-c384-4f8b-94bd-254e870a3e2a', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which of the following compliance states indicates that two conflicting policy assignments apply to the same resource?',
        'The "Conflicting" state indicates that two or more policy assignments applied to the same scope contain contradictory rules (for example, two policies appending the same tag with different values).', 60, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c6025e6a-33ea-40c9-a5cb-5fc5d85487ef', 'c2601eba-c384-4f8b-94bd-254e870a3e2a', 'Protected', FALSE, 1),
    ('c2e1acdc-5271-447c-85c2-e2c710f1f4eb', 'c2601eba-c384-4f8b-94bd-254e870a3e2a', 'Compliant', FALSE, 2),
    ('41e9da06-3ecd-48a2-95df-fa9401edf3f8', 'c2601eba-c384-4f8b-94bd-254e870a3e2a', 'Conflicting', TRUE, 3),
    ('8444ca82-73a9-48d1-befe-224a0bc20917', 'c2601eba-c384-4f8b-94bd-254e870a3e2a', 'Non-compliant', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('90cfe45b-2516-4d99-8c4e-535d9ed35a36', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What does RBAC stand for in the Azure context?',
        'RBAC stands for Role-Based Access Control: an authorization system built on Azure Resource Manager that provides fine-grained access management for Azure resources.', 61, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('39124f6e-de3c-4b46-a2d0-40bbe8b4d126', '90cfe45b-2516-4d99-8c4e-535d9ed35a36', 'Remote Backup and Configuration', FALSE, 1),
    ('747b5d8f-9626-4c89-81ca-ca6494bf14d5', '90cfe45b-2516-4d99-8c4e-535d9ed35a36', 'Regional Backup Access Compliance', FALSE, 2),
    ('fdb8ed36-76ee-47cd-9320-6741509e6bd4', '90cfe45b-2516-4d99-8c4e-535d9ed35a36', 'Role-Based Access Control', TRUE, 3),
    ('d603502c-a8f7-45df-87d4-a7ec81817a67', '90cfe45b-2516-4d99-8c4e-535d9ed35a36', 'Resource-Based Application Control', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a12333c2-be6c-4a0f-99a4-b04bb57219b2', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What are the three elements needed to create an Azure RBAC role assignment?',
        'A role assignment combines three elements: the security principal (who), the role definition (what), and the scope (where), to link a role to a user, group, or application within a given boundary.', 62, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ec435542-f3d9-4e4a-bc2f-ef86ec7de176', 'a12333c2-be6c-4a0f-99a4-b04bb57219b2', 'Group, license, and subscription', FALSE, 1),
    ('cc25c50b-226b-4f04-9e65-83fe9d47f3a1', 'a12333c2-be6c-4a0f-99a4-b04bb57219b2', 'Username, password, and scope', FALSE, 2),
    ('8285d62a-9f37-4742-804d-48e9b38ea138', 'a12333c2-be6c-4a0f-99a4-b04bb57219b2', 'Role, region, and availability zone', FALSE, 3),
    ('e9064fc7-c0ab-4623-ba1c-4bc17c7dc641', 'a12333c2-be6c-4a0f-99a4-b04bb57219b2', 'Security principal, role definition, and scope', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cb8bd659-efa9-4fc0-8631-cdc82ed7e951', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which built-in Azure role allows managing all resources but cannot grant access to other users?',
        'The Contributor role can create and manage all types of Azure resources but cannot grant access to other users, unlike the Owner role, which has this additional right.', 63, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3622f290-05df-406f-b1bb-0c3cbb699380', 'cb8bd659-efa9-4fc0-8631-cdc82ed7e951', 'Contributor', TRUE, 1),
    ('94c408ff-0f47-4874-b9a2-0e16e7f4070c', 'cb8bd659-efa9-4fc0-8631-cdc82ed7e951', 'User Access Administrator', FALSE, 2),
    ('2d0094b5-3c5f-40f3-8ae8-f45f4ab55b17', 'cb8bd659-efa9-4fc0-8631-cdc82ed7e951', 'Reader', FALSE, 3),
    ('5a9fa646-57f6-44cc-aa60-f53f71299916', 'cb8bd659-efa9-4fc0-8631-cdc82ed7e951', 'Owner', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7c7c8ea4-2bef-4fc5-bbeb-0ea87f9200d1', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which built-in Azure role allows only viewing existing resources without modifying them?',
        'The Reader role provides read-only access, allowing you to view existing Azure resources without being able to create, modify, or delete them.', 64, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('250415d4-5fa3-439b-bd5b-884a0ebf5463', '7c7c8ea4-2bef-4fc5-bbeb-0ea87f9200d1', 'User Access Administrator', FALSE, 1),
    ('fb0b89c1-c4f4-4825-80de-803cf5dd30ac', '7c7c8ea4-2bef-4fc5-bbeb-0ea87f9200d1', 'Contributor', FALSE, 2),
    ('4c90b0b5-ce64-4443-af19-15fecd7276ad', '7c7c8ea4-2bef-4fc5-bbeb-0ea87f9200d1', 'Reader', TRUE, 3),
    ('a872a1ac-19c7-4375-ba95-d178fb1063eb', '7c7c8ea4-2bef-4fc5-bbeb-0ea87f9200d1', 'Owner', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3ec99477-f59d-4709-bd54-8a4fdda12702', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'In Azure RBAC, if a role is assigned at the resource group level, what happens to the resources it contains?',
        'Azure RBAC scopes are structured in a parent-child relationship: a role assigned at a parent scope (such as a resource group) is automatically inherited by all child resources it contains.', 65, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fd12172b-833e-4cb0-acfb-b0b7aa2b8a88', '3ec99477-f59d-4709-bd54-8a4fdda12702', 'They do not inherit the assignment', FALSE, 1),
    ('6f5dd0d5-48ca-41ee-867e-a701ee2c9a9c', '3ec99477-f59d-4709-bd54-8a4fdda12702', 'They must receive a separate assignment', FALSE, 2),
    ('eb2c6da9-2b73-46dc-b2c7-f059b54b350d', '3ec99477-f59d-4709-bd54-8a4fdda12702', 'They automatically inherit the role assignment', TRUE, 3),
    ('5e27d7cf-bb80-41fd-91df-bbea8ff8dc43', '3ec99477-f59d-4709-bd54-8a4fdda12702', 'The assignment applies only to the group itself', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7c6b4c5d-1f0d-4015-b89e-d14ec1c2bc05', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is a "security principal" in Azure RBAC?',
        'A security principal simply refers to a user, group, or application (service principal) to which you want to grant access through a role assignment.', 66, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c02e34fb-34a0-4033-8bc2-fdd7c2dd77ae', '7c6b4c5d-1f0d-4015-b89e-d14ec1c2bc05', 'A user, group, or application to which access is granted', TRUE, 1),
    ('5e5d2500-ae27-453b-b97b-9c8fa2c2f82f', '7c6b4c5d-1f0d-4015-b89e-d14ec1c2bc05', 'An Azure region', FALSE, 2),
    ('948fc580-31aa-4f56-83c3-c48594ad22b9', '7c6b4c5d-1f0d-4015-b89e-d14ec1c2bc05', 'An activity log', FALSE, 3),
    ('753ad59c-180b-428d-81a8-a6b93c497e0b', '7c6b4c5d-1f0d-4015-b89e-d14ec1c2bc05', 'A type of virtual machine', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b2b8ce0e-5d55-41c7-9ed7-794cecd470a9', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'How do you revoke access previously granted through Azure RBAC?',
        'To grant access, you create a role assignment; to revoke it, you simply delete that role assignment, without needing to delete the resource or change the user account.', 67, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('32ed59c3-1f43-439e-9328-5e032f87ba48', 'b2b8ce0e-5d55-41c7-9ed7-794cecd470a9', 'By deleting the resource group', FALSE, 1),
    ('a6a18bd8-9fc5-40ed-9999-62371c50a25e', 'b2b8ce0e-5d55-41c7-9ed7-794cecd470a9', 'By deleting the role assignment', TRUE, 2),
    ('26996897-25b9-4131-a5f8-f6926ae18692', 'b2b8ce0e-5d55-41c7-9ed7-794cecd470a9', 'By disabling the subscription', FALSE, 3),
    ('e13317f5-4a79-4567-8b8c-bec07b6ab04e', 'b2b8ce0e-5d55-41c7-9ed7-794cecd470a9', 'By changing the user''s password', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('993fd961-8a84-4612-9ecd-273b95f58b93', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is the purpose of \`NotActions\` permissions in an Azure RBAC role definition?',
        'A role''s effective permissions are calculated by subtracting the operations listed in \`NotActions\` from those listed in \`Actions\`; for example, the Contributor role allows all control-plane operations except those explicitly excluded, such as managing role assignments.', 68, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8529d2de-0d70-438e-ab17-7041bd687286', '993fd961-8a84-4612-9ecd-273b95f58b93', 'They add extra permissions', FALSE, 1),
    ('cd4d1747-db3f-4cb6-8dbf-fd93171d6e21', '993fd961-8a84-4612-9ecd-273b95f58b93', 'They define the region where the role applies', FALSE, 2),
    ('16c9e23d-1342-478f-bf1d-e600b9cb1729', '993fd961-8a84-4612-9ecd-273b95f58b93', 'They subtract certain operations from the \`Actions\` permissions to calculate the effective permissions', TRUE, 3),
    ('8b4b25fd-5f46-4937-a55b-ef452e085dd9', '993fd961-8a84-4612-9ecd-273b95f58b93', 'They completely replace the Actions permissions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b9ea4f0e-cd3a-4971-82ed-da06e6cc8cb4', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which built-in Azure RBAC role has full access to all resources AND the right to delegate access to other users?',
        'The Owner role has full access to all resources within its scope, plus the ability to delegate that access to other users, which distinguishes it from the Contributor role.', 69, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7812b24e-6082-4598-b203-f6acdb024978', 'b9ea4f0e-cd3a-4971-82ed-da06e6cc8cb4', 'Owner', TRUE, 1),
    ('3e3b05c2-55f1-453a-9f91-cd36279a7a4a', 'b9ea4f0e-cd3a-4971-82ed-da06e6cc8cb4', 'Contributor', FALSE, 2),
    ('9c572fdf-2f0b-45cf-b0a0-aa21326b9570', 'b9ea4f0e-cd3a-4971-82ed-da06e6cc8cb4', 'User Access Administrator', FALSE, 3),
    ('c71cddc7-69af-4d97-888d-0b01b8409d07', 'b9ea4f0e-cd3a-4971-82ed-da06e6cc8cb4', 'Reader', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('443bbd8e-d3f3-4069-bc94-611cbe8d84f6', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which built-in role allows only managing user access to Azure resources, without necessarily managing the resources themselves?',
        'The User Access Administrator role allows managing user access to Azure resources (creating role assignments) without necessarily having full access to manage the content of those resources.', 70, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('22dccfa7-81a2-4d80-b1c4-4f81af2f1718', '443bbd8e-d3f3-4069-bc94-611cbe8d84f6', 'User Access Administrator', TRUE, 1),
    ('bfd2cdd5-7f1d-4e87-8b82-59f2d9e1b9aa', '443bbd8e-d3f3-4069-bc94-611cbe8d84f6', 'Contributor', FALSE, 2),
    ('422b89af-f0dc-4048-9859-599f7b8427d4', '443bbd8e-d3f3-4069-bc94-611cbe8d84f6', 'Reader', FALSE, 3),
    ('49c70126-5a1a-4d67-9744-77b661123dd7', '443bbd8e-d3f3-4069-bc94-611cbe8d84f6', 'Owner', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('848d3d43-8343-441c-9bae-dfe6ab8d4ff3', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'At how many different scope levels can an Azure RBAC role be assigned?',
        'The scope of an Azure RBAC role assignment can be set at four levels: management group, subscription, resource group, or individual resource.', 71, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('691e3259-7a36-4082-85f9-fa416b13591f', '848d3d43-8343-441c-9bae-dfe6ab8d4ff3', 'Two', FALSE, 1),
    ('6f282d6a-9ee9-4cd6-8297-c37bcc22ef1e', '848d3d43-8343-441c-9bae-dfe6ab8d4ff3', 'Four: management group, subscription, resource group, resource', TRUE, 2),
    ('b4dbe86f-f658-4a6d-83b5-af828572ea51', '848d3d43-8343-441c-9bae-dfe6ab8d4ff3', 'Three', FALSE, 3),
    ('e054f1a9-3c17-46b0-89cf-debc226da137', '848d3d43-8343-441c-9bae-dfe6ab8d4ff3', 'Five', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b87f10d5-c1a1-4b88-9d6b-ba34f421eab2', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'In which Azure portal pane do you manage RBAC role assignments?',
        'The Access control (IAM) pane, also called Identity and Access Management, lets you identify who has access to a resource, their role, and grant or remove access.', 72, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('16bbaf6b-dea9-41d3-ad08-26a08d2063bb', 'b87f10d5-c1a1-4b88-9d6b-ba34f421eab2', 'Azure Policy', FALSE, 1),
    ('92dd2af8-28de-41eb-b510-bda48ff3e4ea', 'b87f10d5-c1a1-4b88-9d6b-ba34f421eab2', 'Activity log', FALSE, 2),
    ('88ba8f00-1c69-41aa-a121-bad1d1c469ea', 'b87f10d5-c1a1-4b88-9d6b-ba34f421eab2', 'Cost center', FALSE, 3),
    ('946b4bcd-2952-4be0-a92b-40ebe803bd51', 'b87f10d5-c1a1-4b88-9d6b-ba34f421eab2', 'Access control (IAM)', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5888b833-04d9-4933-b630-3d6f9acc59e8', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Why would an organization create a custom role in Azure RBAC?',
        'When built-in roles (Owner, Contributor, Reader, etc.) don''t cover a specific permissions need, an organization can create a custom role defining exactly which actions are allowed.', 73, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4c4a50e2-67d2-4e17-8105-368346055b9e', '5888b833-04d9-4933-b630-3d6f9acc59e8', 'Because built-in roles are not free', FALSE, 1),
    ('4f5e0372-6996-4015-9048-c44d7f6d220c', '5888b833-04d9-4933-b630-3d6f9acc59e8', 'When built-in roles don''t meet specific access needs', TRUE, 2),
    ('d91731a0-6e71-4d33-8829-8f8970c595ba', '5888b833-04d9-4933-b630-3d6f9acc59e8', 'To avoid using resource scope', FALSE, 3),
    ('5abd08e8-da81-45df-a33c-c862d82d6735', '5888b833-04d9-4933-b630-3d6f9acc59e8', 'To replace the security principal', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('856ce004-b07f-4e81-8301-e95a75780ba2', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'How many Microsoft Entra directories is an Azure subscription associated with?',
        'Each Azure subscription is associated with a single Microsoft Entra directory (tenant); users, groups, and applications in that directory can manage the subscription''s resources.', 74, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d5efd1bd-68e8-4513-9cf6-86487214419f', '856ce004-b07f-4e81-8301-e95a75780ba2', 'Only one', TRUE, 1),
    ('9f3f260f-c9ad-46df-bfbf-ec2281e97685', '856ce004-b07f-4e81-8301-e95a75780ba2', 'As many as there are resource groups', FALSE, 2),
    ('347caf70-ea12-427a-8d67-552ac52f9963', '856ce004-b07f-4e81-8301-e95a75780ba2', 'None', FALSE, 3),
    ('b677f431-2818-48be-908f-59084fed07d1', '856ce004-b07f-4e81-8301-e95a75780ba2', 'Two', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2e010813-a3a0-44ac-a16b-c44a558bb91c', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What happens if you disable an on-premises Active Directory account synchronized with Microsoft Entra ID via Microsoft Entra Connect?',
        'Because Azure subscriptions use Microsoft Entra ID for single sign-on, disabling a synchronized on-premises Active Directory account automatically causes it to lose access to all Azure subscriptions connected to that directory.', 75, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e38527d6-203d-4e37-adcf-71f6aa5fb494', '2e010813-a3a0-44ac-a16b-c44a558bb91c', 'The account is automatically promoted to administrator', FALSE, 1),
    ('49c41866-a9ae-4eea-ad07-bc6c0ea6ca9d', '2e010813-a3a0-44ac-a16b-c44a558bb91c', 'The password is automatically reset', FALSE, 2),
    ('b99c586b-0579-4019-bbc5-cf0eed28b5ca', '2e010813-a3a0-44ac-a16b-c44a558bb91c', 'Nothing, Azure access remains active indefinitely', FALSE, 3),
    ('37aa4ffb-e2da-47f5-aa7b-4be44d3561e8', '2e010813-a3a0-44ac-a16b-c44a558bb91c', 'The account automatically loses access to all Azure subscriptions connected to Microsoft Entra ID', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('925b2b51-cf6d-4964-8c7d-568bdde0f9f3', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is the main benefit of self-service password reset (SSPR)?',
        'SSPR lets users resolve forgotten or expired password issues themselves, without having to call the help desk, which reduces the administrative burden and minimizes the impact on productivity.', 76, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2a9d5127-1964-405e-ab30-3169b9f0f8a5', '925b2b51-cf6d-4964-8c7d-568bdde0f9f3', 'It allows users to reset their password without help desk involvement', TRUE, 1),
    ('d82bcb7e-e544-489c-8f11-5042ee6bccdf', '925b2b51-cf6d-4964-8c7d-568bdde0f9f3', 'It automatically encrypts all data', FALSE, 2),
    ('bf5c1fb9-d900-4997-b6c3-49567a8bcadd', '925b2b51-cf6d-4964-8c7d-568bdde0f9f3', 'It removes the need for passwords', FALSE, 3),
    ('07e0896f-88f0-4595-8bd7-82efae052614', '925b2b51-cf6d-4964-8c7d-568bdde0f9f3', 'It replaces multi-factor authentication', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7ec093ad-5dc5-4489-9b0c-96d481a10796', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'How many authentication methods does Azure support for SSPR?',
        'Azure supports six authentication methods for SSPR: mobile app notification, mobile app code, email, mobile phone, office phone, and security questions.', 77, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d611411c-19fc-4b02-801b-8cef44e3d730', '7ec093ad-5dc5-4489-9b0c-96d481a10796', 'Six', TRUE, 1),
    ('a34ca6b3-f559-49e1-829c-c2477eb32bc4', '7ec093ad-5dc5-4489-9b0c-96d481a10796', 'Three', FALSE, 2),
    ('43771919-fcdb-46d7-9d39-d10bdcbb8143', '7ec093ad-5dc5-4489-9b0c-96d481a10796', 'Eight', FALSE, 3),
    ('70feae41-7407-4512-92f7-d9012f8ac4c2', '7ec093ad-5dc5-4489-9b0c-96d481a10796', 'Four', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('93d0710d-28da-40aa-b780-3d450cb8b9dc', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which SSPR authentication method is NOT available for accounts with an administrator role?',
        'The "Security questions" method is not available for accounts associated with an administrator role, which must also always use strong two-method authentication for SSPR.', 78, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('80dea1b0-ce2a-4930-a8d2-06a2bb8d0b6e', '93d0710d-28da-40aa-b780-3d450cb8b9dc', 'Mobile app notification', FALSE, 1),
    ('e4bbbffd-bd7f-4173-89cf-a8c5c6f5e6cf', '93d0710d-28da-40aa-b780-3d450cb8b9dc', 'Mobile app code', FALSE, 2),
    ('87f829e0-3134-4af3-89c6-bf262ce3b5a9', '93d0710d-28da-40aa-b780-3d450cb8b9dc', 'Security questions', TRUE, 3),
    ('be7b1bab-5372-4d94-ab45-715356a20d0c', '93d0710d-28da-40aa-b780-3d450cb8b9dc', 'Email', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('57729ff4-1d9e-4801-b713-f5c5b3b8214a', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is the minimum license required to enable SSPR in an organization?',
        'SSPR for signed-out users (forgotten or expired password) requires a Microsoft Entra ID P1 or P2 edition; it''s also available with Microsoft 365 Apps for business and Microsoft 365.', 79, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6c55d028-ff39-4ba6-a651-46c2b21d2019', '57729ff4-1d9e-4801-b713-f5c5b3b8214a', 'Microsoft Entra ID Free', FALSE, 1),
    ('0c81b69c-91ee-4db2-815d-be241f32b84c', '57729ff4-1d9e-4801-b713-f5c5b3b8214a', 'Microsoft Entra ID P1 or P2', TRUE, 2),
    ('2bb15e37-2d7c-4a22-aad2-e3e39ec00f34', '57729ff4-1d9e-4801-b713-f5c5b3b8214a', 'Azure Free Trial', FALSE, 3),
    ('096fac99-7ca5-4249-8e2b-d9ed9d8fad50', '57729ff4-1d9e-4801-b713-f5c5b3b8214a', 'Windows Server Standard', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c875ae33-c7a0-4f34-96f1-52ea213b3811', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which SSPR deployment option allows writing back a cloud password change to an on-premises Active Directory?',
        'Password writeback to the on-premises directory can be deployed via Microsoft Entra Connect or cloud sync; both options can even be used side by side in different domains depending on needs.', 80, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('58869b4c-4910-4c46-993e-ee87aca2220c', 'c875ae33-c7a0-4f34-96f1-52ea213b3811', 'Microsoft Entra Connect or cloud sync', TRUE, 1),
    ('6de7bb5e-3a3d-4109-9bd2-09f49eddbbe3', 'c875ae33-c7a0-4f34-96f1-52ea213b3811', 'Azure Key Vault', FALSE, 2),
    ('5255dc59-faac-4151-b08b-6fb1085b450c', 'c875ae33-c7a0-4f34-96f1-52ea213b3811', 'Azure RBAC', FALSE, 3),
    ('7171dae1-e406-493a-a9c5-b66c0b640701', 'c875ae33-c7a0-4f34-96f1-52ea213b3811', 'Azure Policy', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3f59d41d-3104-406d-b6b9-18677b6a2a67', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What is the authentication strategy applied to accounts with an administrator role for SSPR?',
        'Regardless of the configuration set for other users, a strong two-method authentication strategy is always applied to accounts with an administrator role for SSPR.', 81, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fd2efcfa-1ed1-4f85-baa7-07dea2539459', '3f59d41d-3104-406d-b6b9-18677b6a2a67', 'Only security questions are allowed', FALSE, 1),
    ('35ff996f-32d2-4bf5-b8d6-2926903348c6', '3f59d41d-3104-406d-b6b9-18677b6a2a67', 'Strong two-method authentication is always required', TRUE, 2),
    ('1bd408bb-b1f6-46ac-ae4d-bef439050231', '3f59d41d-3104-406d-b6b9-18677b6a2a67', 'No additional authentication is required', FALSE, 3),
    ('a4bb0885-8b38-41c8-bc87-3e2ee6df84b2', '3f59d41d-3104-406d-b6b9-18677b6a2a67', 'A single method is always enough', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6a9208d3-d536-4444-a3fb-630febf9764a', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What must a signed-out user who has forgotten their password do in an organization that has enabled SSPR?',
        'The user can go directly to the password reset portal or select the "Can''t access your account?" link, then follow the verification and authentication steps to set a new password without help desk involvement.', 82, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8137dbfb-e936-42e9-b855-df04d88f7aee', '6a9208d3-d536-4444-a3fb-630febf9764a', 'Wait for the account to automatically expire', FALSE, 1),
    ('eaef55bf-d672-43f6-9dbc-5c11ac062f64', '6a9208d3-d536-4444-a3fb-630febf9764a', 'Create a new user account', FALSE, 2),
    ('4a09db11-1fb1-49c5-838b-fd3fa34ddeea', '6a9208d3-d536-4444-a3fb-630febf9764a', 'Use the SSPR portal to verify their identity and set a new password', TRUE, 3),
    ('3e7d5928-a13a-4914-be20-c8faa17f7139', '6a9208d3-d536-4444-a3fb-630febf9764a', 'Always contact the help desk', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('37802610-b538-4c6d-af6b-008f3e9e9539', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'During an SSPR request, what is the purpose of the CAPTCHA test performed after entering the username?',
        'The verification step of the SSPR portal includes a CAPTCHA test after the username is entered, to ensure the request genuinely comes from a human user and not an automated bot.', 83, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b2da3642-090c-4dae-999b-107f33452b37', '37802610-b538-4c6d-af6b-008f3e9e9539', 'To verify the request is coming from a human, not a bot', TRUE, 1),
    ('1d878c59-36f4-4eab-bba8-2062072fa5c8', '37802610-b538-4c6d-af6b-008f3e9e9539', 'To encrypt the new password', FALSE, 2),
    ('f7a81476-512e-4eac-8cf1-bcd92b809111', '37802610-b538-4c6d-af6b-008f3e9e9539', 'To select the interface language', FALSE, 3),
    ('16ba532a-9c0e-4d1c-b29b-a31d3ea8fd47', '37802610-b538-4c6d-af6b-008f3e9e9539', 'To send a notification to administrators', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c815f554-2500-492f-8b4c-410f91313db7', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which SSPR authentication method is LEAST recommended by Microsoft, since the answers may be known to other people?',
        'The Security questions option is the least recommended method by Microsoft because the answers may be known to other people; it''s advised to use it only alongside at least one other method.', 84, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d299a4de-624e-4115-8c58-185985c0f861', 'c815f554-2500-492f-8b4c-410f91313db7', 'Mobile app notification', FALSE, 1),
    ('f9a2253a-a7d6-4e12-8aa5-a289b9d2faf3', 'c815f554-2500-492f-8b4c-410f91313db7', 'Security questions', TRUE, 2),
    ('bf1c38e5-8f2b-47bb-b5a3-de81e34c8c8b', 'c815f554-2500-492f-8b4c-410f91313db7', 'Email', FALSE, 3),
    ('b397260f-10a2-468d-9bfa-32bacbbcecc4', 'c815f554-2500-492f-8b4c-410f91313db7', 'Mobile app code', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('136a66cc-c587-4ce9-b704-434f16b72115', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Why is the "Mobile phone" (SMS) method not particularly recommended as an SSPR authentication method?',
        'The Mobile phone method is not recommended by Microsoft because fraudulent SMS messages can be sent, which represents a security risk compared to methods like the Authenticator app.', 85, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5e5c351b-095d-434e-8d55-5f4f745bea7f', '136a66cc-c587-4ce9-b704-434f16b72115', 'It is too slow', FALSE, 1),
    ('72798264-1824-45e3-ad13-4b6003173e33', '136a66cc-c587-4ce9-b704-434f16b72115', 'There is a risk of fraudulent SMS messages', TRUE, 2),
    ('65a31b17-23ec-49bd-b397-e6422b503703', '136a66cc-c587-4ce9-b704-434f16b72115', 'It is only available for administrators', FALSE, 3),
    ('4d7bc743-44a3-41fb-9bfc-c3d6e6623bc1', '136a66cc-c587-4ce9-b704-434f16b72115', 'It requires an additional license', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b48a0ce0-a408-478e-9caf-a0c9880a56f5', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'What does the "Notify all admins when other admins reset their password" notification option allow?',
        'This notification option informs all administrators when another administrator resets their password, which helps quickly spot potentially malicious activity.', 86, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5aa177b9-a1f7-4e39-9d6a-5029e70e9bfc', 'b48a0ce0-a408-478e-9caf-a0c9880a56f5', 'Blocking any password reset by an administrator', FALSE, 1),
    ('0fdd0186-5614-41c3-b5ff-8fed8ca20aa9', 'b48a0ce0-a408-478e-9caf-a0c9880a56f5', 'Disabling SSPR for administrator accounts', FALSE, 2),
    ('44c4a700-ada9-4b39-bcae-e260159333d6', 'b48a0ce0-a408-478e-9caf-a0c9880a56f5', 'Forcing double SMS authentication', FALSE, 3),
    ('4b2a230a-7054-4b27-bbd3-3a29c4f99acd', 'b48a0ce0-a408-478e-9caf-a0c9880a56f5', 'Alerting other administrators when a peer resets their password, to help detect suspicious activity', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b891cfd4-cb1c-43d4-a601-85ea0cc88204', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'In an organization using a free Microsoft Entra trial, which SSPR authentication methods are NOT supported?',
        'In organizations with a free Microsoft Entra trial, phone call options (mobile phone and office phone) are not supported for SSPR.', 87, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4f5eebea-ce52-496a-b230-eb834c2d0ed5', 'b891cfd4-cb1c-43d4-a601-85ea0cc88204', 'Phone call options', TRUE, 1),
    ('f55aa25e-9864-4229-ba6b-6195b0be526f', 'b891cfd4-cb1c-43d4-a601-85ea0cc88204', 'The Authenticator app', FALSE, 2),
    ('01036ac7-a3f4-4ffc-8184-78d718b392fd', 'b891cfd4-cb1c-43d4-a601-85ea0cc88204', 'Email', FALSE, 3),
    ('b30ddf4c-486e-42b5-8024-6a43b0261818', 'b891cfd4-cb1c-43d4-a601-85ea0cc88204', 'Security questions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a19b9b6f-4695-4fbe-8edd-561e5e6e10fa', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Can a user who is already signed in to their account change their password, regardless of the Microsoft Entra ID edition?',
        'Any user who is already signed in to their account can change their password regardless of the Microsoft Entra ID edition; it''s only resetting a forgotten or expired password without being signed in that requires SSPR with a P1 or P2 edition.', 88, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1526d148-4869-4ebf-a92f-dfc3f91e05da', 'a19b9b6f-4695-4fbe-8edd-561e5e6e10fa', 'No, this always requires P1 or P2', FALSE, 1),
    ('7ff01b9a-4caf-4451-90d9-85eeee50ea6a', 'a19b9b6f-4695-4fbe-8edd-561e5e6e10fa', 'Yes, any signed-in user can change their password regardless of the edition', TRUE, 2),
    ('86e87375-e227-4f6e-a339-57394d93cdf8', 'a19b9b6f-4695-4fbe-8edd-561e5e6e10fa', 'Only administrators can change their password', FALSE, 3),
    ('700472fc-691a-41b6-a361-b175e7a837ec', 'a19b9b6f-4695-4fbe-8edd-561e5e6e10fa', 'This depends only on the Azure region', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d45b2f5b-643a-43dd-857f-aecfc837a2b3', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'Which minimum Microsoft Entra role is required to configure SSPR?',
        'To configure SSPR, an account with at least the Authentication Policy Administrator role is required, as this role grants the rights needed to manage password reset settings.', 89, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('367e4cef-c569-4442-a74c-9e6b31955122', 'd45b2f5b-643a-43dd-857f-aecfc837a2b3', 'Authentication Policy Administrator', TRUE, 1),
    ('e910befb-7fc7-463a-a36e-ddce236d3317', 'd45b2f5b-643a-43dd-857f-aecfc837a2b3', 'Billing Administrator', FALSE, 2),
    ('2d32046e-20eb-469f-ad88-7c44fc7596f6', 'd45b2f5b-643a-43dd-857f-aecfc837a2b3', 'Reader', FALSE, 3),
    ('0df873c7-30ef-43e4-a2ad-4502bcfbae9d', 'd45b2f5b-643a-43dd-857f-aecfc837a2b3', 'Contributor', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('628db51f-2167-497c-aa71-96e420908cb6', '0bcaf0cb-a3f3-4b2c-91d5-454f8e5e4185', 'SINGLE_CHOICE', 'When is a user considered "registered" for SSPR?',
        'A user is considered registered for SSPR once they''ve registered the information needed for at least the minimum number of authentication methods (one or two) the administrator has configured.', 90, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c4e5b4e3-fc81-48ab-bf67-6769333fbea8', '628db51f-2167-497c-aa71-96e420908cb6', 'Only after contacting the help desk for the first time', FALSE, 1),
    ('42fb6f14-583e-4bea-85ea-c3bd500a7fd7', '628db51f-2167-497c-aa71-96e420908cb6', 'Once they have registered at least the minimum number of authentication methods required by the administrator', TRUE, 2),
    ('4664c36f-9813-4eb8-84a5-3875c27edf6d', '628db51f-2167-497c-aa71-96e420908cb6', 'After the account has been active for 30 days', FALSE, 3),
    ('a348f621-e29b-45ee-9ab0-f7c73e6488ba', '628db51f-2167-497c-aa71-96e420908cb6', 'As soon as they have an active Microsoft Entra account', FALSE, 4);
