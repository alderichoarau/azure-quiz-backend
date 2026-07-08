-- Module 5 - Identity, Access, Security & Cost Management (real AZ-900 content)
-- Standard questions + explanations sourced from AZ900_ANSWER_KEY_Formateur.docx
-- Scenario questions sourced from Module_05_Scenarios_AZ900.docx; that document has no
-- written answer key (trainer corrects live), so their correct answers/explanations were
-- determined from AZ-900 fundamentals rather than copied from an official source - please
-- give them a quick review.

INSERT INTO module (id, certification_id, code, title, description, position)
VALUES ('0978a83f-fa14-4dd8-8ef1-13315847f42d', '00000000-0000-0000-0000-000000000001', 'module-05-identity-access-security-cost', 'Module 5 - Identity, Access, Security & Cost Management',
        'Microsoft Entra ID, MFA, Conditional Access, RBAC, Zero Trust, Defender, Cost Tools.', 5);

-- Standard MCQ / True-False questions
INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e26e3e40-f9d0-4253-a942-3aef15c9239a', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'What is Microsoft Entra ID (formerly Azure Active Directory)?',
        'Microsoft Entra ID is a cloud-based identity and access management (IAM) service that authenticates and authorizes users and apps.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2a28b488-f166-4374-8bbd-db3af1b37040', 'e26e3e40-f9d0-4253-a942-3aef15c9239a', 'A file storage service', FALSE, 1),
    ('003501e1-9981-4e19-8e59-53116853f333', 'e26e3e40-f9d0-4253-a942-3aef15c9239a', 'A cloud-based identity and access management service', TRUE, 2),
    ('ed228e95-ae4a-432a-87f8-207a318a80f6', 'e26e3e40-f9d0-4253-a942-3aef15c9239a', 'A virtual network service', FALSE, 3),
    ('fe8464b1-167e-41b8-988e-8f8644869513', 'e26e3e40-f9d0-4253-a942-3aef15c9239a', 'A compute service', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c681697f-ef39-4a83-94fa-48474a863de4', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'What is Multi-Factor Authentication (MFA)?',
        'MFA requires users to provide two or more verification factors (something you know, have, or are) to gain access, reducing the risk of compromised credentials.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6b1601ef-39d5-43bd-ae6a-38621ab3fcca', 'c681697f-ef39-4a83-94fa-48474a863de4', 'Using multiple passwords', FALSE, 1),
    ('d2863d55-9790-438d-9730-d3f8a04c22a4', 'c681697f-ef39-4a83-94fa-48474a863de4', 'A security process requiring more than one verification factor to prove identity', TRUE, 2),
    ('8de73da1-029e-4614-beb4-251570784c57', 'c681697f-ef39-4a83-94fa-48474a863de4', 'A type of firewall', FALSE, 3),
    ('3afc9268-82dd-40bf-ad95-d880c17e0959', 'c681697f-ef39-4a83-94fa-48474a863de4', 'A storage encryption method', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b13128fb-9bbd-4fe9-ad6e-e5228ad5284a', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'What is the difference between Authentication and Authorization in Microsoft Entra ID?',
        'Authentication (AuthN) verifies who you are. Authorization (AuthZ) determines what you''re permitted to do after your identity is verified.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('eff42904-0628-4c9e-800f-f27833ebeb16', 'b13128fb-9bbd-4fe9-ad6e-e5228ad5284a', 'Authentication grants permissions; Authorization verifies identity', FALSE, 1),
    ('b130f0ba-5e38-4197-a9f1-e9987a083019', 'b13128fb-9bbd-4fe9-ad6e-e5228ad5284a', 'Authentication verifies identity; Authorization determines what you can do', TRUE, 2),
    ('6fef4f56-6d1d-436e-9315-06fbac9ae1a4', 'b13128fb-9bbd-4fe9-ad6e-e5228ad5284a', 'They are the same thing', FALSE, 3),
    ('5b11d2a8-ddf2-40f7-83a5-59d4475c826f', 'b13128fb-9bbd-4fe9-ad6e-e5228ad5284a', 'Authorization happens before Authentication', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('44d181f9-98f1-41fb-9207-b837e63540df', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'What is Azure Role-Based Access Control (RBAC)?',
        'Azure RBAC allows you to grant users, groups, and apps the specific access they need to Azure resources by assigning roles at a specific scope.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ff2b6e0a-2d5a-498c-8bdc-f212162a7293', '44d181f9-98f1-41fb-9207-b837e63540df', 'A firewall rule system', FALSE, 1),
    ('6fe63432-f4ee-49a6-8e5f-a549b8bec5bf', '44d181f9-98f1-41fb-9207-b837e63540df', 'A system that grants access to Azure resources based on assigned roles', TRUE, 2),
    ('c0b25c79-47cc-4249-84c0-d8d42110cf11', '44d181f9-98f1-41fb-9207-b837e63540df', 'A network segmentation tool', FALSE, 3),
    ('d508faea-0223-4bca-9804-ddc6420d694e', '44d181f9-98f1-41fb-9207-b837e63540df', 'A multi-factor authentication method', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d3ca8939-d0c5-497f-bbb6-6148a49df72b', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'What is Conditional Access in Microsoft Entra ID?',
        'Conditional Access uses signals (user location, device, risk) to enforce access policies — granting, blocking, or requiring MFA based on conditions.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5b67c4c9-e3e2-47d7-82bc-89cf850a69ac', 'd3ca8939-d0c5-497f-bbb6-6148a49df72b', 'A VPN configuration tool', FALSE, 1),
    ('9b2ad6e1-495c-4eb4-8551-548d348b7c08', 'd3ca8939-d0c5-497f-bbb6-6148a49df72b', 'Policies that enforce access controls based on conditions such as user location, device state, or risk level', TRUE, 2),
    ('e9aa9d6a-379a-4dd7-b735-c4ad46947dce', 'd3ca8939-d0c5-497f-bbb6-6148a49df72b', 'A file encryption service', FALSE, 3),
    ('759d7766-f98b-434b-b114-e29c58efbcde', 'd3ca8939-d0c5-497f-bbb6-6148a49df72b', 'A storage access tier', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('68318762-e08d-4721-a3a0-1370c7791935', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'What is the Zero Trust security model?',
        'Zero Trust assumes breach and verifies every request explicitly, applies least privilege access, and uses microsegmentation.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1885ef46-aab2-4ec6-ad17-d66f4669171b', '68318762-e08d-4721-a3a0-1370c7791935', 'Trust all internal network traffic', FALSE, 1),
    ('ef1bf4f3-eeb7-4a4e-9420-e6f5ca7e2db5', '68318762-e08d-4721-a3a0-1370c7791935', 'Never trust, always verify — every request must be authenticated and authorized regardless of location', TRUE, 2),
    ('9996e7b6-a5ac-4bb4-be07-5a5a409e9f59', '68318762-e08d-4721-a3a0-1370c7791935', 'Trust all devices connected to the corporate network', FALSE, 3),
    ('8a2072c1-6f42-4cfc-ae4f-2a0dd2848e68', '68318762-e08d-4721-a3a0-1370c7791935', 'Block all external access', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('01971e28-fabd-4335-86ab-136e25325cf6', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'What is Microsoft Defender for Cloud?',
        'Microsoft Defender for Cloud provides security posture management and threat protection across Azure, hybrid, and multi-cloud environments.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cfcf244e-aa2b-4583-8c3a-5f698ea733b9', '01971e28-fabd-4335-86ab-136e25325cf6', 'An antivirus software for Azure VMs', FALSE, 1),
    ('b19bd46f-5537-42a2-a6e5-666192fae7f8', '01971e28-fabd-4335-86ab-136e25325cf6', 'A cloud security posture management (CSPM) and cloud workload protection platform (CWPP) service', TRUE, 2),
    ('360b44ec-4e8d-42f1-9e1d-194bfeb7744f', '01971e28-fabd-4335-86ab-136e25325cf6', 'A backup service', FALSE, 3),
    ('7dada463-5e32-4772-85ce-14b8cd8bc442', '01971e28-fabd-4335-86ab-136e25325cf6', 'A network firewall', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('704265cb-3468-4ccb-81a2-e571ac7a03a7', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'Which Azure service is used to apply a single identity across cloud and on-premises resources?',
        'Hybrid Identity with Microsoft Entra ID extends on-premises Active Directory identities to the cloud using Azure AD Connect or cloud sync.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2299145f-c82a-4a50-af1a-091a86997a8f', '704265cb-3468-4ccb-81a2-e571ac7a03a7', 'Azure Key Vault', FALSE, 1),
    ('a7fa64ad-8584-4b21-9908-e96380df807c', '704265cb-3468-4ccb-81a2-e571ac7a03a7', 'Microsoft Entra ID (Azure AD) with Hybrid Identity', TRUE, 2),
    ('e164ff5f-8774-4ce5-a072-a304db004df2', '704265cb-3468-4ccb-81a2-e571ac7a03a7', 'Azure Policy', FALSE, 3),
    ('1ab11d22-d816-426d-88d1-842a2abadcde', '704265cb-3468-4ccb-81a2-e571ac7a03a7', 'Azure Blueprints', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9f540a51-c7c7-49be-9764-b467c9057fb6', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'What is Azure Key Vault?',
        'Azure Key Vault securely stores and controls access to secrets (passwords, API keys), encryption keys, and certificates.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('21951066-f751-4ab0-81e7-39e4bd2fcc9d', '9f540a51-c7c7-49be-9764-b467c9057fb6', 'A physical safe for server hardware', FALSE, 1),
    ('74946a8e-d7f3-4396-9cca-d579f3802a45', '9f540a51-c7c7-49be-9764-b467c9057fb6', 'A cloud service for securely storing and accessing secrets, keys, and certificates', TRUE, 2),
    ('e1ff34d0-fab3-4a60-881d-5a3c4780f2c1', '9f540a51-c7c7-49be-9764-b467c9057fb6', 'A role management tool', FALSE, 3),
    ('ca4a7412-48e5-418a-9816-db16d35f3cb8', '9f540a51-c7c7-49be-9764-b467c9057fb6', 'A cost management service', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d75bdac9-6f28-4140-b29e-b25785d06f23', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'Which RBAC built-in role allows a user to manage Azure resources but NOT assign roles to others?',
        'The Contributor role allows managing resources but doesn''t grant the ability to assign roles. Owner includes both management and role assignment.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('baa3f58c-b44e-4c14-bd02-2cc22c2fc6b2', 'd75bdac9-6f28-4140-b29e-b25785d06f23', 'Owner', FALSE, 1),
    ('7554485e-3514-44b1-8e58-38ba5c59fa64', 'd75bdac9-6f28-4140-b29e-b25785d06f23', 'Contributor', TRUE, 2),
    ('2e3fd784-b34a-4309-816e-83005c5157c1', 'd75bdac9-6f28-4140-b29e-b25785d06f23', 'Reader', FALSE, 3),
    ('deb219f5-69f5-45e5-bc3c-e3d1c0ed889e', 'd75bdac9-6f28-4140-b29e-b25785d06f23', 'User Access Administrator', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d59c5409-e4b7-4548-af5a-c490ff213a7f', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'What does the Azure Pricing Calculator help with?',
        'The Azure Pricing Calculator lets you configure expected Azure services and see an estimated monthly cost before provisioning anything.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('419d14e5-158b-4a50-85d5-36388edaddd8', 'd59c5409-e4b7-4548-af5a-c490ff213a7f', 'Calculating on-premises hardware costs', FALSE, 1),
    ('fa9497bb-5883-4cc2-8f88-cc5c18cd058a', 'd59c5409-e4b7-4548-af5a-c490ff213a7f', 'Estimating the expected monthly cost of Azure services before deployment', TRUE, 2),
    ('fe096408-53fe-4e55-8e30-8de54e986557', 'd59c5409-e4b7-4548-af5a-c490ff213a7f', 'Tracking actual spending on Azure', FALSE, 3),
    ('48a680d5-a375-490f-8227-6b4c2e679d5a', 'd59c5409-e4b7-4548-af5a-c490ff213a7f', 'Comparing Azure and AWS prices', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ed74d94e-dbaf-4fbd-aa1e-e9a690b8f246', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'What does the Azure Total Cost of Ownership (TCO) Calculator help with?',
        'The TCO Calculator helps organizations compare on-premises costs (hardware, software, facilities, labor) against running the same workloads in Azure.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a92cb3d1-6040-43fe-aa67-f2d927a9901a', 'ed74d94e-dbaf-4fbd-aa1e-e9a690b8f246', 'Estimating Azure service prices', FALSE, 1),
    ('2a17573d-841f-4a4b-a305-8f0a74eb5f37', 'ed74d94e-dbaf-4fbd-aa1e-e9a690b8f246', 'Comparing the cost of running workloads on-premises versus in Azure', TRUE, 2),
    ('3872f66f-4f15-42d4-a0be-456f31570526', 'ed74d94e-dbaf-4fbd-aa1e-e9a690b8f246', 'Managing actual Azure spending', FALSE, 3),
    ('57a99386-51db-43d7-84e8-680ff7b33172', 'ed74d94e-dbaf-4fbd-aa1e-e9a690b8f246', 'Forecasting future Azure bills', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('63425800-092f-4da9-8f80-1473bf350de1', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'What is Azure Cost Management + Billing?',
        'Azure Cost Management + Billing helps monitor, allocate, and optimize cloud spending with budgets, alerts, and cost analysis.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('45691d36-4a6b-4db0-9233-a8424b3dff1f', '63425800-092f-4da9-8f80-1473bf350de1', 'A service to encrypt billing data', FALSE, 1),
    ('8a3aef43-508b-4e38-a7cd-8c1b27c13bd8', '63425800-092f-4da9-8f80-1473bf350de1', 'A tool to monitor, analyze, and optimize Azure spending', TRUE, 2),
    ('926fab0c-e619-44e6-a91f-d3d939e709b0', '63425800-092f-4da9-8f80-1473bf350de1', 'A hardware cost estimation tool', FALSE, 3),
    ('30b5e796-e588-4111-a610-98e14c74841f', '63425800-092f-4da9-8f80-1473bf350de1', 'A subscription management portal', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d71adc72-8a62-4b5c-a5c8-40b908a52f91', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'Which factor does NOT typically affect the cost of Azure services?',
        'The portal''s visual theme has no bearing on cost. Region, data egress, and SKU tier all directly affect pricing.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9132bd38-5a45-42f9-ad49-b359e150cc96', 'd71adc72-8a62-4b5c-a5c8-40b908a52f91', 'Azure region where the service is deployed', FALSE, 1),
    ('1ef1de59-9828-4e31-b128-ac806cbaed76', 'd71adc72-8a62-4b5c-a5c8-40b908a52f91', 'The color theme of the Azure Portal', TRUE, 2),
    ('c96a3e92-2280-478d-9fdf-c1607230d102', 'd71adc72-8a62-4b5c-a5c8-40b908a52f91', 'The amount of data transferred out of Azure', FALSE, 3),
    ('ab94156b-db94-499d-a905-68a6f74b8ee1', 'd71adc72-8a62-4b5c-a5c8-40b908a52f91', 'The Azure service tier or SKU selected', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('62fae888-d601-475a-8a60-492c9a200716', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'What is Microsoft Entra External Identities (B2B)?',
        'Microsoft Entra B2B allows external partners to sign in with their own organizational credentials to access your applications and resources.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('785bd280-323e-49e6-b9dd-3f6ce2872677', '62fae888-d601-475a-8a60-492c9a200716', 'A service for managing internal employee identities', FALSE, 1),
    ('bc3f7425-200d-4894-912a-efcff5650872', '62fae888-d601-475a-8a60-492c9a200716', 'A feature allowing partner organizations to use their own credentials to access your Azure resources', TRUE, 2),
    ('88800d2d-da46-4794-9564-a35622c2b24e', '62fae888-d601-475a-8a60-492c9a200716', 'A type of VPN', FALSE, 3),
    ('7a6be29b-24a3-4a4c-85f9-8c65c6914631', '62fae888-d601-475a-8a60-492c9a200716', 'A storage encryption feature', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8b8d7278-72bf-4aa4-8ac1-a47b3cf7c9af', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'What is the principle of Least Privilege in identity management?',
        'Least Privilege means users, apps, and services should only have the access rights necessary to perform their intended tasks — no more.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1f617009-67a7-4c6c-b795-a53b4dc24db8', '8b8d7278-72bf-4aa4-8ac1-a47b3cf7c9af', 'Granting all users full access', FALSE, 1),
    ('9146f80b-482c-4c97-b1e5-862a722bd62f', '8b8d7278-72bf-4aa4-8ac1-a47b3cf7c9af', 'Granting users only the minimum permissions needed to perform their job', TRUE, 2),
    ('9154cb71-4589-45d5-a56a-b07ac5ca4bff', '8b8d7278-72bf-4aa4-8ac1-a47b3cf7c9af', 'Denying all access by default', FALSE, 3),
    ('0d1e7702-9b90-4d7c-bd57-7787e279511f', '8b8d7278-72bf-4aa4-8ac1-a47b3cf7c9af', 'Trusting all internal users', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b9b2ed32-9c23-4e03-83ce-b9a0106ab093', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'Which Azure identity feature provides a sign-in risk score based on behavioral analytics and threat intelligence?',
        'Microsoft Entra ID Protection uses machine learning to detect risky sign-ins and user behavior, generating risk scores to trigger Conditional Access policies.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('741ce45b-eea5-4724-b60c-e46d2e26d998', 'b9b2ed32-9c23-4e03-83ce-b9a0106ab093', 'MFA', FALSE, 1),
    ('93d7c862-15af-4840-b445-b005a4bf9cc2', 'b9b2ed32-9c23-4e03-83ce-b9a0106ab093', 'Conditional Access', FALSE, 2),
    ('a09e078b-dfd8-4c1b-a53b-eab01f158622', 'b9b2ed32-9c23-4e03-83ce-b9a0106ab093', 'Microsoft Entra ID Protection', TRUE, 3),
    ('7982e51f-fa09-496a-950e-1bdc49f32a27', 'b9b2ed32-9c23-4e03-83ce-b9a0106ab093', 'Azure Key Vault', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1e3cb720-7373-4127-9266-79bea209ccd0', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'What is the scope hierarchy for Azure RBAC from broadest to narrowest?',
        'RBAC roles can be assigned at: Management Group > Subscription > Resource Group > Resource. Roles assigned at a broader scope are inherited by narrower scopes.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3092dbc5-3291-4631-a9d1-cc42d7376c0b', '1e3cb720-7373-4127-9266-79bea209ccd0', 'Resource > Resource Group > Subscription > Management Group', FALSE, 1),
    ('afeed758-8714-425c-a346-d19d0bac13f9', '1e3cb720-7373-4127-9266-79bea209ccd0', 'Management Group > Subscription > Resource Group > Resource', TRUE, 2),
    ('3b5362e3-c4a2-4f58-a39c-31ef2f8c0f49', '1e3cb720-7373-4127-9266-79bea209ccd0', 'Subscription > Management Group > Resource Group > Resource', FALSE, 3),
    ('d9e9deb1-ff7a-4f55-a54f-00265823719f', '1e3cb720-7373-4127-9266-79bea209ccd0', 'Resource Group > Subscription > Resource > Management Group', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('edfd9172-b9c2-440f-b4e7-7113130702f2', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'A company wants to ensure that data transferred between Azure regions (egress) is minimized to reduce costs. What strategy helps?',
        'Data egress (outbound data transfer between regions) is a cost driver. Keeping resources in the same region minimizes cross-region transfer costs.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b0621c04-09b3-404c-aa61-c353498b892b', 'edfd9172-b9c2-440f-b4e7-7113130702f2', 'Use premium storage', FALSE, 1),
    ('59bd772d-45fa-4b05-8261-8dbd2926c283', 'edfd9172-b9c2-440f-b4e7-7113130702f2', 'Deploy resources in the same region to minimize cross-region data transfers', TRUE, 2),
    ('67394ca0-2f5a-475a-978e-f2462aaa28e3', 'edfd9172-b9c2-440f-b4e7-7113130702f2', 'Use more Availability Zones', FALSE, 3),
    ('cb44092b-bf2c-41b6-8d90-a86078726b3c', 'edfd9172-b9c2-440f-b4e7-7113130702f2', 'Increase the number of subscriptions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('03b4384f-143a-434c-9d76-0ff2776f53cb', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'Which tool allows you to set spending limits and receive alerts when costs reach a defined threshold in Azure?',
        'Azure Cost Management Budgets allow setting cost thresholds and configuring alerts (email or action groups) when spending approaches or exceeds the budget.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('53bed80c-b231-410f-b83e-d47bbe071234', '03b4384f-143a-434c-9d76-0ff2776f53cb', 'Azure Pricing Calculator', FALSE, 1),
    ('7e960296-7304-4f5d-afb8-68f3c6ecd226', '03b4384f-143a-434c-9d76-0ff2776f53cb', 'Azure TCO Calculator', FALSE, 2),
    ('cddd8f6e-78a6-49f7-9bec-251879ec5c34', '03b4384f-143a-434c-9d76-0ff2776f53cb', 'Azure Cost Management Budgets', TRUE, 3),
    ('72b59818-0015-47f5-bb3a-4a98c6f68a8d', '03b4384f-143a-434c-9d76-0ff2776f53cb', 'Azure Policy', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0ac5fbf6-3d4b-4831-b693-2c36f361f704', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'MULTIPLE_CHOICE', 'Which TWO are valid authentication methods supported by Microsoft Entra ID MFA? (Choose 2)',
        'Microsoft Entra ID MFA supports: Authenticator app (push/TOTP), SMS codes, voice calls, FIDO2 keys, and Windows Hello for Business.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8a5e83e1-ffac-40f5-ae45-3b7ec6f87f2a', '0ac5fbf6-3d4b-4831-b693-2c36f361f704', 'Microsoft Authenticator app push notification', TRUE, 1),
    ('b18fa8e9-a865-4919-8b26-ae937a49aec6', '0ac5fbf6-3d4b-4831-b693-2c36f361f704', 'Fax message', FALSE, 2),
    ('38a627a1-692e-40c1-b953-2c8fa4f5e80a', '0ac5fbf6-3d4b-4831-b693-2c36f361f704', 'SMS text message code', TRUE, 3),
    ('3c093ee4-6915-4d2d-9e15-5b699bb40e5b', '0ac5fbf6-3d4b-4831-b693-2c36f361f704', 'Carrier pigeon', FALSE, 4),
    ('380bd28a-a903-450e-a73a-b61c6acbaa5e', '0ac5fbf6-3d4b-4831-b693-2c36f361f704', 'Weekly email digest', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('45b8269b-9ae2-4d9a-aef6-2dd30d6331dd', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'MULTIPLE_CHOICE', 'Which TWO statements about Azure RBAC are correct? (Choose 2)',
        'RBAC is scope-based and additive: permissions combine across role assignments. Deny assignments are separate (and less common than allows).', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ba6290e2-fb8c-468d-b4d7-e3cf10f49fd1', '45b8269b-9ae2-4d9a-aef6-2dd30d6331dd', 'RBAC roles are assigned at a scope (management group, subscription, resource group, or resource)', TRUE, 1),
    ('689ce00b-41ac-478f-8135-3470ca3eaf5c', '45b8269b-9ae2-4d9a-aef6-2dd30d6331dd', 'RBAC permissions are additive — if you have multiple role assignments, your effective permissions are the union of all', TRUE, 2),
    ('520f9dce-42ea-41fc-ab62-272284c23bfb', '45b8269b-9ae2-4d9a-aef6-2dd30d6331dd', 'RBAC denies take precedence over allows in all cases', FALSE, 3),
    ('de4343e5-ff6d-4d7a-96d8-2ae9cadb3eb7', '45b8269b-9ae2-4d9a-aef6-2dd30d6331dd', 'RBAC can only be assigned to individual users, not groups', FALSE, 4),
    ('6c6e733a-a376-44ce-92ce-0aceb9b3d4e1', '45b8269b-9ae2-4d9a-aef6-2dd30d6331dd', 'RBAC assignments cannot be inherited from parent scopes', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3e7cd080-7df2-4479-8300-ebfd161bc372', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'MULTIPLE_CHOICE', 'Which TWO factors can Conditional Access policies use as signals to enforce access controls? (Choose 2)',
        'Conditional Access signals include user/group identity, location (IP/named location), device state, application being accessed, and real-time risk.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('07e1302d-0c50-4491-a5df-08564a523c74', '3e7cd080-7df2-4479-8300-ebfd161bc372', 'User location (IP address / named location)', TRUE, 1),
    ('b357ce0d-13b2-4b91-aafd-ceab16ff13b6', '3e7cd080-7df2-4479-8300-ebfd161bc372', 'Device compliance state', TRUE, 2),
    ('ce41b681-abdf-4754-9e55-b0ed39ab8f70', '3e7cd080-7df2-4479-8300-ebfd161bc372', 'The user''s favorite color', FALSE, 3),
    ('4ed46383-5d97-4811-b935-f5e9964f614e', '3e7cd080-7df2-4479-8300-ebfd161bc372', 'Storage account redundancy level', FALSE, 4),
    ('63080ac6-473e-49c1-9c39-147cf832fe95', '3e7cd080-7df2-4479-8300-ebfd161bc372', 'Azure region cost', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('83fd1b13-223d-4b1b-ae3a-9014548ebfc6', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'MULTIPLE_CHOICE', 'Which TWO services help you estimate and manage Azure costs? (Choose 2)',
        'Azure Pricing Calculator estimates costs before deployment; Azure Cost Management + Billing monitors and optimizes actual spending.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2f9f8cdb-dc82-428d-ae6e-4ec43ab2d3de', '83fd1b13-223d-4b1b-ae3a-9014548ebfc6', 'Azure Pricing Calculator', TRUE, 1),
    ('00a55a8b-6d49-4290-afb7-22da68d996e5', '83fd1b13-223d-4b1b-ae3a-9014548ebfc6', 'Azure Policy', FALSE, 2),
    ('3e84466f-8717-4e9b-9117-3cc0b9803099', '83fd1b13-223d-4b1b-ae3a-9014548ebfc6', 'Azure Cost Management + Billing', TRUE, 3),
    ('ce4979c7-80a1-4bab-b459-a62dd4357223', '83fd1b13-223d-4b1b-ae3a-9014548ebfc6', 'Microsoft Entra ID', FALSE, 4),
    ('728e3845-b3e2-49a8-9c20-02e27765a0aa', '83fd1b13-223d-4b1b-ae3a-9014548ebfc6', 'Azure Firewall', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('50fb00e8-fc84-4208-9d9b-ecd69310bbbd', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'MULTIPLE_CHOICE', 'Which TWO are guiding principles of the Zero Trust security model? (Choose 2)',
        'Zero Trust principles: Verify explicitly (authenticate/authorize every request), Use least privilege (limit access scope), Assume breach (limit blast radius).', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('853e2d61-b7af-4f75-8856-006dc196a254', '50fb00e8-fc84-4208-9d9b-ecd69310bbbd', 'Trust all internal network traffic', FALSE, 1),
    ('eb1b3705-12ef-43eb-b65d-884225fe1cc3', '50fb00e8-fc84-4208-9d9b-ecd69310bbbd', 'Verify explicitly on every access request', TRUE, 2),
    ('d8382198-08b5-4a62-8ed9-ee0f1f534412', '50fb00e8-fc84-4208-9d9b-ecd69310bbbd', 'Use least privilege access', TRUE, 3),
    ('6adf1ad3-d227-44ca-b4c0-a37697b979f4', '50fb00e8-fc84-4208-9d9b-ecd69310bbbd', 'Allow all devices on the corporate network automatically', FALSE, 4),
    ('879e3b85-da5a-40dd-a28b-1e61671004cf', '50fb00e8-fc84-4208-9d9b-ecd69310bbbd', 'Disable multi-factor authentication for internal users', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f633ccf8-fc6d-4701-aa89-85fae4c72fee', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'TRUE_FALSE', 'In Azure RBAC, a role assigned at the Subscription scope applies to all Resource Groups and Resources within that Subscription.',
        'RBAC role assignments are inherited: a role at the subscription scope gives access to all resource groups and resources within that subscription.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ae176183-6337-42f8-94a4-f7577aa54c95', 'f633ccf8-fc6d-4701-aa89-85fae4c72fee', 'True', TRUE, 1),
    ('9a1cec37-60d4-47a8-8261-9f628c71f7ac', 'f633ccf8-fc6d-4701-aa89-85fae4c72fee', 'False', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('52bbff07-03ec-4470-8607-c2449735aca2', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'TRUE_FALSE', 'Azure Key Vault stores encryption keys and secrets in software only, without hardware-level protection options.',
        'Azure Key Vault offers both software-protected keys and HSM (Hardware Security Module)-protected keys for higher security requirements.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4af22a42-b434-42f3-ba90-6a1eb37f2e5f', '52bbff07-03ec-4470-8607-c2449735aca2', 'True', FALSE, 1),
    ('f4183d9a-82a6-4dce-b2fc-83ff77843599', '52bbff07-03ec-4470-8607-c2449735aca2', 'False', TRUE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a4f569c6-8cee-4a37-a7e4-0386f250f425', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'TRUE_FALSE', 'The Azure TCO Calculator shows you the actual current cost of your Azure resources.',
        'The TCO Calculator estimates comparative costs between on-premises and Azure. It doesn''t show actual Azure spending — that''s Azure Cost Management.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8d4c0b31-5df6-4726-9d1b-8fa0f0450b9a', 'a4f569c6-8cee-4a37-a7e4-0386f250f425', 'True', FALSE, 1),
    ('700ecfc7-ca03-4052-8d28-995ae739a788', 'a4f569c6-8cee-4a37-a7e4-0386f250f425', 'False', TRUE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8ef5e824-869e-48ce-8b4b-9476d9124f25', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'TRUE_FALSE', 'Microsoft Entra ID can be used to manage identities for both cloud and on-premises applications.',
        'Microsoft Entra ID supports hybrid identity, extending on-premises Active Directory to the cloud via Azure AD Connect or cloud sync.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c4f58651-2f78-4185-830f-7a28a77e40ad', '8ef5e824-869e-48ce-8b4b-9476d9124f25', 'True', TRUE, 1),
    ('04ef6fe0-0b84-40de-b277-ba566240a7dd', '8ef5e824-869e-48ce-8b4b-9476d9124f25', 'False', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('35f6a4dc-47a5-4871-9efe-bbedcd8ec327', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'TRUE_FALSE', 'With the Contributor RBAC role, a user can assign roles to other users in the same resource group.',
        'Contributor allows managing resources but NOT managing access (role assignments). Only Owner and User Access Administrator can assign roles.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bfe13cea-5993-4d6a-8ceb-1f156a05720f', '35f6a4dc-47a5-4871-9efe-bbedcd8ec327', 'True', FALSE, 1),
    ('cc4d97fc-bf4b-4681-9522-22be0351c7ac', '35f6a4dc-47a5-4871-9efe-bbedcd8ec327', 'False', TRUE, 2);

-- Scenario questions (answers derived from AZ-900 fundamentals, see note above)
INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2663e4f3-15bf-45d1-a718-312b343c9c89', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'A company''s security team wants to enforce the following access policy for Azure resources: users connecting from the corporate office (known IP range) can sign in with just their username and password, but users connecting from outside the corporate network must complete an additional verification step. The solution must meet the following requirements: - Different authentication requirements based on location. - MFA required for external access. - No additional steps for corporate network users. Which Microsoft Entra ID feature should they configure?',
        'Conditional Access lets you apply different authentication requirements (e.g. MFA) based on signals such as the user''s network location.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b3633878-9478-4f43-9e5f-ecf4d3e1f8e7', '2663e4f3-15bf-45d1-a718-312b343c9c89', 'Multi-Factor Authentication (always enforced)', FALSE, 1),
    ('4a105687-8c33-4411-9c52-93386c98b52d', '2663e4f3-15bf-45d1-a718-312b343c9c89', 'Azure RBAC', FALSE, 2),
    ('da842ad3-328a-4cc8-82d7-e6317833551b', '2663e4f3-15bf-45d1-a718-312b343c9c89', 'Conditional Access policies', TRUE, 3),
    ('4f78b6de-b889-4a5a-a4b5-52c5a760d5af', '2663e4f3-15bf-45d1-a718-312b343c9c89', 'Microsoft Entra ID Protection', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7edce2cb-b1aa-4b32-a241-75d4bee98d1c', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'A junior database administrator needs to view the configuration of all Azure SQL Databases in a resource group to prepare documentation. They must not be able to modify, delete, or create any resources. The solution must meet the following requirements: - View resource configurations only. - No ability to modify or delete. - Apply at resource group scope. Which RBAC role should be assigned?',
        'The Reader role grants read-only visibility into resource configurations without any ability to modify, delete, or create resources.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fa0e5354-3c17-45c8-8a61-5ddc037f29ed', '7edce2cb-b1aa-4b32-a241-75d4bee98d1c', 'Owner', FALSE, 1),
    ('6ba61e60-6e60-451e-b695-fd0e43279ee3', '7edce2cb-b1aa-4b32-a241-75d4bee98d1c', 'Contributor', FALSE, 2),
    ('e4ccf08a-9d97-4f51-93d7-f684d86d4a66', '7edce2cb-b1aa-4b32-a241-75d4bee98d1c', 'Reader', TRUE, 3),
    ('faeef657-67be-45a5-89f7-47c6f218a85c', '7edce2cb-b1aa-4b32-a241-75d4bee98d1c', 'User Access Administrator', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('aaa5cb2d-d76f-40e9-970c-f99eea6f8ef4', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'A DevOps engineer needs to deploy and manage Azure resources (VMs, storage, networking) in a production subscription. However, the engineer must NOT be able to assign Azure roles to other users or grant access to others. The solution must meet the following requirements: - Full resource management capability. - Cannot assign roles or manage access. - Apply at subscription scope. Which RBAC role should be assigned?',
        'The Contributor role allows full management of resources but explicitly does not allow assigning roles or managing access to others.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('337bcdd1-54eb-4453-8be6-05cf1079fa7b', 'aaa5cb2d-d76f-40e9-970c-f99eea6f8ef4', 'Owner', FALSE, 1),
    ('bb12866f-bfb6-4209-a540-b1a45c91a243', 'aaa5cb2d-d76f-40e9-970c-f99eea6f8ef4', 'Contributor', TRUE, 2),
    ('1ae36614-0b76-4a2c-8fcf-9ca9237717f9', 'aaa5cb2d-d76f-40e9-970c-f99eea6f8ef4', 'Reader', FALSE, 3),
    ('59d2db34-8461-4d7c-b7ad-24526e919280', 'aaa5cb2d-d76f-40e9-970c-f99eea6f8ef4', 'User Access Administrator', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('753aa3a2-cdbc-41c7-9832-32ccda4a1da6', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'An application running on an Azure VM needs to retrieve a database connection string stored securely in Azure. The security team prohibits storing any credentials in the application code or configuration files. The solution must meet the following requirements: - Application retrieves connection string securely. - No credentials in code or config files. - Managed, audited storage of secrets. Which combination of Azure services addresses this?',
        'Azure Key Vault combined with a Managed Identity lets a VM retrieve secrets securely at runtime without ever storing credentials in code or config.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5a27971d-edb2-4fb0-a2d8-eb34f4ab0cba', '753aa3a2-cdbc-41c7-9832-32ccda4a1da6', 'Store the connection string in Azure Blob Storage with public access', FALSE, 1),
    ('f9bc2fa9-72e3-4125-8a63-ea668ff3358e', '753aa3a2-cdbc-41c7-9832-32ccda4a1da6', 'Use Azure Key Vault with a Managed Identity on the VM', TRUE, 2),
    ('33baabcc-c7f7-450e-9a18-25bec93c46ca', '753aa3a2-cdbc-41c7-9832-32ccda4a1da6', 'Store credentials in Azure Table Storage', FALSE, 3),
    ('1e2b5132-9ef5-460b-9e7d-996d1ebfa7ff', '753aa3a2-cdbc-41c7-9832-32ccda4a1da6', 'Use an environment variable on the VM with the connection string', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a847f399-ed24-4883-91f0-a086bb7abe92', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'A company''s CFO wants to understand the financial impact of migrating their entire on-premises infrastructure to Azure before committing. They want to compare the cost of running workloads on-premises (hardware, power, datacenter space, staff) versus the equivalent cost on Azure. The solution must meet the following requirements: - Compare on-premises vs Azure costs. - Include hardware, power, facility, and labor costs. - Generate a business case report for the board. Which Azure tool should they use?',
        'The TCO Calculator is designed specifically to compare on-premises costs (hardware, power, facilities, labor) against the equivalent Azure costs.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b7010012-67e7-4d32-8260-fa9b314f2f67', 'a847f399-ed24-4883-91f0-a086bb7abe92', 'Azure Pricing Calculator', FALSE, 1),
    ('5db808a1-a31e-46b4-b326-41b8d4a3d8a5', 'a847f399-ed24-4883-91f0-a086bb7abe92', 'Azure Cost Management + Billing', FALSE, 2),
    ('a6e4cc06-b066-4970-961b-393d11a167c7', 'a847f399-ed24-4883-91f0-a086bb7abe92', 'Azure TCO Calculator', TRUE, 3),
    ('b528efaa-30f4-4c5d-aeeb-c170e232ce22', 'a847f399-ed24-4883-91f0-a086bb7abe92', 'Azure Advisor', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a2f35358-97b3-4568-8fec-9c0297ccb418', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'A solution architect is designing a new Azure environment. Before provisioning any resources, they need to estimate the monthly cost of: 10 D4s_v5 VMs in West Europe, 10 TB of Azure Blob Storage (GRS), and 1 Azure SQL Database (General Purpose, 8 vCores). The solution must meet the following requirements: - Cost estimate before deployment. - Specific services and configurations. - Monthly cost projection. Which tool should they use?',
        'The Azure Pricing Calculator lets you configure specific services and SKUs to get a monthly cost estimate before deploying anything.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('613ab35c-2ef6-49aa-bfcb-c2e893fcc684', 'a2f35358-97b3-4568-8fec-9c0297ccb418', 'Azure TCO Calculator', FALSE, 1),
    ('e0320ce8-b968-4b28-a84a-a55d7925aa73', 'a2f35358-97b3-4568-8fec-9c0297ccb418', 'Azure Cost Management + Billing', FALSE, 2),
    ('b55783dd-4acf-4e28-8a81-3f91f13e7ef4', 'a2f35358-97b3-4568-8fec-9c0297ccb418', 'Azure Advisor', FALSE, 3),
    ('ea5264bc-daf2-4e2d-8f57-2c30f42205ab', 'a2f35358-97b3-4568-8fec-9c0297ccb418', 'Azure Pricing Calculator', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bb37888c-f4db-4cab-8abe-a3b7ca49c152', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'A company''s Azure spending has been unpredictable. The finance team wants to be notified automatically when monthly Azure costs reach 80% of the $10,000 monthly budget, and again when they reach 100%. The solution must meet the following requirements: - Alert at 80% of monthly budget. - Alert at 100% of monthly budget. - Email notification to the finance team. Which Azure feature should they configure?',
        'Azure Cost Management Budgets let you define spending thresholds and configure alert rules that notify by email at defined percentages.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('dd58e537-714e-4a74-bfce-1814d55116f2', 'bb37888c-f4db-4cab-8abe-a3b7ca49c152', 'Azure Monitor metric alerts', FALSE, 1),
    ('0022f954-054b-464b-81e5-5a24ff54bd16', 'bb37888c-f4db-4cab-8abe-a3b7ca49c152', 'Azure Advisor cost recommendations', FALSE, 2),
    ('68a19ccb-98b9-4490-9a8b-1b745b8ebad2', 'bb37888c-f4db-4cab-8abe-a3b7ca49c152', 'Azure Cost Management Budgets with alert rules', TRUE, 3),
    ('43e82328-53b1-4aaa-b78a-8851b9741617', 'bb37888c-f4db-4cab-8abe-a3b7ca49c152', 'Azure Policy cost controls', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3e105434-39ee-4c31-a4b4-6976e399670f', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'A company''s security posture is being reviewed. The security architect recommends implementing a model where no user or service is inherently trusted, even if they are inside the corporate network. Every access request must be verified based on identity, device health, and location. Which security model does the architect recommend?',
        'Zero Trust assumes no implicit trust for any user or device, inside or outside the network, and verifies every request explicitly.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7e67c6f3-c7a7-4fd8-ba80-bc46ecf738ae', '3e105434-39ee-4c31-a4b4-6976e399670f', 'Defense-in-Depth', FALSE, 1),
    ('46681028-1972-43e1-b69f-39286923e0e6', '3e105434-39ee-4c31-a4b4-6976e399670f', 'Perimeter-based security (trusted internal network)', FALSE, 2),
    ('a46d2390-e11b-4a06-bab2-6a2b9c802920', '3e105434-39ee-4c31-a4b4-6976e399670f', 'Zero Trust', TRUE, 3),
    ('1780d287-b099-4d8b-8835-2f5c7aad556d', '3e105434-39ee-4c31-a4b4-6976e399670f', 'Role-Based Access Control', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9ce3daba-a0be-4dda-b007-c5f5fe8f1f52', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'An IT administrator needs to allow an external consultant to manage Azure Virtual Machines in a specific resource group for 2 months. The consultant should not have access to any other resources in the subscription. The principle of least privilege must be followed. The solution must meet the following requirements: - Manage VMs in one specific resource group only. - No access to other subscription resources. - Temporary (2 months). - Principle of least privilege. What is the most appropriate approach?',
        'Assigning the Virtual Machine Contributor role at the resource group scope grants exactly the access needed, following least privilege, for a limited time.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f7a330e0-f8b2-4740-892a-c94fbed47160', '9ce3daba-a0be-4dda-b007-c5f5fe8f1f52', 'Assign the Owner role at the subscription level', FALSE, 1),
    ('5276e45b-7219-4691-b708-b0c97b799b69', '9ce3daba-a0be-4dda-b007-c5f5fe8f1f52', 'Share the global admin credentials for 2 months', FALSE, 2),
    ('a458c615-2b04-405b-ac0d-cb4a1122176c', '9ce3daba-a0be-4dda-b007-c5f5fe8f1f52', 'Assign the Virtual Machine Contributor role at the resource group scope', TRUE, 3),
    ('4eb9b1e1-5d1c-468c-a8b3-ab0f577a7fd4', '9ce3daba-a0be-4dda-b007-c5f5fe8f1f52', 'Assign the Contributor role at the management group level', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('197b944e-adf2-4570-b30f-3bc1d8e3842e', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'A company wants a single dashboard that evaluates their Azure security configuration, provides a security score, and gives prioritized, actionable recommendations to reduce their attack surface across Azure services. The solution must meet the following requirements: - Security posture assessment. - Security score. - Prioritized security recommendations. - Coverage across multiple Azure services. Which Azure service provides this?',
        'Microsoft Defender for Cloud provides a secure score, a unified security posture assessment, and prioritized recommendations across Azure services.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('47eadf41-2dfd-4605-a1f3-113a360d0b45', '197b944e-adf2-4570-b30f-3bc1d8e3842e', 'Azure Advisor (Security category)', FALSE, 1),
    ('fcb39e57-1dfc-4bc2-9f10-61450bc6cde0', '197b944e-adf2-4570-b30f-3bc1d8e3842e', 'Azure Monitor', FALSE, 2),
    ('a72be4fc-7c1e-4ab5-9166-54f9cb80ebda', '197b944e-adf2-4570-b30f-3bc1d8e3842e', 'Azure Sentinel', FALSE, 3),
    ('6534bf90-a3a6-42b3-ad0c-2cbe2270d8ec', '197b944e-adf2-4570-b30f-3bc1d8e3842e', 'Microsoft Defender for Cloud', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('13230362-85d8-456e-9f4a-2141260c8e88', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'A company is analyzing their Azure invoice and wants to understand which internal teams are consuming the most resources. They have already applied tags to all resources (e.g., Department=Finance, Department=Marketing). They want to filter costs by department. The solution must meet the following requirements: - Analyze actual costs by department. - Filter by resource tags. - Data from current and past months. Which Azure service should they use?',
        'Azure Cost Management + Billing supports cost analysis filtered by resource tags, across current and historical billing periods.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('298906b4-7dbb-4c84-bba8-78d840a91f31', '13230362-85d8-456e-9f4a-2141260c8e88', 'Azure Pricing Calculator', FALSE, 1),
    ('766f07ae-428f-4f2f-b67e-03c41ecd5734', '13230362-85d8-456e-9f4a-2141260c8e88', 'Azure TCO Calculator', FALSE, 2),
    ('2f6697dd-3ef7-4c77-9c6e-5f02f058d56b', '13230362-85d8-456e-9f4a-2141260c8e88', 'Azure Cost Management + Billing with tag-based cost analysis', TRUE, 3),
    ('dd8ba8f4-9d7a-407e-86b6-839bff6e2a6a', '13230362-85d8-456e-9f4a-2141260c8e88', 'Azure Advisor', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d9f12b55-6a83-4d45-b553-7304865cb3bf', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'A company uses a hybrid identity model. On-premises employees authenticate to Active Directory on-premises, but they also need to access Azure services and Microsoft 365 with the same credentials (Single Sign-On). No password synchronization issues should occur. The solution must meet the following requirements: - Same credentials for on-premises and cloud. - Single Sign-On to Azure and Microsoft 365. - Hybrid identity management. Which service enables this hybrid identity scenario?',
        'Microsoft Entra ID with Azure AD Connect (Hybrid Identity) synchronizes on-premises Active Directory identities to the cloud for single sign-on.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4ae1429a-32b8-4146-a5a2-94aaf23cc2c2', 'd9f12b55-6a83-4d45-b553-7304865cb3bf', 'Microsoft Entra ID standalone (cloud only)', FALSE, 1),
    ('c6647d94-3207-400f-a0cc-2271b517bf1d', 'd9f12b55-6a83-4d45-b553-7304865cb3bf', 'Microsoft Entra ID with Azure AD Connect (Hybrid Identity)', TRUE, 2),
    ('0d0b9a8e-9202-4a55-8266-42eee3e722a1', 'd9f12b55-6a83-4d45-b553-7304865cb3bf', 'Azure RBAC', FALSE, 3),
    ('46d193a4-d0db-4bc8-b21e-0ef126bbee11', 'd9f12b55-6a83-4d45-b553-7304865cb3bf', 'Azure Key Vault', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2b9457ea-59a4-44e6-be56-ff822cdccc5a', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'A company''s Azure environment has grown rapidly. The operations team wants to identify underutilized Virtual Machines (low CPU usage) and get specific recommendations for resizing or shutting them down to reduce costs. The solution must meet the following requirements: - Identify underutilized VMs. - Actionable cost reduction recommendations. - No additional tool installation required. Which Azure service provides these recommendations?',
        'Azure Advisor automatically analyzes VM utilization and provides actionable resizing/shutdown recommendations without any extra tooling.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('dba71db2-4559-4c5d-95eb-16fda666ad21', '2b9457ea-59a4-44e6-be56-ff822cdccc5a', 'Azure Monitor', FALSE, 1),
    ('d3a892b2-56ed-465b-9a83-ffe1d566f705', '2b9457ea-59a4-44e6-be56-ff822cdccc5a', 'Azure Cost Management (cost analysis only)', FALSE, 2),
    ('91dc41be-10f3-4298-8d0a-95061a350b04', '2b9457ea-59a4-44e6-be56-ff822cdccc5a', 'Microsoft Defender for Cloud', FALSE, 3),
    ('c8b38086-d233-40ea-9f3f-a96f845b4eca', '2b9457ea-59a4-44e6-be56-ff822cdccc5a', 'Azure Advisor', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fa779004-10a1-4130-8d73-9583396e4334', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'A company is planning an application that will generate and manage encryption keys for data stored in Azure. The security policy requires that encryption keys are stored separately from the data they protect, with full access audit logging and hardware-level key protection. The solution must meet the following requirements: - Separate key storage from data. - Hardware Security Module (HSM) support. - Full audit log of all key access operations. - Managed service — no hardware to manage. Which Azure service should they use?',
        'Azure Key Vault with HSM-protected keys stores encryption keys separately from data, with hardware-level protection and full access audit logging.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8bc79b24-1ef9-43f2-ad04-ec006b907f8f', 'fa779004-10a1-4130-8d73-9583396e4334', 'Azure Storage with encryption', FALSE, 1),
    ('97d16aff-93fc-4b15-a751-c2d1ccb72e27', 'fa779004-10a1-4130-8d73-9583396e4334', 'Azure Key Vault (with HSM-protected keys)', TRUE, 2),
    ('c6e7d083-565e-46c0-b3af-ed0ce3087753', 'fa779004-10a1-4130-8d73-9583396e4334', 'Azure Active Directory', FALSE, 3),
    ('2502ef3b-b6ec-4fcb-9e7c-cff3e6cd9c7e', 'fa779004-10a1-4130-8d73-9583396e4334', 'Azure Policy', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0983d0c5-73b4-4195-81a4-33cb201637e0', '0978a83f-fa14-4dd8-8ef1-13315847f42d', 'SINGLE_CHOICE', 'A company has 20 Azure subscriptions. The IT team wants to automatically enforce that all Azure resources must have a ''CostCenter'' tag. Resources without this tag should be blocked from creation. This must apply across all 20 subscriptions. The solution must meet the following requirements: - Mandatory CostCenter tag on all resources. - Block resource creation if tag is missing. - Apply across all 20 subscriptions. - Automated enforcement. Which Azure feature should they implement? ✅  End of scenario questions — Give this document to your trainer for correction. Your trainer will provide answer explanations and discuss common mistakes from this module.',
        'Azure Policy with a ''deny'' effect applied at the Management Group level automatically blocks non-compliant resource creation across all subscriptions underneath.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bd8e4e5d-fcc8-46e6-97b7-3f1265584937', '0983d0c5-73b4-4195-81a4-33cb201637e0', 'Azure RBAC with a custom role', FALSE, 1),
    ('66fc00df-2d79-4467-971e-3e11c0c1231d', '0983d0c5-73b4-4195-81a4-33cb201637e0', 'Azure Resource Locks', FALSE, 2),
    ('3047a0be-2b2d-49f8-bfc2-b9e283a976e7', '0983d0c5-73b4-4195-81a4-33cb201637e0', 'Azure Policy with ''deny'' effect applied at Management Group level', TRUE, 3),
    ('50c28ac4-10df-486d-bdf0-6e37b4e48219', '0983d0c5-73b4-4195-81a4-33cb201637e0', 'Azure Cost Management budget alerts', FALSE, 4);
