INSERT INTO module (id, certification_id, code, title, description, position)
VALUES ('3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', '00000000-0000-0000-0000-000000000002', 'module-03-storage', 'Module 3 - Implement and Manage Storage',
        NULL, 3);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('43bde9e6-92cc-42c2-a926-299c8b12f1cf', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Azure Storage can be thought of as supporting which three broad categories of data?',
        'Azure Storage supports three broad data categories: structured data (relational, schema-based, e.g. Table Storage), unstructured data (non-relational, e.g. Blob Storage), and virtual machine data (disks and files, e.g. managed disks).', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d7bbfa8f-8ce2-4ce1-9323-cb33fac19d92', '43bde9e6-92cc-42c2-a926-299c8b12f1cf', 'Encrypted data, cached data, and archived data', FALSE, 1),
    ('442dce4f-de7e-47ad-b549-83217170d080', '43bde9e6-92cc-42c2-a926-299c8b12f1cf', 'Structured data, unstructured data, and virtual machine data', TRUE, 2),
    ('42d40c72-7a9b-46dd-96d9-972eb248185e', '43bde9e6-92cc-42c2-a926-299c8b12f1cf', 'Public data, private data, and shared data', FALSE, 3),
    ('4f171e4a-2c3d-4e65-b929-f9c6e2db4f68', '43bde9e6-92cc-42c2-a926-299c8b12f1cf', 'Blob data, table data, and queue data only', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('41cc9fed-f577-46cd-80f5-094368a5df75', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which feature must be enabled on a storage account to allow SFTP (SSH File Transfer Protocol) tools to move files directly to and from blobs?',
        'To use SFTP with Blob Storage, you must enable the hierarchical namespace (HNS), which can be enabled when creating the storage account (Advanced tab) or later under Settings → Configuration.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7ec4d3fa-77aa-481f-9cf0-19970c1a4336', '41cc9fed-f577-46cd-80f5-094368a5df75', 'Hierarchical namespace (HNS)', TRUE, 1),
    ('881841a4-6ee5-49b0-8437-c38f171c1fd0', '41cc9fed-f577-46cd-80f5-094368a5df75', 'Object replication', FALSE, 2),
    ('32224147-1b65-42bb-bfeb-662ade05cac8', '41cc9fed-f577-46cd-80f5-094368a5df75', 'Static website hosting', FALSE, 3),
    ('bb46ecc5-7a51-4764-bf8b-18b18db51ca3', '41cc9fed-f577-46cd-80f5-094368a5df75', 'Soft delete', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('40d06fa3-638f-4f52-a2b3-1d263a47bcfb', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which protocol allows Linux clients to mount a blob container as an NFS share, simplifying migration of Linux file workloads to Azure?',
        'Blob Storage can also be accessed using NFSv3, which allows Linux clients to mount a container like an NFS share, simplifying migration of Linux file workloads to Azure.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('60cc0fb7-1563-46ba-ac45-9d710dbfb59c', '40d06fa3-638f-4f52-a2b3-1d263a47bcfb', 'SMB 3.0', FALSE, 1),
    ('50df431e-850c-4712-853f-a55026b4ba3d', '40d06fa3-638f-4f52-a2b3-1d263a47bcfb', 'NFSv3', TRUE, 2),
    ('40c17479-de1a-4bea-86c5-59aebe07d6eb', '40d06fa3-638f-4f52-a2b3-1d263a47bcfb', 'iSCSI', FALSE, 3),
    ('4c6e4786-6673-428f-bce6-bf4b061fc298', '40d06fa3-638f-4f52-a2b3-1d263a47bcfb', 'FTPS', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a8905c00-f803-4e09-9fd0-2a975b56c004', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Enabling ''default to Microsoft Entra authorization'' in the Azure portal for a storage account has which effect?',
        'In the Azure portal, you can enable ''default to Microsoft Entra authorization,'' which makes RBAC the default authentication method instead of shared key access, which can improve security.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('283dbede-8b60-44cf-aa85-22106f72c89b', 'a8905c00-f803-4e09-9fd0-2a975b56c004', 'It disables all authentication methods', FALSE, 1),
    ('af33b885-b85c-42e2-86c5-6cd552d64e84', 'a8905c00-f803-4e09-9fd0-2a975b56c004', 'It forces all data to be publicly readable', FALSE, 2),
    ('9720422d-2175-40b2-ad3f-7b0474cbe68c', 'a8905c00-f803-4e09-9fd0-2a975b56c004', 'It converts the account from Standard to Premium', FALSE, 3),
    ('a60d2c6a-adfa-4563-b6c5-564da71297e7', 'a8905c00-f803-4e09-9fd0-2a975b56c004', 'It makes role-based access control (RBAC) the default authorization method instead of shared access keys, which can improve security', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ad75cdb2-8b77-4143-9b53-5eb768b4f21d', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which Azure Storage service is optimized for storing massive amounts of unstructured data such as text or binary data, and is ideal for serving images or documents directly to a browser?',
        'Azure Blob Storage is Microsoft''s object storage solution for the cloud, optimized for storing massive amounts of unstructured (non-relational) data, and is ideal for serving images or documents directly to a browser.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3dbd572d-73c6-4591-be6e-511094065b0c', 'ad75cdb2-8b77-4143-9b53-5eb768b4f21d', 'Azure Files', FALSE, 1),
    ('1c4ceaf6-97bb-49ba-95a5-20a3a8a9c705', 'ad75cdb2-8b77-4143-9b53-5eb768b4f21d', 'Azure Blob Storage', TRUE, 2),
    ('d287e6bc-1af8-44d9-93ae-5ab9e32f4394', 'ad75cdb2-8b77-4143-9b53-5eb768b4f21d', 'Azure Table Storage', FALSE, 3),
    ('56045db0-3031-46f8-88f3-51413e48028a', 'ad75cdb2-8b77-4143-9b53-5eb768b4f21d', 'Azure Queue Storage', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a0aa2902-3f51-4d1f-ad5e-a12976fae14a', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which Azure Storage service is best suited for storing a large backlog of asynchronous work items, such as messages triggering thumbnail generation after an image upload?',
        'Azure Queue Storage is used to store and retrieve messages, and is commonly used to build a backlog of work to be processed asynchronously — for example, having a function pick up a message from the queue after an image upload to generate thumbnails.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d84972e1-c37e-42e6-8f96-95a9f1e9f2a1', 'a0aa2902-3f51-4d1f-ad5e-a12976fae14a', 'Azure Files', FALSE, 1),
    ('f88f2429-c814-4473-a84b-952d71226c62', 'a0aa2902-3f51-4d1f-ad5e-a12976fae14a', 'Azure Table Storage', FALSE, 2),
    ('8c6da406-7f82-4164-aac1-aed0027cf931', 'a0aa2902-3f51-4d1f-ad5e-a12976fae14a', 'Azure Queue Storage', TRUE, 3),
    ('1888f27d-334b-46ba-b74b-9ccadcb0566e', 'a0aa2902-3f51-4d1f-ad5e-a12976fae14a', 'Azure Blob Storage archive tier', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('061e27da-40c1-4c49-8a78-4102ea5011b9', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which statement correctly distinguishes Standard from Premium storage accounts?',
        'Standard storage accounts are backed by magnetic hard disk drives (HDD) and provide the lowest cost per GB, suitable for infrequently accessed data. Premium accounts are backed by SSDs and offer consistent, low-latency performance, suitable for I/O-intensive workloads like databases.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('528443a4-d546-4b66-95bd-1681ac3fdb32', '061e27da-40c1-4c49-8a78-4102ea5011b9', 'Standard accounts are backed by magnetic hard disk drives (HDD) and offer the lowest cost per GB; Premium accounts are backed by SSDs and offer consistent, low-latency performance', TRUE, 1),
    ('4d6c4818-4d11-4310-9cf8-404080531dbd', '061e27da-40c1-4c49-8a78-4102ea5011b9', 'Premium accounts are always cheaper per GB than Standard accounts', FALSE, 2),
    ('ac3dc57d-668c-45f7-9b71-8efd0365854f', '061e27da-40c1-4c49-8a78-4102ea5011b9', 'Standard accounts cannot store blob data', FALSE, 3),
    ('d122d6b4-939a-4372-a3e1-4e9e94778c53', '061e27da-40c1-4c49-8a78-4102ea5011b9', 'Standard and Premium accounts have identical underlying hardware but differ only in price', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f69799bc-8a07-4786-826b-e9bebae145ba', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Can you directly convert an existing Standard storage account into a Premium storage account?',
        'You cannot convert a Standard storage account to a Premium storage account, or vice versa. You must create a new storage account of the desired type, then copy the data, if any, to the new storage account.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fabe78ec-f90f-4560-804d-ae94334547db', 'f69799bc-8a07-4786-826b-e9bebae145ba', 'Conversion happens automatically once the account exceeds 1 TB', FALSE, 1),
    ('37dd144f-890a-4276-a7ef-fd1e7600bb2d', 'f69799bc-8a07-4786-826b-e9bebae145ba', 'Yes, but only via Azure CLI, never through the portal', FALSE, 2),
    ('7742b6c2-d3f3-499c-ad21-6b222b63917a', 'f69799bc-8a07-4786-826b-e9bebae145ba', 'Yes, with a single click in the portal', FALSE, 3),
    ('5f4fdcf0-f63a-452d-ab63-e2d026468b3a', 'f69799bc-8a07-4786-826b-e9bebae145ba', 'No; you must create a new storage account of the desired type and copy the data over, if needed', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('58e8edf6-47d4-4aed-a72d-e871a3feafbb', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which storage account type is recommended for most general scenarios, supporting Blob Storage, Queue Storage, Table Storage, and Azure Files, with multiple redundancy options?',
        'Standard general-purpose v2 (GPv2) is the standard storage account recommended for most scenarios, supporting Blob Storage (including Data Lake Storage), Queue Storage, Table Storage, and Azure Files, with redundancy options including LRS, GRS, RA-GRS, ZRS, GZRS, and RA-GZRS.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3a6011f5-5f71-4600-ab06-aa373647883f', '58e8edf6-47d4-4aed-a72d-e871a3feafbb', 'Premium file shares only', FALSE, 1),
    ('f1a36695-6937-4627-b8a0-341dd8da5355', '58e8edf6-47d4-4aed-a72d-e871a3feafbb', 'Premium block blobs only', FALSE, 2),
    ('a5983bed-34c6-44a7-8712-01daec3db4d8', '58e8edf6-47d4-4aed-a72d-e871a3feafbb', 'Standard general-purpose v2 (GPv2)', TRUE, 3),
    ('1e6c1396-93b3-4ce5-a562-69d259195324', '58e8edf6-47d4-4aed-a72d-e871a3feafbb', 'Premium page blobs only', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4cdb002b-2b9e-462e-9d2c-75e56a0b6026', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which replication strategy is the least expensive but offers the lowest durability, since all copies could be lost if the entire datacenter is affected by a disaster such as fire or flood?',
        'Locally redundant storage (LRS) is the least expensive replication option and offers the lowest durability compared to other strategies; if a datacenter-level disaster occurs, all replicas risk being lost or unrecoverable.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7dbc18f4-ba6c-42ed-9184-8ddb929f2811', '4cdb002b-2b9e-462e-9d2c-75e56a0b6026', 'Geo-redundant storage (GRS)', FALSE, 1),
    ('ed1d3b6b-b650-45d8-bff6-dd17d4040f93', '4cdb002b-2b9e-462e-9d2c-75e56a0b6026', 'Geo-zone-redundant storage (GZRS)', FALSE, 2),
    ('dd8b1c55-3fa4-4c61-aaf8-3a57679f36c0', '4cdb002b-2b9e-462e-9d2c-75e56a0b6026', 'Locally redundant storage (LRS)', TRUE, 3),
    ('89c0b224-fe0a-4c02-93b1-b331e9b22917', '4cdb002b-2b9e-462e-9d2c-75e56a0b6026', 'Zone-redundant storage (ZRS)', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('20552317-fcea-4482-85b1-d39d517ae11a', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which replication strategy synchronously replicates data across three storage clusters, each in a separate availability zone within a single region?',
        'Zone-redundant storage (ZRS) synchronously replicates data across three storage clusters in a single region, each physically separate and residing in its own availability zone, providing access to data even if one zone becomes unavailable.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e104e14f-12f7-4d50-8b42-22c4454d6086', '20552317-fcea-4482-85b1-d39d517ae11a', 'Locally redundant storage (LRS)', FALSE, 1),
    ('a0fcfeef-51f9-4466-8cc0-482d49a1a6a7', '20552317-fcea-4482-85b1-d39d517ae11a', 'Zone-redundant storage (ZRS)', TRUE, 2),
    ('b905d22c-fa10-4e79-a556-383067c5ed31', '20552317-fcea-4482-85b1-d39d517ae11a', 'Geo-redundant storage (GRS) only', FALSE, 3),
    ('3c177e15-aba9-407b-80bb-5a2d68cc12bf', '20552317-fcea-4482-85b1-d39d517ae11a', 'Read-access geo-redundant storage (RA-GRS) only', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8f43da9a-060b-4e31-8e93-349416fa8db6', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'What is the key difference between GRS and RA-GRS?',
        'GRS replicates data to a secondary region, but that data can be read only if Microsoft initiates a failover from the primary to the secondary region. RA-GRS (read-access geo-redundant storage) is based on GRS but also lets you read data from the secondary region at any time.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c7f1f627-c139-4480-93d9-ec89c7387fe5', '8f43da9a-060b-4e31-8e93-349416fa8db6', 'There is no difference; the names are interchangeable', FALSE, 1),
    ('c1af5a90-10d1-4b23-b955-72b310281582', '8f43da9a-060b-4e31-8e93-349416fa8db6', 'GRS is more expensive than RA-GRS', FALSE, 2),
    ('b1f0558a-9b8f-4535-8745-aeb270a40ded', '8f43da9a-060b-4e31-8e93-349416fa8db6', 'RA-GRS allows read access to the secondary region at any time, while GRS data in the secondary region can only be read after Microsoft initiates a failover', TRUE, 3),
    ('b8d9d129-7948-4ba7-866f-e4ebf42594a2', '8f43da9a-060b-4e31-8e93-349416fa8db6', 'GRS replicates synchronously while RA-GRS replicates asynchronously', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1061bad2-7a44-49a2-905c-e0bffb2b0611', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which replication option combines the high availability of zone-redundant storage with protection against regional outages provided by geo-redundant storage, and is recommended by Microsoft for applications with the highest consistency, durability, and availability needs?',
        'Geo-zone-redundant storage (GZRS) combines the high availability of zone-redundant storage with protection from regional outages provided by geo-redundant storage; Microsoft recommends GZRS for applications requiring the highest levels of consistency, durability, availability, performance, and resilience for disaster recovery.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('307eeb84-d9cb-4dfd-819d-c13c967be1b3', '1061bad2-7a44-49a2-905c-e0bffb2b0611', 'Geo-zone-redundant storage (GZRS)', TRUE, 1),
    ('f075571d-0427-4ded-b0ed-e548fadaee92', '1061bad2-7a44-49a2-905c-e0bffb2b0611', 'Standard zone-redundant storage without geo-replication', FALSE, 2),
    ('62748ce0-5c83-4066-a74a-7114f14bb4d1', '1061bad2-7a44-49a2-905c-e0bffb2b0611', 'Locally redundant storage (LRS)', FALSE, 3),
    ('44dfaaa7-1c9d-4a9b-8176-9aa7141042be', '1061bad2-7a44-49a2-905c-e0bffb2b0611', 'Archive-tier replication', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bf3bc53c-f672-4b95-a4be-0bfca61a282c', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'For a storage account named ''mystorageaccount'', what is the default endpoint format for the Blob service?',
        'The storage account name forms the subdomain portion of the URL. For the Blob service, the default endpoint format is //mystorageaccount.blob.core.windows.net, and objects are accessed by appending the container and blob name, e.g. mystorageaccount.blob.core.windows.net/mycontainer/myblob.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e9d398c2-23c0-4ed3-9674-8e6150efeacb', 'bf3bc53c-f672-4b95-a4be-0bfca61a282c', 'windows.net/blob/mystorageaccount', FALSE, 1),
    ('04406b54-4d39-4e1f-80b6-c800838b8aff', 'bf3bc53c-f672-4b95-a4be-0bfca61a282c', 'mystorageaccount.blob.core.windows.net', TRUE, 2),
    ('83339966-0c3e-44c1-98ed-c7c0d6c40bab', 'bf3bc53c-f672-4b95-a4be-0bfca61a282c', 'mystorageaccount.storage.azure.com', FALSE, 3),
    ('0745a5c6-e969-40e5-a208-79382e966a0d', 'bf3bc53c-f672-4b95-a4be-0bfca61a282c', 'blob.mystorageaccount.windows.net', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('37244193-d225-4845-b74c-115907eed64d', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'What is the difference between service endpoints and private endpoints for securing storage account network access?',
        'Private endpoints assign a private IP address from your virtual network to the storage account, keeping all traffic on the Microsoft backbone and removing public internet exposure — recommended for production workloads requiring full network isolation. Service endpoints keep the storage account on its public endpoint but restrict access to specific virtual networks and subnets, suitable for simpler or development scenarios.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('792a93e9-c997-456e-ac31-e6e8799c5064', '37244193-d225-4845-b74c-115907eed64d', 'Private endpoints only work with Standard storage accounts, never Premium', FALSE, 1),
    ('58d9b85e-9cbc-46ed-b5b9-e90d56759fa0', '37244193-d225-4845-b74c-115907eed64d', 'Service endpoints and private endpoints are functionally identical', FALSE, 2),
    ('ac72edb0-fecc-4afd-b54c-28eae73858c1', '37244193-d225-4845-b74c-115907eed64d', 'Private endpoints assign a private IP address from your VNet to the storage account, keeping all traffic within Microsoft''s backbone, while service endpoints keep the storage account on its public endpoint but restrict access to specific virtual networks/subnets', TRUE, 3),
    ('fd56e39e-4065-46fd-ad81-a851b027de66', '37244193-d225-4845-b74c-115907eed64d', 'Service endpoints eliminate the storage account''s public endpoint entirely', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fff049e0-a410-40a9-859b-b46d26d4a947', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'What does the acronym ''blob'' stand for, and how is Blob Storage otherwise known?',
        'Blob is an acronym for Binary Large Object. Blob Storage is a service that stores unstructured data in the cloud as objects or blobs, and is also known as object storage or container storage.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3234c6bc-d1ad-4482-bcbe-c00bb5d9fcfd', 'fff049e0-a410-40a9-859b-b46d26d4a947', 'Backup Log Object; also known as queue storage', FALSE, 1),
    ('71aeb686-f3a5-4282-a46d-ce98ddd9770b', 'fff049e0-a410-40a9-859b-b46d26d4a947', 'Block-Level Output Buffer; also known as file storage', FALSE, 2),
    ('64177de2-e874-4b20-867c-cac598d3101e', 'fff049e0-a410-40a9-859b-b46d26d4a947', 'Basic Linked Object Buffer; also known as archive storage', FALSE, 3),
    ('43912c45-15b2-4da5-8087-d01598697722', 'fff049e0-a410-40a9-859b-b46d26d4a947', 'Binary Large Object; also known as object storage or container storage', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b2a961e1-5471-4189-9e7c-5b2e4e6c06e1', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which three resources does Blob Storage use to store and manage data?',
        'Blob Storage uses three resources to store and manage data: an Azure storage account, containers within the storage account, and blobs within a container. A blob cannot exist on its own — it must be stored inside a container.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('32ffc5a2-81e3-4a12-acc2-72b2287a0f91', 'b2a961e1-5471-4189-9e7c-5b2e4e6c06e1', 'An Azure storage account, containers within the storage account, and blobs within a container', TRUE, 1),
    ('73b4048f-d5d4-4b36-9521-558eceec0363', 'b2a961e1-5471-4189-9e7c-5b2e4e6c06e1', 'A resource group, a subscription, and a tenant', FALSE, 2),
    ('b5545c54-ac10-47f8-bdba-75d446f95e3f', 'b2a961e1-5471-4189-9e7c-5b2e4e6c06e1', 'A queue, a topic, and a subscription', FALSE, 3),
    ('da78cdcb-6426-4a7e-b1cd-427cdee260ca', 'b2a961e1-5471-4189-9e7c-5b2e4e6c06e1', 'A virtual network, a subnet, and a network security group', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2c4eb92c-030d-4891-bcae-1c14ac1f01f4', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which container access level allows anonymous public read access to blobs only, but not the ability to list the blobs in the container?',
        'The Blob access level allows public anonymous read access for blobs only (not for listing container contents). The Container level allows public anonymous read and list access to the whole container; Private (the default) prohibits anonymous access entirely.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('11c51152-48d0-4e79-8db0-64e759c85e21', '2c4eb92c-030d-4891-bcae-1c14ac1f01f4', 'Container', FALSE, 1),
    ('740f2a49-1c7e-4c05-86ad-941d4afb1b8b', '2c4eb92c-030d-4891-bcae-1c14ac1f01f4', 'Blob', TRUE, 2),
    ('1508ef0c-7ce7-46a9-b002-79adaef6bb5b', '2c4eb92c-030d-4891-bcae-1c14ac1f01f4', 'Private', FALSE, 3),
    ('826b65a8-ca1c-467a-b7c8-9790d52c9586', '2c4eb92c-030d-4891-bcae-1c14ac1f01f4', 'Archive', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('66749533-5de3-4518-962f-0b438116ecc8', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Even if a container''s public access level is set to ''Blob'' or ''Container,'' under what condition does anonymous access still fail?',
        'Blob and Container access levels have no effect unless the storage account''s ''Allow Blob Anonymous Access'' setting is enabled. When disabled, all containers remain private regardless of their individual access level settings; Microsoft recommends keeping anonymous access disabled at the account level unless serving public content scenarios.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('db92c9c1-d4e9-41d3-b446-ecbc96c49c0d', '66749533-5de3-4518-962f-0b438116ecc8', 'If the container has more than 63 characters in its name', FALSE, 1),
    ('6e1f705e-3c54-494f-a748-6bc4a5dfb175', '66749533-5de3-4518-962f-0b438116ecc8', 'If the storage account''s ''Allow Blob Anonymous Access'' setting is disabled', TRUE, 2),
    ('1d6e0c84-e252-4d2e-8c7c-747cd9502eea', '66749533-5de3-4518-962f-0b438116ecc8', 'If the blob was uploaded using AzCopy instead of the portal', FALSE, 3),
    ('8eb2e34f-a5de-42f7-8949-624b4d6cdeb8', '66749533-5de3-4518-962f-0b438116ecc8', 'If the storage account uses GRS instead of LRS', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5b80ebc5-00da-451f-9d7c-521656bc1fe0', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which access tier is optimized for storing large amounts of data that is rarely accessed and expected to remain for at least 90 days, offering lower storage costs but higher access costs than the Cool tier?',
        'The Cold tier is optimized for storing large amounts of infrequently accessed data expected to remain in that tier for at least 90 days, with lower storage costs and higher access costs compared to the Cool tier (30-day minimum).', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('18782841-c891-4ca4-85c6-394870073cdc', '5b80ebc5-00da-451f-9d7c-521656bc1fe0', 'Premium tier', FALSE, 1),
    ('f2d75ec8-13cb-436d-af00-8b40c3534f4b', '5b80ebc5-00da-451f-9d7c-521656bc1fe0', 'Archive tier', FALSE, 2),
    ('5d0c84c8-03ea-4ddd-b3a8-412b68927bab', '5b80ebc5-00da-451f-9d7c-521656bc1fe0', 'Cold tier', TRUE, 3),
    ('fbb4c84e-bd9f-41b1-974f-32a3aa10bd3e', '5b80ebc5-00da-451f-9d7c-521656bc1fe0', 'Hot tier', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6e87c159-48ca-43d7-9176-6eb95dd19fca', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which access tier is an offline tier optimized for data that can tolerate several hours of retrieval latency, and requires data to remain for at least 180 days to avoid an early deletion fee?',
        'The Archive tier is an offline tier optimized for data that can tolerate several hours of retrieval latency. Data must remain in the archive tier for at least 180 days, or it is subject to an early deletion charge; it is the most cost-effective option for storage, but the most expensive for data access.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a218cc8c-ab58-44c6-ae07-6cb65c70f5d6', '6e87c159-48ca-43d7-9176-6eb95dd19fca', 'Cool tier', FALSE, 1),
    ('a331ea8d-b80c-45cf-bf51-5c568cc25b6a', '6e87c159-48ca-43d7-9176-6eb95dd19fca', 'Archive tier', TRUE, 2),
    ('8dd6efc3-f4fb-4a0f-a9f9-398ae87999bc', '6e87c159-48ca-43d7-9176-6eb95dd19fca', 'Hot tier', FALSE, 3),
    ('b4444cab-e33f-4f77-8b0b-ac63c2440ec6', '6e87c159-48ca-43d7-9176-6eb95dd19fca', 'Cold tier', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('79370702-7e8a-4b02-8401-b764f464142c', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which method is recommended for rehydrating an archived blob back to an online tier, and creates a new blob at the online tier rather than changing the tier in place?',
        'To access archived blob content, you can rehydrate it to the hot, cool, or cold tier using either Copy Blob (recommended — creates a new blob at an online tier) or Set Blob Tier (changes the tier in place); both support Standard priority (up to 15 hours) or High priority (within 1 hour for blobs under 10 GB, at higher cost).', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('30b94eff-7aa2-4b72-9f27-361efc6ab7dc', '79370702-7e8a-4b02-8401-b764f464142c', 'Enable soft delete', FALSE, 1),
    ('68e54e6c-680d-4b64-953c-3aa078b0c5ae', '79370702-7e8a-4b02-8401-b764f464142c', 'Copy Blob', TRUE, 2),
    ('e998c8b0-6528-4efb-b543-61e681cba026', '79370702-7e8a-4b02-8401-b764f464142c', 'Delete and recreate the container', FALSE, 3),
    ('8aa18fe4-0cb3-4991-bb21-200324cbfc50', '79370702-7e8a-4b02-8401-b764f464142c', 'Set Blob Tier', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e4b1e7c1-dd29-46d3-ac5f-36a7bdfba7cc', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'In a blob lifecycle management rule, what does the ''If'' clause define, and what does the ''Then'' clause define?',
        'In a lifecycle management policy rule, the ''If'' clause defines the evaluation condition — for example, ''more than (days)'' since the blob was last accessed or modified — and when it evaluates to true, the ''Then'' clause (action clause) executes, such as moving to cool/cold/archive storage or deleting the blob.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('91e9f9b8-1256-45dd-ba0e-349d59d38b9a', 'e4b1e7c1-dd29-46d3-ac5f-36a7bdfba7cc', 'The ''If'' clause defines the evaluation condition (e.g., days since last access/modification); the ''Then'' clause defines the resulting action (e.g., move tier, delete blob)', TRUE, 1),
    ('336f1351-4611-4f9f-b383-5488d2555a09', 'e4b1e7c1-dd29-46d3-ac5f-36a7bdfba7cc', 'The ''If'' clause defines the storage account name; the ''Then'' clause defines the container name', FALSE, 2),
    ('84719900-66f1-48be-84fd-54e9f69b693f', 'e4b1e7c1-dd29-46d3-ac5f-36a7bdfba7cc', 'The ''If'' and ''Then'' clauses are interchangeable and have no fixed meaning', FALSE, 3),
    ('bc4fd434-5fe2-4f2e-979a-91a120592330', 'e4b1e7c1-dd29-46d3-ac5f-36a7bdfba7cc', 'The ''If'' clause is only used for deleting blobs; the ''Then'' clause is only used for moving tiers', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cf87e081-235f-4acf-add6-bff45800e551', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'What must be enabled on both the source and destination storage accounts before object replication can be configured?',
        'Object replication requires blob versioning to be enabled on both the source and destination accounts. When blob versioning is enabled, you can access previous versions of a blob, allowing recovery of modified or deleted data — a prerequisite for the replication process.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1305b683-e6a6-41a7-80e5-30078fcea536', 'cf87e081-235f-4acf-add6-bff45800e551', 'NFSv3 support', FALSE, 1),
    ('9edf3d92-6cb5-4dd1-9f5d-2eb40eabdf25', 'cf87e081-235f-4acf-add6-bff45800e551', 'Static website hosting', FALSE, 2),
    ('d6c433ac-0f0e-49e8-a97c-637b477eac57', 'cf87e081-235f-4acf-add6-bff45800e551', 'Soft delete for containers only', FALSE, 3),
    ('2f634775-3bd1-401f-a2f6-6eb325de6a62', 'cf87e081-235f-4acf-add6-bff45800e551', 'Blob versioning', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('85a6466e-1c70-4470-834b-19cf43daff79', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Does object replication support replicating blob snapshots from the source account to the destination account?',
        'Object replication does not support blob snapshots — snapshots of a blob in the source account are not replicated to the destination account.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('467a60b2-fd9c-470d-93a4-c7caa8759582', '85a6466e-1c70-4470-834b-19cf43daff79', 'No, object replication does not support blob snapshots; snapshots on the source account are not replicated to the destination', TRUE, 1),
    ('5ba25cb4-44e5-4164-b5c9-da57b4a37a3e', '85a6466e-1c70-4470-834b-19cf43daff79', 'Only snapshots older than 30 days are replicated', FALSE, 2),
    ('c38963cf-1287-4f06-80c9-f3fdaceab374', '85a6466e-1c70-4470-834b-19cf43daff79', 'Snapshots are replicated only if the destination account is in the same region', FALSE, 3),
    ('8ce1a604-3166-4daf-9428-deed4d2decc0', '85a6466e-1c70-4470-834b-19cf43daff79', 'Yes, all snapshots are always replicated automatically', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8b7a2252-2353-42cf-88a1-8fcb34429c47', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which blob type is optimized for append operations and is useful for logging scenarios where data grows as the operation continues?',
        'Append blobs are similar to block blobs, since they''re also made up of blocks of data, but their data blocks are optimized for append operations, making them useful for logging scenarios where the amount of data grows as the logging operation continues.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b3ef4a41-d367-46a6-a622-15a0c04fb9fe', '8b7a2252-2353-42cf-88a1-8fcb34429c47', 'Archive blob', FALSE, 1),
    ('fe260251-c57b-46f0-9dd2-d7b52aea9f70', '8b7a2252-2353-42cf-88a1-8fcb34429c47', 'Block blob', FALSE, 2),
    ('ae792a64-7d42-4f04-8bab-aaf5ac889acf', '8b7a2252-2353-42cf-88a1-8fcb34429c47', 'Page blob', FALSE, 3),
    ('54d798ed-03ed-47d6-b08e-332b5891cb0c', '8b7a2252-2353-42cf-88a1-8fcb34429c47', 'Append blob', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('24574f88-84c5-46ba-b49a-91bc65ea7018', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which blob type can be up to 8 TB in size, is efficient for frequent read/write operations, and is used by Azure VMs for OS and data disks?',
        'Page blobs can be up to 8 TB in size and are more efficient for frequent read/write operations; Azure virtual machines use page blobs for operating system disks and data disks.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('520579d0-7cdc-434f-aa53-9051ed14a91c', '24574f88-84c5-46ba-b49a-91bc65ea7018', 'Page blob', TRUE, 1),
    ('968d0aaf-ea8e-4981-a84f-83b2c40e8df9', '24574f88-84c5-46ba-b49a-91bc65ea7018', 'Queue blob', FALSE, 2),
    ('d73e85db-40e0-487d-8437-ed8ffb69c882', '24574f88-84c5-46ba-b49a-91bc65ea7018', 'Append blob', FALSE, 3),
    ('0bbb4ecb-1e1d-4338-a75e-fd8b3b975ef7', '24574f88-84c5-46ba-b49a-91bc65ea7018', 'Block blob', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ce1c08e6-9439-4731-bb37-6f45c87f761d', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Once you have created a blob of a specific type (block, append, or page), can you later change its type?',
        'After you create a blob, you cannot change its type. If a different blob type is required, the blob must be deleted and re-created as the new type.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d9fe0ee3-09b4-460b-add2-6f2a7eeecf95', 'ce1c08e6-9439-4731-bb37-6f45c87f761d', 'Yes, freely, at any time, without recreating the blob', FALSE, 1),
    ('fda35a63-54aa-4473-8aad-180f05a08fe1', 'ce1c08e6-9439-4731-bb37-6f45c87f761d', 'Yes, but only for blobs smaller than 1 MB', FALSE, 2),
    ('7345fb9e-e88a-4754-b886-5081ca6def4c', 'ce1c08e6-9439-4731-bb37-6f45c87f761d', 'No, after a blob is created, you cannot change its type', TRUE, 3),
    ('0176aa12-75af-4818-ab3c-8e2aa6d7cc49', 'ce1c08e6-9439-4731-bb37-6f45c87f761d', 'Yes, but only from block to append, never the reverse', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('50a36c96-18b2-4737-84ef-184a9b270108', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which tool is described as a service for transferring on-premises data to Blob Storage by shipping physical SSD disks to Microsoft, useful when large datasets or network constraints make uploading over the network impractical?',
        'Azure Data Box Disk is a service for transferring on-premises data to Blob Storage when large datasets or network constraints make network uploads impractical — you request SSD disks from Microsoft, copy your data to them, and ship them back for Microsoft to upload into Blob Storage.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f1316126-eae4-4dbb-ab27-fee61d50d62b', '50a36c96-18b2-4737-84ef-184a9b270108', 'Azure File Sync', FALSE, 1),
    ('c47f33db-23c5-43b5-9623-fed4111f6a35', '50a36c96-18b2-4737-84ef-184a9b270108', 'Azure Data Box Disk', TRUE, 2),
    ('31c4e273-9429-4433-922d-f709c74649a0', '50a36c96-18b2-4737-84ef-184a9b270108', 'Azure Storage Explorer', FALSE, 3),
    ('b5341676-838d-46a0-9c23-a9ba0c323c31', '50a36c96-18b2-4737-84ef-184a9b270108', 'AzCopy', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5d8d598d-eb19-49f4-83d6-117e44920566', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'According to blob storage pricing guidance, what generally happens to the cost per gigabyte and the data access cost as you move data to colder tiers?',
        'As the performance tier becomes colder, the cost per gigabyte of storage decreases, while data access charges (per gigabyte, for read actions on Cool, Cold, and Archive tier data) and transaction charges increase; this is the fundamental cost trade-off behind tiering strategy.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('abe7c260-c50b-43cc-9a89-2cfbf179ebfb', '5d8d598d-eb19-49f4-83d6-117e44920566', 'Both storage cost and access cost decrease', FALSE, 1),
    ('94760ee9-2c60-4c91-9428-7fbea7920b78', '5d8d598d-eb19-49f4-83d6-117e44920566', 'Both storage cost and access cost increase', FALSE, 2),
    ('68249717-5f48-4028-a0e2-96d33979effa', '5d8d598d-eb19-49f4-83d6-117e44920566', 'Storage cost per gigabyte decreases while data access costs increase', TRUE, 3),
    ('2440745a-1075-481a-9c41-970c14e13e99', '5d8d598d-eb19-49f4-83d6-117e44920566', 'Storage cost increases while access cost decreases', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ca14b964-46c2-4d1e-bb35-d8b49d34f103', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'What technology encrypts all data written to Azure Storage using 256-bit AES encryption, at no additional cost and with no performance degradation?',
        'Storage Service Encryption (SSE) with 256-bit AES encryption encrypts all data written to Azure Storage; when data is read back, the service decrypts it before returning it, with no additional charge and no performance degradation.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('92272f72-7037-4d41-aee8-851f421f306b', 'ca14b964-46c2-4d1e-bb35-d8b49d34f103', 'Shared Access Signature (SAS)', FALSE, 1),
    ('a6e5a52c-8e8b-4e29-a5de-c1102a7da473', 'ca14b964-46c2-4d1e-bb35-d8b49d34f103', 'Storage Service Encryption (SSE)', TRUE, 2),
    ('5adeb2ea-cc78-4844-b67c-886ce968380b', 'ca14b964-46c2-4d1e-bb35-d8b49d34f103', 'Azure Front Door', FALSE, 3),
    ('97651a16-1a7f-46c9-aedb-05c6d42ab344', 'ca14b964-46c2-4d1e-bb35-d8b49d34f103', 'Network security groups', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('30adb127-ad68-4de9-be95-b01be4997023', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which storage account property should be set to ensure the account only accepts requests from secure connections?',
        'You can configure your storage account to accept requests only from secure connections by setting the ''secure transfer required'' property; existing accounts should also explicitly disallow the deprecated TLS 1.0 and 1.1 protocols.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fa91b6af-925b-46b4-b107-19049c0dae7a', '30adb127-ad68-4de9-be95-b01be4997023', 'Static website', FALSE, 1),
    ('518cf499-2205-4be6-a458-7a4715eae356', '30adb127-ad68-4de9-be95-b01be4997023', 'Hierarchical namespace', FALSE, 2),
    ('5fe89105-ddba-4ed4-b011-42d3ef33cb7e', '30adb127-ad68-4de9-be95-b01be4997023', 'Allow blob anonymous access', FALSE, 3),
    ('261168f8-b084-4e28-ad9f-693cf711e238', '30adb127-ad68-4de9-be95-b01be4997023', 'Secure transfer required', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b6d39516-6ddf-4497-ac75-0aca8ef00c76', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'For the highest level of security when authorizing requests to blob, queue, and table data, what does Microsoft recommend?',
        'For optimal security, Microsoft recommends using Microsoft Entra ID with managed identities to authorize requests against blob, queue, and table data where possible, since it offers superior security and ease of use over shared key authorization.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('21b7d329-4f24-4469-ae1a-6730ef6f8509', 'b6d39516-6ddf-4497-ac75-0aca8ef00c76', 'Always using shared key authorization for every application', FALSE, 1),
    ('6a1364c7-2416-438e-8a57-6d54cfe9f403', 'b6d39516-6ddf-4497-ac75-0aca8ef00c76', 'Disabling all authentication entirely', FALSE, 2),
    ('33e11531-9c89-4315-8abe-3d525b78aab1', 'b6d39516-6ddf-4497-ac75-0aca8ef00c76', 'Publishing all containers with anonymous public access', FALSE, 3),
    ('497a6ac3-bdf7-435b-beec-c3663324b295', 'b6d39516-6ddf-4497-ac75-0aca8ef00c76', 'Using Microsoft Entra ID with managed identities where possible', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6eb0c68b-2cc0-4a9f-888f-67ce5118e2ef', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'What is a shared access signature (SAS)?',
        'A shared access signature (SAS) is a URI that grants restricted access rights to Azure Storage resources; it is a secure way to share your storage resources without compromising your account keys.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f9b72604-e4e1-4894-92b2-d79400eb1f97', '6eb0c68b-2cc0-4a9f-888f-67ce5118e2ef', 'A network security group rule', FALSE, 1),
    ('75507400-4b2d-4ee2-a6dc-f2b0eab69d1c', '6eb0c68b-2cc0-4a9f-888f-67ce5118e2ef', 'A blob lifecycle management policy', FALSE, 2),
    ('882d6874-b161-4f73-9b67-540b22609173', '6eb0c68b-2cc0-4a9f-888f-67ce5118e2ef', 'A URI that grants restricted access rights to Azure Storage resources, without exposing the account key', TRUE, 3),
    ('61d0fa4d-a91c-40ea-a72b-404498d279af', '6eb0c68b-2cc0-4a9f-888f-67ce5118e2ef', 'A type of storage account replication', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8bf37b15-0909-4cd0-9b8f-b0235634b8ae', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which type of SAS is secured with Microsoft Entra credentials in addition to the permissions specified for the SAS, and is supported for Blob Storage and Data Lake Storage?',
        'A user delegation SAS is secured with Microsoft Entra credentials, as well as the permissions specified for the SAS; it is supported for Blob Storage and Data Lake Storage.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b3627046-8bbf-4362-8c72-94205e1e7d4b', '8bf37b15-0909-4cd0-9b8f-b0235634b8ae', 'An account SAS', FALSE, 1),
    ('3ae6ad7e-bac5-4c6b-8683-ac74eb2aeef2', '8bf37b15-0909-4cd0-9b8f-b0235634b8ae', 'A stored access policy', FALSE, 2),
    ('c3468d6c-5a17-4e0b-a498-51557b6ab01b', '8bf37b15-0909-4cd0-9b8f-b0235634b8ae', 'A user delegation SAS', TRUE, 3),
    ('990069fe-87d3-4c19-8bf0-8c1f68d34cbb', '8bf37b15-0909-4cd0-9b8f-b0235634b8ae', 'A service SAS', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2fa848ab-762a-4c74-a9df-a6feb71c7a85', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which recommendation helps mitigate the risk of a SAS being intercepted and misused by an attacker (a ''man in the middle'' attack)?',
        'If a SAS is transmitted over HTTP and intercepted, an attacker can capture and reuse it (a man-in-the-middle attack), potentially compromising sensitive data. Always use HTTPS to create and distribute a SAS.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a7597544-da7e-4bb4-b856-f53a6aa9758b', '2fa848ab-762a-4c74-a9df-a6feb71c7a85', 'Set the SAS to never expire', FALSE, 1),
    ('8532bb25-4a32-432e-acff-96e25d1a26e4', '2fa848ab-762a-4c74-a9df-a6feb71c7a85', 'Grant full read/write/delete access on all entities by default', FALSE, 2),
    ('f9b0e291-0d26-4a5f-94a3-fe2424bb0894', '2fa848ab-762a-4c74-a9df-a6feb71c7a85', 'Always use HTTP since it is faster', FALSE, 3),
    ('fd351244-c8c1-4d02-8e42-636a9bcd5908', '2fa848ab-762a-4c74-a9df-a6feb71c7a85', 'Always use HTTPS to create and distribute a SAS', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('69a26ec1-cb6f-4329-8a63-bf65cac13b1b', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Why is it recommended to reference stored access policies where possible when using a service SAS?',
        'Stored access policies give you the ability to revoke permissions without having to regenerate the storage account keys, and are recommended over standalone SAS parameters where server-side control over an underlying service SAS is needed.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d90425c8-5996-4039-b606-6df58b0278a6', '69a26ec1-cb6f-4329-8a63-bf65cac13b1b', 'Stored access policies eliminate the need for HTTPS', FALSE, 1),
    ('f3f248bf-9d56-47c6-bde5-39de85cc00f2', '69a26ec1-cb6f-4329-8a63-bf65cac13b1b', 'Stored access policies automatically encrypt the underlying blob content', FALSE, 2),
    ('10a72827-a54e-4454-a9ef-0e378e07a2e9', '69a26ec1-cb6f-4329-8a63-bf65cac13b1b', 'Stored access policies let you revoke permissions without having to regenerate the storage account keys', TRUE, 3),
    ('38bf6abc-d7ee-40f7-aa62-5809566f50c6', '69a26ec1-cb6f-4329-8a63-bf65cac13b1b', 'Stored access policies are required for all SAS types with no exceptions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bf0d63a8-a289-4667-ad92-3a5c361d5aaf', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'In a SAS URI parameter list, which parameter specifies the range of IP addresses from which a request will be accepted?',
        'The ''sip'' parameter specifies a range of IP addresses from which a request is accepted (for example, sip=168.1.5.60-168.1.5.70). By contrast, ''sv'' is the storage version, ''sr'' is the resource being accessed, and ''sp'' lists the permissions granted.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('69264ed5-cd94-4086-a59f-8829b453e43a', 'bf0d63a8-a289-4667-ad92-3a5c361d5aaf', 'sv', FALSE, 1),
    ('9a681f49-e06a-4e4a-af03-e78010d74b51', 'bf0d63a8-a289-4667-ad92-3a5c361d5aaf', 'sip', TRUE, 2),
    ('2820057d-8509-4653-9eda-b3bd941a5102', 'bf0d63a8-a289-4667-ad92-3a5c361d5aaf', 'sp', FALSE, 3),
    ('1146af56-7bb8-45db-99a4-2d1cb3772fed', 'bf0d63a8-a289-4667-ad92-3a5c361d5aaf', 'sr', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8fa70461-1649-4ecf-892d-d9c6b6634026', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'What does the ''spr'' parameter specify in a SAS URI?',
        'such as HTTPS only — from which Azure Storage will accept the SAS request — The ''spr'' parameter specifies the protocol(s) from which Azure Storage accepts the SAS — for example, spr=https means only requests using the HTTPS protocol are accepted.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('93b69db0-3f46-4b3f-8b9d-246852168fa2', '8fa70461-1649-4ecf-892d-d9c6b6634026', 'The storage version to use', FALSE, 1),
    ('b9812364-880f-425f-b9e8-4c2a2a8b544e', '8fa70461-1649-4ecf-892d-d9c6b6634026', 'The expiry time of the SAS', FALSE, 2),
    ('afdf9668-26ba-4c56-9d93-123a96e6e898', '8fa70461-1649-4ecf-892d-d9c6b6634026', 'The protocol(s) — such as HTTPS only — from which Azure Storage will accept the SAS request', TRUE, 3),
    ('6c740579-1403-40f1-b1aa-abe35ee45c69', '8fa70461-1649-4ecf-892d-d9c6b6634026', 'The signature used to authenticate the SAS', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('db7b7b3d-42da-4eaf-8817-05983337b8aa', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'When a storage account is created, Azure generates two 512-bit access keys. What does Microsoft recommend regarding management of these keys?',
        'Microsoft recommends using Azure Key Vault to manage your access keys, and to rotate and regenerate your keys periodically; Key Vault supports automatic key rotation policies (e.g., every 90 days), and keys can also be rotated manually as needed.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3d0a7ee1-aca7-4ba8-a891-98314b132f51', 'db7b7b3d-42da-4eaf-8817-05983337b8aa', 'Use Azure Key Vault to manage the keys, and rotate/regenerate them regularly, optionally using automatic key rotation policies', TRUE, 1),
    ('83e1e98c-1928-4157-a3e8-d6e11e250332', 'db7b7b3d-42da-4eaf-8817-05983337b8aa', 'Use only one of the two keys and delete the other immediately', FALSE, 2),
    ('8e5f63b7-66e5-42bd-8a54-96ccbedcf106', 'db7b7b3d-42da-4eaf-8817-05983337b8aa', 'Publish the keys publicly for easier developer access', FALSE, 3),
    ('1d2e8410-79a5-4b89-869e-74fae33bd9ae', 'db7b7b3d-42da-4eaf-8817-05983337b8aa', 'Never rotate the keys, since rotation breaks all existing connections permanently', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a6503c93-bd34-4af4-bcb1-49f7de67d525', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'What is the difference between infrastructure encryption and standard Storage Service Encryption (SSE)?',
        'once at the service level and once at the infrastructure level — using two distinct encryption algorithms and two different keys — When infrastructure encryption is enabled for a storage account or an encryption scope, data is encrypted twice — once at the service level and once at the infrastructure level — using two separate encryption algorithms and two different keys, providing defense-in-depth against a compromise of either single layer.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6db7d5a1-618d-467a-9d0f-f29fc404f8ec', 'a6503c93-bd34-4af4-bcb1-49f7de67d525', 'Infrastructure encryption is only available for Table Storage', FALSE, 1),
    ('20ec947d-2e88-4473-baa0-08e45f673cdd', 'a6503c93-bd34-4af4-bcb1-49f7de67d525', 'Infrastructure encryption encrypts data twice — once at the service level and once at the infrastructure level — using two distinct encryption algorithms and two different keys', TRUE, 2),
    ('4a622c7a-e153-4802-a2ad-0a3dacbcffc1', 'a6503c93-bd34-4af4-bcb1-49f7de67d525', 'Infrastructure encryption replaces SSE entirely and cannot be used together with it', FALSE, 3),
    ('5c9996fd-116a-4285-a993-9677630f2af9', 'a6503c93-bd34-4af4-bcb1-49f7de67d525', 'Infrastructure encryption is enabled by default and cannot be disabled or scoped', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('54187bff-38bc-4e6d-8286-e46a4fdf94be', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'What is the difference between platform-managed keys (PMK) and customer-managed keys (CMK)?',
        'Platform-managed keys (PMKs) are encryption keys fully generated, stored, and managed by Azure, with no customer interaction — this is the default. Customer-managed keys (CMKs) are keys that a customer creates, disables, audits, rotates, and/or otherwise controls access to, typically stored in a customer-owned key vault or HSM.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5523e641-c42e-44e6-93f7-4f044cdf9971', '54187bff-38bc-4e6d-8286-e46a4fdf94be', 'CMKs are always less secure than PMKs', FALSE, 1),
    ('41d6f07b-c6cd-41d1-b3bb-e3ec246b4983', '54187bff-38bc-4e6d-8286-e46a4fdf94be', 'PMKs and CMKs are identical in every respect except naming', FALSE, 2),
    ('9d40bb3d-ab87-4d11-becd-b269319d8bfb', '54187bff-38bc-4e6d-8286-e46a4fdf94be', 'PMKs require the customer to manage a Key Vault, while CMKs never involve a Key Vault', FALSE, 3),
    ('cf366471-b65c-40cb-ba1f-554e9a43e2d7', '54187bff-38bc-4e6d-8286-e46a4fdf94be', 'PMKs are fully generated, stored, and managed by Azure with no customer interaction; CMKs are keys that the customer creates, rotates, disables, audits, and controls access to', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7c92b2bf-7d3a-4475-80b4-255747abbbfb', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'What requirement applies to the region of the Azure Key Vault used to store a customer-managed key, relative to the storage account it encrypts?',
        'When using customer-managed keys, the Azure storage account and the key vault must be located in the same region, but they can belong to different subscriptions.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0f3884c7-6968-41fc-956d-a6d01ca8827a', '7c92b2bf-7d3a-4475-80b4-255747abbbfb', 'The key vault and storage account must be in the same subscription and same region', FALSE, 1),
    ('75ab8eeb-4ec3-4a4f-a97b-3a444dd14cfb', '7c92b2bf-7d3a-4475-80b4-255747abbbfb', 'There is no regional requirement at all', FALSE, 2),
    ('a48efa47-bfb6-44a9-92d2-0d305f413589', '7c92b2bf-7d3a-4475-80b4-255747abbbfb', 'The key vault must always be in a different region from the storage account', FALSE, 3),
    ('b6aa4d32-a4a5-48a5-b0f3-5e295ee0b0cd', '7c92b2bf-7d3a-4475-80b4-255747abbbfb', 'The storage account and the key vault must be in the same region, though they can belong to different subscriptions', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2612c029-304e-41be-8022-b44dedb08b70', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which Azure capability provides a unified view of performance, capacity, and availability across storage accounts, along with detailed metrics, logs, and diagnostic information — but is a passive/historical monitoring tool rather than active threat detection?',
        'Storage Insights provides comprehensive monitoring of storage accounts, offering a unified view of performance, capacity, and availability, along with detailed metrics and logs — it supports near real-time monitoring and security auditing, but is passive/historical rather than active threat detection.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('30171306-33ea-4d67-8577-ee15b0166145', '2612c029-304e-41be-8022-b44dedb08b70', 'Azure Policy', FALSE, 1),
    ('319e4f2b-dca5-4823-8074-77a06974ead1', '2612c029-304e-41be-8022-b44dedb08b70', 'Azure Bastion', FALSE, 2),
    ('8740bacb-d62f-4796-bc0e-4483f6c07e72', '2612c029-304e-41be-8022-b44dedb08b70', 'Storage Insights', TRUE, 3),
    ('170a6c34-48e7-4380-b844-cacb8ad33488', '2612c029-304e-41be-8022-b44dedb08b70', 'Microsoft Defender for Storage', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('324dd8eb-98c8-436c-8b67-099e5b6db4a7', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which capability complements Storage Insights by offering proactive threat detection, such as malware scanning on blob uploads and detection of suspicious access patterns?',
        'Microsoft Defender for Storage complements Storage Insights by providing proactive threat detection rather than historical reporting — including malware scanning of blob uploads, sensitive data threat detection (like inappropriately stored PII), and activity-based threat detection such as unusual access patterns.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cc4ad563-53ba-4275-841d-fcd3bf8db944', '324dd8eb-98c8-436c-8b67-099e5b6db4a7', 'Object replication', FALSE, 1),
    ('ec779810-7853-44f5-8b24-eb551951e720', '324dd8eb-98c8-436c-8b67-099e5b6db4a7', 'Microsoft Defender for Storage', TRUE, 2),
    ('ba595f2d-2b78-4bed-975f-9f94a212e5ea', '324dd8eb-98c8-436c-8b67-099e5b6db4a7', 'A shared access signature', FALSE, 3),
    ('f37bb536-06fe-4b91-b815-1c9bed8affb5', '324dd8eb-98c8-436c-8b67-099e5b6db4a7', 'Lifecycle management policies', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2f779d4e-adea-434b-bb37-5bcf38805b45', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which protocols can be used to access Azure Files shares?',
        'Azure Files offers fully managed file shares in the cloud, accessible via the SMB, NFS, and HTTP protocols, and clients can connect from Windows, Linux, and macOS devices.', 46, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('77a72c65-f279-4f6e-9584-3c6cdea99367', '2f779d4e-adea-434b-bb37-5bcf38805b45', 'SMB (Server Message Block), NFS (Network File System), and HTTP', TRUE, 1),
    ('28642b8c-debe-4199-a6fd-8c8705115e57', '2f779d4e-adea-434b-bb37-5bcf38805b45', 'Only FTP', FALSE, 2),
    ('c0115dec-03d3-494a-bac3-f05ebc4ce3fa', '2f779d4e-adea-434b-bb37-5bcf38805b45', 'Only BGP', FALSE, 3),
    ('2c8ed731-e216-4ab5-a545-962873adc6c9', '2f779d4e-adea-434b-bb37-5bcf38805b45', 'Only iSCSI', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2a8a54f9-83c1-4678-9494-23673e8db95e', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'What is the maximum size for a single Azure file share, and for an individual file within that share?',
        'A single Azure file share can store up to 100 tebibytes (TiB) of files, and an individual file can be up to 4 TiB, organized in a hierarchical folder structure similar to on-premises file servers.', 47, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e51eab27-d1f5-4d0b-8caa-f54cbd538c81', '2a8a54f9-83c1-4678-9494-23673e8db95e', 'Unlimited share size, but files limited to 1 GB', FALSE, 1),
    ('fc8b50a5-f82e-497c-8a09-a38cf5829b52', '2a8a54f9-83c1-4678-9494-23673e8db95e', 'Up to 5 GB per share, and up to 100 MB per file', FALSE, 2),
    ('77aa1c66-9ebf-4eef-b1b3-954cff52440d', '2a8a54f9-83c1-4678-9494-23673e8db95e', 'Up to 1 TiB per share, and up to 1 TiB per file', FALSE, 3),
    ('ce066c59-2049-4815-8adc-bfc5ca87bae5', '2a8a54f9-83c1-4678-9494-23673e8db95e', 'Up to 100 TiB per share, and up to 4 TiB per file', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8c6960f4-a89c-4430-9df7-1bafef91554a', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which two sources can control access to Azure file shares using identity-based authentication, in addition to Microsoft Entra Domain Services?',
        'You can control access to Azure file shares using Microsoft Entra identities or Active Directory Domain Services identities synchronized with Microsoft Entra ID; SMB identity-based authentication supports three sources: on-premises AD DS, Microsoft Entra Domain Services, and Microsoft Entra Kerberos.', 48, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b634a58a-0ca4-4b5a-bea8-e44915231728', '8c6960f4-a89c-4430-9df7-1bafef91554a', 'SSH key pairs', FALSE, 1),
    ('24640724-b579-4a2f-bab0-8b5e2e125621', '8c6960f4-a89c-4430-9df7-1bafef91554a', 'On-premises AD DS and Microsoft Entra Kerberos', TRUE, 2),
    ('58c30a50-b113-40b6-9004-04d12c026197', '8c6960f4-a89c-4430-9df7-1bafef91554a', 'Shared access signatures only', FALSE, 3),
    ('71c060ae-1875-44e5-8770-438e7ddd983c', '8c6960f4-a89c-4430-9df7-1bafef91554a', 'Local Windows accounts only', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('11d0eac8-bec8-48e3-a7b2-146b1f41a98d', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which comparison correctly distinguishes Azure Files from Azure Blob Storage?',
        'Files in an Azure Files share are true directory objects, accessible through file shares across multiple VMs, making it ideal for lift-and-shift of applications already using native file system APIs. Blobs in Blob Storage exist in a flat namespace, accessed through a container, and Blob Storage is better suited to streaming and random-access scenarios.', 49, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cce664bd-6964-4fad-9a19-d08b86d69715', '11d0eac8-bec8-48e3-a7b2-146b1f41a98d', 'Azure Files can only store binary data, while Blob Storage supports directory structures', FALSE, 1),
    ('675e269b-21ea-4b53-964b-a86ec2509439', '11d0eac8-bec8-48e3-a7b2-146b1f41a98d', 'Azure Files provides true directory objects accessed via file shares across multiple VMs, while Blob Storage is a flat namespace accessed through containers', TRUE, 2),
    ('32b636be-388d-489f-9aae-6aafece49272', '11d0eac8-bec8-48e3-a7b2-146b1f41a98d', 'Azure Files and Blob Storage are functionally identical for all scenarios', FALSE, 3),
    ('0fa86fcf-0bfd-4e00-ac1b-d3c0ac9c28e9', '11d0eac8-bec8-48e3-a7b2-146b1f41a98d', 'Blob Storage supports SMB and NFS natively, while Azure Files does not support any file protocol', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a3b3261c-9a7a-48e7-ba98-f8c089054524', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which Azure Files storage tier is backed by SSDs, uses provisioned (pay-ahead-for-reserved-capacity) billing, and is intended for high-performance workloads requiring low latency?',
        'The Premium tier is SSD-backed with consistent low latency, uses the FileStorage storage account type, supports LRS and ZRS redundancy, and uses provisioned billing (you pay ahead for reserved capacity) — intended for high-performance workloads. The Transaction Optimized, Hot, and Cool tiers are all HDD-backed, standard-performance, and use pay-as-you-go billing.', 50, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('468493df-490c-4a94-8726-d9fef70cca58', 'a3b3261c-9a7a-48e7-ba98-f8c089054524', 'Cool', FALSE, 1),
    ('9fb1fe9b-f769-479e-8fd1-f5abe1e3f14c', 'a3b3261c-9a7a-48e7-ba98-f8c089054524', 'Transaction Optimized', FALSE, 2),
    ('d5df282d-8305-4be2-99c4-79d3cb6fc048', 'a3b3261c-9a7a-48e7-ba98-f8c089054524', 'Hot', FALSE, 3),
    ('29c5cda9-1716-4e16-a005-b651aa721c07', 'a3b3261c-9a7a-48e7-ba98-f8c089054524', 'Premium', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7204ac48-0a9c-4756-8a38-47c8e23bfbae', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which authentication method for Azure Files is described as older, less flexible, providing full access control to the file share, and should generally be avoided in favor of identity-based authentication?',
        'An access key is an older, less flexible authentication option; storage accounts have two access keys that grant full access control and bypass any access-control restrictions, so best practice is to avoid sharing storage account keys and use identity-based authentication whenever possible.', 51, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fe77e861-25f8-4b0d-9364-a38465cb0512', '7204ac48-0a9c-4756-8a38-47c8e23bfbae', 'Identity-based authentication over SMB', FALSE, 1),
    ('90488381-ea5b-4b31-a756-b17708c9c5a0', '7204ac48-0a9c-4756-8a38-47c8e23bfbae', 'Multi-factor authentication', FALSE, 2),
    ('84808151-4b7f-44e7-813e-a9b98d4698dd', '7204ac48-0a9c-4756-8a38-47c8e23bfbae', 'Access key', TRUE, 3),
    ('597ad9ba-717c-4e96-a12a-378872d3cdda', '7204ac48-0a9c-4756-8a38-47c8e23bfbae', 'Managed identity', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6a61befd-2fe0-456f-8c03-996c875448cd', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which port does SMB traffic use when connecting to an Azure file share, and why is this often a connectivity problem for on-premises clients?',
        'SMB traffic to Azure file shares uses port 445, and many internet service providers block outbound port 445, which is the most common connectivity issue encountered when mounting Azure file shares from on-premises environments.', 52, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cd192250-3219-4e39-989f-5ec927c1cc57', '6a61befd-2fe0-456f-8c03-996c875448cd', 'Port 22, which is often blocked by corporate firewalls for security reasons', FALSE, 1),
    ('fd1f6e00-f5ca-4025-b1e8-ac76c4e1e283', '6a61befd-2fe0-456f-8c03-996c875448cd', 'Port 443, which is rarely blocked but has high latency', FALSE, 2),
    ('e8ee79fd-8304-4dbd-8111-a5e2d6f7beee', '6a61befd-2fe0-456f-8c03-996c875448cd', 'Port 445, which many internet service providers block outbound, making it the most common connectivity issue when mounting Azure file shares from on-premises', TRUE, 3),
    ('a1c77835-52f1-408d-8103-0d3aaf34fe08', '6a61befd-2fe0-456f-8c03-996c875448cd', 'Port 3389, which is reserved for Remote Desktop only', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('651cb005-9be9-421b-8b63-aa2ba580cc40', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'What is a file share snapshot in Azure Files?',
        'File share snapshots are incremental, read-only, point-in-time captures of a file share that protect against accidental deletion and enable recovery from application errors; only the delta from the last snapshot is captured to reduce time and cost, and up to 200 snapshots per file share are supported.', 53, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('60cd3df0-5a3d-429a-b41d-1c48569e55a4', '651cb005-9be9-421b-8b63-aa2ba580cc40', 'A permanent export of the file share to Blob Storage', FALSE, 1),
    ('7ea4d50e-56e5-481f-beca-960e7fe3ad96', '651cb005-9be9-421b-8b63-aa2ba580cc40', 'An incremental, read-only, point-in-time capture at the share level that protects against accidental deletion and supports recovery from application errors', TRUE, 2),
    ('0b1ef02e-aa54-45fa-b857-48659ed3dedb', '651cb005-9be9-421b-8b63-aa2ba580cc40', 'A full, writable copy of the entire storage account created every hour', FALSE, 3),
    ('e74f7ddc-eaf9-4bd3-9e50-5ca14b6dc195', '651cb005-9be9-421b-8b63-aa2ba580cc40', 'A backup that requires a separate storage account to store', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3d27a994-d4b7-47fe-b85b-8845dfd7804a', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'What happens to all snapshots of a file share if the file share itself is deleted?',
        'Snapshots persist until they''re explicitly deleted, but deleting the parent file share also deletes all of its snapshots; Azure Backup can be used to retain snapshots and help prevent accidental deletion.', 54, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c92fd8de-694f-4b6e-87f9-b178b2ee4078', '3d27a994-d4b7-47fe-b85b-8845dfd7804a', 'Snapshots are automatically migrated to a new file share', FALSE, 1),
    ('5bab14a9-f48a-44da-a858-35c805404744', '3d27a994-d4b7-47fe-b85b-8845dfd7804a', 'Snapshots are unaffected and remain accessible indefinitely', FALSE, 2),
    ('eb089960-8c16-49cd-aa69-613f33312ffa', '3d27a994-d4b7-47fe-b85b-8845dfd7804a', 'Snapshots become independent file shares', FALSE, 3),
    ('ffea8cfd-3a3c-4921-817f-20e2a0695954', '3d27a994-d4b7-47fe-b85b-8845dfd7804a', 'All snapshots associated with the file share are also deleted', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('76d1ece5-f444-4f10-9083-01e7ecf39575', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'At what level is soft delete for Azure file shares enabled, and what range of retention periods can be configured?',
        'Soft delete for file shares is enabled at the storage account level. It transitions content to a soft-deleted state instead of permanently deleting it, and you can configure a retention period between 1 and 365 days; it can be enabled on new or existing file shares.', 55, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1151b48c-f55e-4350-9c69-8abe92288cc0', '76d1ece5-f444-4f10-9083-01e7ecf39575', 'It is enabled at the storage account level, with a retention period configurable between 1 and 365 days', TRUE, 1),
    ('4fd51970-95db-4e9d-8556-320950abe64e', '76d1ece5-f444-4f10-9083-01e7ecf39575', 'It is enabled per individual file only, with a fixed 7-day retention', FALSE, 2),
    ('9e7b2d58-c3e1-4f80-8c10-c37a433cb320', '76d1ece5-f444-4f10-9083-01e7ecf39575', 'It cannot be enabled on existing file shares, only new ones', FALSE, 3),
    ('3d3eb9d7-552d-44d0-9aef-1e78ee5e3f69', '76d1ece5-f444-4f10-9083-01e7ecf39575', 'It is enabled at the subscription level, with no configurable retention', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('853fd772-b1ef-40cd-84a8-18f65cf398c1', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'What information is required to attach Azure Storage Explorer to an external storage account?',
        'To attach to an external storage account in Azure Storage Explorer, you need the account name and the account key (referred to as key1 in the Azure portal); access keys grant access to the entire storage account and should be stored securely.', 56, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('74e146e7-5d15-453e-aaf0-cd85c3f25c48', '853fd772-b1ef-40cd-84a8-18f65cf398c1', 'The storage account name and the account key (called key1 in the Azure portal)', TRUE, 1),
    ('6f7a9fea-2ce6-4f6e-8cde-ec05d611d1f8', '853fd772-b1ef-40cd-84a8-18f65cf398c1', 'Only the storage account''s resource group name', FALSE, 2),
    ('704cef36-4d83-4ede-ad5c-520c59b6891c', '853fd772-b1ef-40cd-84a8-18f65cf398c1', 'The virtual network name and subnet ID', FALSE, 3),
    ('59777fda-e568-466b-8f0b-d204174e1117', '853fd772-b1ef-40cd-84a8-18f65cf398c1', 'Only the subscription ID', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fa78eac3-efc3-4e5e-aec3-81871d040961', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'What is the primary purpose of Azure File Sync?',
        'Azure File Sync lets you cache several Azure file shares on an on-premises Windows Server or a cloud-hosted VM, letting you centralize your organization''s file shares in Azure Files while retaining the flexibility, performance, and compatibility of an on-premises file server.', 57, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('37c782b2-d5ad-4ebc-a094-10b83e63861f', 'fa78eac3-efc3-4e5e-aec3-81871d040961', 'To replicate blob containers between two storage accounts in different regions', FALSE, 1),
    ('9a540966-6777-44a2-92fb-6848f1c950b2', 'fa78eac3-efc3-4e5e-aec3-81871d040961', 'To encrypt file shares using customer-managed keys', FALSE, 2),
    ('efe580f2-c0a5-4cc4-9abe-a501c2068dd5', 'fa78eac3-efc3-4e5e-aec3-81871d040961', 'To cache Azure file shares on an on-premises Windows Server (or cloud-hosted VM), centralizing file shares in Azure Files while retaining local server performance and compatibility', TRUE, 3),
    ('380f27ed-5a42-4300-a608-1b7732318926', 'fa78eac3-efc3-4e5e-aec3-81871d040961', 'To convert block blobs into page blobs automatically', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d3f1324c-79fd-4b80-9936-94e1097fa968', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'In Azure File Sync''s architecture, what is the maximum number of server endpoints allowed within a single sync group?',
        'A sync group establishes the sync topology, containing one cloud endpoint (the Azure file share) and up to 50 server endpoints; the Storage Sync Service (the top-level Azure resource) can support up to 100 sync groups and up to 99 registered Windows servers.', 58, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('932ad355-7301-4648-aa74-3a5731c01dc2', 'd3f1324c-79fd-4b80-9936-94e1097fa968', '5 server endpoints', FALSE, 1),
    ('d67a78b9-8267-46b6-b3a5-4d2cfeca9b6b', 'd3f1324c-79fd-4b80-9936-94e1097fa968', '50 server endpoints per sync group (and one cloud endpoint per sync group)', TRUE, 2),
    ('b623d351-9b47-4e58-9752-c393f521a7c0', 'd3f1324c-79fd-4b80-9936-94e1097fa968', '100 server endpoints', FALSE, 3),
    ('d8b8fd69-bd8b-4bb9-af67-a1dbede0a3d1', 'd3f1324c-79fd-4b80-9936-94e1097fa968', 'Unlimited server endpoints', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b5dc59e0-a280-4d55-9c82-2f00c338fee3', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Which Azure File Sync feature ensures that only recently used data is kept on the local Windows Server, with older data migrated to Azure Files while still appearing accessible locally?',
        'Cloud tiering is an Azure File Sync feature that stores only recently accessed data on local servers, while older, less-used data is migrated (''tiered'') to Azure Files, useful for archiving files while keeping frequently accessed content fast and local.', 59, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2c5c1352-cfa2-4622-815b-d911ea9da122', 'b5dc59e0-a280-4d55-9c82-2f00c338fee3', 'Cloud tiering', TRUE, 1),
    ('dca9b4b1-3005-41ad-bc04-6232824f68b5', 'b5dc59e0-a280-4d55-9c82-2f00c338fee3', 'Soft delete', FALSE, 2),
    ('61d2bcf1-2314-4523-9807-f64abeec6b28', 'b5dc59e0-a280-4d55-9c82-2f00c338fee3', 'Object replication', FALSE, 3),
    ('4b1a2a77-af44-4471-88df-f7c91e943624', 'b5dc59e0-a280-4d55-9c82-2f00c338fee3', 'Zone-redundant storage', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d1c5f21a-866d-4e32-9ed0-3d1e557c7490', '3aa2c35a-ea99-4cd6-ac50-a9c57d479b48', 'SINGLE_CHOICE', 'Where must a server endpoint reside within Azure File Sync, and what restriction applies?',
        'A server endpoint is a specific path on a registered Windows server that syncs with the cloud endpoint; it must be an NTFS-formatted volume and cannot be the system volume, and cloud tiering is not supported on the system volume.', 60, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2e112006-0405-48f3-8648-053cfdee51d2', 'd1c5f21a-866d-4e32-9ed0-3d1e557c7490', 'It must be an NTFS-formatted volume on a registered Windows server, and it cannot be the system volume', TRUE, 1),
    ('5a093d05-3ae9-4006-beb0-7c5c3d264d67', 'd1c5f21a-866d-4e32-9ed0-3d1e557c7490', 'It must be located on the Azure file share itself', FALSE, 2),
    ('c7af65fe-09a5-40fc-bd7c-67b42e81fd5d', 'd1c5f21a-866d-4e32-9ed0-3d1e557c7490', 'It can be any volume, including the system volume, with no restrictions', FALSE, 3),
    ('78b83098-8e3a-4e06-b0e5-54e6771163d2', 'd1c5f21a-866d-4e32-9ed0-3d1e557c7490', 'It must reside on a Linux server using the ext4 file system', FALSE, 4);
