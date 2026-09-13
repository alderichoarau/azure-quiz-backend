INSERT INTO module (id, certification_id, code, title, description, position)
VALUES ('ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', '00000000-0000-0000-0000-000000000002', 'module-03-storage-practice', 'Module 3 (Practice Scenarios) - Implement and Manage Storage',
        NULL, 9);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ff89e3f8-5874-4b7c-8010-43a3170d9a3d', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso is designing a storage account for a video-on-demand application that requires low-latency, high-throughput disk performance for a SQL Server database running on an Azure VM. Which storage account type should they select?',
        'Correct: Premium storage accounts are backed by SSDs and are recommended for VM disks with I/O-intensive applications like databases; VM disks use page blobs, and Premium page blob accounts provide consistent, low-latency performance. A) is wrong because Standard GPv2 uses HDDs, unsuitable for low-latency database I/O. C) is wrong because Premium file shares are for Azure Files (SMB/NFS shares), not VM disks. D) is wrong because legacy GPv1 lacks current features and is not recommended, and it''s still HDD-backed like GPv2 for Standard tier.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0402dcea-a4f7-4875-be32-f252a0784419', 'ff89e3f8-5874-4b7c-8010-43a3170d9a3d', 'Standard general-purpose v2, since it supports the widest range of services', FALSE, 1),
    ('bd5a7661-58db-4497-a2a2-f05ee5982780', 'ff89e3f8-5874-4b7c-8010-43a3170d9a3d', 'Standard general-purpose v1 (legacy), since it is the most cost-effective for databases', FALSE, 2),
    ('8b6c5307-36b7-4cfa-86ef-cf414ffde2c5', 'ff89e3f8-5874-4b7c-8010-43a3170d9a3d', 'Premium page blobs, since Azure VM disks use page blobs and Premium storage provides consistent low-latency performance for I/O-intensive workloads', TRUE, 3),
    ('9dfc89f6-e860-4a6a-a82c-84df739e3284', 'ff89e3f8-5874-4b7c-8010-43a3170d9a3d', 'Premium file shares, since they are optimized for VM disk workloads', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6e1fa182-3bde-41c6-9e3c-d13218ca7ed2', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso''s compliance officer asks whether a Standard general-purpose v2 storage account can be upgraded in place to a Premium account to improve database VM performance, without any data movement. What is the correct answer?',
        'Correct: Storage accounts cannot be converted between Standard and Premium; a new storage account of the desired type must be created, and any needed data must be copied over. B), C), and D) all describe conversion mechanisms that do not exist for storage account performance tiers.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2facba18-775d-4148-9450-5b342cba2e0f', '6e1fa182-3bde-41c6-9e3c-d13218ca7ed2', 'Yes, but only via a support ticket with Microsoft, which handles the migration automatically', FALSE, 1),
    ('c5fa0aeb-bbf6-4735-bd84-64fe2ac573b2', '6e1fa182-3bde-41c6-9e3c-d13218ca7ed2', 'No, but it is possible with Azure CLI using the ''convert-tier'' command', FALSE, 2),
    ('51277841-5aa4-41cf-8a81-eda8da83510b', '6e1fa182-3bde-41c6-9e3c-d13218ca7ed2', 'Yes, this is a one-click, in-place upgrade with zero data movement', FALSE, 3),
    ('d885e6a7-55fa-4d5b-a689-117cb3e2bb5e', '6e1fa182-3bde-41c6-9e3c-d13218ca7ed2', 'No, Standard and Premium accounts cannot be converted into each other; a new Premium account must be created and the data copied over if needed', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4ed71c0d-098e-4426-81bf-3aaa38628b7a', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso needs its storage account data to survive a full regional outage in the primary region, and also wants the ability to read data from the secondary region even when no failover has occurred, for reporting purposes. Which replication option should they choose?',
        'Correct: RA-GRS (or RA-GZRS, which adds zone redundancy in the primary region) replicates to a secondary region for regional-outage protection and specifically allows reading from the secondary region at any time, without requiring Microsoft to initiate a failover — meeting both stated requirements. A) protects only against datacenter-level issues, not regional outages. C) protects against zone failures within one region, not full regional outages. D) protects against regional outages but does not allow reading from the secondary region unless a failover has occurred.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8bdc77bf-d99b-4918-a9af-71c77503b15c', '4ed71c0d-098e-4426-81bf-3aaa38628b7a', 'Geo-redundant storage (GRS) without read access', FALSE, 1),
    ('2460c902-c803-4bdb-b477-888aec568d86', '4ed71c0d-098e-4426-81bf-3aaa38628b7a', 'Read-access geo-redundant storage (RA-GRS), or read-access geo-zone-redundant storage (RA-GZRS) for added zonal protection', TRUE, 2),
    ('063dfc6c-ed41-4027-b18b-290115e38121', '4ed71c0d-098e-4426-81bf-3aaa38628b7a', 'Zone-redundant storage (ZRS)', FALSE, 3),
    ('15bdde11-cec9-4442-a0c8-9281ebd4a483', '4ed71c0d-098e-4426-81bf-3aaa38628b7a', 'Locally redundant storage (LRS)', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2c6cbbba-7305-42d8-a2e8-3f37222b3d54', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso''s security team wants to ensure their storage account never accepts unencrypted HTTP connections and does not allow legacy insecure TLS versions. Which configuration addresses both requirements together with the account''s built-in encryption behavior?',
        'Correct: Setting ''secure transfer required'' ensures the account only accepts requests over secure (HTTPS) connections, and existing accounts should explicitly disallow the deprecated TLS 1.0 and 1.1 protocols; SSE with 256-bit AES already encrypts all data at rest automatically and cannot be disabled. B) is incorrect and undesirable — SSE cannot be disabled and manual encryption isn''t needed. A) is incorrect; secure transfer is a storage account-level property, not an NSG function. D) is incorrect; soft delete protects against accidental deletion, not transport security.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f850a231-ddc6-4cde-a0e7-6e6266d53bf7', '2c6cbbba-7305-42d8-a2e8-3f37222b3d54', 'Rely solely on network security groups, since storage accounts have no built-in transport security settings', FALSE, 1),
    ('45743e91-55a6-49cb-ba7e-4662a4ea04a7', '2c6cbbba-7305-42d8-a2e8-3f37222b3d54', 'Disable Storage Service Encryption to force manual encryption at the application layer', FALSE, 2),
    ('2965d977-f6ae-44ab-9c73-29fc64dd7372', '2c6cbbba-7305-42d8-a2e8-3f37222b3d54', 'Enable ''secure transfer required,'' and explicitly disallow TLS 1.0 and 1.1 on the account, while relying on Storage Service Encryption (SSE) for data at rest, which is already always on', TRUE, 3),
    ('85ccf713-19d3-4519-81b1-7d09034c31a1', '2c6cbbba-7305-42d8-a2e8-3f37222b3d54', 'Enable soft delete, which automatically blocks all HTTP traffic', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('191abea3-7c52-4f5d-8b8b-a6857358d1cc', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso wants Linux-based analytics VMs to mount a blob container directly as a file system for a data lake migration project, using native Linux file semantics rather than the Blob REST API. Which combination of features should they enable?',
        'Correct: Enabling the hierarchical namespace (HNS) and NFSv3 support allows Blob Storage to be accessed via NFSv3, letting Linux clients mount a container like an NFS share — well-suited to data lake and Linux file workload migrations. B) is incorrect; Azure File Sync is unrelated to Blob Storage and applies to Azure Files/on-premises Windows Server caching. A) is incorrect; Table Storage is a NoSQL key-attribute store, not a mountable file system. D) is incorrect; Queue Storage handles asynchronous messaging, not file system mounting.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('af70c22e-fd5a-4742-812f-8516b00c7f75', '191abea3-7c52-4f5d-8b8b-a6857358d1cc', 'Queue Storage, to buffer read/write operations for the Linux VMs', FALSE, 1),
    ('0ebe6191-9948-48ac-ae1c-c60f189d9565', '191abea3-7c52-4f5d-8b8b-a6857358d1cc', 'Hierarchical namespace and NFSv3 support, so the container can be mounted like an NFS share', TRUE, 2),
    ('99dfa2d0-450a-4b58-a0d4-e0893e07da67', '191abea3-7c52-4f5d-8b8b-a6857358d1cc', 'Azure File Sync, since it is required for any Linux VM to access blob data', FALSE, 3),
    ('8cb0a038-b431-438c-a09e-aebb96aad4cd', '191abea3-7c52-4f5d-8b8b-a6857358d1cc', 'Table Storage, since it natively supports Linux mount operations', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('91886ffa-7a16-4f7b-b44d-66f5f2834388', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso''s IT auditor discovers that developers have been sharing storage account access keys directly with third-party contractors to grant them access. What is the recommended remediation, based on Azure Storage security guidance?',
        'Correct: Because shared access keys grant broad, hard-to-scope access and are easy to leak, Microsoft recommends defaulting to Microsoft Entra ID authorization with RBAC, offering fine-grained, auditable, revocable access instead of a static shared key. A) still relies on a risky shared-key model and doesn''t solve the scoping/exposure problem. C) is an overreaction that disrupts legitimate access. D) is a serious security anti-pattern, granting far more privilege than needed for storage access.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d18b8d99-82b4-4050-9fff-7b5791b3f026', '91886ffa-7a16-4f7b-b44d-66f5f2834388', 'Enable ''default to Microsoft Entra authorization'' and use RBAC-based access instead of shared keys wherever possible, since Entra ID with managed identities/RBAC provides superior security and control over shared key access', TRUE, 1),
    ('9b396818-176a-4fab-bf25-86a2e025199d', '91886ffa-7a16-4f7b-b44d-66f5f2834388', 'Continue using shared keys but rotate them every five years instead of sharing them permanently', FALSE, 2),
    ('d62e353d-ff8f-4e11-b3b3-16069e512474', '91886ffa-7a16-4f7b-b44d-66f5f2834388', 'Grant the contractors Global Administrator rights in Microsoft Entra ID', FALSE, 3),
    ('6e7f4638-cfdf-48b7-b287-56eca4608342', '91886ffa-7a16-4f7b-b44d-66f5f2834388', 'Disable the storage account entirely until a replacement solution is designed', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a2ef4e37-e020-490d-b0d5-3b0ad34d99b7', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso configured a custom domain www.contoso.com to point to their storage account''s blob endpoint using a direct CNAME mapping. Six months later, they want to enable HTTPS for this custom domain and discover it is not straightforward with direct CNAME mapping. What is the underlying reason, based on standard DNS/TLS behavior for this scenario?',
        'Correct: The direct CNAME approach maps a subdomain (e.g., blobs.contoso.com) to the Azure storage endpoint, but the default TLS certificate on that endpoint is issued for \*.core.windows.net, not the custom domain, so HTTPS access to a custom domain requires additional certificate/CDN configuration (such as using Azure CDN or Front Door in front of the storage endpoint). B) is incorrect; custom domains are supported via CNAME mapping. C) is incorrect; CNAME mapping is exactly how direct custom domain mapping is implemented in this module. A) is incorrect and unrelated; SSE remains active regardless of custom domain configuration.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('26debbf2-1425-48d0-864d-ad073467464c', 'a2ef4e37-e020-490d-b0d5-3b0ad34d99b7', 'Direct CNAME mapping to \*.blob.core.windows.net does not by itself provision a TLS certificate valid for the custom domain name, since the storage account''s default certificate is issued for the \*.core.windows.net domain, not the custom domain', TRUE, 1),
    ('f6d5b750-6af3-4c9a-b68b-1f9e3359ec59', 'a2ef4e37-e020-490d-b0d5-3b0ad34d99b7', 'Blob Storage does not support custom domains under any circumstances', FALSE, 2),
    ('0bb55649-d105-4dd4-ab1f-4fad25c6ea20', 'a2ef4e37-e020-490d-b0d5-3b0ad34d99b7', 'CNAME records are incompatible with Blob Storage endpoints entirely', FALSE, 3),
    ('d719f380-a61f-4024-a717-9e514dc0d6c9', 'a2ef4e37-e020-490d-b0d5-3b0ad34d99b7', 'Custom domains automatically disable Storage Service Encryption', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2b42ffb3-47a0-48b3-99e5-68a681a1fbbf', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso''s network engineer must restrict access to a storage account so that only a specific subnet in their production virtual network — plus a small list of trusted public IP ranges — can reach it over its existing public endpoint, without requiring private IP addressing or major architecture change. Which approach fits this requirement?',
        'Correct: Service endpoints, configured via the storage account''s ''Firewalls and virtual networks'' settings, keep the account on its public endpoint while restricting access to specified virtual network subnets and/or public IP address ranges — matching the stated requirement without requiring private IP addressing. A) is incorrect for this specific requirement; a private endpoint changes the account to use a private IP and is a larger architectural change than requested, though it would also work, it''s not the minimal-change option matching ''without requiring private IP addressing.'' C) breaks the required access entirely. D) is incorrect; NSGs are applied to subnets/NICs, not directly to storage account resources.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b2d09a60-952e-419b-9708-47b25c7f8759', '2b42ffb3-47a0-48b3-99e5-68a681a1fbbf', 'Create a network security group rule directly on the storage account resource', FALSE, 1),
    ('fb8adbe6-c8b7-4396-9696-444c8d828017', '2b42ffb3-47a0-48b3-99e5-68a681a1fbbf', 'Configure service endpoints via the storage account''s ''Firewalls and virtual networks'' settings, adding the production subnet and the trusted public IP ranges', TRUE, 2),
    ('d0ef6f77-b29a-42f7-8b95-1f8e646a0446', '2b42ffb3-47a0-48b3-99e5-68a681a1fbbf', 'Deploy a private endpoint, which is the only way to restrict access by subnet or IP range', FALSE, 3),
    ('44524e1f-ae5f-471b-bc31-050dc5d01856', '2b42ffb3-47a0-48b3-99e5-68a681a1fbbf', 'Disable all network access to the storage account entirely', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('94268435-d23e-4690-bd20-219b728bfd0e', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso stores product images for their e-commerce site and wants unauthenticated shoppers to view individual images directly via URL, but does not want the full list of files in the container to be enumerable by the public. Which configuration meets this requirement, assuming the account-level anonymous access setting is also enabled?',
        'Correct: The ''Blob'' access level allows anonymous public read access to individual blobs via their direct URL, but does not allow anonymous listing of the container''s contents — exactly matching the requirement. B) (''Container'') would also allow public listing of all blobs, exposing the full file list. C) (''Private,'' the default) blocks all anonymous access, including direct blob reads. D) is effectively the same as C) since Private is the default, and would not allow the required anonymous image access.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8fcdcf56-ae62-4394-b9ce-ebc9d99ebca6', '94268435-d23e-4690-bd20-219b728bfd0e', 'Leave the container at its default setting with no changes', FALSE, 1),
    ('9d3d0e32-f5d8-455f-bfc3-58faa5cd6f50', '94268435-d23e-4690-bd20-219b728bfd0e', 'Set the container''s public access level to ''Blob''', TRUE, 2),
    ('8b6db2b1-bd02-4691-93d1-4e47d28adab8', '94268435-d23e-4690-bd20-219b728bfd0e', 'Set the container''s public access level to ''Private''', FALSE, 3),
    ('79ebd8d4-e4ec-4911-b0c1-893d540092dd', '94268435-d23e-4690-bd20-219b728bfd0e', 'Set the container''s public access level to ''Container''', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8095fd86-ed02-4daf-a17e-653b45e1b229', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso sets a container''s public access level to ''Blob'' expecting anonymous read access to work, but shoppers still receive access-denied errors. What is the most likely cause?',
        'Correct: Blob and Container access levels have no effect unless the storage account''s ''Allow Blob Anonymous Access'' setting is enabled; when it''s disabled at the account level, all containers remain private regardless of their individual access-level configuration. A), C), and D) are not valid causes — container naming rules, the upload tool used, and the replication strategy are unrelated to anonymous access enforcement.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('045b7126-cd91-4a86-833d-4e39df07694a', '8095fd86-ed02-4daf-a17e-653b45e1b229', 'The blobs were uploaded using AzCopy, which blocks anonymous access by design', FALSE, 1),
    ('d6a61f39-2dce-4dee-8171-c22ad2f9f603', '8095fd86-ed02-4daf-a17e-653b45e1b229', 'The storage account uses RA-GRS replication, which disables anonymous access', FALSE, 2),
    ('94e8ecd6-726f-4818-a6d9-401b890d019e', '8095fd86-ed02-4daf-a17e-653b45e1b229', 'The container name exceeds 63 characters', FALSE, 3),
    ('c11bba7a-48a6-4e26-af3a-94d4584700a9', '8095fd86-ed02-4daf-a17e-653b45e1b229', 'The storage account''s ''Allow Blob Anonymous Access'' setting is disabled, which overrides individual container access-level settings', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a7a3aca3-63dd-4fa3-a30f-5c461b3f5ff4', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso stores compliance archives that are accessed only once or twice a year, must be retained for at least 3 years, and can tolerate multi-hour retrieval delays when audits occur. To minimize storage cost, which access tier should they use, and what should they be aware of regarding early access?',
        'Correct: The Archive tier is the most cost-effective for storage and is designed for data that can tolerate hours of retrieval latency; it requires a 180-day minimum retention to avoid early deletion charges, and retrieval priority (Standard vs. High) affects rehydration time (up to 15 hours, or within 1 hour for smaller blobs at higher cost). B) is far more expensive than necessary for rarely accessed data. C) mischaracterizes Cool tier retrieval — while Cool does offer millisecond latency, it is not the lowest-cost tier for data this infrequently accessed compared to Archive, and the question emphasizes cost minimization. A) is incorrect; Queue Storage is for asynchronous message processing, not archival file storage.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0baf5272-476c-41fc-b1b2-63bc7ee43743', 'a7a3aca3-63dd-4fa3-a30f-5c461b3f5ff4', 'The Hot tier, since compliance data must always be immediately accessible regardless of cost', FALSE, 1),
    ('fe3e7fc5-72f9-4987-8ca3-5ae731051b35', 'a7a3aca3-63dd-4fa3-a30f-5c461b3f5ff4', 'The Cool tier, since it guarantees millisecond retrieval at the lowest possible storage cost', FALSE, 2),
    ('b56a6178-ca57-4b25-b07c-eda41bd280af', 'a7a3aca3-63dd-4fa3-a30f-5c461b3f5ff4', 'The Archive tier, being aware that data must remain at least 180 days to avoid an early deletion fee, and that retrieval can take hours depending on priority', TRUE, 3),
    ('c2021b72-75c0-4541-9ae1-3c6fcd85ffb2', 'a7a3aca3-63dd-4fa3-a30f-5c461b3f5ff4', 'Queue Storage, since it is designed for long-term archival of large files', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('42585d77-1f84-4c6e-821a-f53ddd04c76f', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso wants a lifecycle management rule that automatically moves blobs to the Cool tier after 30 days of inactivity, then to the Archive tier after 90 days, and deletes them entirely after 3 years. Which policy structure correctly implements this?',
        'Correct: Lifecycle management policy rules use an If (evaluation condition, e.g., days since modification) and Then (resulting action, e.g., move to cool/archive tier, or delete) structure; achieving three different time-based transitions requires three corresponding rule conditions/actions (or three conditions within a rule set) — each transition doesn''t happen automatically without an explicit rule. B) is incorrect; tier transitions are not automatic without a defined rule per threshold. C) is incorrect; this is precisely what native lifecycle management policies are designed for. D) is incorrect; a single If/Then pair evaluates one condition and triggers one action, not a chained sequence over time.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('46225642-bd08-45cf-a986-aeb789f9dc00', '42585d77-1f84-4c6e-821a-f53ddd04c76f', 'Three rules, each with an ''If'' clause specifying days since last modification/access (30, 90, 1095) and a corresponding ''Then'' clause (move to cool, move to archive, delete blob)', TRUE, 1),
    ('77b191d2-e483-4ebd-a510-e1fd9cdd2148', '42585d77-1f84-4c6e-821a-f53ddd04c76f', 'This cannot be done using lifecycle management; it requires a custom Azure Function', FALSE, 2),
    ('84e333af-f96c-4347-8037-2c9e2333bad6', '42585d77-1f84-4c6e-821a-f53ddd04c76f', 'A single ''If-Then'' rule is sufficient, since ''Then'' clauses can chain unlimited sequential actions across time automatically', FALSE, 3),
    ('da8885e3-5b1b-4a2d-a389-6773becc091e', '42585d77-1f84-4c6e-821a-f53ddd04c76f', 'A single rule that only specifies the final deletion after 1095 days, since intermediate tier transitions happen automatically without configuration', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f4d9a770-0a19-4a46-9ed6-0eccffbb28a3', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso configures object replication between a source and destination storage account but later discovers that snapshots taken on the source blobs never appear in the destination account. What should Contoso understand about this behavior?',
        'Correct: Object replication explicitly does not support blob snapshots — snapshots of a blob in the source account are not replicated to the destination account, regardless of configuration. A), B), and C) incorrectly suggest this is a fixable misconfiguration or tier/replication-dependent behavior, when it is a documented limitation of the object replication feature itself.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('96f8f28c-fd05-4f21-8a4a-d53573de98b2', 'f4d9a770-0a19-4a46-9ed6-0eccffbb28a3', 'This is expected; object replication does not support blob snapshots, so snapshots on the source are never replicated to the destination', TRUE, 1),
    ('eb8cba91-b1db-4e63-8050-0c8a8be6faea', 'f4d9a770-0a19-4a46-9ed6-0eccffbb28a3', 'Snapshots replicate only when using RA-GZRS on both accounts', FALSE, 2),
    ('93aeeaee-44c8-4428-8a4c-03dfbb631dfa', 'f4d9a770-0a19-4a46-9ed6-0eccffbb28a3', 'This indicates a misconfiguration; snapshots should always replicate automatically and this must be a bug to report to Microsoft', FALSE, 3),
    ('f3e7a3a3-e8d4-44e1-9492-f8c0f4866d5e', 'f4d9a770-0a19-4a46-9ed6-0eccffbb28a3', 'Snapshots only replicate if both accounts are in the Hot tier', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c550037b-3a60-4abc-8a81-66e73ef1f781', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso wants to enable object replication between two storage accounts but the configuration fails during setup. Which prerequisite, if missing, would most likely explain this failure?',
        'Correct: Object replication requires blob versioning to be enabled on both the source and destination accounts as a prerequisite; without it, the replication policy cannot be configured successfully. B) is not a blocking factor; object replication can work across subscriptions. C) is not required; source and destination container names do not need to match. A) is not strictly a blocker by itself; the tier (Hot, Cool, or Cold) can differ between source and destination, but Archive-tier objects have their own retrieval constraints — the missing prerequisite most directly tied to setup failure is versioning.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2ffd6aa7-31f7-47dc-9074-cbc36f8776d6', 'c550037b-3a60-4abc-8a81-66e73ef1f781', 'The source account uses a different subscription than the destination account', FALSE, 1),
    ('ff794ee3-4f31-4855-9f70-ccef58144bb9', 'c550037b-3a60-4abc-8a81-66e73ef1f781', 'Blob versioning is not enabled on both the source and destination accounts', TRUE, 2),
    ('b5047044-7504-45ed-900b-0fdae9ea7644', 'c550037b-3a60-4abc-8a81-66e73ef1f781', 'The source account is in the Archive tier', FALSE, 3),
    ('ec94f600-0215-4e63-8561-5a2caf132325', 'c550037b-3a60-4abc-8a81-66e73ef1f781', 'The source and destination containers have different names', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c4b36b04-2a20-49ed-9ce4-8bb5080da257', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso''s logging application needs a blob type optimized specifically for continuous append operations, where new log entries are added over time without rewriting the entire file. Which blob type should the application use?',
        'Correct: Append blobs are composed of blocks of data optimized specifically for append operations, making them ideal for logging scenarios where data grows as the logging operation continues. B) block blobs are the general-purpose default type, not optimized specifically for repeated appends. C) page blobs are optimized for frequent random read/write, primarily used for VM disks, not sequential logging. A) is a distractor; ''queue blob'' is not a real Azure Storage blob type.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9fdc540c-71f6-4f25-b4b0-0bca34061d40', 'c4b36b04-2a20-49ed-9ce4-8bb5080da257', 'Page blob', FALSE, 1),
    ('2de2af14-2855-4e91-80cd-bc675b781218', 'c4b36b04-2a20-49ed-9ce4-8bb5080da257', 'Append blob', TRUE, 2),
    ('24888468-e10d-4b92-b7db-c138a26fbccb', 'c4b36b04-2a20-49ed-9ce4-8bb5080da257', 'Block blob', FALSE, 3),
    ('0439e316-60a3-47fe-9ccc-9df1e98324e6', 'c4b36b04-2a20-49ed-9ce4-8bb5080da257', 'Queue blob (not an actual blob type)', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1e0157f4-9c25-4929-9214-ba708f5ff2d5', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'A Contoso developer uploads a file as a block blob, then later realizes the workload actually requires page blob semantics for random I/O. What must they do?',
        'Correct: After a blob is created, its type cannot be changed; if a different blob type is required, the blob must be deleted and re-created as the new type. A), B), and D) all describe conversion mechanisms that do not exist in Azure Blob Storage.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cc000dfc-6f65-421a-bed9-d2c7ddbfdd70', '1e0157f4-9c25-4929-9214-ba708f5ff2d5', 'Delete the existing block blob and re-create it as a page blob, since blob type cannot be changed after creation', TRUE, 1),
    ('8c2a0def-3de9-4946-b941-65f6c91afff3', '1e0157f4-9c25-4929-9214-ba708f5ff2d5', 'Use the Azure portal''s ''Convert Blob Type'' feature to switch types in place', FALSE, 2),
    ('a20b500f-622a-4e6f-8822-d59d5c8c1c52', '1e0157f4-9c25-4929-9214-ba708f5ff2d5', 'Simply update the blob''s metadata field ''BlobType'' to ''PageBlob''', FALSE, 3),
    ('ef806ba6-e2e3-4775-8a78-e2efcfa2fd1c', '1e0157f4-9c25-4929-9214-ba708f5ff2d5', 'Wait 30 days, after which Azure automatically offers a type conversion option', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('baa7be30-3fa1-4ceb-b999-d2e8806eeddf', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso needs to migrate 40 TB of historical archival data from an on-premises data center to Blob Storage, but their internet connection has severe bandwidth constraints that make a direct upload impractical within the project timeline. Which tool is best suited to this scenario?',
        'Correct: Azure Data Box Disk is specifically designed for transferring on-premises data to Blob Storage when large datasets or network constraints make network-based uploading impractical — you request SSDs, copy the data locally, and ship the disks to Microsoft to upload. A) and B) both still rely on the constrained network connection and are unsuitable for 40 TB under severe bandwidth limits. D) is a distractor; replication tier has no effect on upload/ingestion speed.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('02395dde-ebde-4a00-8bd7-d9cbe3c1d75b', 'baa7be30-3fa1-4ceb-b999-d2e8806eeddf', 'Increasing the storage account''s replication tier to speed up ingestion', FALSE, 1),
    ('ddbd00cd-b136-477d-8824-a89482c76eee', 'baa7be30-3fa1-4ceb-b999-d2e8806eeddf', 'AzCopy, run overnight over the existing constrained internet connection', FALSE, 2),
    ('b30acf36-ca7c-4a63-8c58-9353119dcdee', 'baa7be30-3fa1-4ceb-b999-d2e8806eeddf', 'Azure Storage Explorer, uploading files one at a time through the portal', FALSE, 3),
    ('9a8f9ea1-2d29-42ea-befa-0af091fd0d77', 'baa7be30-3fa1-4ceb-b999-d2e8806eeddf', 'Azure Data Box Disk, which lets Contoso copy data onto SSDs and ship them to Microsoft for upload into Blob Storage', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('dfb2e510-420a-4446-9c03-93c4f9f4a1c7', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso''s finance team is reviewing a spike in their monthly Blob Storage bill after moving a large dataset from the Hot tier to the Archive tier for cost savings. Which billing behavior explains a one-time cost spike specifically associated with that tier change?',
        'Correct: Changing a storage account''s tier from hot to a colder tier incurs a charge equivalent to writing all the data to the new tier (for GPv2 accounts) — explaining a one-time cost spike at the moment of migration, even though ongoing storage costs will subsequently be lower. A) and C) both incorrectly claim tier changes are free or immediately cost-reducing with no transitional charge. D) dismisses a well-documented billing behavior without justification.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3c5731b5-e6f7-490d-9f9b-e3506d39009e', 'dfb2e510-420a-4446-9c03-93c4f9f4a1c7', 'Moving to a colder tier always reduces the bill immediately with no transitional charges', FALSE, 1),
    ('88af94ef-e1ba-4694-961b-de5130b83c42', 'dfb2e510-420a-4446-9c03-93c4f9f4a1c7', 'Tier changes are always free regardless of direction or data volume', FALSE, 2),
    ('ad252932-2839-4c42-ae15-5110dbba5706', 'dfb2e510-420a-4446-9c03-93c4f9f4a1c7', 'Moving data from a hot tier to a colder tier incurs a charge equivalent to writing all the data to the new (colder) tier, for GPv2 accounts', TRUE, 3),
    ('2152b825-bce6-4d7b-a476-8992bccb87b0', 'dfb2e510-420a-4446-9c03-93c4f9f4a1c7', 'The spike must be unrelated to the tier change and is a billing error', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a0075290-dc2d-42b7-9cbe-c82589c07d3e', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso needs to grant a third-party vendor temporary, time-boxed read access to a single blob container for 48 hours, without sharing the storage account''s access keys and without granting broader account-level permissions. Which approach is most appropriate?',
        'Correct: A service SAS grants scoped, time-limited access to a specific resource (like a container) without exposing account keys, matching the least-privilege, time-boxed access requirement. A) grants full account-level access indefinitely and violates least privilege. C) exposes the container publicly to anyone, far beyond the intended single vendor. D) grants excessive, unrelated administrative privilege completely disproportionate to the task.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('824cf266-bca8-42ef-8515-8150788d8d8c', 'a0075290-dc2d-42b7-9cbe-c82589c07d3e', 'Share one of the storage account''s two access keys directly with the vendor', FALSE, 1),
    ('d0da1765-03f6-4b18-870a-abd58ac4479e', 'a0075290-dc2d-42b7-9cbe-c82589c07d3e', 'Make the container''s public access level ''Container'' so anyone can browse and read it', FALSE, 2),
    ('15f077c7-ae15-4898-9279-b91e1160ae1a', 'a0075290-dc2d-42b7-9cbe-c82589c07d3e', 'Create a new Global Administrator account in Microsoft Entra ID for the vendor', FALSE, 3),
    ('e10e034a-c06b-41d4-8463-99edae0868f5', 'a0075290-dc2d-42b7-9cbe-c82589c07d3e', 'Generate a service-level shared access signature (SAS) scoped to that container, with read-only permissions and a 48-hour expiry', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('351e24f7-6907-4080-954e-c0cc6645c71a', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso''s developers distribute a SAS to a partner application over an unencrypted HTTP endpoint by mistake. An attacker intercepts it and gains unauthorized access to storage resources. Which best practice, if followed, would have prevented this specific compromise?',
        'Correct: If a SAS is transmitted over HTTP and intercepted, an attacker can capture and reuse it (a man-in-the-middle attack); always using HTTPS for SAS creation and distribution directly prevents this interception vector. B) increases risk rather than mitigating it — a non-expiring SAS is more dangerous if leaked. C) increases the potential damage from a compromised SAS rather than limiting it (violates least privilege). A) is the opposite of best practice; stored access policies are recommended because they let you revoke permissions without regenerating account keys.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ca7bdf8d-223d-4b0c-a9a9-6f8dbc7ca981', '351e24f7-6907-4080-954e-c0cc6645c71a', 'Always avoid stored access policies, since they increase the attack surface', FALSE, 1),
    ('0154f2c0-d061-4cf8-805f-f9600903a354', '351e24f7-6907-4080-954e-c0cc6645c71a', 'Always set the SAS to never expire, so it can be reissued easily', FALSE, 2),
    ('a4246f20-66ec-4b6d-8adb-1337eba09775', '351e24f7-6907-4080-954e-c0cc6645c71a', 'Always use HTTPS for creating and distributing a SAS, to prevent interception by a man-in-the-middle attacker', TRUE, 3),
    ('029d4c2d-5a88-4655-9f32-71b00ef50e3e', '351e24f7-6907-4080-954e-c0cc6645c71a', 'Always grant full read/write/delete permissions so the SAS is more flexible if intercepted', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7ff17eb0-9740-4cf5-ada3-40b865c0e408', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso''s security architect wants an authorization model tied to individual users'' Microsoft Entra identities with fine-grained role assignments, auditability, and no reliance on a static shared secret. Which authorization strategy should be prioritized?',
        'Correct: Microsoft Entra ID is Microsoft''s cloud identity and access management service; using it with RBAC lets administrators assign fine-grained access to users, groups, or applications, tied to individual identities with full auditability — matching all stated requirements. B) relies on a static shared secret with no per-user granularity or easy auditability. A) is the opposite of a controlled authorization model, exposing data publicly. D) is a single shared credential distributed broadly, lacking per-user accountability and control, and is generally discouraged as a broad-access pattern.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d1e0682e-db61-4036-ac34-f0d14a1b04d9', '7ff17eb0-9740-4cf5-ada3-40b865c0e408', 'Microsoft Entra ID with role-based access control (RBAC)', TRUE, 1),
    ('2b7b1496-cb16-4ee4-9fa2-44596fc8b695', '7ff17eb0-9740-4cf5-ada3-40b865c0e408', 'A single shared access signature distributed to all employees', FALSE, 2),
    ('100d8b03-9118-45c5-880a-0172fe30e89e', '7ff17eb0-9740-4cf5-ada3-40b865c0e408', 'Shared Key authorization using the storage account''s primary key', FALSE, 3),
    ('c098cbb3-b1c6-4f4c-8594-bca3cd280742', '7ff17eb0-9740-4cf5-ada3-40b865c0e408', 'Anonymous public access to containers and blobs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cba1bb16-768a-4d47-bab8-2d3a82d36f83', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso''s compliance team requires that encryption keys used for Blob Storage be fully controlled by Contoso — including the ability to disable, audit, and rotate the keys — with the underlying key vault potentially in a different subscription than the storage account, but subject to a regional constraint. What must Contoso configure, and what constraint applies?',
        'Correct: Customer-managed keys (CMK) are keys the customer creates, disables, audits, rotates, and controls access to, typically stored in a customer-owned Key Vault or HSM; the storage account and key vault must be located in the same region, but can belong to different subscriptions — matching the stated requirement exactly. B) is incorrect; PMKs are fully managed by Azure with no customer interaction, the opposite of the stated requirement. C) is incorrect because it ignores the same-region requirement. D) is incorrect; infrastructure encryption is a separate, additional layer of encryption and does not by itself provide customer control over key lifecycle.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ee8d9e8a-7ab5-4598-ade5-74d4a0ff650f', 'cba1bb16-768a-4d47-bab8-2d3a82d36f83', 'Infrastructure encryption alone, without any key vault involvement', FALSE, 1),
    ('ea180f74-81c5-4129-a3fb-fd38f34c2205', 'cba1bb16-768a-4d47-bab8-2d3a82d36f83', 'Customer-managed keys (CMK) stored in Azure Key Vault; the storage account and key vault must be in the same region, though they can be in different subscriptions', TRUE, 2),
    ('8adaa80f-6e67-46a1-87be-f61ad189adef', 'cba1bb16-768a-4d47-bab8-2d3a82d36f83', 'Customer-managed keys, with no regional constraint whatsoever between the storage account and key vault', FALSE, 3),
    ('dc90729d-56a3-4a78-a309-cc6d1f94b696', 'cba1bb16-768a-4d47-bab8-2d3a82d36f83', 'Platform-managed keys (PMK), since only PMKs allow disabling and rotating keys', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3f319f7b-1234-439d-8905-951299363970', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso''s SOC team wants both historical performance/capacity reporting on their storage accounts and proactive alerting if malware is uploaded to a blob container. Which combination of tools addresses both needs respectively?',
        'Correct: Storage Insights provides detailed metrics, logs, and a unified view of performance, capacity, and availability (historical/passive monitoring), while Microsoft Defender for Storage complements it with proactive threat detection, including malware scanning on blob uploads and activity-based threat detection — together addressing both stated needs. B) and C) each incorrectly claim one tool alone covers both very different capabilities (historical reporting vs. active threat detection). A) is incorrect; Azure natively provides both capabilities described without requiring a third-party SIEM, though a SIEM could still be layered on top.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('aacb2e7f-aed2-434e-9e53-12bdc8c8ad64', '3f319f7b-1234-439d-8905-951299363970', 'Storage Insights for historical performance/capacity reporting, and Microsoft Defender for Storage for proactive malware scanning and threat detection', TRUE, 1),
    ('1536a6f6-04ac-4343-b370-cb484577232c', '3f319f7b-1234-439d-8905-951299363970', 'Neither tool addresses these needs; a third-party SIEM is strictly required', FALSE, 2),
    ('9e37b1d1-686d-4884-bda4-63b8cec332fe', '3f319f7b-1234-439d-8905-951299363970', 'Storage Insights alone covers both needs, since it includes built-in malware scanning', FALSE, 3),
    ('28e602d3-a7a6-4afc-8f2f-5fbce8135a16', '3f319f7b-1234-439d-8905-951299363970', 'Microsoft Defender for Storage alone covers both needs; Storage Insights is unnecessary', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('df416ed1-c684-4a8b-be6a-f6cae52655fa', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso''s storage account was created two years ago and has never had its access keys rotated. An external auditor flags this as a risk. What is the recommended mitigation, and which Azure service can automate part of it?',
        'Correct: Microsoft recommends using Azure Key Vault to manage access keys and to rotate/regenerate them regularly; Key Vault supports automatic key rotation policies (for example, every 90 days) to remove the need for manual, easily neglected rotation. B) contradicts documented security guidance recommending periodic rotation. C) is an impractical, destructive, and unnecessary approach to key rotation. A) would break all shared-key-dependent access without providing a replacement, which is not the recommended remediation unless Entra ID/RBAC is fully adopted first.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f02e7123-5dc4-4140-b6a1-c936c762c96a', 'df416ed1-c684-4a8b-be6a-f6cae52655fa', 'Leave the keys as-is, since Azure Storage access keys never need rotation once generated', FALSE, 1),
    ('7626e832-eac7-4029-b8f5-18c1d6f6a8e3', 'df416ed1-c684-4a8b-be6a-f6cae52655fa', 'Disable both access keys permanently with no replacement authentication method', FALSE, 2),
    ('a65f7e05-4569-4c15-bf3e-454b395a9718', 'df416ed1-c684-4a8b-be6a-f6cae52655fa', 'Use Azure Key Vault to manage the storage account''s keys, and configure automatic key rotation policies (e.g., every 90 days) rather than leaving keys static indefinitely', TRUE, 3),
    ('0770d753-353d-4d78-a04e-d5c9a98d70c6', 'df416ed1-c684-4a8b-be6a-f6cae52655fa', 'Delete the storage account and create a new one every time a rotation is needed', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6caff3c6-429e-45c9-9100-c910d896aaf6', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso builds a SAS URI programmatically and sets its start time to the exact current server time. Clients occasionally report intermittent ''not yet valid'' failures during the first few minutes after the SAS is issued. What is the most likely explanation, and what is the recommended fix?',
        'Correct: Because of clock variations across machines, you can observe up to about 15 minutes of skew on a request; setting the start time roughly 15 minutes in the past (or omitting a specific start time so the SAS is valid immediately) is the documented mitigation for this exact intermittent failure pattern. A) is an overreaction; this is a well-understood, mitigable clock-skew issue, not a fundamental flaw in SAS. C) misdiagnoses the problem as a broken signature algorithm rather than a timing/clock issue. D) is unrelated; the ''sip'' (IP range) parameter has nothing to do with start-time clock skew.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('14bba5fe-dd1e-4913-aa30-f2b9658f44b3', '6caff3c6-429e-45c9-9100-c910d896aaf6', 'Clock skew between different machines can cause up to about 15 minutes of variation; best practice is to set the start time about 15 minutes in the past, or omit it so the SAS is valid immediately', TRUE, 1),
    ('96e730da-e9e8-4bb4-bc16-37fc7ca53228', '6caff3c6-429e-45c9-9100-c910d896aaf6', 'SAS tokens are simply unreliable and should not be used for time-sensitive scenarios at all', FALSE, 2),
    ('5f2b752b-dbca-420b-a9f9-4ecc1568adf9', '6caff3c6-429e-45c9-9100-c910d896aaf6', 'The ''sip'' parameter must be removed for the SAS to become valid immediately', FALSE, 3),
    ('511ee785-062b-45ec-82d0-83cb1751812b', '6caff3c6-429e-45c9-9100-c910d896aaf6', 'The SAS signature algorithm is broken and needs to be recalculated using MD5 instead of SHA256', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cc52b7f9-3d2f-41f7-88b5-a1acd3365887', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso''s platform team is deciding whether to build a custom middle-tier service in front of their storage account for a particular high-risk write operation, instead of issuing a SAS directly to client applications. Under which circumstance does the module''s guidance suggest this is the better approach?',
        'in which case a middle-tier service performing validation, authentication, and auditing before writing is preferable — Correct: The guidance explicitly states that in some scenarios, the risks associated with a particular operation on your storage account outweigh the benefits of SAS, and for those operations, you should create a middle-tier service that writes to your storage account after performing business rule validation, authentication, and auditing. B) overstates the guidance; SAS remains broadly recommended for many other scenarios. C) contradicts the explicit guidance that a middle-tier service is sometimes the better choice. D) is a fabricated, irrelevant condition — storage tier has nothing to do with this architectural decision.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('70a63b45-53ba-4298-9ac7-593fe53da8b5', 'cc52b7f9-3d2f-41f7-88b5-a1acd3365887', 'When the risks associated with a particular storage operation outweigh the convenience benefits of a SAS — in which case a middle-tier service performing validation, authentication, and auditing before writing is preferable', TRUE, 1),
    ('7fe11d2b-b059-4a93-bfbd-a093ef2372c6', 'cc52b7f9-3d2f-41f7-88b5-a1acd3365887', 'Never, since a middle-tier service always introduces unnecessary complexity with no security benefit', FALSE, 2),
    ('7d11f19a-da25-4640-a1e8-8de6062b8806', 'cc52b7f9-3d2f-41f7-88b5-a1acd3365887', 'Only if the storage account uses the Archive tier', FALSE, 3),
    ('ac12faa5-9410-4112-8857-975399f189db', 'cc52b7f9-3d2f-41f7-88b5-a1acd3365887', 'Always, since SAS tokens should never be used under any circumstances', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('48a44ba4-d0d8-45cb-b4a8-ec7e233ede5e', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso wants to ensure all data in a storage account is protected by two independent encryption layers, each using a different algorithm and key, as an extra defense-in-depth measure beyond standard Storage Service Encryption. What should they enable?',
        'once at the service level and once at the infrastructure level — using two distinct algorithms and keys — Correct: Infrastructure encryption can be enabled for an entire storage account or for an encryption scope, and when enabled, data is encrypted twice — once at the service level and once at the infrastructure level — using two separate encryption algorithms and two different keys, precisely matching the described defense-in-depth requirement. B) is not how SSE works; it isn''t ''layered'' as separate configurable policies. A) doesn''t describe how infrastructure encryption is implemented. D) removes automatic encryption at rest rather than adding a second protective layer.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a2d38dcb-2d2a-472d-9edb-476f3a0950b7', '48a44ba4-d0d8-45cb-b4a8-ec7e233ede5e', 'A second Storage Service Encryption policy layered on top of the first, configured identically', FALSE, 1),
    ('23bfb4f7-38ae-44a0-ade9-d4b7977f7bc1', '48a44ba4-d0d8-45cb-b4a8-ec7e233ede5e', 'Disabling Storage Service Encryption and relying solely on client-side encryption', FALSE, 2),
    ('f0690c89-37d5-47f3-a6d4-ba79250bea6e', '48a44ba4-d0d8-45cb-b4a8-ec7e233ede5e', 'Two separate customer-managed keys stored in the same Key Vault secret', FALSE, 3),
    ('37e435fd-3e65-43b1-abd9-cd5bb8ab78ac', '48a44ba4-d0d8-45cb-b4a8-ec7e233ede5e', 'Infrastructure encryption, which double-encrypts data — once at the service level and once at the infrastructure level — using two distinct algorithms and keys', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2175782a-3045-4146-92a6-9407cd48e62a', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso is lifting-and-shifting a legacy on-premises application that reads and writes files using native Windows file system APIs and expects a mapped drive letter shared across several servers. Which Azure storage solution is the best fit, and why?',
        'Correct: Azure Files is ideal for lift-and-shift migration of an application that already uses native file system APIs, offering true directory objects accessible through file shares (via SMB or NFS) across multiple VMs — closely matching the on-premises shared-drive behavior described. B) is incorrect; Blob Storage exists in a flat namespace and is not natively mountable as a mapped drive without additional tooling. A) is incorrect; Queue Storage is for asynchronous messaging, not file access. D) is incorrect; Table Storage is a NoSQL key-attribute store, unrelated to file system semantics.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('58939427-cbcb-4042-8212-f37e9bf42272', '2175782a-3045-4146-92a6-9407cd48e62a', 'Azure Blob Storage, because objects can be mapped to drive letters natively via the REST API', FALSE, 1),
    ('81397134-b5ac-4242-96a1-f7c4afd067c3', '2175782a-3045-4146-92a6-9407cd48e62a', 'Azure Table Storage, because it offers schema-less storage suitable for any file type', FALSE, 2),
    ('717aaa6f-0642-40e6-acab-931ed062e7a0', '2175782a-3045-4146-92a6-9407cd48e62a', 'Azure Files, because it provides true directory objects accessible via SMB/NFS file shares across multiple VMs, closely matching on-premises file share behavior', TRUE, 3),
    ('de9d087f-78a7-4f4f-9314-9b01fe51fb4f', '2175782a-3045-4146-92a6-9407cd48e62a', 'Azure Queue Storage, because it supports asynchronous file access patterns', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('88f7933d-e14a-44c3-a9e1-5f635013f701', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso''s finance department needs a high-performance file share with consistent low latency for a demanding line-of-business application, and is willing to pay for provisioned capacity in advance. Which Azure Files tier and storage account type should they use?',
        'Correct: The Premium tier is SSD-backed, offers consistent low latency, uses the FileStorage account type, and is billed on a provisioned basis (paying ahead for reserved capacity) — matching the described high-performance, latency-sensitive requirement. B) (Cool) is HDD-backed, standard performance, intended for archival/backup scenarios, not high-performance workloads. A) is incorrect; Transaction Optimized is HDD-backed and standard performance, not superior to SSD-backed Premium for latency. D) is incorrect; Hot is HDD-backed standard performance and is not functionally identical to Premium.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('53e4b296-e095-409f-924c-6b2e771440ce', '88f7933d-e14a-44c3-a9e1-5f635013f701', 'The Premium tier, using a FileStorage storage account, billed on a provisioned (pay-ahead) basis', TRUE, 1),
    ('6a172ecf-da77-4661-ae22-a11eaafccc78', '88f7933d-e14a-44c3-a9e1-5f635013f701', 'The Transaction Optimized tier, since it always outperforms Premium for latency-sensitive workloads', FALSE, 2),
    ('105c50cf-6143-425c-b340-e8fd460c68a1', '88f7933d-e14a-44c3-a9e1-5f635013f701', 'The Hot tier, since it is functionally identical to Premium but cheaper', FALSE, 3),
    ('7381e4fb-cf38-4b3c-99ca-b58ac1fd2642', '88f7933d-e14a-44c3-a9e1-5f635013f701', 'The Cool tier, using a GPv2 storage account, billed pay-as-you-go', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0e74b3e2-29f3-44c3-a76e-dcc0a884fe23', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso''s help desk reports that on-premises users behind a corporate firewall cannot mount an Azure file share over SMB, even though the storage account and share are configured correctly. What is the most likely networking cause?',
        'Correct: SMB traffic to Azure file shares uses port 445, and many ISPs and corporate firewalls block outbound port 445 — this is explicitly called out as the most common connectivity problem when mounting Azure file shares from on-premises environments. A) is a distractor unrelated to connectivity symptoms described. C) conflates NFS with the SMB scenario described in the question. D) is incorrect; the Premium tier does not block SMB access; both Premium and Standard tiers support SMB.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ae91c40b-e5e5-45e9-b471-777ff0435c61', '0e74b3e2-29f3-44c3-a76e-dcc0a884fe23', 'NFS shares cannot be mounted from any on-premises network under any circumstances', FALSE, 1),
    ('ac29e147-2504-4532-b064-d44b33de130d', '0e74b3e2-29f3-44c3-a76e-dcc0a884fe23', 'The storage account is using the Premium tier, which blocks all on-premises SMB access', FALSE, 2),
    ('7a1488a0-e818-4cef-bc54-c9cd0a6c8e2c', '0e74b3e2-29f3-44c3-a76e-dcc0a884fe23', 'Outbound port 445 (used by SMB) is being blocked by the corporate firewall or the internet service provider, which is the most common connectivity issue for mounting Azure file shares from on-premises', TRUE, 3),
    ('9d84ef99-a616-4e4d-beaf-d411984aebf7', '0e74b3e2-29f3-44c3-a76e-dcc0a884fe23', 'The file share exceeds the 100 TiB maximum size', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('420fe3e8-a88c-48d5-bc9a-29bbe7a31e2b', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso''s operations team wants to protect against accidental overwrite of critical files in an Azure file share used by a finance application, and wants the ability to recover a clean, known-good version taken just before each new deployment. Which feature, and what practice, should they implement?',
        'Correct: File share snapshots provide incremental, read-only, point-in-time captures that protect against application errors and data corruption; the guidance explicitly recommends taking a snapshot before releasing new code so there''s a clean restore point if something goes wrong. B) is incorrect; soft delete protects against deletion, but does not automatically snapshot before every write. C) is incorrect; object replication is a Blob Storage feature for asynchronously copying blobs between accounts, not a File Storage versioning mechanism. D) is incorrect; cloud tiering manages which data is cached locally vs. in Azure Files, and does not create snapshots.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9d3e8667-6336-459c-ac28-1f0ef688b533', '420fe3e8-a88c-48d5-bc9a-29bbe7a31e2b', 'Azure File Sync cloud tiering, since it creates a new snapshot every time a file is tiered', FALSE, 1),
    ('16df684b-0bb8-4bcd-b917-3b0da1dd1d56', '420fe3e8-a88c-48d5-bc9a-29bbe7a31e2b', 'File share snapshots, taken as a routine practice immediately before each new code release, to provide a clean recovery point if something goes wrong', TRUE, 2),
    ('da4b1f61-4731-4185-8728-fb081d9967af', '420fe3e8-a88c-48d5-bc9a-29bbe7a31e2b', 'Object replication, since it automatically versions every file change in real time', FALSE, 3),
    ('d85905bd-e3b8-4f9c-9242-774928e8946b', '420fe3e8-a88c-48d5-bc9a-29bbe7a31e2b', 'Soft delete alone, since it automatically creates a snapshot before every write operation', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cd4daf90-eb72-4db4-a1ad-65c35904849e', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso enables soft delete on a critical Azure file share and sets the retention period to 14 days. The share is accidentally deleted by an automation script, and the team recovers it 10 days later. What made this recovery possible, and what should Contoso understand about the protection''s limits?',
        'Correct: Soft delete transitions deleted content to a soft-deleted state instead of permanent deletion, for an administrator-configured retention period between 1 and 365 days; recovery is only possible within that window, and once the period elapses the content is permanently removed — so the 10-day recovery succeeded precisely because it was inside the configured 14-day retention period. B) is incorrect; protection is always bounded by the configured retention period, not unlimited. C) is incorrect; soft delete protects at the file share level. D) is incorrect; the valid retention range is 1 to 365 days, so 14 days is a valid configuration.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fe8d6dea-7e90-4a54-a0e6-7ffbc57dd14a', 'cd4daf90-eb72-4db4-a1ad-65c35904849e', 'Soft delete transitioned the deleted share into a recoverable state for the configured retention window (1--365 days, here 14 days); recovery works because it fell within that window, but the share would become permanently unrecoverable once the 14-day retention period elapses', TRUE, 1),
    ('92241c79-7e85-4940-ad34-2c89384f1440', 'cd4daf90-eb72-4db4-a1ad-65c35904849e', 'The file share can always be recovered no matter how much time has passed, since soft delete has no time limit once enabled', FALSE, 2),
    ('4dfcd64f-c1ff-4180-bd2e-490a3680f0e0', 'cd4daf90-eb72-4db4-a1ad-65c35904849e', 'Soft delete cannot be configured with a 14-day retention period; only 7 or 30 days are valid options', FALSE, 3),
    ('c8c33550-4689-4107-96ca-59ddfcb4cad8', 'cd4daf90-eb72-4db4-a1ad-65c35904849e', 'Soft delete only protects individual files, never the entire share, so this recovery should not have been possible', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a42dd408-3234-413d-a062-22457db1502d', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso wants branch-office file servers around the world to feel like they have fast local access to a centralized set of files that actually live in Azure Files, with only recently used files kept on local disk to save space. Which Azure File Sync feature and topology enable this?',
        'Correct: A sync group establishes the sync topology with one cloud endpoint (the Azure file share) and up to 50 server endpoints; combined with cloud tiering — which keeps only recently accessed data locally while migrating older data to Azure Files — this exactly matches the described multi-branch, centralized-but-locally-cached scenario. B) is incorrect; a cloud endpoint (the Azure file share) is required as the sync topology''s central point. A) is incorrect; object replication is a Blob Storage feature, not part of Azure File Sync. D) is a networking construct unrelated to Azure File Sync''s server/cloud endpoint model.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a8fc73be-418b-446f-9057-3baf62e616b6', 'a42dd408-3234-413d-a062-22457db1502d', 'Object replication configured between each branch server and Azure Files', FALSE, 1),
    ('fb6eed86-2dda-4bdd-be04-a1bca7721b18', 'a42dd408-3234-413d-a062-22457db1502d', 'A single server endpoint with no cloud endpoint, since Azure File Sync does not require a central Azure file share', FALSE, 2),
    ('dfed6b9d-1229-4394-b403-390eb42c31ef', 'a42dd408-3234-413d-a062-22457db1502d', 'A sync group with a cloud endpoint (the Azure file share) and multiple server endpoints (one per branch office server), combined with cloud tiering to keep only recently accessed files local', TRUE, 3),
    ('03819189-8b5f-44ea-975b-db6963bad13c', 'a42dd408-3234-413d-a062-22457db1502d', 'A single global Standard SKU public IP address shared by all branch offices', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('35fd988d-f91d-486e-824e-6d379376a018', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso''s Windows Server administrator tries to designate the C:\\ system volume as a server endpoint for Azure File Sync and the operation fails. What is the correct explanation?',
        'Correct: A server endpoint must be an NTFS-formatted volume on a registered Windows server, and it explicitly cannot be the system volume — this restriction directly explains the failure when attempting to use C:\\. B) is incorrect; Azure File Sync server endpoints are specifically a Windows Server feature. C) is a fabricated, unrelated limit not evidenced by the scenario (and the actual limit is 100 sync groups per Storage Sync Service, not 50 — 50 is the server endpoint limit per sync group). D) is incorrect; NTFS is required, not FAT32.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('204c6400-daf4-4cf9-94e5-5f04961317e2', '35fd988d-f91d-486e-824e-6d379376a018', 'Server endpoints require a FAT32-formatted volume, and NTFS is not supported', FALSE, 1),
    ('3523267b-0ec2-4335-87ed-68194a8c0cf7', '35fd988d-f91d-486e-824e-6d379376a018', 'The Storage Sync Service has already reached its maximum of 50 sync groups', FALSE, 2),
    ('f76488c2-bb11-48ac-ac8b-c67802cd0429', '35fd988d-f91d-486e-824e-6d379376a018', 'A server endpoint must be an NTFS-formatted volume and cannot be the system volume; cloud tiering is also not supported on the system volume', TRUE, 3),
    ('565db36a-533c-452d-bbac-f93b4a34bcbe', '35fd988d-f91d-486e-824e-6d379376a018', 'Server endpoints can only be configured on Linux servers, never Windows Server', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('412ca17c-1f77-482f-845b-fd8a2ccf14ee', 'ca8f48a1-4efe-4f26-88e2-29b8a5dff43c', 'SINGLE_CHOICE', 'Contoso''s security team wants file share access controlled through the same Active Directory identities already used on-premises, rather than through static storage account keys shared among many users. Which authentication approach should they configure for Azure Files, and what is the key benefit over the alternative?',
        'Correct: Identity-based authentication over SMB supports on-premises AD DS, Microsoft Entra Domain Services, and Microsoft Entra Kerberos as sources, letting access be tied to individual AD/Entra identities with RBAC role assignments — unlike access keys, which are static, grant full access control, bypass access-control restrictions, and are explicitly discouraged from being shared. B) is incorrect and contradicts the module''s explicit caution against sharing storage account keys. C) is incorrect; a single indefinitely shared SAS suffers from the same lack of per-user accountability as a shared key. D) removes authentication entirely, which is not a recommended security posture.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('928a5d95-2ab1-4323-9390-aa5888b6abd4', '412ca17c-1f77-482f-845b-fd8a2ccf14ee', 'Identity-based authentication over SMB (using on-premises AD DS, Microsoft Entra Domain Services, or Microsoft Entra Kerberos), which ties access to individual identities instead of a single shared secret that grants full account access if leaked', TRUE, 1),
    ('0296bfba-797a-4829-9611-58a77bdd9f25', '412ca17c-1f77-482f-845b-fd8a2ccf14ee', 'Access keys, since they are the most secure and identity-aware method available', FALSE, 2),
    ('c5f3a0ef-842b-48c4-90af-89ba28a5e0be', '412ca17c-1f77-482f-845b-fd8a2ccf14ee', 'Disabling authentication entirely and relying on network isolation alone', FALSE, 3),
    ('a64446e6-933c-4b20-80e8-c9939036256b', '412ca17c-1f77-482f-845b-fd8a2ccf14ee', 'A single shared access signature issued once and distributed to every employee indefinitely', FALSE, 4);
