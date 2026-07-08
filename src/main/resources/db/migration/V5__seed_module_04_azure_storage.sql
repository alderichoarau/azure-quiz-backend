-- Module 4 - Azure Storage (real AZ-900 content)
-- Standard questions + explanations sourced from AZ900_ANSWER_KEY_Formateur.docx
-- Scenario questions sourced from Module_04_Scenarios_AZ900.docx; that document has no
-- written answer key (trainer corrects live), so their correct answers/explanations were
-- determined from AZ-900 fundamentals rather than copied from an official source - please
-- give them a quick review.

INSERT INTO module (id, certification_id, code, title, description, position)
VALUES ('736b50f7-6329-4779-b960-4e3a1aa03115', '00000000-0000-0000-0000-000000000001', 'module-04-azure-storage', 'Module 4 - Azure Storage',
        'Storage Accounts, Redundancy Options, Blob/Files/Queues/Disks, Azure Migrate, Azure Data Box.', 4);

-- Standard MCQ / True-False questions
INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1d602328-abbd-435a-b7eb-c300fa516f2b', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'What must be globally unique when creating an Azure Storage Account?',
        'Azure Storage Account names must be globally unique because they form part of the URL used to access the storage endpoint.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('39e65ac3-da38-4108-84e9-48f95187a4a1', '1d602328-abbd-435a-b7eb-c300fa516f2b', 'The resource group name', FALSE, 1),
    ('43d45f28-c4fa-4d6c-8e41-de37960ad292', '1d602328-abbd-435a-b7eb-c300fa516f2b', 'The storage account name', TRUE, 2),
    ('763c4bb1-71ea-43f7-80b3-85811e1219f0', '1d602328-abbd-435a-b7eb-c300fa516f2b', 'The subscription ID', FALSE, 3),
    ('dcd3bd96-9a2c-47a7-94f3-3856a74a88be', '1d602328-abbd-435a-b7eb-c300fa516f2b', 'The region name', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1ec935b5-50f0-4e1d-ac85-656e6b67becb', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'Which Azure Storage service is best for storing large amounts of unstructured data such as images, videos, and backups?',
        'Azure Blob Storage is optimized for storing massive amounts of unstructured data (text, binary, images, videos, backups).', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ce940eb8-8122-4f54-86f7-2bf29161de74', '1ec935b5-50f0-4e1d-ac85-656e6b67becb', 'Azure Files', FALSE, 1),
    ('53c82a24-b73a-42a5-a5fb-9be9469d1d22', '1ec935b5-50f0-4e1d-ac85-656e6b67becb', 'Azure Queues', FALSE, 2),
    ('16aabc73-ac62-429a-aa0d-f1dc4741beef', '1ec935b5-50f0-4e1d-ac85-656e6b67becb', 'Azure Blob Storage', TRUE, 3),
    ('c5f625c5-274c-4d00-b705-53910e436a53', '1ec935b5-50f0-4e1d-ac85-656e6b67becb', 'Azure Disks', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('67242f1b-6db0-4cf5-a318-6d7239ece26e', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'Which Azure Storage service provides fully managed file shares accessible via the SMB protocol, ideal for replacing on-premises file servers?',
        'Azure Files offers managed cloud file shares accessible via SMB and NFS protocols, compatible with Windows, Linux, and macOS.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2be41c33-45b6-4da6-a8e1-f497e5126a36', '67242f1b-6db0-4cf5-a318-6d7239ece26e', 'Azure Blob Storage', FALSE, 1),
    ('280a5a02-d208-450f-85ff-dd8a7bd72015', '67242f1b-6db0-4cf5-a318-6d7239ece26e', 'Azure Queues', FALSE, 2),
    ('17e8e290-c5c1-4da8-ba1e-58cbea91668f', '67242f1b-6db0-4cf5-a318-6d7239ece26e', 'Azure Disks', FALSE, 3),
    ('4fb84f6d-3523-4d09-8dc4-dfc968b6fc6b', '67242f1b-6db0-4cf5-a318-6d7239ece26e', 'Azure Files', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6bbdff2e-2533-4b96-82fd-e1c9a2d91264', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'Which Azure Storage service is used to store messages that can be accessed by multiple services in a decoupled architecture?',
        'Azure Queue Storage stores large numbers of messages that can be accessed asynchronously by other application components.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c904655e-68bd-4bb1-a876-2649e9f4b645', '6bbdff2e-2533-4b96-82fd-e1c9a2d91264', 'Azure Blob Storage', FALSE, 1),
    ('006daacc-6a4a-40a7-b4c8-3ba87daa7e87', '6bbdff2e-2533-4b96-82fd-e1c9a2d91264', 'Azure Queues', TRUE, 2),
    ('b9c6e8a4-3be4-4054-8279-c07df1aa9d18', '6bbdff2e-2533-4b96-82fd-e1c9a2d91264', 'Azure Files', FALSE, 3),
    ('88c88f5d-4d11-42e3-9d4f-0f3225325f36', '6bbdff2e-2533-4b96-82fd-e1c9a2d91264', 'Azure Disks', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('342e8969-7d7c-416c-8807-011ba7000e40', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'Which Azure Storage service provides high-performance block storage for use with Azure Virtual Machines?',
        'Azure Managed Disks provide block-level storage for VMs, available in HDD, SSD, and Ultra Disk tiers.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('757f6741-7ed1-432c-bb09-6157c665eb72', '342e8969-7d7c-416c-8807-011ba7000e40', 'Azure Blob Storage', FALSE, 1),
    ('d793ac42-3d14-423e-a5a0-99b2790ee9a5', '342e8969-7d7c-416c-8807-011ba7000e40', 'Azure Files', FALSE, 2),
    ('9f672e00-c15b-429f-9dfd-58f9c667a94c', '342e8969-7d7c-416c-8807-011ba7000e40', 'Azure Queues', FALSE, 3),
    ('9c1d3f48-b3a3-41ff-af18-fd1b51d64c32', '342e8969-7d7c-416c-8807-011ba7000e40', 'Azure Disks (Managed Disks)', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9788f148-eab7-4166-8192-b167ce73ab58', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'What does LRS (Locally Redundant Storage) provide?',
        'LRS replicates data three times synchronously within a single physical location (datacenter) in the primary region. Cheapest option but lowest durability.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9248e730-da28-4b25-be59-268ad395a44f', '9788f148-eab7-4166-8192-b167ce73ab58', 'Three copies of data across three different Azure regions', FALSE, 1),
    ('a82bc56d-c34a-447a-b43e-354d4b794603', '9788f148-eab7-4166-8192-b167ce73ab58', 'Three synchronous copies of data within a single datacenter', TRUE, 2),
    ('785b2c14-3745-48a8-800c-2890d37040d7', '9788f148-eab7-4166-8192-b167ce73ab58', 'Six copies across two regions', FALSE, 3),
    ('03aee2f6-335e-4aa0-afa1-8ea27e92de0a', '9788f148-eab7-4166-8192-b167ce73ab58', 'Two copies across two different datacenters in the same region', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('01f0b339-9108-454b-979b-bc1a46d45689', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'What does ZRS (Zone-Redundant Storage) provide?',
        'ZRS replicates data synchronously across three Availability Zones in the primary region, protecting against datacenter-level failures.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b4e418ea-1478-492c-baed-c88333344115', '01f0b339-9108-454b-979b-bc1a46d45689', 'Three copies within the same datacenter', FALSE, 1),
    ('4118393a-849c-4a1b-abf9-f7ec6d94d7d3', '01f0b339-9108-454b-979b-bc1a46d45689', 'Three synchronous copies across three Availability Zones in the primary region', TRUE, 2),
    ('93f163b7-d2a1-4026-926c-1900b3829308', '01f0b339-9108-454b-979b-bc1a46d45689', 'Six copies across two paired regions', FALSE, 3),
    ('33acad71-de3f-4fa6-a713-c9870ddd555c', '01f0b339-9108-454b-979b-bc1a46d45689', 'Copies in multiple countries', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fd02dd72-c585-4e1f-a069-9df6df84dbc6', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'What does GRS (Geo-Redundant Storage) provide?',
        'GRS provides six copies: three in the primary region (like LRS) and three in a geographically distant secondary region.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8afddf85-087b-4598-adc5-39b77f9636de', 'fd02dd72-c585-4e1f-a069-9df6df84dbc6', 'Three copies within one datacenter', FALSE, 1),
    ('5b8fb0a8-dca6-41ea-8e1a-18ffd571cd79', 'fd02dd72-c585-4e1f-a069-9df6df84dbc6', 'Three copies across three AZs', FALSE, 2),
    ('ac397e5d-de4f-4420-9dab-741d4d697f2a', 'fd02dd72-c585-4e1f-a069-9df6df84dbc6', 'Six copies: three in the primary region and three in a paired secondary region', TRUE, 3),
    ('f6e1bb6f-732c-4022-8333-4280424809cc', 'fd02dd72-c585-4e1f-a069-9df6df84dbc6', 'Data only in two AZs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1871f76f-3774-41da-b1a2-773cf5814776', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'Which storage redundancy option provides the highest durability and protection against both zone and regional failures?',
        'GZRS combines ZRS in the primary region (across 3 AZs) with GRS replication to a secondary region — the highest durability option.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f913afe7-355d-4876-91cf-5dd2cd04e832', '1871f76f-3774-41da-b1a2-773cf5814776', 'LRS', FALSE, 1),
    ('f19f83b0-9117-4e64-bce8-1719f2202f17', '1871f76f-3774-41da-b1a2-773cf5814776', 'ZRS', FALSE, 2),
    ('fe6cc3f5-b340-4310-a270-eb724f06be74', '1871f76f-3774-41da-b1a2-773cf5814776', 'GRS', FALSE, 3),
    ('79cc77bd-bc5a-4054-9372-4a947e49a4b2', '1871f76f-3774-41da-b1a2-773cf5814776', 'GZRS (Geo-Zone-Redundant Storage)', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ee8ae8f3-3313-41ad-8ca4-ca6bf77bd6aa', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'Which Blob Storage access tier is best for data that is rarely accessed and stored for at least 180 days?',
        'The Archive tier is designed for data that is rarely accessed and can tolerate retrieval latencies of hours. Requires at least 180 days to avoid early deletion fees.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a9b4318e-3159-40a2-a17e-dcbd19024fc1', 'ee8ae8f3-3313-41ad-8ca4-ca6bf77bd6aa', 'Hot tier', FALSE, 1),
    ('3b17d04d-48ce-4ffd-9798-b95eb8943a08', 'ee8ae8f3-3313-41ad-8ca4-ca6bf77bd6aa', 'Cool tier', FALSE, 2),
    ('f422a874-037d-4193-98db-3758f6463c31', 'ee8ae8f3-3313-41ad-8ca4-ca6bf77bd6aa', 'Archive tier', TRUE, 3),
    ('9ece1129-2865-4946-b768-19c7f83e0f0e', 'ee8ae8f3-3313-41ad-8ca4-ca6bf77bd6aa', 'Premium tier', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9c333ea7-9bee-40ec-8b84-91af42de9950', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'Which Blob Storage access tier offers the lowest storage cost but the highest access cost?',
        'Archive storage has the lowest cost per GB stored, but rehydrating (retrieving) data can take hours and is more expensive.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('42c4f82e-f796-4420-83ff-2bc2518703c9', '9c333ea7-9bee-40ec-8b84-91af42de9950', 'Hot', FALSE, 1),
    ('6cb93eee-247d-4c6c-b77f-a521e313787c', '9c333ea7-9bee-40ec-8b84-91af42de9950', 'Cool', FALSE, 2),
    ('0fa72841-cac2-421e-9721-cfc7a13c26aa', '9c333ea7-9bee-40ec-8b84-91af42de9950', 'Archive', TRUE, 3),
    ('d4276cd3-ea87-45dd-b62f-58cb025f9d2c', '9c333ea7-9bee-40ec-8b84-91af42de9950', 'Premium', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d1caa019-4dc6-491a-a49b-bcd033a5fc51', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'What is Azure Migrate?',
        'Azure Migrate is a hub of tools for discovering, assessing, and migrating on-premises workloads (VMs, databases, apps) to Azure.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('84a77495-be54-4596-a1d9-28d8d9f497b6', 'd1caa019-4dc6-491a-a49b-bcd033a5fc51', 'A service to move data between storage tiers', FALSE, 1),
    ('ca68c7c6-0729-4b76-9dd1-7743a6cffb32', 'd1caa019-4dc6-491a-a49b-bcd033a5fc51', 'A unified platform to assess and migrate on-premises servers, databases, and web apps to Azure', TRUE, 2),
    ('1d05a4d6-5b7b-47dc-9364-61e0f9473a0e', 'd1caa019-4dc6-491a-a49b-bcd033a5fc51', 'A VPN migration tool', FALSE, 3),
    ('5fa1b788-aa74-434f-ab81-069823889e03', 'd1caa019-4dc6-491a-a49b-bcd033a5fc51', 'A DNS migration service', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('94f55e31-3f36-4443-aaea-9da66fd92d37', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'What is Azure Data Box?',
        'Azure Data Box is a rugged physical appliance used to ship terabytes or petabytes of data to Azure when internet-based transfer would take too long or isn''t feasible.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6482ebb6-cc63-433c-b3fb-2623c076e897', '94f55e31-3f36-4443-aaea-9da66fd92d37', 'A cloud-based storage account type', FALSE, 1),
    ('aaedd52d-909b-4e34-b308-afabd2f96eb0', '94f55e31-3f36-4443-aaea-9da66fd92d37', 'A physical device used to transfer large amounts of data to Azure when network transfer is impractical', TRUE, 2),
    ('38291cf6-0ffa-4d48-902a-1a0426bf890e', '94f55e31-3f36-4443-aaea-9da66fd92d37', 'A software tool for migrating databases', FALSE, 3),
    ('f874913d-8edc-421d-b69e-b37fe0fa3b5e', '94f55e31-3f36-4443-aaea-9da66fd92d37', 'An Azure storage backup solution', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d125edeb-7864-4691-8d1d-8c2b7809141d', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'Which storage service is most appropriate for storing backup data that needs to be retained for 7 years but accessed very rarely?',
        'Archive tier is ideal for long-term retention data with rare access, offering the lowest cost for stored data.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e07034e5-e056-4e16-bb3e-841808199778', 'd125edeb-7864-4691-8d1d-8c2b7809141d', 'Hot Blob Storage', FALSE, 1),
    ('0268b362-7e80-4906-af84-3afc26d0b2dd', 'd125edeb-7864-4691-8d1d-8c2b7809141d', 'ZRS', FALSE, 2),
    ('ea5422c6-a372-4610-963d-1d2578152acf', 'd125edeb-7864-4691-8d1d-8c2b7809141d', 'Archive Blob Storage', TRUE, 3),
    ('58089b25-97d2-4ae7-b264-a69b6d3338ec', 'd125edeb-7864-4691-8d1d-8c2b7809141d', 'Azure Files', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2a3ea1b8-deee-4ee4-a330-ec734c75de96', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'Which redundancy option replicates data to a secondary geographic region but does NOT allow reading from that secondary region by default?',
        'GRS replicates to a secondary region but read access is only available during a failover. RA-GRS allows read access to the secondary at any time.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2a333141-a980-4761-ad68-50974c13ec14', '2a3ea1b8-deee-4ee4-a330-ec734c75de96', 'LRS', FALSE, 1),
    ('09646455-4284-4461-a398-e74c45963f82', '2a3ea1b8-deee-4ee4-a330-ec734c75de96', 'ZRS', FALSE, 2),
    ('05de0fb9-0c54-4a05-acc3-309cee80cbaa', '2a3ea1b8-deee-4ee4-a330-ec734c75de96', 'GRS', TRUE, 3),
    ('06a9baac-dd5e-4758-be77-f1997aa7f79b', '2a3ea1b8-deee-4ee4-a330-ec734c75de96', 'RA-GRS', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('63f81eec-70cc-4f92-8568-d6188b3447ee', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'What is the purpose of Azure Storage lifecycle management policies?',
        'Lifecycle management policies automatically move blobs between Hot, Cool, and Archive tiers (or delete them) based on rules and age.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('52879dc3-bde9-458a-82eb-e40a63d664b2', '63f81eec-70cc-4f92-8568-d6188b3447ee', 'To encrypt storage data', FALSE, 1),
    ('b401ae31-f27a-493d-9fa1-0b7950bdcd8a', '63f81eec-70cc-4f92-8568-d6188b3447ee', 'To automatically transition blob data between access tiers or delete it based on age', TRUE, 2),
    ('fed797fd-dced-4925-8cb3-6206de8266fb', '63f81eec-70cc-4f92-8568-d6188b3447ee', 'To manage RBAC on storage accounts', FALSE, 3),
    ('c2fd04b8-e6c3-4d3d-b122-352552548f85', '63f81eec-70cc-4f92-8568-d6188b3447ee', 'To replicate data across regions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7663fcb3-1b4b-4423-8eb3-5f5b1c814695', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'Which Azure storage redundancy option allows you to read data from the secondary region even when the primary region is healthy?',
        'RA-GRS replicates to a secondary region and grants read access to that secondary region at any time, not just during failover.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('21565715-5845-477d-85a1-9375d7101712', '7663fcb3-1b4b-4423-8eb3-5f5b1c814695', 'LRS', FALSE, 1),
    ('8295e2d9-1e70-4a9e-89c6-b8a7f3b478a7', '7663fcb3-1b4b-4423-8eb3-5f5b1c814695', 'GRS', FALSE, 2),
    ('17f66033-4c3b-448f-b57c-f0f41411f99b', '7663fcb3-1b4b-4423-8eb3-5f5b1c814695', 'ZRS', FALSE, 3),
    ('30c6b327-8b78-49aa-9e78-4371e14a175c', '7663fcb3-1b4b-4423-8eb3-5f5b1c814695', 'RA-GRS (Read-Access Geo-Redundant Storage)', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b4d3ec5d-aee6-4f4d-8bc3-282119e055be', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'A company needs to migrate 500 TB of data to Azure. Their internet connection is slow. What should they use?',
        'Azure Data Box ships a physical device to the customer, who loads data onto it and ships it back to Microsoft for ingestion into Azure — ideal for large datasets.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8d8ad180-4f31-4598-87c5-026b5451da05', 'b4d3ec5d-aee6-4f4d-8bc3-282119e055be', 'Azure VPN Gateway', FALSE, 1),
    ('eaf01157-9d20-4837-bac7-2cd30c9512b3', 'b4d3ec5d-aee6-4f4d-8bc3-282119e055be', 'Azure Blob Storage lifecycle', FALSE, 2),
    ('22e529d6-eaef-4dff-8305-855e92bf9483', 'b4d3ec5d-aee6-4f4d-8bc3-282119e055be', 'Azure Data Box', TRUE, 3),
    ('3cee5191-a006-4c7c-8664-14fb27745e76', 'b4d3ec5d-aee6-4f4d-8bc3-282119e055be', 'Azure Migrate', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3848d563-4983-4e89-a5ca-0852da9c9d0e', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'Which type of Azure Managed Disk offers the highest performance for I/O-intensive workloads?',
        'Ultra Disk is designed for the most demanding I/O-intensive workloads, offering sub-millisecond latency and high throughput for databases.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f153cdfe-5974-4ac0-a37e-d74b3642c2f7', '3848d563-4983-4e89-a5ca-0852da9c9d0e', 'Standard HDD', FALSE, 1),
    ('0d24514e-4edb-4ee3-ba5d-cd2cb8a31df3', '3848d563-4983-4e89-a5ca-0852da9c9d0e', 'Standard SSD', FALSE, 2),
    ('7528520f-62fd-4e7d-865b-6687919a8a97', '3848d563-4983-4e89-a5ca-0852da9c9d0e', 'Premium SSD', FALSE, 3),
    ('38e871cc-c1b1-40da-a01a-ee9fd632161b', '3848d563-4983-4e89-a5ca-0852da9c9d0e', 'Ultra Disk', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c250df53-a15b-469e-9ef5-6eca21eb14c1', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'What is a Shared Access Signature (SAS) in Azure Storage?',
        'A SAS token is a URI that grants temporary, scoped access to specific storage resources (containers, blobs) without sharing the account key.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5df4d4d3-274f-4900-a095-172c49c50717', 'c250df53-a15b-469e-9ef5-6eca21eb14c1', 'A storage replication mechanism', FALSE, 1),
    ('2300ec68-9018-4797-be4d-ada01b52e9e8', 'c250df53-a15b-469e-9ef5-6eca21eb14c1', 'A URI that grants restricted access rights to Azure Storage resources without exposing the account key', TRUE, 2),
    ('26b66555-aa04-43f0-b340-1fd329609b2d', 'c250df53-a15b-469e-9ef5-6eca21eb14c1', 'A type of storage redundancy', FALSE, 3),
    ('c2797db9-fdcd-4163-87ff-8cb7642f1d34', 'c250df53-a15b-469e-9ef5-6eca21eb14c1', 'A disk encryption method', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d2c9f069-c777-4773-8210-b62ee08f2c41', '736b50f7-6329-4779-b960-4e3a1aa03115', 'MULTIPLE_CHOICE', 'Which TWO Azure Storage redundancy options replicate data to a secondary Azure region? (Choose 2)',
        'GRS and GZRS both replicate data to a geographically paired secondary region. LRS and ZRS only replicate within the primary region.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('334e38e0-1c55-4ea7-a3d6-dec4d4cf6268', 'd2c9f069-c777-4773-8210-b62ee08f2c41', 'LRS', FALSE, 1),
    ('b68d5990-f07d-4039-a302-68fa1ebb46b9', 'd2c9f069-c777-4773-8210-b62ee08f2c41', 'ZRS', FALSE, 2),
    ('6836e3c7-9139-4282-9f03-d65fb5cc0760', 'd2c9f069-c777-4773-8210-b62ee08f2c41', 'GRS', TRUE, 3),
    ('1149fc83-4a2e-4da2-b741-53e012b9133f', 'd2c9f069-c777-4773-8210-b62ee08f2c41', 'GZRS', TRUE, 4),
    ('0d2cf9e7-ffaa-47f0-8a61-c2360e01e93e', 'd2c9f069-c777-4773-8210-b62ee08f2c41', 'Premium SSD', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('65f03c7c-69ad-473c-9280-1e5d4ed0d28d', '736b50f7-6329-4779-b960-4e3a1aa03115', 'MULTIPLE_CHOICE', 'Which TWO Azure Blob Storage tiers are correct? (Choose 2)',
        'Archive has the cheapest storage cost. Hot tier is for frequently accessed data with higher storage cost but low access cost.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9749a497-ce71-40e7-99ed-a4c2826764d0', '65f03c7c-69ad-473c-9280-1e5d4ed0d28d', 'Archive tier has the lowest storage cost', TRUE, 1),
    ('187c9058-9931-489a-aa55-db209b06fa30', '65f03c7c-69ad-473c-9280-1e5d4ed0d28d', 'Hot tier is designed for infrequently accessed data', FALSE, 2),
    ('f1c741b8-a685-4de0-81d1-a53adb0c8d7e', '65f03c7c-69ad-473c-9280-1e5d4ed0d28d', 'Cool tier is best for data accessed frequently', FALSE, 3),
    ('e3bcfb61-e6c1-46fa-ab6b-78ce26964ffe', '65f03c7c-69ad-473c-9280-1e5d4ed0d28d', 'Archive tier data can be read instantly without rehydration', FALSE, 4),
    ('c116c172-f541-451a-9b81-e2d719eb9085', '65f03c7c-69ad-473c-9280-1e5d4ed0d28d', 'Hot tier is best for frequently accessed data', TRUE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7f3eae2b-4c85-4e36-a538-2e32ba788cae', '736b50f7-6329-4779-b960-4e3a1aa03115', 'MULTIPLE_CHOICE', 'Which TWO Azure services are part of the Azure Migrate hub? (Choose 2)',
        'Azure Migrate hub includes the Server Assessment tool (to evaluate readiness) and Server Migration tool (to perform the migration).', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('38117f36-d903-4ce7-b8e8-ebcf6b28f22b', '7f3eae2b-4c85-4e36-a538-2e32ba788cae', 'Azure Data Box', FALSE, 1),
    ('ce48023f-6d4f-4593-ac2d-ea1005963105', '7f3eae2b-4c85-4e36-a538-2e32ba788cae', 'Server Assessment tool', TRUE, 2),
    ('4d3093f7-68a9-451b-905c-1131b3e2d261', '7f3eae2b-4c85-4e36-a538-2e32ba788cae', 'Azure Functions', FALSE, 3),
    ('9c1b9721-7e68-4537-92b9-c62662893349', '7f3eae2b-4c85-4e36-a538-2e32ba788cae', 'Azure Migrate: Server Migration tool', TRUE, 4),
    ('32649192-b09b-4892-8b69-f79a7d5a7b01', '7f3eae2b-4c85-4e36-a538-2e32ba788cae', 'Azure Monitor', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('43739d24-3046-4909-a6e1-d6cf93f5b6a0', '736b50f7-6329-4779-b960-4e3a1aa03115', 'MULTIPLE_CHOICE', 'Which TWO statements about Azure Storage Accounts are correct? (Choose 2)',
        'Storage account names must be globally unique (used in URLs), and one account can contain Blobs, Files, Queues, and Tables.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3e39eebb-94bd-4b42-ae25-22886dacf3b6', '43739d24-3046-4909-a6e1-d6cf93f5b6a0', 'The storage account name must be globally unique', TRUE, 1),
    ('d59885d1-72dc-4156-b970-191a2858803b', '43739d24-3046-4909-a6e1-d6cf93f5b6a0', 'A storage account can store Blobs, Files, Queues, and Tables', TRUE, 2),
    ('c8475823-2b97-43d6-b536-be77c71766f6', '43739d24-3046-4909-a6e1-d6cf93f5b6a0', 'A single storage account can only contain one type of storage service', FALSE, 3),
    ('e03c5cfe-01cf-4e97-a3ae-db75e8bc339e', '43739d24-3046-4909-a6e1-d6cf93f5b6a0', 'Storage accounts are always replicated across regions by default', FALSE, 4),
    ('161bec21-25c2-4e58-9c03-cc88da98c42a', '43739d24-3046-4909-a6e1-d6cf93f5b6a0', 'Storage accounts don''t support encryption', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('65bc70fc-76de-4b99-82f5-55b9fa82d207', '736b50f7-6329-4779-b960-4e3a1aa03115', 'MULTIPLE_CHOICE', 'Which TWO factors affect the cost of Azure Storage? (Choose 2)',
        'Azure Storage costs depend on the quantity of data stored (per GB/month) and the number of operations (reads, writes, deletes).', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4f74c5fa-93fd-4885-bb66-eba8e6496a2e', '65bc70fc-76de-4b99-82f5-55b9fa82d207', 'The number of Azure VMs in the same region', FALSE, 1),
    ('00b81de3-52d4-4759-b485-84b577175bde', '65bc70fc-76de-4b99-82f5-55b9fa82d207', 'The amount of data stored', TRUE, 2),
    ('76abc72f-5131-4e13-adf9-9991b01b2ac1', '65bc70fc-76de-4b99-82f5-55b9fa82d207', 'The number of read and write operations', TRUE, 3),
    ('f3be61fd-292d-47a5-b224-038417ded378', '65bc70fc-76de-4b99-82f5-55b9fa82d207', 'The color scheme of the Azure Portal', FALSE, 4),
    ('654c588a-e3b3-486c-bd56-e1dc9a31bda3', '65bc70fc-76de-4b99-82f5-55b9fa82d207', 'The age of the Azure subscription', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('90259b7e-9240-4108-8ef2-461d8d6f52d5', '736b50f7-6329-4779-b960-4e3a1aa03115', 'TRUE_FALSE', 'Azure Blob Storage supports three access tiers: Hot, Cool, and Archive.',
        'Azure Blob Storage offers Hot (frequent access), Cool (infrequent access, min 30 days), and Archive (rare access, min 180 days) tiers.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1a40daf4-5dcd-4c40-9294-b171de863c82', '90259b7e-9240-4108-8ef2-461d8d6f52d5', 'True', TRUE, 1),
    ('d7b343cb-dcf3-425f-b5da-438dbb6a4d97', '90259b7e-9240-4108-8ef2-461d8d6f52d5', 'False', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d34dca84-ea6f-439a-b869-f1c7d45ff8fc', '736b50f7-6329-4779-b960-4e3a1aa03115', 'TRUE_FALSE', 'LRS (Locally Redundant Storage) replicates data across three different Azure regions.',
        'LRS replicates data three times within a single datacenter in the primary region. For cross-region replication, use GRS or GZRS.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('63286cf2-7157-4ea9-b873-db7a4069f257', 'd34dca84-ea6f-439a-b869-f1c7d45ff8fc', 'True', FALSE, 1),
    ('473be336-9fae-499e-99bf-caae3b39bc7c', 'd34dca84-ea6f-439a-b869-f1c7d45ff8fc', 'False', TRUE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9ca752e6-d9e0-44ee-b231-2654e5b866fb', '736b50f7-6329-4779-b960-4e3a1aa03115', 'TRUE_FALSE', 'Azure Data Box can be used to migrate large datasets to Azure when internet bandwidth is insufficient.',
        'Azure Data Box is a physical data transfer device designed for large migrations where uploading over the internet would be too slow or expensive.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('45baf905-30a8-4b00-a2f3-e91ce113b953', '9ca752e6-d9e0-44ee-b231-2654e5b866fb', 'True', TRUE, 1),
    ('1b26643b-e6b5-433c-a04d-8f137f7d86de', '9ca752e6-d9e0-44ee-b231-2654e5b866fb', 'False', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('befdbbe1-7967-446c-8e19-8e87a1475078', '736b50f7-6329-4779-b960-4e3a1aa03115', 'TRUE_FALSE', 'Azure Files shares can be mounted simultaneously on cloud and on-premises machines.',
        'Azure Files supports SMB and NFS protocols, allowing simultaneous mounting on Windows, Linux, and macOS — both in Azure and on-premises.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f72c2463-b15b-417c-acfc-963f2b067ab3', 'befdbbe1-7967-446c-8e19-8e87a1475078', 'True', TRUE, 1),
    ('c0b44551-bb55-4d0f-8417-53173a31158d', 'befdbbe1-7967-446c-8e19-8e87a1475078', 'False', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('473430f8-4421-40b0-bd39-6c2e7795eed9', '736b50f7-6329-4779-b960-4e3a1aa03115', 'TRUE_FALSE', 'ZRS (Zone-Redundant Storage) protects data against an entire Azure region failure.',
        'ZRS replicates across Availability Zones within one region, protecting against datacenter-level failures. For region-level protection, use GRS or GZRS.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('44a0ab7b-1afa-43b6-a18d-898976418fc9', '473430f8-4421-40b0-bd39-6c2e7795eed9', 'True', FALSE, 1),
    ('0597562c-3668-45e3-9935-3808419ed0da', '473430f8-4421-40b0-bd39-6c2e7795eed9', 'False', TRUE, 2);

-- Scenario questions (answers derived from AZ-900 fundamentals, see note above)
INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4a783951-5517-4fe4-bae2-15b7f6c959a4', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'A hospital must retain patient scan images for a minimum of 7 years to comply with medical regulations. The images are accessed frequently during the first 6 months after creation, occasionally during months 7-12, and almost never after the first year. Storage costs must be minimized. The solution must meet the following requirements: - 7 years of retention. - Frequent access in first 6 months. - Rare access after 12 months. - Minimize cost. Which combination of Blob access tiers and lifecycle management best addresses this?',
        'A lifecycle policy moving data from Hot to Cool and then to Archive automatically matches decreasing access frequency over time while minimizing cost.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f617570e-f45b-4556-a9eb-6eba02a858d4', '4a783951-5517-4fe4-bae2-15b7f6c959a4', 'Store all images in Hot tier for 7 years', FALSE, 1),
    ('bb0eb066-52b5-4dc1-9548-abe05077d7dc', '4a783951-5517-4fe4-bae2-15b7f6c959a4', 'Start in Hot, move to Cool after 30 days, move to Archive after 180 days', TRUE, 2),
    ('0aef13c7-5782-4539-ac55-15e78531420d', '4a783951-5517-4fe4-bae2-15b7f6c959a4', 'Start in Cool, move to Archive after 30 days', FALSE, 3),
    ('c7b8ecd8-9ea8-4243-b4f9-aca4f4bec40b', '4a783951-5517-4fe4-bae2-15b7f6c959a4', 'Store all images in Archive from day one', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('db2e9c0f-0235-42d3-9143-a17a60ff8704', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'A media company stores video files for active production projects. These files are accessed multiple times per day by editors and rendering servers. The company wants the lowest possible access latency and is willing to pay more for storage to get faster access. The solution must meet the following requirements: - Files accessed multiple times daily. - Lowest possible access latency. - Cost of access more important than cost of storage. Which Azure Blob Storage access tier should they use?',
        'Premium Block Blob storage offers the lowest possible latency for frequently accessed files, at a higher storage cost in exchange for faster access.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1d6e5570-fc2c-4b51-96b1-b22e969c882b', 'db2e9c0f-0235-42d3-9143-a17a60ff8704', 'Archive', FALSE, 1),
    ('83c287cb-230c-494a-b478-2eae63bbceb4', 'db2e9c0f-0235-42d3-9143-a17a60ff8704', 'Cool', FALSE, 2),
    ('8f7ef61c-c535-464f-abcc-f79e127fcd40', 'db2e9c0f-0235-42d3-9143-a17a60ff8704', 'Hot', FALSE, 3),
    ('19ead382-24fd-44f0-aeb3-845d9221c0b6', 'db2e9c0f-0235-42d3-9143-a17a60ff8704', 'Premium Block Blob', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b4898688-b12d-4eec-9b4c-036e21cf3ae4', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'A company is migrating 800 TB of data from their on-premises datacenter to Azure. Their internet connection is 1 Gbps. The IT manager calculates that transferring 800 TB over 1 Gbps would take approximately 74 days. The solution must meet the following requirements: - 800 TB data migration to Azure. - Migration must complete within 2 weeks. - Internet bandwidth is insufficient for the timeline. Which Azure service should they use?',
        'Azure Data Box Heavy physically ships very large datasets (hundreds of TB) to Azure far faster than a slow internet connection could.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2929f643-5392-4e64-934a-2e8b487f8179', 'b4898688-b12d-4eec-9b4c-036e21cf3ae4', 'Azure ExpressRoute (10 Gbps circuit)', FALSE, 1),
    ('7d1a89ba-02d4-4c2e-a0cb-b0e26eccd63b', 'b4898688-b12d-4eec-9b4c-036e21cf3ae4', 'Azure Data Box Heavy', TRUE, 2),
    ('787c01fd-cfb2-4d53-88b5-67d8966d4f80', 'b4898688-b12d-4eec-9b4c-036e21cf3ae4', 'AzCopy over the existing internet connection', FALSE, 3),
    ('4347fd7b-526d-4663-9a1f-27f505279652', 'b4898688-b12d-4eec-9b4c-036e21cf3ae4', 'Azure Migrate with agent-based replication', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cf25cfa3-2b59-4cff-82f4-4831d01a9f30', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'A company needs to replace its aging on-premises Windows file server. The new solution must: - Be accessible from Windows and Linux machines simultaneously. - Use the SMB 3.0 protocol. - Allow files to be mapped as a network drive on Windows. - Require no server management. Which Azure service should they use?',
        'Azure Files provides SMB 3.0 file shares that can be mapped as a network drive and mounted from Windows and Linux simultaneously, fully managed.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('834263a9-3159-4e1b-9ef5-611e4b20cb62', 'cf25cfa3-2b59-4cff-82f4-4831d01a9f30', 'Azure Blob Storage', FALSE, 1),
    ('6a219815-779d-4e14-802b-06cab2a757ef', 'cf25cfa3-2b59-4cff-82f4-4831d01a9f30', 'Azure Queue Storage', FALSE, 2),
    ('b0022112-eb42-4a9e-bd46-86e43d25e137', 'cf25cfa3-2b59-4cff-82f4-4831d01a9f30', 'Azure Table Storage', FALSE, 3),
    ('0d01934d-3015-4f66-8103-a7ca5933e312', 'cf25cfa3-2b59-4cff-82f4-4831d01a9f30', 'Azure Files', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6f508055-ced0-40b6-bd89-ff3ad10989c1', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'A company is building a distributed order processing system. When a customer places an order, a message is generated and must be stored temporarily until the fulfillment service picks it up and processes it. The two services operate independently and asynchronously. The solution must meet the following requirements: - Store messages temporarily between services. - Support asynchronous processing. - Messages must be processed in order (FIFO). - Simple and cost-effective. Which Azure Storage service should they use?',
        'Azure Queue Storage stores messages temporarily for asynchronous, decoupled processing between independent services, in a simple FIFO-like manner.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('83c2c272-7cc0-4c42-b809-6225bc4f258c', '6f508055-ced0-40b6-bd89-ff3ad10989c1', 'Azure Blob Storage', FALSE, 1),
    ('6c83b7d7-cb57-4652-ad8c-a320313e34f5', '6f508055-ced0-40b6-bd89-ff3ad10989c1', 'Azure Queue Storage', TRUE, 2),
    ('a7503aa6-3bdd-400f-b703-ab9a1654581d', '6f508055-ced0-40b6-bd89-ff3ad10989c1', 'Azure Files', FALSE, 3),
    ('f2d8fbc4-439e-4f9f-b12a-97fbedacb162', '6f508055-ced0-40b6-bd89-ff3ad10989c1', 'Azure Table Storage', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8b12af7f-eb13-49b9-90df-f559a03ad38c', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'A company is selecting a redundancy option for Azure Storage. Their primary concern is protection against a complete Azure regional outage. They also need to read data from the secondary region at any time without waiting for a failover event. The solution must meet the following requirements: - Protection against complete regional outage. - Read access to secondary region at any time. - Maximum geographic redundancy. Which redundancy option should they choose?',
        'RA-GRS replicates data to a secondary region and, unlike GRS, allows read access to that secondary region at any time, not only during a failover.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a2ac0f55-2fd4-45a5-911f-9b6e004ce262', '8b12af7f-eb13-49b9-90df-f559a03ad38c', 'LRS', FALSE, 1),
    ('24faf203-3ff6-46e1-b7e6-0480b7c4ba25', '8b12af7f-eb13-49b9-90df-f559a03ad38c', 'ZRS', FALSE, 2),
    ('072bde68-7f09-4ce7-ab95-9e09f827e585', '8b12af7f-eb13-49b9-90df-f559a03ad38c', 'GRS', FALSE, 3),
    ('e1b36f0f-616f-4d2c-9d4d-c2c0b2ad3443', '8b12af7f-eb13-49b9-90df-f559a03ad38c', 'RA-GRS', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0076870d-dc5b-49fe-a514-10bfcdda388e', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'A startup is building a new application and needs to choose an Azure Storage redundancy option. The data is non-critical (development logs). Cost must be absolutely minimized. High durability is not a priority. The solution must meet the following requirements: - Non-critical data. - Lowest possible storage cost. - Single region is acceptable. Which redundancy option should they choose?',
        'LRS is the cheapest redundancy option, replicating data only within a single datacenter - appropriate for non-critical, single-region data.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fd346455-7fd1-44dc-8178-c891e82d2a36', '0076870d-dc5b-49fe-a514-10bfcdda388e', 'GZRS', FALSE, 1),
    ('3767af20-1a7d-492e-b9ca-db8a9d3c41ec', '0076870d-dc5b-49fe-a514-10bfcdda388e', 'GRS', FALSE, 2),
    ('1bf640e4-8114-4ccd-80d8-62f861648653', '0076870d-dc5b-49fe-a514-10bfcdda388e', 'ZRS', FALSE, 3),
    ('4c989c57-7013-44e0-8d75-0d31960d1cb6', '0076870d-dc5b-49fe-a514-10bfcdda388e', 'LRS', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b0469ee6-82a3-4fc9-9552-3cf41a55f814', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'A company needs to grant a third-party analytics partner temporary read-only access to a specific Azure Blob container containing sales data. The access should expire automatically after 48 hours. The company''s storage account keys must not be shared. The solution must meet the following requirements: - Read-only access to a specific container. - Access expires after 48 hours automatically. - Storage account keys must not be shared. What should they provide to the partner?',
        'A Shared Access Signature (SAS) token grants temporary, scoped, read-only access to a specific container without exposing the storage account keys.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('55b990fa-be3b-41be-bcb2-b7dbce0c2979', 'b0469ee6-82a3-4fc9-9552-3cf41a55f814', 'The storage account access key', FALSE, 1),
    ('a5d77c81-4b25-49a0-9308-fee2fc835b61', 'b0469ee6-82a3-4fc9-9552-3cf41a55f814', 'A Shared Access Signature (SAS) token with read permissions and 48-hour expiry', TRUE, 2),
    ('217fd8d4-64da-4e36-a123-ea8aade156a4', 'b0469ee6-82a3-4fc9-9552-3cf41a55f814', 'An Azure AD guest user account with Contributor role', FALSE, 3),
    ('c0dce81d-46ab-402f-aea9-eabc591c07a4', 'b0469ee6-82a3-4fc9-9552-3cf41a55f814', 'Public access enabled on the container', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('aeaaf486-f2c4-4c76-9fb1-193ab0b8d1b0', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'A company has on-premises VMware virtual machines they want to migrate to Azure. Before migrating, they need to assess which VMs are ready for Azure, what size VMs they should use in Azure, and what the estimated monthly Azure cost would be. The solution must meet the following requirements: - Discover and inventory on-premises VMs. - Assess Azure readiness. - Get Azure VM size recommendations. - Estimate monthly Azure costs. Which Azure service provides all of these capabilities?',
        'Azure Migrate is the hub for discovering on-premises VMs, assessing Azure readiness, sizing recommendations, and cost estimation before migration.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e3033a4b-1401-4abd-b4db-5afdc0e8599a', 'aeaaf486-f2c4-4c76-9fb1-193ab0b8d1b0', 'Azure Data Box', FALSE, 1),
    ('e7f46d6a-4564-4098-bd09-40244c9f9503', 'aeaaf486-f2c4-4c76-9fb1-193ab0b8d1b0', 'Azure Backup', FALSE, 2),
    ('facd051d-8dd2-46e5-ae5e-40966e67dc25', 'aeaaf486-f2c4-4c76-9fb1-193ab0b8d1b0', 'Azure Site Recovery', FALSE, 3),
    ('07a4590d-5f3b-4486-b56d-74b4c45455a0', 'aeaaf486-f2c4-4c76-9fb1-193ab0b8d1b0', 'Azure Migrate', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6511371b-2e0a-4eb6-a096-2f55af310edb', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'A company wants to automatically transition Azure Blob data through storage tiers based on age to minimize costs. Blobs should move from Hot to Cool after 30 days of no access, and be deleted entirely after 365 days. The solution must meet the following requirements: - Automatic tiering based on last access date. - Hot → Cool after 30 days. - Delete after 365 days. - No manual intervention. Which Azure feature should they configure?',
        'Blob lifecycle management policies automatically move or delete blobs based on age and last-access rules without manual intervention.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('160d4bc0-f3dd-4730-8bc2-2795f0926e4e', '6511371b-2e0a-4eb6-a096-2f55af310edb', 'Azure Policy', FALSE, 1),
    ('9a8b6091-dd44-467a-b523-66f267613c9f', '6511371b-2e0a-4eb6-a096-2f55af310edb', 'Azure Blob Lifecycle Management policies', TRUE, 2),
    ('dd53e153-657f-49b7-892f-5adc37febf6d', '6511371b-2e0a-4eb6-a096-2f55af310edb', 'Azure Automation runbooks', FALSE, 3),
    ('eb9890b4-ed14-4f21-9a40-6817796f1ad7', '6511371b-2e0a-4eb6-a096-2f55af310edb', 'Azure Monitor with action groups', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('51214ead-1aee-4340-a3bd-ffea22b7865c', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'A company is choosing between GRS and GZRS for their critical business data. Their primary concern is maximum protection against both datacenter-level failures within their region AND complete regional outages. Budget is secondary. The solution must meet the following requirements: - Protection against datacenter failures within the primary region. - Protection against complete regional outage. - Maximum durability. Which option provides the highest durability?',
        'GZRS combines zone-redundancy in the primary region with geo-replication to a secondary region, offering the highest durability of the options.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8ca22166-dba9-4d2a-bfad-6eb46e986648', '51214ead-1aee-4340-a3bd-ffea22b7865c', 'GRS', FALSE, 1),
    ('7365d301-b2b7-4786-a96f-3adf69df2369', '51214ead-1aee-4340-a3bd-ffea22b7865c', 'LRS + manual backup', FALSE, 2),
    ('a331628c-f9a7-4dc3-974f-8466cffcaf3a', '51214ead-1aee-4340-a3bd-ffea22b7865c', 'ZRS', FALSE, 3),
    ('132a2baa-19c8-44ac-8dca-8d3ba00ab53e', '51214ead-1aee-4340-a3bd-ffea22b7865c', 'GZRS', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cd0da17c-a58f-47bb-8105-3877d61f0ae9', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'A company stores structured NoSQL data in key-value pairs for their IoT device telemetry application. The data does not require complex relational queries. They need a cost-effective, scalable storage solution. The solution must meet the following requirements: - Structured data in key-value format. - No relational queries needed. - Highly scalable. - Cost-effective. Which Azure Storage service is most appropriate?',
        'Azure Table Storage is a cost-effective, highly scalable NoSQL key-value store, well suited for structured data like IoT telemetry.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a711b374-2e87-4dc6-8c11-fd078b007a30', 'cd0da17c-a58f-47bb-8105-3877d61f0ae9', 'Azure SQL Database', FALSE, 1),
    ('8e69129d-6fac-4f7f-8041-4b9e2ae76e4b', 'cd0da17c-a58f-47bb-8105-3877d61f0ae9', 'Azure Blob Storage', FALSE, 2),
    ('3a59fe6c-894f-4a86-9b89-30d76549dcef', 'cd0da17c-a58f-47bb-8105-3877d61f0ae9', 'Azure Table Storage', TRUE, 3),
    ('47a8cac8-dd9a-41fe-b534-c8e7879bc724', 'cd0da17c-a58f-47bb-8105-3877d61f0ae9', 'Azure Files', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4f211830-c720-421c-bf74-412faecb8f7a', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'A legal firm must retain all contract documents for 10 years per regulatory requirements. Documents older than 2 years are almost never accessed. The firm wants to minimize storage costs for these archived documents while keeping them accessible within a few hours if needed. The solution must meet the following requirements: - 10-year retention. - Almost never accessed after 2 years. - Must be accessible within hours if needed. - Minimize storage cost. Which Azure Blob Storage access tier best meets these requirements?',
        'The Archive tier offers the lowest storage cost for rarely accessed data, and blobs can be rehydrated back to Hot/Cool within hours when needed.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('62791f91-1fe6-4d12-9110-2f219016925b', '4f211830-c720-421c-bf74-412faecb8f7a', 'Hot tier', FALSE, 1),
    ('d3372095-6128-40b2-b5d3-157ba5fadc8f', '4f211830-c720-421c-bf74-412faecb8f7a', 'Cool tier', FALSE, 2),
    ('e5d05091-5c92-41a5-87f8-80a37c1626fd', '4f211830-c720-421c-bf74-412faecb8f7a', 'Archive tier', TRUE, 3),
    ('d0ab449e-259f-4780-9fa2-df589843ab99', '4f211830-c720-421c-bf74-412faecb8f7a', 'Premium tier', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6f33bc36-ccef-4464-b565-3e2db98acc8c', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'A company needs to provide high-performance shared storage for 3 Azure Virtual Machines running a clustered database application. The storage must provide consistent low latency and high IOPS. The storage must be accessible simultaneously by all 3 VMs. The solution must meet the following requirements: - Shared storage accessible by multiple VMs. - High IOPS and low latency. - Consistent performance. Which Azure storage solution should they use?',
        'Azure Files Premium tier with NFS provides shared, high-IOPS, low-latency storage that multiple VMs can access simultaneously.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('01affb3d-134f-4111-8548-bdf2ed8c7146', '6f33bc36-ccef-4464-b565-3e2db98acc8c', 'Azure Blob Storage', FALSE, 1),
    ('c077d2d6-0a6e-4f47-b128-43f0cc9acbed', '6f33bc36-ccef-4464-b565-3e2db98acc8c', 'Azure Queue Storage', FALSE, 2),
    ('dd7ffac8-6a90-4637-8969-71b6c4347b95', '6f33bc36-ccef-4464-b565-3e2db98acc8c', 'Azure Files (Premium tier with NFS)', TRUE, 3),
    ('faaa60f2-5ad7-4443-ba3d-d649a70a852a', '6f33bc36-ccef-4464-b565-3e2db98acc8c', 'Azure Archive Storage', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('94a8bdee-b248-4629-b729-dd40d8e9e9be', '736b50f7-6329-4779-b960-4e3a1aa03115', 'SINGLE_CHOICE', 'A company is migrating to Azure and needs to choose the right redundancy for different workloads: mission-critical banking transactions, standard employee documents, and non-critical development logs. They must match the right option to each workload. Which redundancy option is most appropriate for mission-critical banking transaction data requiring protection against regional disasters? ✅  End of scenario questions — Give this document to your trainer for correction. Your trainer will provide answer explanations and discuss common mistakes from this module.',
        'GZRS offers the highest durability by combining zone redundancy in the primary region with geo-replication to a secondary region, ideal for mission-critical data.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d0acb4a4-de8b-40c0-b6d5-4950b87f4b43', '94a8bdee-b248-4629-b729-dd40d8e9e9be', 'LRS — three copies in one datacenter', FALSE, 1),
    ('0008418a-1cf6-4ed1-b2f1-982cc9f08f79', '94a8bdee-b248-4629-b729-dd40d8e9e9be', 'ZRS — three copies across availability zones', FALSE, 2),
    ('ebbe8a8c-abc6-4195-8278-975c6135ab8e', '94a8bdee-b248-4629-b729-dd40d8e9e9be', 'GRS — copies in two regions', FALSE, 3),
    ('c01573e4-e415-40a9-b2a9-20fe7e3a9476', '94a8bdee-b248-4629-b729-dd40d8e9e9be', 'GZRS — zone-redundant in primary region + geo-replication to secondary region', TRUE, 4);
