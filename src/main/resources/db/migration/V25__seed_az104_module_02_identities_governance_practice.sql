INSERT INTO module (id, certification_id, code, title, description, position)
VALUES ('8014b3e5-a38f-4c62-838b-d49e6333c4c2', '00000000-0000-0000-0000-000000000002', 'module-02-identities-governance-practice', 'Module 2 (Practice Scenarios) - Manage Identities and Governance in Azure',
        NULL, 8);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('225e34b8-835e-400a-810c-b15d6f0ef36b', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso has an internal legacy application that requires LDAP authentication and cannot be modified to use modern protocols. Contoso has no on-premises Active Directory infrastructure, already hosts its identities in Microsoft Entra ID, and wants to deploy this application on an Azure virtual machine. The company wants to support LDAP authentication without deploying or managing domain controllers. What should the administrator do?',
        'B is correct: Microsoft Entra Domain Services provides managed domain services (LDAP, Kerberos/NTLM, domain join) without requiring the administrator to deploy or manage domain controllers, exactly meeting the need for LDAP compatibility without on-premises infrastructure. A is incorrect because Microsoft Entra Connect Sync synchronizes identities from an existing on-premises AD, but Contoso doesn''t have one, and Connect Sync doesn''t provide an LDAP endpoint. C is incorrect because Microsoft Entra External ID is used to manage customer/external identities (B2C), not LDAP authentication for an internal application. D is incorrect because Azure Policy is used for governance and resource compliance, not for providing an LDAP authentication service.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0f4859cc-4319-4591-ae91-6bbb4ea68b12', '225e34b8-835e-400a-810c-b15d6f0ef36b', 'Create an Azure Policy initiative that blocks non-compliant protocols', FALSE, 1),
    ('05e9ef24-4d63-47e4-ba5c-427723c9bb50', '225e34b8-835e-400a-810c-b15d6f0ef36b', 'Deploy Microsoft Entra Domain Services', TRUE, 2),
    ('33277d76-e9ee-4b80-acbc-099ce3563147', '225e34b8-835e-400a-810c-b15d6f0ef36b', 'Enable Microsoft Entra Connect Sync to synchronize identities', FALSE, 3),
    ('35cabb82-1e80-4cc6-9829-1af08e5d5ba1', '225e34b8-835e-400a-810c-b15d6f0ef36b', 'Configure Microsoft Entra External ID', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ab15fd42-2c77-4529-98bf-ec593ca59397', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso wants to require multi-factor authentication for all administrator accounts and block sign-ins from countries considered high-risk. The company currently uses Microsoft Entra ID Free. What should the administrator do first to meet this requirement?',
        'A is correct because conditional access, which lets you require MFA and block sign-ins based on location, is a feature included starting with Microsoft Entra ID P1; Entra ID Free does not include it. B is incorrect because Domain Services provides legacy domain services (LDAP/Kerberos) and has nothing to do with conditional access. C is incorrect because a dynamic group organizes user membership but doesn''t apply any conditional access rule; it also requires a P1 license itself. D is incorrect because custom security attributes are used to classify objects, not to enforce risk- or location-based access controls.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('492f661f-90e9-458e-bb36-35c1e2f19204', 'ab15fd42-2c77-4529-98bf-ec593ca59397', 'Upgrade the tenant to Microsoft Entra ID P1 (or a higher edition) to use conditional access', TRUE, 1),
    ('82a5d3cb-c34a-4268-8e96-51d547a9193b', 'ab15fd42-2c77-4529-98bf-ec593ca59397', 'Deploy Microsoft Entra Domain Services', FALSE, 2),
    ('bee1736b-6379-43fe-b185-08c01cfab873', 'ab15fd42-2c77-4529-98bf-ec593ca59397', 'Create a custom security attribute "Risk"', FALSE, 3),
    ('f7cebf13-22ba-4ca4-af0d-bc1d3cc3efbe', 'ab15fd42-2c77-4529-98bf-ec593ca59397', 'Create a dynamic group for administrators', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c5e8d46b-024a-43e5-b818-1ed91cc40798', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso''s security team wants Microsoft Entra ID to automatically detect risky sign-ins — for example, a sign-in from Paris followed a few minutes later by a sign-in attempt from a country thousands of kilometers away (impossible travel) — and automatically block that session. Which license does Contoso need to acquire for this use case?',
        'D is correct because detecting risky sign-ins (such as "impossible travel") is part of Microsoft Entra ID Protection, a feature exclusive to the P2 edition. A is incorrect because Entra ID Free includes no advanced risk detection. B is incorrect because P1 includes conditional access but not Identity Protection or sign-in risk detection, which remain reserved for P2. C is incorrect because this capability is never included by default; it explicitly requires a P2 license.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('82471e13-39c7-4f45-9d70-c30b64da0d32', 'c5e8d46b-024a-43e5-b818-1ed91cc40798', 'Microsoft Entra ID P2, to use Identity Protection', TRUE, 1),
    ('2a34fc5e-0224-4134-87cb-5963283e7209', 'c5e8d46b-024a-43e5-b818-1ed91cc40798', 'No additional license, this feature is included by default', FALSE, 2),
    ('585a5144-8c09-4b25-9b4a-221d0afff53a', 'c5e8d46b-024a-43e5-b818-1ed91cc40798', 'Microsoft Entra ID Free', FALSE, 3),
    ('dfd8b5d5-9dde-4065-857a-f539054ea3f5', 'c5e8d46b-024a-43e5-b818-1ed91cc40798', 'Microsoft Entra ID P1', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('86106914-6bf3-4471-948c-3a00240f0e78', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso operates entirely in the cloud, with no on-premises Active Directory. The company wants an administrator to have the Owner role on an Azure subscription only during a planned four-hour maintenance window, with mandatory manager approval and activation logging. Which Microsoft Entra ID feature should be used to meet this need?',
        'D is correct: PIM provides just-in-time privileged access, with an approval workflow and logging, exactly matching the scenario described; this feature requires Microsoft Entra ID P2. A is incorrect because a dynamic group manages membership based on attribute rules, but offers neither time-limited activation nor an approval workflow. C is incorrect because a custom security attribute is a simple key-value classification pair, with no time-bound access-granting mechanism. B is incorrect because Domain Services provides legacy domain services and has no connection to privileged access management.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f5bac728-80b3-4bb0-953b-16bff2b54461', '86106914-6bf3-4471-948c-3a00240f0e78', 'Microsoft Entra Domain Services', FALSE, 1),
    ('0477bc7b-9fa6-4090-b2d0-707402852139', '86106914-6bf3-4471-948c-3a00240f0e78', 'A dynamic membership group', FALSE, 2),
    ('c11b44ca-4cdd-4dfc-88a0-385dcc069d71', '86106914-6bf3-4471-948c-3a00240f0e78', 'Privileged Identity Management (PIM), available with Microsoft Entra ID P2', TRUE, 3),
    ('ad6321e2-f53b-4a9b-ac4c-d9e14a5d4f2e', '86106914-6bf3-4471-948c-3a00240f0e78', 'A custom security attribute', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ae0684f5-26a2-4326-a06a-318be0077b24', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso is a fully cloud-based company, with no on-premises Active Directory infrastructure, and wants to offer its employees single sign-on (SSO) access to more than 50 different SaaS applications. Which Microsoft solution natively meets this need, without requiring domain controllers?',
        'C is correct: Microsoft Entra ID is designed to provide single sign-on (SSO) access to cloud and SaaS applications via open protocols like SAML and OAuth, without requiring on-premises infrastructure or domain controllers. A is incorrect because Domain Services provides legacy protocols (LDAP, Kerberos/NTLM) for applications that depend on them, which is not the need here. B is incorrect because a resource group is an Azure resource organization concept, unrelated to user authentication. D is incorrect because Azure Policy is used for governance and compliance, not user authentication.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ac01ff8d-4574-431c-851f-f84f4cb5a246', 'ae0684f5-26a2-4326-a06a-318be0077b24', 'Microsoft Entra Domain Services', FALSE, 1),
    ('a2e6b19f-9254-4f0c-96ba-f49abb9e4d4c', 'ae0684f5-26a2-4326-a06a-318be0077b24', 'A dedicated resource group', FALSE, 2),
    ('cb7ef21e-d604-49e8-bdcb-5b0076852bfd', 'ae0684f5-26a2-4326-a06a-318be0077b24', 'Azure Policy', FALSE, 3),
    ('14c98466-78da-4dd2-a6a7-ae00215ea8f1', 'ae0684f5-26a2-4326-a06a-318be0077b24', 'Microsoft Entra ID', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3fbcff17-0b78-47dd-afa0-990f34b9b0d3', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso is migrating a legacy file-sharing application that requires NTLM authentication and the use of Group Policy for some settings. The company does not own and does not want to manage domain controllers, and its identities are managed only in Microsoft Entra ID (no synchronization from an on-premises AD is planned). Which solution meets this need with the least administrative overhead?',
        'C is correct: Microsoft Entra Domain Services provides NTLM, Kerberos, and Group Policy in a managed way, without the company having to deploy or administer domain controllers itself. A is incorrect because while technically feasible, this would require Contoso to fully manage the domain controllers (patching, availability, backup), exactly what the company wants to avoid. B is incorrect because Microsoft Entra ID alone does not support NTLM or Group Policy. D is incorrect because Connect Sync synchronizes identities from an existing on-premises AD, which Contoso doesn''t have, and doesn''t provide an NTLM or GPO service itself.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fc5299c2-bce1-4afe-9a34-1eba8895071d', '3fbcff17-0b78-47dd-afa0-990f34b9b0d3', 'Deploy Microsoft Entra Domain Services', TRUE, 1),
    ('6a51062a-7417-4e6d-bbfe-bfbf85c59f8e', '3fbcff17-0b78-47dd-afa0-990f34b9b0d3', 'Host two Windows Server domain controllers on Azure virtual machines', FALSE, 2),
    ('f3612201-2f93-4154-9a17-d56477a377cb', '3fbcff17-0b78-47dd-afa0-990f34b9b0d3', 'Use Microsoft Entra ID alone, with no additional solution', FALSE, 3),
    ('387fb14b-5a51-4a74-abb0-ea06bba03c61', '3fbcff17-0b78-47dd-afa0-990f34b9b0d3', 'Configure Microsoft Entra Connect Sync', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c2ec7088-f08a-4ddf-9a23-2aea734813e8', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso is gradually decommissioning its last on-premises Active Directory domain controller and moving to identity management fully based on Microsoft Entra ID. An administrator is concerned about losing the ability to apply centralized configuration settings to desktop computers, previously managed through Group Policy Objects (GPOs) organized by organizational units (OUs). Which statement correctly describes the situation?',
        'D is correct: unlike AD DS, Microsoft Entra ID uses a flat structure with no OUs or Group Policy objects; managing the configuration of cloud devices relies on other tools such as Microsoft Intune and conditional access. A is incorrect because there is no automatic replication of OUs/GPOs into Microsoft Entra ID, as these concepts don''t exist in that service. C is incorrect because configuration management remains possible without an on-premises AD, notably via Intune. B is incorrect because Azure Policy manages Azure resource compliance and does not import Windows GPOs, which are a separate and incompatible mechanism.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5a4b0986-14b7-4c1f-a986-5e1c32e75f7f', 'c2ec7088-f08a-4ddf-9a23-2aea734813e8', 'Microsoft Entra ID uses a flat structure with no OUs or GPOs; configuration management must instead rely on tools such as device management (Intune) and conditional access', TRUE, 1),
    ('fddc95ab-f71a-4eeb-b51d-32ce53eb545b', 'c2ec7088-f08a-4ddf-9a23-2aea734813e8', 'It is impossible to manage device configuration without an on-premises Active Directory', FALSE, 2),
    ('a97e7e33-7205-4086-905b-57346e6ed7de', 'c2ec7088-f08a-4ddf-9a23-2aea734813e8', 'GPOs can be imported directly into Azure Policy', FALSE, 3),
    ('a5081f30-76eb-4a89-9484-e0ab96ee3fab', 'c2ec7088-f08a-4ddf-9a23-2aea734813e8', 'Microsoft Entra ID automatically replicates existing OUs and GPOs during migration', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ccbded7e-7f9b-47c1-aa79-968365cee2c3', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso is evaluating two options for hosting a legacy application that requires an LDAP bind: (1) deploying and administering two Windows Server domain controllers on Azure VMs itself, or (2) using an equivalent managed service. The IT team is small and wants to minimize recurring administrative tasks (patching, high availability, domain controller backups) as much as possible. Which option should Contoso choose?',
        'A is correct because Microsoft Entra Domain Services provides LDAP in a managed way, with Microsoft handling deployment, patching, high availability, and backups of the underlying domain controllers, exactly matching the small IT team''s constraint. B is incorrect because this option places the full burden of domain controller administration on Contoso, contrary to the stated goal. C is incorrect because Microsoft Entra ID does not natively support the LDAP protocol. D is incorrect because LDAP remains supported on Azure via Microsoft Entra Domain Services.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('86d7c089-1b0e-46b6-8364-acc1c2be0f0d', 'ccbded7e-7f9b-47c1-aa79-968365cee2c3', 'Deploy no solution, since LDAP is no longer supported on Azure', FALSE, 1),
    ('8507ab19-7ae2-403a-b25d-f41dfc27bbe7', 'ccbded7e-7f9b-47c1-aa79-968365cee2c3', 'Use Microsoft Entra ID alone, which natively supports LDAP', FALSE, 2),
    ('cf6f55d1-3e22-451b-abc5-6929ae3bccb4', 'ccbded7e-7f9b-47c1-aa79-968365cee2c3', 'Use Microsoft Entra Domain Services, since Microsoft manages the underlying domain controller infrastructure', TRUE, 3),
    ('8176d12a-8dcc-4b84-9317-d1a2fda20bf3', 'ccbded7e-7f9b-47c1-aa79-968365cee2c3', 'Deploy its own domain controllers on Azure VMs, since this offers more control', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('67fdb98f-69b3-4306-bf63-387e1afba78f', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso has just merged with another company. Both organizations each have their own on-premises Active Directory forest, completely disconnected from each other. Leadership wants to synchronize identities from both forests into a single Microsoft Entra ID tenant, using a lightweight synchronization agent that requires as little infrastructure to manage as possible. Which tool should the administrator use?',
        'B is correct: Microsoft Entra Cloud Sync is the recommended tool for most organizations, notably because it supports multiple disconnected forests through a lightweight, cloud-managed agent. A is incorrect because Microsoft Entra Connect Sync, although capable of handling complex scenarios, is heavier to administer and is not the primary recommended tool for this case. C is incorrect because Azure Migrate is used to migrate workloads (VMs, databases), not to synchronize identities. D is incorrect because Domain Services provides managed domain services and has no role in synchronizing identities between forests.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8b62d5d5-4381-449c-88c8-046a77bcf334', '67fdb98f-69b3-4306-bf63-387e1afba78f', 'Microsoft Entra Cloud Sync', TRUE, 1),
    ('ca0cea37-e6b8-4835-8a6c-c3b59817ff62', '67fdb98f-69b3-4306-bf63-387e1afba78f', 'Azure Migrate', FALSE, 2),
    ('75937a88-415a-412e-b1f9-79b86cac887c', '67fdb98f-69b3-4306-bf63-387e1afba78f', 'Microsoft Entra Connect Sync', FALSE, 3),
    ('0bfc8509-b5da-481b-8d26-b83826864d81', '67fdb98f-69b3-4306-bf63-387e1afba78f', 'Microsoft Entra Domain Services', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5cb3682a-ef66-4c51-abaa-2cc69ad791a1', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'An external accounting firm needs to review a dashboard shared by Contoso during a three-month audit engagement, using its own Microsoft work account. Contoso wants to be able to easily remove this access at the end of the engagement, without having to create or manage a permanent account in its own directory. What is the most appropriate approach?',
        'A is correct: guest users allow granting temporary access to people outside the organization, using their own account, with the ability to easily remove access once the engagement ends. B is incorrect because creating a standard cloud account forces Contoso to manage a full account lifecycle (password, manual deactivation), which B2B invitation avoids. C is incorrect because Connect Sync synchronizes identities from a Contoso on-premises AD, which doesn''t apply to an external consultant with their own account. D is incorrect because a custom security attribute is used to classify objects, not to manage an external user''s access.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0c62d9d3-dd0d-4a95-ba3e-fda9ece2d0a0', '5cb3682a-ef66-4c51-abaa-2cc69ad791a1', 'Synchronize the consultant''s account via Microsoft Entra Connect Sync', FALSE, 1),
    ('f756af85-9ed8-4d8f-b5e3-57aaaafe242d', '5cb3682a-ef66-4c51-abaa-2cc69ad791a1', 'Invite the consultant as a guest user (B2B) in Microsoft Entra ID', TRUE, 2),
    ('02beb0f2-0e7e-4ab7-900f-fb4de6fb783d', '5cb3682a-ef66-4c51-abaa-2cc69ad791a1', 'Create a standard cloud account for the consultant in the Contoso tenant', FALSE, 3),
    ('89fed642-3ec1-40ae-8bd2-fce0a509ac8d', '5cb3682a-ef66-4c51-abaa-2cc69ad791a1', 'Create a custom security attribute for the consultant', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0d40b4e6-b19d-45b9-9a16-c7f7be55f590', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso''s Marketing department wants every new employee whose Department attribute is "Marketing" to be automatically added to a Marketing security group, with no manual administrator intervention. Contoso currently uses Microsoft Entra ID Free. What must the administrator do before creating this group?',
        'D is correct: dynamic group membership requires a Microsoft Entra ID P1 license (or an Intune for Education license for device-based rules); Entra ID Free is not sufficient. A is incorrect because a P1 license is indeed required, contrary to what this option states. C is incorrect because Domain Services concerns legacy protocols and has nothing to do with dynamic groups. B is incorrect because SCIM is used for automatic account provisioning to third-party applications, not for managing dynamic membership of an internal group.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('71f9b9f2-dcca-476e-bec6-8cdf67e9f4d4', '0d40b4e6-b19d-45b9-9a16-c7f7be55f590', 'Create the dynamic membership group directly, no additional license needed', FALSE, 1),
    ('705e5947-18cf-4f7a-bf8b-8d92f151daec', '0d40b4e6-b19d-45b9-9a16-c7f7be55f590', 'Upgrade the tenant to Microsoft Entra ID P1 (or higher)', TRUE, 2),
    ('88123fb4-33c3-4ab9-ad2d-21380286f745', '0d40b4e6-b19d-45b9-9a16-c7f7be55f590', 'Deploy Microsoft Entra Domain Services', FALSE, 3),
    ('bc57aaaf-07dc-402a-86ae-41eb02b2d544', '0d40b4e6-b19d-45b9-9a16-c7f7be55f590', 'Configure SCIM provisioning', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('56591569-c597-4368-ac1c-b767a17d81f3', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso has an existing on-premises Active Directory infrastructure and uses Group Policy to manage the configuration of its Windows desktop computers. The company wants these same devices to also benefit from single sign-on to cloud applications and conditional access, without giving up existing Group Policy. Which device join type should the administrator recommend?',
        'B is correct: Microsoft Entra hybrid joined devices are both joined to the on-premises Active Directory (so manageable via Group Policy) and registered in Microsoft Entra ID (so capable of cloud SSO and conditional access). A is incorrect because BYOD registration concerns personal devices and doesn''t provide Group Policy management. C is incorrect because a device joined only to Microsoft Entra is not linked to the on-premises AD and would lose GPO management. D is incorrect because Group Policy alone provides neither cloud SSO nor conditional access, which require a Microsoft Entra ID identity on the device.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0835c2d1-fcc3-4eb1-afe0-5866d5f3701e', '56591569-c597-4368-ac1c-b767a17d81f3', 'Microsoft Entra joined device only', FALSE, 1),
    ('a241876c-03bb-4994-aa83-1728a158f5ff', '56591569-c597-4368-ac1c-b767a17d81f3', 'No join is necessary, Group Policy is enough', FALSE, 2),
    ('b43a6582-cf70-4240-a07c-34840a32831e', '56591569-c597-4368-ac1c-b767a17d81f3', 'Microsoft Entra hybrid joined device', TRUE, 3),
    ('040ca388-d74e-401f-987e-10709a640b79', '56591569-c597-4368-ac1c-b767a17d81f3', 'Microsoft Entra registered device (BYOD)', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3d04aa5f-753a-447f-96d5-b27f2fb43782', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'An employee at Contoso wants to check their work email and calendar on their personal tablet. Contoso wants to enforce a conditional access policy requiring a compliant device, without owning or fully managing the employee''s device. Which approach is best suited?',
        'B is correct: BYOD registration simply adds a Microsoft Entra account to the user''s personal device, while still allowing compliance policies to be applied (via a tool like Microsoft Intune) without the company owning the device. A is incorrect because full Microsoft Entra join is intended for organization-owned devices, not personal devices. C is incorrect because hybrid join requires an on-premises Active Directory and concerns corporate devices, not personal BYOD tablets. D is incorrect because this doesn''t meet the employee''s stated need and is not the recommended technical solution in this scenario.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f3b7a4ef-6e3f-4319-b50e-9bbad6731586', '3d04aa5f-753a-447f-96d5-b27f2fb43782', 'Hybrid join the device to Microsoft Entra ID', FALSE, 1),
    ('d7c9eb4c-b2b2-41d1-933d-75815cf59b67', '3d04aa5f-753a-447f-96d5-b27f2fb43782', 'Join the device to Microsoft Entra ID as a corporate device', FALSE, 2),
    ('11b75f60-8efd-4e85-9034-56c31ab1eae1', '3d04aa5f-753a-447f-96d5-b27f2fb43782', 'Register the device with Microsoft Entra ID (BYOD scenario) and apply a compliance policy via a mobile device management tool', TRUE, 3),
    ('b118b76e-eaab-4e2b-a11a-a49ac065be72', '3d04aa5f-753a-447f-96d5-b27f2fb43782', 'Deny all access from personal devices', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c93183bb-1b44-408a-8a1e-c3c6feca548f', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso''s HR department experiences high staff turnover. Administrators currently run a PowerShell script every week to assign or remove Microsoft 365 licenses based on new hires and departures. Which Microsoft Entra ID solution would reduce this recurring administrative burden?',
        'D is correct: group-based licensing automatically assigns and removes licenses based on group membership, eliminating the need for a manual PowerShell script to reflect hires and departures. A is incorrect because this simply reproduces the current manual burden, without automation. C is incorrect because custom security attributes are used to classify objects, not to automate license assignment. B is incorrect because Domain Services concerns legacy domain services and has no connection to managing Microsoft 365 licenses.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1df4ac58-10ce-4664-b21e-26de4a9ed984', 'c93183bb-1b44-408a-8a1e-c3c6feca548f', 'Use group-based licensing, assigning the license to an HR security group', TRUE, 1),
    ('8f29efdd-fd21-4477-9222-85c7dfa83954', 'c93183bb-1b44-408a-8a1e-c3c6feca548f', 'Continue assigning licenses individually to each new user', FALSE, 2),
    ('b566e598-8a01-42ee-89a7-bf4d55acc744', 'c93183bb-1b44-408a-8a1e-c3c6feca548f', 'Deploy Microsoft Entra Domain Services', FALSE, 3),
    ('1dfd38b7-f3f1-4c88-a35c-f9ded8800c5f', 'c93183bb-1b44-408a-8a1e-c3c6feca548f', 'Create a custom security attribute to track license status', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('defac877-df94-4a7e-81c0-3939f6e8b802', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso wants to classify several hundred enterprise applications by sensitivity level ("Confidential," "Internal," "Public"), in order to build a filterable inventory for audit purposes, restricting visibility of this classification to the security team only. Which Microsoft Entra ID feature precisely meets this need?',
        'B is correct: custom security attributes are company-specific key-value pairs that can be assigned to enterprise applications to classify them and build a filterable inventory, with fine-grained control over who can view or manage these attributes. A is incorrect because dynamic groups organize user or device membership based on rules, not application classification by sensitivity. C is incorrect because group-based licensing concerns product license assignment, unrelated to application classification. D is incorrect because Azure RBAC manages access to Azure resources; it is not a classification or tagging mechanism for applications.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0aa1905c-5d5b-4838-9d1a-a7a8c134733e', 'defac877-df94-4a7e-81c0-3939f6e8b802', 'Group-based licensing', FALSE, 1),
    ('003b800b-5477-4933-85ab-f90220217fa0', 'defac877-df94-4a7e-81c0-3939f6e8b802', 'Azure RBAC at the subscription level', FALSE, 2),
    ('106c107e-d488-4f8d-b89f-d3a266ec05d1', 'defac877-df94-4a7e-81c0-3939f6e8b802', 'Custom security attributes', TRUE, 3),
    ('4e137cf2-f6bc-4f77-b521-fa0d5fdb46ed', 'defac877-df94-4a7e-81c0-3939f6e8b802', 'Dynamic membership groups', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fcc024c7-34eb-427c-ba6e-b6c02bad91d9', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso uses a third-party HR SaaS application that exposes an endpoint compliant with the SCIM 2.0 standard. The company wants user accounts to be automatically created in this application as soon as an employee is added in Microsoft Entra ID, and automatically removed when they leave. Which feature should the administrator configure?',
        'C is correct: when the target application exposes a SCIM 2.0 endpoint, the Microsoft Entra Provisioning Service connects directly to that endpoint to automate account creation, updates, and removal. A is incorrect because API-driven provisioning is reserved for systems that don''t expose a SCIM endpoint, which is not the case here. B is incorrect because Cloud Sync synchronizes identities from an on-premises Active Directory to Microsoft Entra ID, not to a third-party SaaS application. D is incorrect because group-based licensing assigns Microsoft product licenses; it does not provision accounts in third-party applications.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ccaf2f9b-0425-4d42-829a-3680c6501d6b', 'fcc024c7-34eb-427c-ba6e-b6c02bad91d9', 'Microsoft Entra Cloud Sync', FALSE, 1),
    ('ce9a0e7b-0f18-414c-b18d-4187c5d88394', 'fcc024c7-34eb-427c-ba6e-b6c02bad91d9', 'Group-based licensing', FALSE, 2),
    ('3872e486-bbdb-4946-8669-f9c2a0982011', 'fcc024c7-34eb-427c-ba6e-b6c02bad91d9', 'The Microsoft Entra Provisioning Service, using the SCIM 2.0 protocol', TRUE, 3),
    ('c5a33fd9-1480-45d4-8abe-d7411741d5b3', 'fcc024c7-34eb-427c-ba6e-b6c02bad91d9', 'API-driven inbound provisioning', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3c1b1e8d-4a4f-41fb-aead-48c42e9002d5', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso uses a custom in-house HR system that offers no SCIM endpoint. The company still wants to automate the creation of Microsoft Entra ID accounts from this HR system''s data. Which solution fits this scenario?',
        'A is correct: for HR systems that don''t expose a SCIM endpoint, Microsoft Entra ID supports API-driven inbound provisioning, which lets an automation tool pull data from the HR system and send it to the Microsoft Entra provisioning API. B is incorrect because Domain Services provides legacy domain services and has nothing to do with automatic account provisioning. C is incorrect because dynamic membership manages who belongs to an existing group, not the initial creation of user accounts. D is incorrect because custom security attributes classify objects that already exist, not automatically create new user accounts.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e1dce2d1-9259-4fbc-bcb8-5c59336b8312', '3c1b1e8d-4a4f-41fb-aead-48c42e9002d5', 'API-driven inbound provisioning', TRUE, 1),
    ('d59bb88a-807c-4d5c-9b38-921138bb1b89', '3c1b1e8d-4a4f-41fb-aead-48c42e9002d5', 'Custom security attributes', FALSE, 2),
    ('01004475-d46c-4c02-9c44-4951b8500e25', '3c1b1e8d-4a4f-41fb-aead-48c42e9002d5', 'Microsoft Entra Domain Services', FALSE, 3),
    ('9e2cb441-d224-4129-a764-1d22e13a1d39', '3c1b1e8d-4a4f-41fb-aead-48c42e9002d5', 'Dynamic group membership', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('572191c3-0915-44d6-9636-e5854eac8b39', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'A Contoso administrator must onboard 500 new seasonal employees from a recent acquisition. These users must automatically receive a Microsoft 365 license as soon as they''re added to a "Seasonal" group, and automatically lose it at the end of their contract when removed from the group, with no manual PowerShell script. Which minimum edition of Microsoft Entra ID or Office 365 enables this group-based licensing?',
        'B is correct: group-based licensing requires a paid or trial Microsoft Entra ID P1 subscription or higher, or an Office 365 Enterprise E3 edition or higher. A is incorrect because Entra ID Free does not support group-based licensing. C is incorrect because a specific edition is indeed required, contrary to what this option states. D is incorrect because P2 is not the minimum required: P1 is already sufficient for this feature, and there''s no need to pay for additional P2 features like Identity Protection.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('04ca1a9a-5cf0-4170-84b4-74ef2627bf82', '572191c3-0915-44d6-9636-e5854eac8b39', 'No specific edition is required', FALSE, 1),
    ('e1866e12-9012-4c26-94c2-124d42a0e7f3', '572191c3-0915-44d6-9636-e5854eac8b39', 'Microsoft Entra ID Free only', FALSE, 2),
    ('b31a5e89-79ec-4501-a81f-ee3e440ea1a6', '572191c3-0915-44d6-9636-e5854eac8b39', 'Microsoft Entra ID P1 (or an Office 365 Enterprise E3 edition or higher)', TRUE, 3),
    ('c50186a1-3ce8-4d2b-a557-af7d45dd1cd8', '572191c3-0915-44d6-9636-e5854eac8b39', 'Microsoft Entra ID P2 only', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5eb9b970-88d7-41d5-b65f-38c7288745f4', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso hosts a critical application in the France Central region and is setting up a disaster recovery plan in case of a major regional outage (natural disaster, large-scale network outage). The company wants to choose a backup region that Microsoft prioritizes for restoration in the event of an incident affecting multiple regions within the same geography. Which approach should the administrator prioritize?',
        'B is correct: region pairs receive priority treatment from Microsoft during a major outage (one region in the pair is restored first), benefit from geographically isolated replication (at least 480 km apart), and have staggered update rollouts between the two regions. A is incorrect because an arbitrarily chosen region doesn''t benefit from these region-pair-specific guarantees. C is incorrect because availability zones protect against a single datacenter outage within the same region, not against a disaster affecting the entire region. D is incorrect because sovereign regions address isolated legal and compliance requirements, not a standard disaster recovery need.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0283faef-db57-4ad8-985e-d2090b9346ca', '5eb9b970-88d7-41d5-b65f-38c7288745f4', 'Deploy the backup solution to the region officially paired with France Central', TRUE, 1),
    ('5dd4d0fd-95f5-415f-9919-47b3d5714db2', '5eb9b970-88d7-41d5-b65f-38c7288745f4', 'Migrate to a sovereign region', FALSE, 2),
    ('588b6e38-a5c6-4937-b8b5-02bd0011910c', '5eb9b970-88d7-41d5-b65f-38c7288745f4', 'Deploy the backup solution to any available Azure region, with no particular constraint', FALSE, 3),
    ('bd3900a1-bcba-4e84-ba93-2cea22e6080e', '5eb9b970-88d7-41d5-b65f-38c7288745f4', 'Only add extra availability zones within the France Central region', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f1b3810e-e81c-416c-a119-54dcac4d7ccd', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso hosts a critical e-commerce application in the France Central region. The company wants to guarantee that a single datacenter outage does not cause a service interruption, without duplicating the application in another region (for cost and data-residency reasons). Which solution is most appropriate?',
        'B is correct: availability zones are physically separate datacenters within the same region, each with independent power, cooling, and networking; spreading resources across multiple zones protects against a single datacenter outage while keeping data in the same region. A is incorrect because a management group is a governance and access management tool, with no effect on an application''s physical resiliency. C is incorrect because a sovereign region addresses legal compliance needs, not an intra-region high-availability need. D is incorrect because grouping resources in a single resource group with no cross-zone replication provides no protection against a datacenter outage.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3d5a542a-ed94-456a-84de-bac24765fe93', 'f1b3810e-e81c-416c-a119-54dcac4d7ccd', 'Group all resources into a single resource group with no replication', FALSE, 1),
    ('50b9fc99-f9dd-438a-b96e-f5c9c5e2a3c7', 'f1b3810e-e81c-416c-a119-54dcac4d7ccd', 'Create an additional management group', FALSE, 2),
    ('7b770375-0e59-4293-917a-f4c4f0673576', 'f1b3810e-e81c-416c-a119-54dcac4d7ccd', 'Migrate to a sovereign region', FALSE, 3),
    ('f92e6b73-6376-4def-8244-c24da3a9efcb', 'f1b3810e-e81c-416c-a119-54dcac4d7ccd', 'Deploy the application''s resources across multiple availability zones within the France Central region', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c89a7989-6066-4b37-be0c-d9951d1ee716', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso manages three environments (development, test, production) for the same application, each with different lifecycles and access needs. The team wants to be able to delete the entire development environment in a single operation, without risking any impact on production. Which resource organization do you recommend?',
        'D is correct: since an action applied to a resource group (including deletion) applies to all resources it contains, separating each environment into its own resource group lets you delete development with zero risk to production. A is incorrect because this would make it impossible to selectively delete development without affecting the other environments. C is incorrect because creating a subscription per individual resource is excessive, unmanageable at scale, and doesn''t match the intended use of subscriptions. B is incorrect because every Azure resource must belong to a resource group; management groups sit at a higher level and don''t replace this organization.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('184a05d4-3cf3-4a54-93f6-59de3eb3c537', 'c89a7989-6066-4b37-be0c-d9951d1ee716', 'Place all resources for the three environments in a single resource group', FALSE, 1),
    ('bd267607-35c3-4312-a474-10f8348ba585', 'c89a7989-6066-4b37-be0c-d9951d1ee716', 'Create a separate resource group for each environment', TRUE, 2),
    ('2e4c27c1-bb42-47a4-9973-2fefc49a77ba', 'c89a7989-6066-4b37-be0c-d9951d1ee716', 'Use only management groups, with no resource groups', FALSE, 3),
    ('08ab7d6f-9384-4c56-9406-f8bb7b304467', 'c89a7989-6066-4b37-be0c-d9951d1ee716', 'Create a separate Azure subscription for each individual resource', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5d0bdd92-56be-4fbe-bad8-fcffe0ce1048', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso wants spending on the development and production environments to be tracked and billed separately, with distinct access policies ensuring developers can never access production resources. Which approach is recommended?',
        'B is correct: an Azure subscription is both a billing boundary (separate reports and invoices) and an access control boundary (access management policies applied at the subscription level), meeting both of Contoso''s requirements exactly. A is incorrect because separate resource groups within the same subscription don''t create a clear billing separation and, with identical permissions, don''t guarantee the requested access isolation. C is incorrect because Azure RBAC alone, without separating subscriptions, doesn''t provide billing separation. D is incorrect because a shared management group with no further separation guarantees neither billing separation nor the strict access isolation required.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('52a9ab35-366a-4118-8e46-515d3caba93d', '5d0bdd92-56be-4fbe-bad8-fcffe0ce1048', 'Use only Azure RBAC, without separating subscriptions or resource groups', FALSE, 1),
    ('a8be8541-6e79-495d-84d3-738d28afb349', '5d0bdd92-56be-4fbe-bad8-fcffe0ce1048', 'Create a single management group covering both environments with no further separation', FALSE, 2),
    ('12d4f6da-0108-4664-9a92-38e28c5fb724', '5d0bdd92-56be-4fbe-bad8-fcffe0ce1048', 'Create two separate Azure subscriptions, one for each environment', TRUE, 3),
    ('6e0fefae-9013-483b-bf19-70565ba749fd', '5d0bdd92-56be-4fbe-bad8-fcffe0ce1048', 'Create two separate resource groups in the same subscription, with the same permissions for everyone', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d03d73dd-3cac-4ad2-b32c-673daa7e7883', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso has 40 Azure subscriptions spread across the Finance and Engineering divisions. The company wants to apply a policy prohibiting resource deployment outside the East US region, but only for Engineering division subscriptions, without configuring each subscription individually. What is the best approach?',
        'A is correct: management groups sit above subscriptions and let you apply a policy once to a set of subscriptions, which automatically inherit that condition; this is exactly the intended use for applying a rule to the entire Engineering division without individual configuration. B is incorrect because while technically feasible, this creates repetitive configuration work, contrary to the stated goal. C is incorrect because a resource group is a lower level than a subscription and cannot govern multiple subscriptions at once. D is incorrect because applying the policy to the tenant root group would also apply it to the Finance division, which is not desired.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ce93dd5e-b619-4b30-8f96-08f07fe3f1ed', 'd03d73dd-3cac-4ad2-b32c-673daa7e7883', 'Group the Engineering subscriptions under a dedicated management group and apply the policy at that level', TRUE, 1),
    ('6ac50a45-74cf-4de2-80c1-3dfdb5136df1', 'd03d73dd-3cac-4ad2-b32c-673daa7e7883', 'Apply the policy to the tenant root group, which covers every subscription', FALSE, 2),
    ('a1e23e81-2f73-4723-936c-f7d7e5671435', 'd03d73dd-3cac-4ad2-b32c-673daa7e7883', 'Apply the policy individually to each Engineering subscription', FALSE, 3),
    ('a16e0aa9-e318-4615-9fd6-5f0be9d97fb7', 'd03d73dd-3cac-4ad2-b32c-673daa7e7883', 'Create a new resource group in each Engineering subscription', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5b048716-c13b-4817-8f4d-d2c2aec9e8a6', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'A US government agency must host its Azure workloads in an environment isolated from the commercial Azure network, with personnel cleared within the United States and additional compliance certifications required by federal regulation. Which Azure option meets this requirement?',
        'B is correct: sovereign regions for US government agencies (such as US Gov Virginia or US DoD Central) are physical and logical instances isolated from the commercial Azure network, managed by personnel cleared within the United States, with additional compliance certifications. A is incorrect because an availability zone in a standard commercial region provides neither network isolation nor specific government certifications. C is incorrect because a standard region pair remains within the commercial Azure network, without the required isolation. D is incorrect because a management group is a purely logical governance tool and creates no physical or network isolation of the infrastructure.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1058845f-5d82-4f2f-9f5d-0dd855f92934', '5b048716-c13b-4817-8f4d-d2c2aec9e8a6', 'A sovereign region such as US Gov Virginia', TRUE, 1),
    ('b8037492-01db-41ab-a066-b260a07d8613', '5b048716-c13b-4817-8f4d-d2c2aec9e8a6', 'A dedicated availability zone in a standard commercial region', FALSE, 2),
    ('5d012f5a-1f18-4330-9cb1-d5fdf2da5744', '5b048716-c13b-4817-8f4d-d2c2aec9e8a6', 'An isolated management group within the commercial tenant', FALSE, 3),
    ('5fe31c77-67c0-43bc-b548-a81745208bc5', '5b048716-c13b-4817-8f4d-d2c2aec9e8a6', 'A standard region pair within the United States', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a9c46b49-85af-4481-9096-9ed1cbcf13b8', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso is deploying a critical database and wants the Azure platform to automatically replicate data across the region''s availability zones, without the team having to manually manage replication or pin the resource to a specific zone. Which type of service should Contoso favor?',
        'D is correct: zone-redundant services (such as zone-redundant storage or certain managed database offerings) automatically replicate data across availability zones via the platform, with no manual intervention. A is incorrect because a zonal service requires pinning the resource to a specific zone, which Contoso wants to avoid. C is incorrect because a non-regional service is always available from Azure geographies without a notion of region-specific availability zones, which doesn''t match the intra-region replication need described. B is incorrect because this categorization (zonal / zone-redundant / non-regional) has no connection to sovereign regions.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('af32fc50-eaa3-463e-8e84-ff0c117a0be5', 'a9c46b49-85af-4481-9096-9ed1cbcf13b8', 'A non-regional service', FALSE, 1),
    ('2820e8c8-545b-4dcb-aedc-35bb3d0c6ed0', 'a9c46b49-85af-4481-9096-9ed1cbcf13b8', 'A zonal service', FALSE, 2),
    ('17196c1e-840f-4aa6-97e0-5a6d2b95bfdc', 'a9c46b49-85af-4481-9096-9ed1cbcf13b8', 'A zone-redundant service', TRUE, 3),
    ('e12556ba-e0ca-4786-b64b-149bb2154454', 'a9c46b49-85af-4481-9096-9ed1cbcf13b8', 'A service available only in sovereign regions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ac63f826-0e13-4f2e-8682-ed4d43f369ed', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'A junior administrator at Contoso must delete a single test virtual machine that is no longer needed. The resource group containing this VM also hosts the production database of the company''s main application. What action must the administrator absolutely avoid?',
        'C is correct as the action to avoid: deleting a resource group automatically deletes every resource it contains, including the production database in this case, which would be catastrophic. A is a good practice, not a mistake: deleting only the targeted resource is safe and doesn''t affect the group''s other resources. B is also a good practice, often recommended to isolate resources before a risky operation. D is a sound precaution allowing you to check the group''s contents before acting, so it is not the action to avoid.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4068b07f-7c4e-4d48-99df-08f615dc2bc3', 'ac63f826-0e13-4f2e-8682-ed4d43f369ed', 'Deleting only the test virtual machine resource', FALSE, 1),
    ('fea6a452-85e9-4512-8a57-f52e3e8b2881', 'ac63f826-0e13-4f2e-8682-ed4d43f369ed', 'Reviewing the list of resources in the group before any deletion', FALSE, 2),
    ('ea5c2e38-16e7-4917-ba04-6eb7c3ca9908', 'ac63f826-0e13-4f2e-8682-ed4d43f369ed', 'Deleting the entire resource group', TRUE, 3),
    ('2291cadc-48d2-447e-9f3b-f009534bec0b', 'ac63f826-0e13-4f2e-8682-ed4d43f369ed', 'Moving the virtual machine to another resource group before deleting it', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('456a6ac6-6350-44f9-b85f-72bc62977945', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso wants to deploy a new application in an Azure region that does not support availability zones, but the team still wants some resiliency against hardware failures within the same datacenter. Which statement about availability zones is correct?',
        'A is correct: although at least three separate availability zones are present in every region that supports this feature, availability zones are not currently supported by every Azure region; you must therefore verify availability for the target region before designing the architecture. B is incorrect because this statement is false: some Azure regions don''t support availability zones. C is incorrect because availability zones are unrelated to creating a resource group, which is simply a logical container. D is incorrect because a single availability zone provides no additional resiliency compared to a standard deployment; it is spreading resources across multiple zones that provides resiliency.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5e9e6cad-f855-45a4-8325-5b692d3dd380', '456a6ac6-6350-44f9-b85f-72bc62977945', 'Availability zones are not supported by every Azure region; the team must verify this feature''s availability for the chosen region', TRUE, 1),
    ('aaf5c0fb-85c7-4b4c-84ff-1f735778a5fb', '456a6ac6-6350-44f9-b85f-72bc62977945', 'All Azure regions support availability zones', FALSE, 2),
    ('6d08e18e-6ed8-42d9-8436-e02650f69574', '456a6ac6-6350-44f9-b85f-72bc62977945', 'Availability zones are automatically enabled as soon as any resource group is created', FALSE, 3),
    ('7b2696cc-eb97-4dca-9ca9-17c478538af3', '456a6ac6-6350-44f9-b85f-72bc62977945', 'A single availability zone is always enough to guarantee resiliency', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5813396d-2644-4cbb-9908-a3e9837a6469', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso''s compliance team must comply with a regulatory framework that groups 25 distinct configuration requirements (encryption, logging, network restrictions, etc.), applicable to all of the company''s subscriptions. The team wants to track overall compliance with this framework as a single goal, rather than managing 25 separate assignments. Which approach do you recommend?',
        'A is correct: an initiative (policy set) groups several policy definitions together to simplify their assignment and compliance tracking, treating them as a single item for a broader compliance goal, exactly the stated need. B is incorrect because managing 25 separate assignments is possible but considerably increases management and tracking overhead compared to a single initiative. C is incorrect because management groups organize subscriptions for governance; they don''t replace grouping policy definitions. D is incorrect because Azure RBAC manages resource access permissions, not configuration compliance, which is Azure Policy''s role.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6db53f4c-725e-40dc-8842-d8ea171b83f3', '5813396d-2644-4cbb-9908-a3e9837a6469', 'Use only Azure RBAC for each requirement', FALSE, 1),
    ('fb06a1ae-f50a-48e9-833a-190bb1c09c5f', '5813396d-2644-4cbb-9908-a3e9837a6469', 'Individually assign each of the 25 policies to each subscription', FALSE, 2),
    ('0fe2d585-93a5-4ca9-bd2e-9fa0719df089', '5813396d-2644-4cbb-9908-a3e9837a6469', 'Group the 25 policy definitions into an initiative and assign that initiative', TRUE, 3),
    ('be313569-1493-4ba3-9fa1-b7872562210e', '5813396d-2644-4cbb-9908-a3e9837a6469', 'Create 25 separate management groups, one per requirement', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b96b1834-cf21-4e1c-89b1-6abe460e5984', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso must meet a strict contractual data-residency requirement and wants to completely prevent the creation of storage accounts outside the West Europe region, with no exceptions allowed for any team. Which Azure Policy effect should the administrator configure?',
        'A is correct: the "deny" effect genuinely prevents the creation of a resource that doesn''t meet the defined condition, by failing the request; it''s the only effect that guarantees a total block, as required by the strict contractual requirement. B is incorrect because "audit" simply generates a warning in the activity log without preventing creation, which doesn''t meet the total-block requirement. C is incorrect because "auditIfNotExists" is used to audit the absence of a related resource, a different use case from blocking creation by region. D is incorrect because "disabled" completely turns off policy evaluation, which would enforce no rule at all.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bfcc1cbb-a702-4d31-8007-253ad803b1f9', 'b96b1834-cf21-4e1c-89b1-6abe460e5984', 'Audit', FALSE, 1),
    ('a904d114-b3f1-45de-8f22-4d6a899f0256', 'b96b1834-cf21-4e1c-89b1-6abe460e5984', 'AuditIfNotExists', FALSE, 2),
    ('3c64a30b-4c47-4d46-9dc0-9a1b657896c6', 'b96b1834-cf21-4e1c-89b1-6abe460e5984', 'Deny', TRUE, 3),
    ('603a3ad4-99c2-4356-af27-5ef99f296574', 'b96b1834-cf21-4e1c-89b1-6abe460e5984', 'Disabled', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2bf8461a-2cf6-42cc-84c6-6cc181540fb5', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso''s security team wants to identify virtual machines that don''t comply with the company''s standardized VM size, but without preventing teams from deploying the VMs they need during a three-month transition phase. Which policy effect best fits this scenario?',
        'B is correct: the "audit" effect creates a warning event in the activity log for non-compliant resources, without preventing their creation, exactly matching the need for visibility without blocking during the transition phase. A is incorrect because "deny" would block the creation of non-compliant VMs, preventing teams from deploying the VMs they need, contrary to the stated requirement. C is incorrect because "denyAction" blocks specific actions such as deleting protected resources, which is not the use case here. D is incorrect because "disabled" would completely turn off evaluation, preventing even the simple identification of non-compliant VMs the security team is looking for.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9e8f27ff-e194-4200-94e7-bcf1fe177eb1', '2bf8461a-2cf6-42cc-84c6-6cc181540fb5', 'Audit', TRUE, 1),
    ('6179e85b-b74a-4980-b664-24c70fad4a4f', '2bf8461a-2cf6-42cc-84c6-6cc181540fb5', 'DenyAction', FALSE, 2),
    ('45bd017f-1c47-4200-be83-980da2481587', '2bf8461a-2cf6-42cc-84c6-6cc181540fb5', 'Disabled', FALSE, 3),
    ('7926b5c0-fbfb-4e12-9242-680faf922e93', '2bf8461a-2cf6-42cc-84c6-6cc181540fb5', 'Deny', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('429f455d-e5f0-439c-8a48-65eaa5382e06', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso wants to require multi-factor authentication for all accounts across its 15 Azure subscriptions, spread across the Finance and Marketing divisions, without creating 15 separate policy assignments. These 15 subscriptions are already grouped under a dedicated management group, "Contoso-All." At which level should the administrator assign the policy?',
        'C is correct: assigning the policy at the level of the management group that precisely encompasses the 15 subscriptions lets all of them automatically inherit the condition through a single assignment, with no repetitive configuration. A is incorrect because this would mean multiplying assignments at a much lower level than necessary, which the requirement is specifically trying to avoid. B is incorrect for the same reason: assigning at the level of each individual resource would be extremely cumbersome to manage at scale. D is incorrect because Azure Policy can indeed be assigned at the management group, subscription, resource group, or individual resource level.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('dd93f6ba-c6e9-48f8-8c2b-c0448588a868', '429f455d-e5f0-439c-8a48-65eaa5382e06', 'On the "Contoso-All" management group that encompasses the 15 subscriptions', TRUE, 1),
    ('e787d874-64b2-4470-ad84-9d80adaf8f2c', '429f455d-e5f0-439c-8a48-65eaa5382e06', 'On each resource group individually, within each of the 15 subscriptions', FALSE, 2),
    ('c3ea4a71-5f32-472a-b4df-542bb16e2337', '429f455d-e5f0-439c-8a48-65eaa5382e06', 'On each individual resource concerned', FALSE, 3),
    ('5f57c97d-2f0e-41ae-854f-40d557e8933c', '429f455d-e5f0-439c-8a48-65eaa5382e06', 'It is impossible to assign a policy above the subscription level', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('563b3a1a-0fad-4345-8be9-28f311464bc8', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso wants to evaluate the impact of a new policy that will deny resource creation outside authorized regions, before actually enforcing it in production, in order to avoid disrupting deployments in progress during the test phase. Which configuration should be used for the initial policy assignment?',
        'D is correct: the "Disabled" (DoNotEnforce) enforcementMode lets you observe the compliance evaluation result without the Deny effect actually being applied, exactly matching the "what-if" test scenario before full production enablement. A is incorrect because this would immediately apply the Deny effect and could block deployments in progress, contrary to the goal of testing beforehand. C is incorrect because although Audit lets you observe without blocking, the scenario explicitly mentions a policy that will eventually "deny" creation (Deny effect); enforcementMode Disabled specifically lets you test this exact Deny effect without applying it, which a permanent switch to Audit with no way back would not allow afterward. B is incorrect because creating a blanket exemption would completely hide the compliance evaluation results sought for this test.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('33c7f89c-9202-46b6-b61f-ca309aa2d878', '563b3a1a-0fad-4345-8be9-28f311464bc8', 'Create an exemption covering all existing and future resources', FALSE, 1),
    ('e864ceda-3943-4cc3-a29b-8c043a72df6d', '563b3a1a-0fad-4345-8be9-28f311464bc8', 'Deny effect with enforcementMode Enabled (the default behavior)', FALSE, 2),
    ('7ee6e494-c847-4921-b475-6d69f52b250e', '563b3a1a-0fad-4345-8be9-28f311464bc8', 'Deny effect with enforcementMode Disabled (DoNotEnforce)', TRUE, 3),
    ('4e635821-6254-423b-852b-1c86166e5355', '563b3a1a-0fad-4345-8be9-28f311464bc8', 'Audit effect, with no possibility of later switching to Deny', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('48b66eda-c558-4f4e-9272-3d0936853272', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso has just assigned a new Azure Policy to a resource group that already contains 200 existing virtual machines (a Brownfield scenario). The team needs to know the compliance status of these resources immediately, without waiting for the automatic evaluation cycle. What should the administrator do?',
        'A is correct: in a Brownfield scenario, a manual compliance scan can be triggered on demand (for example, via the az policy state trigger-scan command) to immediately obtain the compliance status of existing resources, without waiting for the automatic 24-hour cycle. B is incorrect because this doesn''t meet the team''s need for immediacy. C is incorrect because deleting and recreating the assignment doesn''t speed up evaluation and introduces an unnecessary misconfiguration risk. D is incorrect because creating an exemption would hide the resources'' actual compliance status rather than reveal it, which is contrary to the team''s goal.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3d6738c8-7c21-433f-a6f1-63e4c84caf46', '48b66eda-c558-4f4e-9272-3d0936853272', 'Create an exemption for all 200 virtual machines', FALSE, 1),
    ('10b8f014-e7f9-44fb-a05a-0ed12f11ce1a', '48b66eda-c558-4f4e-9272-3d0936853272', 'Manually trigger a compliance scan (for example, via the az policy state trigger-scan command)', TRUE, 2),
    ('7e46dd2b-d2c3-4187-a6a3-1b9b213b84b0', '48b66eda-c558-4f4e-9272-3d0936853272', 'Wait 24 hours for the next automatic compliance scan', FALSE, 3),
    ('9545a03d-ab42-4999-b45e-11b7f724adf3', '48b66eda-c558-4f4e-9272-3d0936853272', 'Delete and recreate the policy assignment', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8a4dd68a-b984-46f8-a592-aa4563e80845', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso has a governance requirement very specific to its industry (a particular combination of tagging restrictions and resource type) that doesn''t match any built-in policy available in Azure Policy. What is the correct approach to meet this requirement?',
        'A is correct: when no built-in policy matches a specific need, Azure Policy lets you create a custom policy that precisely defines the desired conditions and effect through a JSON definition. B is incorrect because Azure Policy explicitly supports creating custom policies; this is not a service limitation. C is incorrect because Azure RBAC manages access permissions, not configuration compliance rules like tagging. D is incorrect because there''s no need to wait for a future built-in policy: creating a custom policy is a feature available immediately.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('027bf6b0-e40b-4601-92f4-31a3c3dbca4d', '8a4dd68a-b984-46f8-a592-aa4563e80845', 'Wait for Microsoft to publish a matching built-in policy', FALSE, 1),
    ('98801693-cb5c-40aa-a87e-66aaf3038d7f', '8a4dd68a-b984-46f8-a592-aa4563e80845', 'Create a custom policy that precisely addresses this requirement', TRUE, 2),
    ('52110728-4e98-4ab7-a552-e10dd3953b3e', '8a4dd68a-b984-46f8-a592-aa4563e80845', 'Give up on this requirement, since Azure Policy only supports built-in policies', FALSE, 3),
    ('1fab9138-e290-4610-bad6-6fc3838cf29d', '8a4dd68a-b984-46f8-a592-aa4563e80845', 'Use only Azure RBAC instead of Azure Policy', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('528b77a7-059a-44e5-9869-368d1fcb79d7', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'A critical legacy resource at Contoso cannot comply with a new mandatory tagging policy due to temporary technical constraints, but the compliance team judges the risk acceptable for six months while the resource is migrated. Which Azure Policy feature allows documenting this situation without disabling the policy for the entire environment?',
        'A is correct: a "Waiver" category exemption lets you temporarily accept a specific resource''s non-compliant state, without affecting the evaluation of other resources in the environment, exactly matching the described need. B is incorrect because completely disabling the policy would remove all protection across the entire environment, far beyond the single resource concerned. C is incorrect because deleting the assignment would have the same undesirable effect as disabling it, removing all governance for every resource. D is incorrect because changing the effect to Audit for all resources would weaken the tagging policy for the entire environment, when only one resource needs a temporary exception.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ef565280-5832-4c6c-9edc-49a89f597672', '528b77a7-059a-44e5-9869-368d1fcb79d7', 'Completely delete the policy assignment', FALSE, 1),
    ('4407132c-cf6b-4ff9-b9aa-206253c73dd7', '528b77a7-059a-44e5-9869-368d1fcb79d7', 'Completely disable the policy (Disabled effect) for the entire environment', FALSE, 2),
    ('684140a3-a5a1-4f29-8df0-144b559bd86d', '528b77a7-059a-44e5-9869-368d1fcb79d7', 'Change the policy''s effect to Audit for all resources in the environment', FALSE, 3),
    ('f2c33161-41b6-4f41-9b52-f76c3458ecf3', '528b77a7-059a-44e5-9869-368d1fcb79d7', 'Create a "Waiver" category exemption for this specific resource', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c74d8dfc-81d9-47e7-bfd1-238952a5388d', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso has assigned a policy with the deployIfNotExists effect that automatically deploys a diagnostic agent on new virtual machines. However, the company has 150 existing virtual machines, created before this policy, that don''t have the agent installed. Which action brings these existing VMs into compliance?',
        'C is correct: a remediation task brings existing resources that are non-compliant with a "modify" or "deployIfNotExists" definition assignment into compliance, by retroactively deploying the missing agent to the 150 VMs. A is incorrect because this guarantees neither a timeframe nor any concrete action, unlike an explicit remediation task. B is incorrect because changing the effect to Deny would prevent the creation of new non-compliant resources but would not install the agent on the VMs that already exist. D is incorrect because deleting and recreating 150 production VMs is a disproportionate, risky, and costly operation compared to a simple, targeted remediation task.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0e4929cf-74cf-45da-bd0f-c22d653321c1', 'c74d8dfc-81d9-47e7-bfd1-238952a5388d', 'Wait for the VMs to eventually be recreated naturally', FALSE, 1),
    ('c46083e6-542c-48ff-85d9-613db6c4f88b', 'c74d8dfc-81d9-47e7-bfd1-238952a5388d', 'Delete the 150 existing VMs and recreate them', FALSE, 2),
    ('6c4d9275-2978-46c8-b77d-437a74458ceb', 'c74d8dfc-81d9-47e7-bfd1-238952a5388d', 'Change the policy''s effect to Deny', FALSE, 3),
    ('c5d89626-494f-48b8-bedb-312cb8f4aad7', 'c74d8dfc-81d9-47e7-bfd1-238952a5388d', 'Create and run a remediation task', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('365c31bc-b800-4fef-bcda-b38f5ae6ab53', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso wants a team lead to be able to create and manage all resources in the "RG-DevTeam" resource group, but must never be able to grant or revoke other users'' access to that group. Which built-in Azure RBAC role best fits, assigned at the resource group level?',
        'A is correct: the Contributor role allows creating and managing all types of Azure resources within the assigned scope, but explicitly excludes (via NotActions) the ability to grant access to other users, exactly matching the requirement. B is incorrect because the Owner role additionally includes the ability to delegate access to other users, which Contoso specifically wants to prevent. C is incorrect because the Reader role wouldn''t let the team lead create or manage resources, only view them. D is incorrect because this role only manages access assignments, without allowing the creation or management of the resources themselves.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a5d232f4-e797-4698-a548-6d93ddb074a0', '365c31bc-b800-4fef-bcda-b38f5ae6ab53', 'Contributor', TRUE, 1),
    ('4ae863c5-8191-46d7-a129-c48e5b9229a0', '365c31bc-b800-4fef-bcda-b38f5ae6ab53', 'User Access Administrator', FALSE, 2),
    ('2acb89d5-ffe9-488c-8f7b-6f066b67095a', '365c31bc-b800-4fef-bcda-b38f5ae6ab53', 'Owner', FALSE, 3),
    ('5964ed26-7a28-4a76-8801-ab4ceab97a96', '365c31bc-b800-4fef-bcda-b38f5ae6ab53', 'Reader', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e3c35525-1d1d-4953-a9d0-45f3b443148b', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'An external auditor needs to review the configuration of all resources in a Contoso subscription during a compliance audit, without being able to modify them. Which Azure RBAC role should the administrator assign, at the subscription level?',
        'C is correct: the Reader role provides read-only access to existing resources, letting the auditor review the configuration without being able to change it, exactly matching a compliance audit''s needs. A is incorrect because the Contributor role would let the auditor create, modify, or delete resources, far beyond their needs and posing a risk. B is incorrect for the same reason, with the added ability to delegate access. D is incorrect because this role manages access assignments, which is not the auditor''s mission, and it doesn''t allow viewing the resources'' configuration either.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c039c7ff-1ad7-43aa-bfae-93811d27e7c5', 'e3c35525-1d1d-4953-a9d0-45f3b443148b', 'Owner', FALSE, 1),
    ('283ff76f-b50d-4a28-849b-15ad7b1973ed', 'e3c35525-1d1d-4953-a9d0-45f3b443148b', 'User Access Administrator', FALSE, 2),
    ('452e4aaf-e16a-4ea5-b0b6-8757d14f7a13', 'e3c35525-1d1d-4953-a9d0-45f3b443148b', 'Reader', TRUE, 3),
    ('9856c688-e23f-4adb-8c9f-522a92625400', 'e3c35525-1d1d-4953-a9d0-45f3b443148b', 'Contributor', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7f52578b-3e27-4401-9123-59290587c217', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso wants an IT manager to be able to manage who has access to a specific resource group (adding or removing users), without giving them the ability to create, modify, or delete the resources it contains. Which Azure RBAC role is most appropriate?',
        'A is correct: the User Access Administrator role specifically allows managing role assignments (who has access to what) without necessarily having full access to manage the resources'' content themselves. C is incorrect because the Contributor role allows managing resources but does not allow granting access to other users, the opposite of what''s requested. B is incorrect because the Reader role allows neither managing resources nor granting access. D is incorrect because the Owner role combines both full resource management AND access delegation, which goes beyond the strict requirement stated (managing access only, not resources).', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1d7758c4-542d-4f8e-ab76-df1035227e66', '7f52578b-3e27-4401-9123-59290587c217', 'Reader', FALSE, 1),
    ('507386b1-b1d6-4af2-959d-2f47e6b9e7bc', '7f52578b-3e27-4401-9123-59290587c217', 'Owner', FALSE, 2),
    ('5ef36245-4636-4ebd-ae0f-0f77f10e4f45', '7f52578b-3e27-4401-9123-59290587c217', 'User Access Administrator', TRUE, 3),
    ('4f95f102-be12-4569-8e7d-ec6068aeab5c', '7f52578b-3e27-4401-9123-59290587c217', 'Contributor', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f3fc7c5f-12cf-4414-a615-19e5dc381040', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'A Contoso developer needs Contributor access only on a single test virtual machine, without access to the other resources in the resource group that contains it (such as the shared database). What is the best role assignment practice?',
        'D is correct: applying the principle of least privilege by assigning the Contributor role at the most precise scope possible (the VM resource itself) grants exactly the access needed, without exposing the group''s other resources such as the shared database. A is incorrect because this would grant access to every resource in every resource group of the subscription, far beyond what''s needed. B is incorrect because this would grant access to all resources in the group, including the shared database the developer should not be able to manage, due to role assignment inheritance. C is incorrect because the Owner role is even more permissive than Contributor (with the added ability to delegate access), worsening the over-provisioning problem.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7fb6e9cb-dbad-4ccc-8b46-f2f6f94eecea', 'f3fc7c5f-12cf-4414-a615-19e5dc381040', 'Assign the Owner role at the resource group level', FALSE, 1),
    ('0ac4f461-c2e0-4243-9ca2-d9a179df7643', 'f3fc7c5f-12cf-4414-a615-19e5dc381040', 'Assign the Contributor role directly on the virtual machine resource', TRUE, 2),
    ('9a59fbe7-8076-4a94-9181-b5c5d46f8846', 'f3fc7c5f-12cf-4414-a615-19e5dc381040', 'Assign the Contributor role at the resource group level', FALSE, 3),
    ('3f818947-c547-4e16-a341-f96f08772527', 'f3fc7c5f-12cf-4414-a615-19e5dc381040', 'Assign the Contributor role at the subscription level', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('eefe4bff-ba25-4dd3-a60e-8b023fd91d33', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso needs a role that lets a team restart and monitor virtual machines, without being able to create them, delete them, or modify their network configuration. No built-in Azure RBAC role exactly matches this precise need. What is the best approach?',
        'D is correct: when built-in roles don''t exactly meet a specific permissions need (such as restarting and monitoring without being able to create, delete, or modify the network), Azure RBAC lets you create a custom role that precisely defines the desired Actions and NotActions. A is incorrect because the Contributor role would grant far more permissions than needed, including the ability to create, delete, and modify network configuration. B is incorrect because the Reader role wouldn''t even allow restarting the virtual machines, a management action that goes beyond simple viewing. C is incorrect because temporarily assigning the Owner role is a risky, disproportionate practice to avoid even temporarily, whereas a precise, permanent custom role is the appropriate solution.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('eca120c4-a50b-4310-9207-5b54d361bc3d', 'eefe4bff-ba25-4dd3-a60e-8b023fd91d33', 'Assign the Contributor role, which is the closest match', FALSE, 1),
    ('1b96c23e-af17-4c0b-95cc-c8733e4807eb', 'eefe4bff-ba25-4dd3-a60e-8b023fd91d33', 'Assign the Reader role, which is the safest by default', FALSE, 2),
    ('eade5404-a8c2-4fef-9e69-d7d537ed5ca6', 'eefe4bff-ba25-4dd3-a60e-8b023fd91d33', 'Temporarily assign the Owner role, then remove it after use', FALSE, 3),
    ('b75955ef-2ce4-46ae-b8e7-b7e51ac38a32', 'eefe4bff-ba25-4dd3-a60e-8b023fd91d33', 'Create a custom role defining exactly the actions allowed', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('433c6a04-c2c5-4865-9312-216dcc34c4ca', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'A Contoso administrator with the Contributor role on a subscription reports being unable to create new role assignments for other users, even though creating resources works normally for them. What is the most likely explanation for this behavior?',
        'B is correct: a role''s effective permissions are calculated by subtracting the operations listed in NotActions from those listed in Actions; the Contributor role allows all control-plane operations except certain explicit exclusions, including creating and deleting role assignments, which exactly explains the observed behavior. A is incorrect because a disabled account could not create resources either, contradicting the statement that this action works normally. C is incorrect because a reached resource limit would prevent resource creation, not role assignment management, which is a separate operation. D is incorrect because the Contributor role is a very real, commonly used built-in role in Azure RBAC.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e509cf93-c601-4f5e-92c0-29d429df513c', '433c6a04-c2c5-4865-9312-216dcc34c4ca', 'The Contributor role includes a NotActions operation that explicitly excludes managing role assignments', TRUE, 1),
    ('58ba77fb-c660-46af-8c6c-c6106bbd7133', '433c6a04-c2c5-4865-9312-216dcc34c4ca', 'The administrator''s account is disabled', FALSE, 2),
    ('f95bb301-a97d-4099-8301-964ad32ecddf', '433c6a04-c2c5-4865-9312-216dcc34c4ca', 'The subscription has reached its resource limit', FALSE, 3),
    ('b05b3c47-13c4-4e20-8c75-ac49e2d2bd52', '433c6a04-c2c5-4865-9312-216dcc34c4ca', 'The Contributor role doesn''t exist in Azure RBAC', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('29fbd678-7041-48e7-914c-a5c4939d9953', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'A Contoso user was assigned the Reader role at the subscription level. Another administrator is surprised to find that this user can also view the resources of a specific resource group in that subscription, even though no role assignment was created directly on that resource group. What is the correct explanation for this behavior?',
        'C is correct: Azure RBAC scopes are structured in a parent-child relationship, and a role assigned at a parent scope (such as a subscription) is automatically inherited by all child scopes it contains, including its resource groups and their resources; this is normal, expected behavior, not an error. A is incorrect because this behavior is the normal, documented functioning of RBAC inheritance, not an error. B is incorrect because an assignment at the subscription level only extends to that specific subscription and its contents, not to other subscriptions in the tenant. D is incorrect because there''s no need to assume a hidden assignment: natural inheritance between parent-child scopes fully explains the observed behavior.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1691b27f-53d7-4f89-95de-4b44d7262540', '29fbd678-7041-48e7-914c-a5c4939d9953', 'Role assignments at a parent scope (the subscription) are automatically inherited by child scopes (the resource groups and resources they contain)', TRUE, 1),
    ('a5a6120f-b5ed-474d-b4d8-1f32e696b24a', '29fbd678-7041-48e7-914c-a5c4939d9953', 'The Reader role automatically applies to every subscription in the tenant', FALSE, 2),
    ('fd5498d3-3243-4ffa-b282-882a6461dfc5', '29fbd678-7041-48e7-914c-a5c4939d9953', 'This is necessarily a configuration error that must be corrected immediately', FALSE, 3),
    ('1ef20a3a-b53f-4e41-9436-f389ccfe6542', '29fbd678-7041-48e7-914c-a5c4939d9953', 'The user necessarily has a second, hidden role assignment', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b81878b7-2085-425f-b554-684487abf65c', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'An external consultant at Contoso has finished their engagement and must no longer have access to the resources in the "RG-Project" resource group. What is the correct action to take in Azure RBAC to precisely revoke their access, without affecting other users who have access to the same resource group?',
        'B is correct: to revoke access previously granted via Azure RBAC, you simply delete the consultant''s specific role assignment in the Access control (IAM) pane, which removes their access without affecting resources or other users. A is incorrect because this would delete every resource in the group, a wildly disproportionate effect compared to revoking one person''s access. C is incorrect because disabling the subscription would cut off access for every user and stop every resource, not just the consultant''s. D is incorrect because changing every user''s password has nothing to do with revoking an RBAC role assignment and would needlessly penalize other legitimate users.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5131f18d-54fc-4213-afca-06078d05cf1e', 'b81878b7-2085-425f-b554-684487abf65c', 'Disable the relevant Azure subscription', FALSE, 1),
    ('31710710-c343-43d0-9a38-375a161334c8', 'b81878b7-2085-425f-b554-684487abf65c', 'Delete the entire "RG-Project" resource group', FALSE, 2),
    ('a85fe675-042d-43da-b1a0-e5fa6c4519ad', 'b81878b7-2085-425f-b554-684487abf65c', 'Delete the consultant''s role assignment in the resource group''s Access control (IAM) pane', TRUE, 3),
    ('e1233bd2-e941-4902-8729-52059617201d', 'b81878b7-2085-425f-b554-684487abf65c', 'Change the password of every user with access to this resource group', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b74d29d7-2c79-4c19-b0f1-fa7f136e6e3b', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso wants to let signed-out users reset a forgotten password themselves via SSPR. The company currently uses Microsoft Entra ID Free. What is the first step required before configuring SSPR for this scenario?',
        'D is correct: SSPR for signed-out users (forgotten or expired password) requires a Microsoft Entra ID P1 or P2 edition, or a Microsoft 365 edition that includes this feature; Entra ID Free does not allow it. A is incorrect because this statement is false: an appropriate license is essential for this specific scenario. C is incorrect because Domain Services provides legacy domain services and has nothing to do with SSPR. B is incorrect because management groups are used for governing Azure subscriptions, not for configuring SSPR, which is done at the Microsoft Entra ID tenant level.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d3047c08-8ee2-4bc2-91b8-337dd9a762e9', 'b74d29d7-2c79-4c19-b0f1-fa7f136e6e3b', 'Upgrade the tenant to Microsoft Entra ID P1 or P2 (or have a Microsoft 365 license that includes SSPR)', TRUE, 1),
    ('98c830a4-b221-4e04-88f4-57c1f6888451', 'b74d29d7-2c79-4c19-b0f1-fa7f136e6e3b', 'Create a management group dedicated to SSPR', FALSE, 2),
    ('bd610d02-6c4b-4453-882a-9f5dc2ecac2a', 'b74d29d7-2c79-4c19-b0f1-fa7f136e6e3b', 'No step is required, SSPR is available with every edition including Free', FALSE, 3),
    ('4e95eade-8195-47d3-a2d1-5aac66072cbb', 'b74d29d7-2c79-4c19-b0f1-fa7f136e6e3b', 'Deploy Microsoft Entra Domain Services', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('da357bb8-c5cf-40e3-be08-16dc642d50a7', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso wants to pilot SSPR with a group of 20 users from the marketing department before rolling it out to all 3,000 employees in the organization. Which SSPR deployment setting should the administrator configure?',
        'C is correct: the "Selected" setting limits SSPR to members of a specific security group, exactly matching a targeted pilot rollout before a broader organization-wide launch. A is incorrect because "All" would immediately enable SSPR for all 3,000 employees, with no pilot phase. B is incorrect because "None" completely disables SSPR, preventing even the pilot group from testing it. D is incorrect because limiting SSPR to administrators doesn''t match the scenario, which aims to test the feature with standard marketing department users.', 46, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b9fbd58e-1c42-4cb2-a69e-aa3aae1fecc7', 'da357bb8-c5cf-40e3-be08-16dc642d50a7', 'Self-service password reset enabled set to "None"', FALSE, 1),
    ('0bb56c80-b29e-49ce-afa4-63351deea03b', 'da357bb8-c5cf-40e3-be08-16dc642d50a7', 'Enable SSPR only for accounts with an administrator role', FALSE, 2),
    ('657e8112-78ff-447a-8d44-a9d0224a7789', 'da357bb8-c5cf-40e3-be08-16dc642d50a7', 'Self-service password reset enabled set to "Selected," with the pilot security group specified', TRUE, 3),
    ('08cec09b-4649-4639-bf97-879cd135d3ed', 'da357bb8-c5cf-40e3-be08-16dc642d50a7', 'Self-service password reset enabled set to "All"', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('43674a79-df3d-4124-9409-326b00bcda7b', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso''s security team wants to minimize the risk of SMS fraud while still ensuring that users without a smartphone can reset their password via SSPR. Which combination of authentication methods should be prioritized?',
        'C is correct: Microsoft recommends using the Authenticator app''s notification or code as the primary method, while also enabling backup methods such as email or office phone for users without a mobile device, meeting both the security and accessibility requirements. A is incorrect because the Mobile phone (SMS) method is not recommended due to the risk of fraudulent SMS messages, the opposite of what the security team wants. B is incorrect because security questions are the least recommended method by Microsoft, since the answers may be known to other people. D is incorrect because relying on a single method goes against Microsoft''s recommendation to enable at least two reset request methods.', 47, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('97eed961-edc5-4e2c-957f-731f684ddb4a', '43674a79-df3d-4124-9409-326b00bcda7b', 'No secondary method is necessary if work email is enabled', FALSE, 1),
    ('afd994f9-1d4f-4dc3-a02e-9970c748b700', '43674a79-df3d-4124-9409-326b00bcda7b', 'Mobile phone (SMS) only, as the sole and primary method', FALSE, 2),
    ('0ad39a75-d4c8-4253-a3b3-ae0e672f9334', '43674a79-df3d-4124-9409-326b00bcda7b', 'Security questions only', FALSE, 3),
    ('6e8a4c7f-ff09-4344-8bd9-00c63a289cf0', '43674a79-df3d-4124-9409-326b00bcda7b', 'Authenticator app notification or code as the primary method, with email or office phone offered as a backup', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d983d39a-2e7b-486c-83ff-00c92f2c56ad', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'An administrator at Contoso configured SSPR to require a single authentication method for all users. An account with an administrator role tries to use only security questions to reset its password, but the operation consistently fails. What is the most likely cause of this failure?',
        'C is correct: regardless of the configuration set for standard users, a strong two-method authentication strategy is always applied to accounts with an administrator role for SSPR, and the Security questions method is additionally not available for these accounts; this explains both the failure with a single method and the failure with security questions specifically. A is incorrect because this behavior is an expected, documented outcome, not a one-off technical glitch. B is incorrect because Entra ID Free wouldn''t even allow SSPR for forgotten passwords at all, yet here SSPR works fine for other users, indicating an appropriate license is in place. D is incorrect because SSPR is indeed available for administrator accounts, but with specific, stronger authentication requirements.', 48, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9a4d1d0d-8eb1-419e-804d-b204a7edb503', 'd983d39a-2e7b-486c-83ff-00c92f2c56ad', 'SSPR is never available for accounts with an administrator role', FALSE, 1),
    ('9ff44472-3a4e-4b6a-ad6a-1eaf0d7ed6af', 'd983d39a-2e7b-486c-83ff-00c92f2c56ad', 'Accounts with an administrator role always require strong two-method authentication for SSPR, and the Security questions method is not available for them', TRUE, 2),
    ('8d7223d7-b3ce-43af-94ff-1ac52d9699d8', 'd983d39a-2e7b-486c-83ff-00c92f2c56ad', 'The account does not have a Microsoft Entra ID Free license', FALSE, 3),
    ('379692a1-0d35-4c1b-b55f-b537a4bd9cc5', 'd983d39a-2e7b-486c-83ff-00c92f2c56ad', 'This is a temporary Azure portal error, unrelated to the configuration', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7ed1296c-46e6-435f-a7c3-6477fc154e5e', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso operates in a hybrid environment with an on-premises Active Directory synchronized to Microsoft Entra ID. The company wants password resets performed via SSPR in the cloud to also be reflected in the on-premises directory, so the user can then sign in to their Windows workstation with the new password. Which feature should the administrator enable?',
        'C is correct: password writeback to the on-premises directory can be deployed via Microsoft Entra Connect or cloud sync, allowing a password change made in the cloud via SSPR to be reflected back to the on-premises Active Directory. A is incorrect because default synchronization is one-directional (from on-premises to cloud); writeback must be explicitly configured for the reverse direction. B is incorrect because Domain Services provides an independent managed domain service and has no role in writing passwords back to an existing on-premises AD. D is incorrect because a dynamic group manages group membership based on attribute rules, unrelated to password synchronization.', 49, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e648a0ac-6a77-4340-82e0-bd3125e53d3b', '7ed1296c-46e6-435f-a7c3-6477fc154e5e', 'No additional configuration is needed, synchronization is automatic in both directions by default', FALSE, 1),
    ('ef5fe5a9-3bd8-4cc5-8876-4cf30f7aa192', '7ed1296c-46e6-435f-a7c3-6477fc154e5e', 'Password writeback, deployed via Microsoft Entra Connect or cloud sync', TRUE, 2),
    ('a6d57572-b9cf-4f65-9d35-04942abd8d49', '7ed1296c-46e6-435f-a7c3-6477fc154e5e', 'A dynamic membership group', FALSE, 3),
    ('7320044e-a1a8-4f76-ba0c-d3cdb0600ba0', '7ed1296c-46e6-435f-a7c3-6477fc154e5e', 'Microsoft Entra Domain Services', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e163a60b-574b-436e-9269-994abb61512f', '8014b3e5-a38f-4c62-838b-d49e6333c4c2', 'SINGLE_CHOICE', 'Contoso''s security team wants to be notified every time an account with an administrator role resets its own password via SSPR, in order to quickly spot potentially malicious activity in case a privileged account is compromised. Which SSPR notification setting should the administrator enable?',
        'D is correct: this notification setting specifically informs all administrators when another administrator resets their password, allowing quick detection of suspicious activity on a privileged account, exactly the security team''s stated need. A is incorrect because this setting notifies the user themselves of their own reset (useful in case of a fraudulent reset by a third party), but does not notify other administrators as requested. C is incorrect because this setting does indeed exist in Microsoft Entra ID''s SSPR configuration. B is incorrect because disabling notifications would go against the detection goal sought by the security team.', 50, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('044c7441-b940-4618-b7e1-64b1de3b46ed', 'e163a60b-574b-436e-9269-994abb61512f', 'Disable all notifications to reduce noise', FALSE, 1),
    ('c4856448-97b7-449c-88b7-3fff9a2ad2e2', 'e163a60b-574b-436e-9269-994abb61512f', 'No notification setting covers this scenario', FALSE, 2),
    ('d6a25a8d-4454-470c-823d-25cb12e12c91', 'e163a60b-574b-436e-9269-994abb61512f', 'Notify users when they reset their own password', FALSE, 3),
    ('cb4a9a0c-650f-4a81-983a-3a299a498a0b', 'e163a60b-574b-436e-9269-994abb61512f', 'Notify all admins when other admins reset their password', TRUE, 4);
