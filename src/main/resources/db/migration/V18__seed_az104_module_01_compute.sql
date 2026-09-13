INSERT INTO certification (id, code, title, description, position)
VALUES ('00000000-0000-0000-0000-000000000002', 'AZ-104', 'Azure Administrator',
        'Manage Azure identities, governance, storage, compute, and networking resources.', 1);

INSERT INTO module (id, certification_id, code, title, description, position)
VALUES ('d4f0d2c4-acb5-42bb-a70e-9a96db6ac687', '00000000-0000-0000-0000-000000000002', 'module-01-compute', 'Module 1 - Deploy and Manage Azure Compute Resources',
        NULL, 1);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cf7ccdf6-82b4-46b1-9dd3-6065bbfe53f9', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'In the context of deploying an Azure virtual machine, what is an "Azure resource"?',
        'An Azure resource is any item that can be managed in Azure. A VM deployment is made up of several resources working together: the VM, disks, virtual network, NIC, network security group, and IP address. Azure creates these automatically if you don''t supply existing ones.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('069e2dbc-30ac-4c5a-a1e5-7ea1597f9bd3', 'cf7ccdf6-82b4-46b1-9dd3-6065bbfe53f9', 'Any manageable item in Azure, such as the VM itself, its disks, the virtual network, the NIC, and the IP address', TRUE, 1),
    ('4887ae39-1f0f-4e76-9ac4-86704471f54d', 'cf7ccdf6-82b4-46b1-9dd3-6065bbfe53f9', 'A billing category used solely for invoicing purposes', FALSE, 2),
    ('d86156a6-e596-4012-ae60-28ff528f28b0', 'cf7ccdf6-82b4-46b1-9dd3-6065bbfe53f9', 'Only the compute (CPU/RAM) component of the virtual machine', FALSE, 3),
    ('7253dc45-26a6-413f-8a7e-8ea4715c709b', 'cf7ccdf6-82b4-46b1-9dd3-6065bbfe53f9', 'A folder used to organize subscriptions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5cdbb68d-2320-4771-ac68-cf26dcffce0f', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What is the maximum computer name length allowed for a virtual machine running Windows versus one running Linux?',
        'Windows VM names are limited to 15 characters, while Linux VM names can be up to 64 characters. Because this name also becomes the manageable Azure resource name and is hard to change later, it should be chosen carefully using a consistent naming convention.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('afbc3713-39e3-49de-8f31-e7279b4f3cf9', '5cdbb68d-2320-4771-ac68-cf26dcffce0f', '64 characters for Windows, 15 characters for Linux', FALSE, 1),
    ('17643724-8875-498d-a87f-715ce636d672', '5cdbb68d-2320-4771-ac68-cf26dcffce0f', '15 characters for Windows, 64 characters for Linux', TRUE, 2),
    ('cbf528e0-aba3-4b84-acc1-9c85b31e49cf', '5cdbb68d-2320-4771-ac68-cf26dcffce0f', '20 characters for both operating systems', FALSE, 3),
    ('b70d06bc-67fa-4000-9e0a-db4e3bbb0560', '5cdbb68d-2320-4771-ac68-cf26dcffce0f', 'There is no character limit for either operating system', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b33348e1-a09d-4f76-bd71-1cc2bce443a1', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Why should you plan your virtual network''s address space carefully before deploying VMs, especially if you plan to connect it to other virtual networks or on-premises networks?',
        'Network addresses and subnets are not simple to change once set up. If the virtual network will connect to other virtual networks or your on-premises network, you must select non-overlapping address ranges to avoid conflicts during peering or connections.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e1967fdc-8651-407f-9766-5562f6bc4639', 'b33348e1-a09d-4f76-bd71-1cc2bce443a1', 'Address space size directly determines the VM''s CPU allocation', FALSE, 1),
    ('2767e00a-d390-4a1c-8043-d08c720feb3a', 'b33348e1-a09d-4f76-bd71-1cc2bce443a1', 'Address spaces and subnets are difficult to change once configured, and overlapping ranges will conflict with peered or connected networks', TRUE, 2),
    ('86faf650-b381-4364-ae6a-c8658fb11873', 'b33348e1-a09d-4f76-bd71-1cc2bce443a1', 'Virtual networks cannot be modified once a VM is deployed to them under any circumstance', FALSE, 3),
    ('20a9627d-a9a5-4d95-a6b6-e1d9340d768b', 'b33348e1-a09d-4f76-bd71-1cc2bce443a1', 'Azure automatically renumbers subnets every 90 days regardless of configuration', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4aecef08-bf69-4df6-8cd4-eda7c1d8fca4', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Within each Azure subnet, how many IP addresses does Azure reserve and make unavailable for use by resources?',
        'Azure reserves the first four addresses and the last address in every subnet for internal use (such as the gateway and broadcast addresses). This reduces the number of usable addresses available for your resources within that subnet.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('331f0e37-a4e9-4af6-9f0f-bcf9d2ef4260', '4aecef08-bf69-4df6-8cd4-eda7c1d8fca4', 'No addresses are reserved; all are available', FALSE, 1),
    ('52802949-0eab-49bd-ae7c-351e45533069', '4aecef08-bf69-4df6-8cd4-eda7c1d8fca4', 'Only the very first address', FALSE, 2),
    ('36be7374-497b-4289-a771-67ae26f30824', '4aecef08-bf69-4df6-8cd4-eda7c1d8fca4', 'The first four addresses and the last address', TRUE, 3),
    ('50d6fb41-b205-4505-9fcf-0377e7c422a9', '4aecef08-bf69-4df6-8cd4-eda7c1d8fca4', 'The last ten addresses', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('49ad8256-13c9-446a-8603-4009df55fd0d', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'A team needs to run a deep learning model training workload on Azure VMs that requires intensive graphics and parallel processing capability. Which VM size category is best suited to this workload?',
        'GPU VMs are specialized machines designed for heavy graphics rendering and video editing, and they are ideal for model training and inferencing with deep learning. General purpose, memory optimized, and storage optimized VMs target balanced, memory-heavy, and disk-throughput workloads respectively, not GPU-intensive training.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('37905e0c-21d7-4d82-98ee-38c2d77d86d2', '49ad8256-13c9-446a-8603-4009df55fd0d', 'General purpose VMs', FALSE, 1),
    ('817a397e-f35d-41c2-845f-9da8dfa414cc', '49ad8256-13c9-446a-8603-4009df55fd0d', 'Memory optimized VMs', FALSE, 2),
    ('24568667-99c6-46b0-bca1-75298e678166', '49ad8256-13c9-446a-8603-4009df55fd0d', 'GPU VMs', TRUE, 3),
    ('05225bac-759c-486e-a921-7a7179e36335', '49ad8256-13c9-446a-8603-4009df55fd0d', 'Storage optimized VMs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e92e3b9f-b12a-4db2-94dd-c238ac9f4e76', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Which VM size category is designed to provide high disk throughput and IOPS, making it ideal for VMs running database workloads?',
        'Storage optimized VMs are designed for high disk throughput and IOPS, making them ideal for VMs running database workloads. Compute optimized VMs target a high CPU-to-memory ratio instead, and GPU/HPC VMs target graphics-intensive or extremely CPU-intensive parallel workloads.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b814e400-7280-4611-bebb-9d9d4c3cad0d', 'e92e3b9f-b12a-4db2-94dd-c238ac9f4e76', 'Storage optimized VMs', TRUE, 1),
    ('0f1956f1-1ba5-4593-b93f-ef915fad996b', 'e92e3b9f-b12a-4db2-94dd-c238ac9f4e76', 'High performance compute VMs', FALSE, 2),
    ('ec4c18b9-b3de-445c-90dd-0c61af2ac70e', 'e92e3b9f-b12a-4db2-94dd-c238ac9f4e76', 'Compute optimized VMs', FALSE, 3),
    ('d8ef3d4c-8f84-4a98-8013-1b3e8dab8827', 'e92e3b9f-b12a-4db2-94dd-c238ac9f4e76', 'GPU VMs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3e296eae-8113-47f4-83f7-42cfbd6a7cdb', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'An administrator wants to change the size of a virtual machine while it continues running. What constraint applies to this resize operation?',
        'You can change a running VM''s size as long as the new size is available on the hardware cluster the VM currently runs on. The Azure portal only shows valid choices, while CLI tools return an error if you request an unavailable size. The resize automatically restarts the VM.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('91305d26-0c78-4a58-8ef1-6c11b73cb0dd', '3e296eae-8113-47f4-83f7-42cfbd6a7cdb', 'Resizing a running VM always requires deleting and recreating it from scratch', FALSE, 1),
    ('07cd9002-73e3-43c6-93b1-00f1bab84790', '3e296eae-8113-47f4-83f7-42cfbd6a7cdb', 'The new size must be available on the same hardware cluster the VM currently runs on; the VM restarts automatically to complete the resize', TRUE, 2),
    ('dda9fe45-0bb6-4fc6-b71a-8a6b03c754ed', '3e296eae-8113-47f4-83f7-42cfbd6a7cdb', 'Running VMs can never be resized under any circumstances', FALSE, 3),
    ('1f6ed269-3a9b-4e56-9318-555a8fe99bc4', '3e296eae-8113-47f4-83f7-42cfbd6a7cdb', 'The VM must first be moved to a different subscription before it can be resized', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d43cc52a-597f-46ab-93d9-d2c48b8bc993', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Why might an administrator choose to stop and deallocate a VM before resizing it to a very different size, rather than resizing it while running?',
        'Stopping and deallocating a VM removes it from the hardware cluster it was running on, freeing you to select any size available in that region rather than being limited to sizes available on the current cluster.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2a86afe2-e8be-4afb-9a38-68d24aeda86a', 'd43cc52a-597f-46ab-93d9-d2c48b8bc993', 'Deallocating removes the VM from its current hardware cluster, allowing any size available in the region to be selected', TRUE, 1),
    ('3e201294-f766-47fd-ad95-e5bf38e3141a', 'd43cc52a-597f-46ab-93d9-d2c48b8bc993', 'Deallocated VMs receive a permanent 50% discount on their storage costs', FALSE, 2),
    ('3a35b991-4450-49fc-84b7-8a95cd51fa98', 'd43cc52a-597f-46ab-93d9-d2c48b8bc993', 'Deallocating automatically upgrades the VM''s operating system version', FALSE, 3),
    ('2c951495-8e98-4e90-8556-94866b557462', 'd43cc52a-597f-46ab-93d9-d2c48b8bc993', 'Stopping and deallocating is required before any resize, even to a similar size', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3464a50f-abfe-49fe-83e6-291fa3d9caef', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'How are Azure VM compute costs billed under the pay-as-you-go pricing option?',
        'Compute charges are priced hourly but billed by the minute — for example, running a VM for 55 minutes bills only 55 minutes of usage. No compute charge applies once you stop and deallocate the VM, since deallocation frees the underlying hardware.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('751ceaab-eb23-4861-8482-3fd5dddac8a1', '3464a50f-abfe-49fe-83e6-291fa3d9caef', 'Billed per gigabyte of RAM installed, independent of runtime', FALSE, 1),
    ('1132943a-1a8c-43ed-b4fc-18d48c5e299e', '3464a50f-abfe-49fe-83e6-291fa3d9caef', 'Priced on an hourly basis but billed per-minute, with no charge while the VM is stopped and deallocated', TRUE, 2),
    ('d8d519cd-9327-410b-a603-15120b9980f5', '3464a50f-abfe-49fe-83e6-291fa3d9caef', 'Billed only when the VM is stopped, not while it is running', FALSE, 3),
    ('745b270c-9760-4767-9aa6-4c5fbd5ddece', '3464a50f-abfe-49fe-83e6-291fa3d9caef', 'A single flat annual fee regardless of usage', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('39c32f4c-c825-41c8-b92f-ac2870268fe7', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'A VM has been stopped and deallocated to save on compute costs. What happens to the storage costs for its attached disks?',
        'Storage used by a VM is billed separately from compute and is not tied to the VM''s running state. Even when a VM is stopped and deallocated so no compute charges accrue, the storage used by its disks continues to be billed.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('dfea149f-957f-4e5a-8a41-05cfb1a09123', '39c32f4c-c825-41c8-b92f-ac2870268fe7', 'Storage costs continue to be billed regardless of the VM''s running state', TRUE, 1),
    ('b7d2310e-cd7b-40ee-820c-3a7fea5981e3', '39c32f4c-c825-41c8-b92f-ac2870268fe7', 'Storage costs are automatically waived while the VM is deallocated', FALSE, 2),
    ('02c3474d-84ca-4d03-952b-285d3ca935bc', '39c32f4c-c825-41c8-b92f-ac2870268fe7', 'Storage costs convert to compute costs while the VM is stopped', FALSE, 3),
    ('6e229899-09ee-4677-b321-e71a941d4816', '39c32f4c-c825-41c8-b92f-ac2870268fe7', 'Storage costs are refunded retroactively once the VM is deleted', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('23912fa4-bc6e-4da6-9985-a48288f4d27c', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'A company commits to running a specific VM configuration continuously for one year in a specific Azure region. Which pricing option offers them the greatest cost savings for this predictable workload?',
        'Reserved Virtual Machine Instances involve prepaying for one or three years in a specified region in exchange for up to a 72% discount compared to pay-as-you-go pricing. This option suits workloads that need to run continuously and predictably, unlike pay-as-you-use which is best for short-term or unpredictable workloads.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('02178899-f7dc-4d54-a723-5b22668cc191', '23912fa4-bc6e-4da6-9985-a48288f4d27c', 'Spot pricing, which guarantees the VM will never be evicted', FALSE, 1),
    ('50ea6e69-cf99-45dd-a86e-16a1bda5b85f', '23912fa4-bc6e-4da6-9985-a48288f4d27c', 'Reserved Virtual Machine Instances, offering up to a 72% discount versus pay-as-you-go', TRUE, 2),
    ('1ae29e78-0f14-4f15-9d22-01cf4d4f629b', '23912fa4-bc6e-4da6-9985-a48288f4d27c', 'Pay-as-you-use, since it always offers the lowest per-minute rate', FALSE, 3),
    ('bdb913c9-367d-447c-87a0-02d0e5b8e197', '23912fa4-bc6e-4da6-9985-a48288f4d27c', 'The Free tier, available for any VM size when usage is under 750 hours', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6489557b-7309-4277-8385-b322de20c240', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Which Azure managed disk type offers the highest maximum IOPS (up to 160,000) and is designed for the most I/O-intensive workloads, such as SAP HANA and top-tier SQL or Oracle databases?',
        'Ultra Disks provide up to 160,000 IOPS and 4,000 MB/s throughput, making them the top choice for the most I/O-intensive workloads like SAP HANA and top-tier transactional databases. Premium SSD, Standard SSD, and Standard HDD all offer progressively lower maximum IOPS and throughput.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('202dbe83-0667-4e92-a686-1d4a8d537abf', '6489557b-7309-4277-8385-b322de20c240', 'Ultra Disk', TRUE, 1),
    ('84112181-12f6-4086-bda2-47175976f621', '6489557b-7309-4277-8385-b322de20c240', 'Standard SSD', FALSE, 2),
    ('095ec73e-9a27-4e8d-9050-c0a9abf42c70', '6489557b-7309-4277-8385-b322de20c240', 'Standard HDD', FALSE, 3),
    ('1e38576e-5fab-440f-a220-cf4be2edf6c0', '6489557b-7309-4277-8385-b322de20c240', 'Premium SSD', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b3d823d6-07b7-48b7-a868-10b8e14a1569', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Which two Azure managed disk types listed cannot be used as an operating system disk for a VM?',
        'Ultra Disk and Premium SSD v2 cannot be used as OS disks; they are usable only as data disks. Premium SSD, Standard SSD, and Standard HDD can all be used as either OS disks or data disks.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3e91db0a-d1a1-4893-9169-dd5edc8f12f9', 'b3d823d6-07b7-48b7-a868-10b8e14a1569', 'Ultra Disk and Premium SSD v2', TRUE, 1),
    ('fbcc66da-9dc5-412e-8aaa-7de954e3f7d9', 'b3d823d6-07b7-48b7-a868-10b8e14a1569', 'Premium SSD and Standard HDD', FALSE, 2),
    ('11908e37-43e2-4936-9433-74bedb22d8f8', 'b3d823d6-07b7-48b7-a868-10b8e14a1569', 'Standard SSD and Standard HDD', FALSE, 3),
    ('f6fa135f-e338-4407-84cb-624997b07f02', 'b3d823d6-07b7-48b7-a868-10b8e14a1569', 'Premium SSD and Standard SSD', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('308e6d07-e0dd-44c5-b0ee-2cd887086662', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'A team wants to programmatically create multiple identical copies of a VM configuration, defined declaratively and repeatable across environments like test and production. Which option best fits this need?',
        'a JSON file defining the resources to deploy — ARM templates are JSON files that define the resources needed for a solution. You can export a template from an existing VM, parameterize fields like VM name or storage account, and redeploy it repeatedly to replicate infrastructure across environments such as staging and production.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f0109fcb-66ad-4466-81fe-c7bd75de631a', '308e6d07-e0dd-44c5-b0ee-2cd887086662', 'The Azure portal''s manual creation wizard, repeated by hand each time', FALSE, 1),
    ('cdc43a54-6e08-4bb5-9e34-8a20af4b8282', '308e6d07-e0dd-44c5-b0ee-2cd887086662', 'A VM extension', FALSE, 2),
    ('d4901ea9-b1eb-4c99-9c8e-1ac68c599d4a', '308e6d07-e0dd-44c5-b0ee-2cd887086662', 'Auto-shutdown scheduling', FALSE, 3),
    ('be03945d-a1a9-4350-bb8c-55cb80a4273d', '308e6d07-e0dd-44c5-b0ee-2cd887086662', 'An Azure Resource Manager (ARM) template — a JSON file defining the resources to deploy', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('981c5afa-6741-480b-8a21-d58ddc564465', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What is the primary purpose of Azure VM extensions?',
        'VM extensions are small applications that let you configure and automate tasks on Azure VMs after the initial deployment, such as installing software or applying monitored, specific configurations — without manually logging into the VM.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c35ac46e-4fcb-4ea5-8bca-a67c6b710b5f', '981c5afa-6741-480b-8a21-d58ddc564465', 'To permanently encrypt all network traffic between VMs by default', FALSE, 1),
    ('792e3cde-d87a-4b3a-a103-3f0b5a7c9d22', '981c5afa-6741-480b-8a21-d58ddc564465', 'To replace the need for a virtual network entirely', FALSE, 2),
    ('3806b58b-083c-49c8-ba1f-e9c06cedc11e', '981c5afa-6741-480b-8a21-d58ddc564465', 'To configure and automate post-deployment tasks on a VM, such as installing and configuring additional software', TRUE, 3),
    ('d8bd9c23-21a2-45a5-840e-d46545447f64', '981c5afa-6741-480b-8a21-d58ddc564465', 'To physically relocate a VM to a different Azure region', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('77a66dfd-9b5a-4318-9c41-d3ad0b7b43a8', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What is unplanned hardware maintenance, and how does Azure respond when it predicts an imminent hardware failure?',
        'Unplanned hardware maintenance occurs when the Azure platform predicts that hardware or an associated platform component is about to fail. Azure uses Live Migration technology to move the VM to healthy hardware, pausing it briefly, though performance may be reduced just before or after the event.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4e011932-b41b-41cf-8e64-3a20763ebc3c', '77a66dfd-9b5a-4318-9c41-d3ad0b7b43a8', 'Azure requires the customer to manually detect and report the failing hardware', FALSE, 1),
    ('52306a36-e4f9-4272-8d43-975f65fcfa58', '77a66dfd-9b5a-4318-9c41-d3ad0b7b43a8', 'Azure immediately deletes the affected VM without any warning or migration', FALSE, 2),
    ('217a8b8e-f84d-4e73-81ed-ba754f9c1208', '77a66dfd-9b5a-4318-9c41-d3ad0b7b43a8', 'Azure predicts the failure and uses Live Migration to move the VM to healthy hardware, pausing the VM only briefly', TRUE, 3),
    ('3ff93ab5-1f2e-4065-8d4b-7b3e5b87b114', '77a66dfd-9b5a-4318-9c41-d3ad0b7b43a8', 'Azure always reboots the entire region''s hardware fleet at once', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b6df9de9-022d-40e7-9f82-8a624d8a8f2c', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Does Microsoft automatically update the guest operating system or software running inside a customer''s Azure VM?',
        'the customer controls and is fully responsible for guest OS and software updates; Microsoft patches only the underlying host and hardware — Microsoft does not automatically update the operating system or other software inside your VMs — you control and are fully responsible for those updates. However, the underlying host software and hardware are regularly patched by Microsoft to maintain reliability and performance.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1c90175e-2123-434f-b670-b20312a5404b', 'b6df9de9-022d-40e7-9f82-8a624d8a8f2c', 'No — neither the guest OS nor the underlying host is ever patched automatically', FALSE, 1),
    ('e02003fa-8368-4cea-bb5a-0b4ee1a0f139', 'b6df9de9-022d-40e7-9f82-8a624d8a8f2c', 'Yes, but only for Windows VMs, never for Linux VMs', FALSE, 2),
    ('871883ed-c8e8-43cf-938b-ef5c3012ca27', 'b6df9de9-022d-40e7-9f82-8a624d8a8f2c', 'Yes — Microsoft silently patches the guest OS every night without customer involvement', FALSE, 3),
    ('1adfa8e4-c2ca-4183-bdef-40e161320179', 'b6df9de9-022d-40e7-9f82-8a624d8a8f2c', 'No — the customer controls and is fully responsible for guest OS and software updates; Microsoft patches only the underlying host and hardware', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c42ac90f-bf4b-45a3-bec2-354cf425c7ec', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What is the key restriction on when a VM can be added to an availability set?',
        'A VM can only be added to an availability set when the VM is created. To change a running VM''s availability set membership, you must delete the VM and recreate it, since the setting cannot be modified in place.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3710e846-321b-46ab-b070-afd29b5d3c4e', 'c42ac90f-bf4b-45a3-bec2-354cf425c7ec', 'A VM can only be added to an availability set at the time the VM is created; to change it later, the VM must be deleted and recreated', TRUE, 1),
    ('cf352220-c378-4e07-b5ee-0e0ab9bf1b8f', 'c42ac90f-bf4b-45a3-bec2-354cf425c7ec', 'Availability sets can only ever contain a single VM', FALSE, 2),
    ('c0a47c26-effe-4dfd-8b9d-57cd68b6f39e', 'c42ac90f-bf4b-45a3-bec2-354cf425c7ec', 'A VM can be added to or removed from an availability set at any time with no restrictions', FALSE, 3),
    ('ca8e8c4b-d309-4b6b-b060-4a8e528ddff5', 'c42ac90f-bf4b-45a3-bec2-354cf425c7ec', 'VMs can be added to an availability set only after they have been running for at least 30 days', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('47f2b7a1-225d-4e01-a4c2-206b8d73f56f', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'A company places two VMs running the same web application in an availability set. What must be true about the software running on those VMs?',
        'All virtual machines in an availability set must run the same feature set, with the same software installed on all of them. This consistency ensures that Azure can distribute them across fault and update domains while keeping the application functioning identically on each instance.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('098539bb-5b66-4986-b5e0-ddbdba7d6aaf', '47f2b7a1-225d-4e01-a4c2-206b8d73f56f', 'Availability sets require each VM to run a unique, non-overlapping application', FALSE, 1),
    ('f29f6920-fd96-4cea-8e19-98c880a7b99e', '47f2b7a1-225d-4e01-a4c2-206b8d73f56f', 'All VMs in an availability set must run the same feature set and have the same software installed', TRUE, 2),
    ('c6084112-7763-4a1d-ad21-a18adaea31ae', '47f2b7a1-225d-4e01-a4c2-206b8d73f56f', 'Each VM in an availability set must run a completely different operating system', FALSE, 3),
    ('ebb07b57-cebf-45a8-8f3b-162fce5d9932', '47f2b7a1-225d-4e01-a4c2-206b8d73f56f', 'There is no requirement for consistency among VMs in the same availability set', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('beed42e0-e985-4ff8-b2ad-61ecfc86cb66', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'During planned maintenance on the underlying Azure platform, how many update domains within an availability set are typically restarted at the same time?',
        'During planned maintenance, only one update domain is rebooted at a time. This staggered approach ensures that not all VMs in an availability set go down simultaneously, keeping the application available throughout the maintenance window.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c6778408-fbbe-4d64-8c88-1329033251b6', 'beed42e0-e985-4ff8-b2ad-61ecfc86cb66', 'Exactly half of the update domains at once', FALSE, 1),
    ('6b094ffb-0a3a-4788-8601-b740cb2422b1', 'beed42e0-e985-4ff8-b2ad-61ecfc86cb66', 'All update domains simultaneously', FALSE, 2),
    ('8476c384-85bf-485d-ad4d-f57a21ca9d73', 'beed42e0-e985-4ff8-b2ad-61ecfc86cb66', 'Only one update domain at a time', TRUE, 3),
    ('18cab640-abf2-4deb-88f8-a45d7fa203e8', 'beed42e0-e985-4ff8-b2ad-61ecfc86cb66', 'Update domains are never restarted during planned maintenance', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a483d4a8-1151-4f9f-8cd8-4fdb046529ae', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'How many update domains can be specified when creating an availability set, and what is the default if none is specified?',
        'You can specify between 1 and 20 update domains when creating an availability set. If you don''t specify a value, Azure defaults to five update domains. This value is immutable after creation — to change it, you must delete and recreate the availability set.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('608f2e04-fc47-4d65-812e-472b66854bf1', 'a483d4a8-1151-4f9f-8cd8-4fdb046529ae', 'Update domain count is fixed at 10 and cannot be changed', FALSE, 1),
    ('5ec042f2-f2b4-43e1-a75c-d2d20c8b8f13', 'a483d4a8-1151-4f9f-8cd8-4fdb046529ae', 'Exactly 3, with no default option', FALSE, 2),
    ('c7c46595-7b27-4c52-9d1b-49ee6f521c6e', 'a483d4a8-1151-4f9f-8cd8-4fdb046529ae', 'Between 1 and 100, with a default of 50', FALSE, 3),
    ('241b1085-2a68-4fe5-9c31-9e99118355e1', 'a483d4a8-1151-4f9f-8cd8-4fdb046529ae', 'Between 1 and 20, with a default of five', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('461fb6d8-aa27-4d71-afd1-e2789ae5c2fe', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What does a fault domain represent within an Azure availability set?',
        'A fault domain is a group of nodes that represents a physical unit of failure, such as a server rack served by a common set of network or power switches. Spreading VMs across fault domains protects against a single point of failure taking down all instances.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c46082c7-d5d6-481b-bbe5-71e537933967', '461fb6d8-aa27-4d71-afd1-e2789ae5c2fe', 'A geographic region containing multiple Azure data centers', FALSE, 1),
    ('46dfff70-b50e-42cc-8b3a-06167966b6bf', '461fb6d8-aa27-4d71-afd1-e2789ae5c2fe', 'A security boundary that isolates network traffic between subscriptions', FALSE, 2),
    ('cd5f41b2-7337-464b-b8b1-3621d185a85b', '461fb6d8-aa27-4d71-afd1-e2789ae5c2fe', 'A group of nodes that share a common set of hardware components (such as a server rack and its power/network switches), representing a single point of failure', TRUE, 3),
    ('52cb4b5a-8bc2-4bfc-8ae1-605616363b8d', '461fb6d8-aa27-4d71-afd1-e2789ae5c2fe', 'A logical grouping used purely for billing purposes', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2f13700d-6fcc-4cd9-a951-8fff9f0e00f6', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What is the minimum number of availability zones supported in every Azure region that offers them?',
        'To ensure resiliency, a minimum of three separate availability zones are present in all availability-zone-enabled regions. Each zone has independent power, cooling, and networking, and deploying VMs across three zones spreads them across three fault domains and three update domains.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('49622ece-abb2-458e-87ae-093ade55c4d0', '2f13700d-6fcc-4cd9-a951-8fff9f0e00f6', 'Five', FALSE, 1),
    ('2e6370cf-131d-44c2-82a3-caded62a6079', '2f13700d-6fcc-4cd9-a951-8fff9f0e00f6', 'Three', TRUE, 2),
    ('7421086c-c8e8-4316-8e7c-4070df62ac56', '2f13700d-6fcc-4cd9-a951-8fff9f0e00f6', 'Two', FALSE, 3),
    ('f278410c-6200-44bb-9abf-93be2cdfee0c', '2f13700d-6fcc-4cd9-a951-8fff9f0e00f6', 'One', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('378e8ac4-1474-4f64-b91a-c26f4da88522', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Which of the following is an example of a "zonal" Azure service, where each resource instance is pinned to a specific availability zone, as opposed to a "zone-redundant" service?',
        'Zonal Azure services, such as Azure Virtual Machines and Azure managed disks, pin each resource instance to a specific zone. Zone-redundant services, such as zone-redundant storage and zone-redundant Azure SQL Database, are automatically replicated across zones by the platform instead.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e78e2d4b-d4be-4a9d-85bf-2c2f93425c3b', '378e8ac4-1474-4f64-b91a-c26f4da88522', 'Zone-redundant storage (ZRS)', FALSE, 1),
    ('f09b148a-eaa5-4e46-b932-ca4e775f6cda', '378e8ac4-1474-4f64-b91a-c26f4da88522', 'Azure SQL Database with zone redundancy enabled', FALSE, 2),
    ('b1e710ae-1df1-408e-9312-2a4145752dc1', '378e8ac4-1474-4f64-b91a-c26f4da88522', 'Azure Virtual Machines and Azure managed disks', TRUE, 3),
    ('4a288149-6b5f-4764-86e8-1485cb7ac5a8', '378e8ac4-1474-4f64-b91a-c26f4da88522', 'Any service using cross-zone automatic replication', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c53f285a-a724-48c2-bc18-1b145d72a2ce', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What is the fundamental difference between vertical scaling (scale-up/scale-down) and horizontal scaling (scale-out/scale-in)?',
        'Vertical scaling (scale-up/scale-down) makes an individual VM more or less powerful by changing its size. Horizontal scaling (scale-out/scale-in) instead adjusts the number of VM instances running to handle changing workload demand.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4fe7be8e-cca9-4f6a-be72-d57b63ea1b23', 'c53f285a-a724-48c2-bc18-1b145d72a2ce', 'Vertical scaling applies only to storage, while horizontal scaling applies only to compute', FALSE, 1),
    ('57f6a3f0-e28c-4909-af12-8cd7e970e592', 'c53f285a-a724-48c2-bc18-1b145d72a2ce', 'Both terms describe exactly the same scaling operation', FALSE, 2),
    ('9180a5f3-f65a-4d4f-bc40-79501c18b940', 'c53f285a-a724-48c2-bc18-1b145d72a2ce', 'Vertical scaling changes the number of VM instances, while horizontal scaling changes their size', FALSE, 3),
    ('092a8074-29e3-43d5-8550-931e6f7616b5', 'c53f285a-a724-48c2-bc18-1b145d72a2ce', 'Vertical scaling changes the size (power) of a VM, while horizontal scaling changes the number of VM instances', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9f14d0c5-bfae-407c-a66a-e6be03ce3565', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Why is horizontal scaling generally considered more flexible than vertical scaling in a cloud environment?',
        'Horizontal scaling implementations can run potentially thousands of VMs to manage workload and throughput changes, offering more flexibility. Vertical scaling relies on the availability of larger hardware, which quickly hits an upper limit and varies by region, and typically requires stopping and restarting the VM.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3aabf5b0-a2d1-4649-9e93-57eda265d5eb', '9f14d0c5-bfae-407c-a66a-e6be03ce3565', 'Horizontal scaling can potentially run thousands of VMs to handle workload changes, while vertical scaling is limited by available hardware sizes and typically requires a VM restart', TRUE, 1),
    ('f5f447cc-20dc-4a79-aec5-62224862524a', '9f14d0c5-bfae-407c-a66a-e6be03ce3565', 'Vertical scaling has no upper size limit at all, unlike horizontal scaling', FALSE, 2),
    ('45343c02-ba3d-4901-89f6-c1647f25b859', '9f14d0c5-bfae-407c-a66a-e6be03ce3565', 'Horizontal scaling never requires any additional VM instances', FALSE, 3),
    ('d53fa75a-2726-4a06-996a-aea79a445c7b', '9f14d0c5-bfae-407c-a66a-e6be03ce3565', 'Vertical scaling is always faster to perform than horizontal scaling', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('28785ad6-d1b7-434f-9c09-8faad330db1d', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'In Azure Virtual Machine Scale Sets, what distinguishes the Flexible orchestration mode from the Uniform orchestration mode?',
        'In Uniform orchestration mode, all VM instances are created from the same base image and OS configuration. In Flexible orchestration mode, VMs can use different images, sizes, or configurations within the same scale set, offering greater deployment flexibility.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('df4d1f07-6850-40f9-949b-9620da27116a', '28785ad6-d1b7-434f-9c09-8faad330db1d', 'There is no functional difference between the two orchestration modes', FALSE, 1),
    ('fd41cd8b-0fb0-4c2c-9896-c64787c58872', '28785ad6-d1b7-434f-9c09-8faad330db1d', 'Flexible mode only supports Linux VMs, while Uniform mode only supports Windows VMs', FALSE, 2),
    ('508358d7-ee6f-4c8d-87ff-81a6f1a73776', '28785ad6-d1b7-434f-9c09-8faad330db1d', 'Uniform mode allows mixed VM sizes, while Flexible mode requires identical VM sizes', FALSE, 3),
    ('8de735b0-b9e4-45ec-857d-66124347b15a', '28785ad6-d1b7-434f-9c09-8faad330db1d', 'In Flexible mode, VM instances can use different images, sizes, or configurations within the same scale set; in Uniform mode all instances share the same base image and configuration', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5213ff11-a646-4689-a422-f3bfabcf40e8', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'When creating a Virtual Machine Scale Set in the Azure portal, which spreading algorithm does Microsoft recommend for most new deployments?',
        'With Max Spreading, VMs are spread across as many fault domains as possible within each zone. Microsoft recommends Max Spreading because Fixed Spreading (always exactly five fault domains) fails outright if fewer than five fault domains are available, whereas Max Spreading simply completes with whatever is available.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f002fb90-7be4-4b93-9a35-84e23f73af9d', '5213ff11-a646-4689-a422-f3bfabcf40e8', 'No spreading algorithm is used by scale sets', FALSE, 1),
    ('a6bca6f5-8d4f-4c63-803b-de1d22578d04', '5213ff11-a646-4689-a422-f3bfabcf40e8', 'Random Spreading, which places VMs on fault domains at random with no logic', FALSE, 2),
    ('0dde1b96-9097-44b4-be7b-ba4d454bdd4f', '5213ff11-a646-4689-a422-f3bfabcf40e8', 'Fixed Spreading, which always spreads VMs across exactly five fault domains', FALSE, 3),
    ('765432ed-0556-40f3-a7c1-9108b4bba83f', '5213ff11-a646-4689-a422-f3bfabcf40e8', 'Max Spreading, which spreads VMs across as many fault domains as possible', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ed9a939f-d050-450e-9c03-d739a6e4c419', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'When configuring autoscale for a Virtual Machine Scale Set in the Azure portal, what does the "scale-in" setting control?',
        'The scale-in setting defines the CPU usage threshold percentage that triggers the autoscale rule to reduce capacity, along with how many instances to remove when that threshold is met. This is paired with a scale-out setting that defines the threshold and instance count for adding capacity.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('72578b38-bfc8-485b-9d3b-d78d70a77559', 'ed9a939f-d050-450e-9c03-d739a6e4c419', 'The specific time zone used for all scheduled scaling actions', FALSE, 1),
    ('f7778ee3-0f43-44f0-832b-b6c97536e617', 'ed9a939f-d050-450e-9c03-d739a6e4c419', 'The default number of instances deployed when the scale set is first created', FALSE, 2),
    ('e4724192-9fbc-49fd-8b53-db22e41cd3f7', 'ed9a939f-d050-450e-9c03-d739a6e4c419', 'The CPU usage threshold, as a percentage, that triggers the autoscale rule to reduce the number of instances, and how many instances to remove', TRUE, 3),
    ('496860c7-bb5b-4fea-b3af-f4ebf01c5c4c', 'ed9a939f-d050-450e-9c03-d739a6e4c419', 'The maximum number of instances the scale set can ever reach', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d6a17faa-2630-4806-82c5-a7ac96a18f89', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Why should an autoscale configuration always include both scale-out and scale-in rules rather than only one?',
        'You should always use a combination of scale-out and scale-in rules together. Without a scale-out rule, the application risks failing or degrading in performance when load increases. Without a scale-in rule, you risk incurring unnecessary and high costs when load decreases, since excess instances keep running.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4120f903-52a2-4ca0-8412-1457672e87a3', 'd6a17faa-2630-4806-82c5-a7ac96a18f89', 'Azure requires exactly one rule type and rejects configurations with both', FALSE, 1),
    ('ae5fed0a-258c-4040-a17a-40eb89c9e4b4', 'd6a17faa-2630-4806-82c5-a7ac96a18f89', 'Without a scale-out rule the app may fail or degrade under increased load; without a scale-in rule, unnecessary costs accumulate as load decreases', TRUE, 2),
    ('db99d9a4-c382-46f6-a872-1de6cc4f1eb6', 'd6a17faa-2630-4806-82c5-a7ac96a18f89', 'Only scale-out rules are ever necessary; scale-in is handled automatically by Azure with no configuration', FALSE, 3),
    ('2045cb07-4437-4609-9707-ef6b6212f720', 'd6a17faa-2630-4806-82c5-a7ac96a18f89', 'Scale-in and scale-out rules cannot coexist in the same autoscale profile', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5e382264-431e-495c-8705-9fc0d5d2b286', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What does an Azure App Service plan define?',
        'An App Service plan defines a set of compute resources needed to run a web application, similar to a server farm in traditional web hosting. One or more applications can be configured to run on the same compute resources defined by a single plan.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8ad1da64-2215-41a9-b2a0-c6be01aefae3', '5e382264-431e-495c-8705-9fc0d5d2b286', 'A network security boundary between applications', FALSE, 1),
    ('939346c7-d3d6-4000-a16c-b00b53556534', '5e382264-431e-495c-8705-9fc0d5d2b286', 'A billing agreement with no relationship to compute resources', FALSE, 2),
    ('f553a80b-d45f-4aeb-b83d-6e292dbed905', '5e382264-431e-495c-8705-9fc0d5d2b286', 'A set of compute resources required to run one or more web applications, analogous to a server farm in traditional web hosting', TRUE, 3),
    ('f71abe90-1879-4237-8ea2-776f816b8ead', '5e382264-431e-495c-8705-9fc0d5d2b286', 'A single, fixed virtual machine dedicated to exactly one application forever', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('18f0ec00-f7d8-4f97-ad23-033c6d0d4512', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Which settings are defined at the App Service plan level (rather than the individual app level)?',
        'Each App Service plan defines the operating system (Linux or Windows), the region, the pricing tier (which determines features and cost), and the number and size of the VM instances. All apps placed in that plan run on these shared compute resources.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('96a939fe-5e90-4696-b044-a9251f4c8374', '18f0ec00-f7d8-4f97-ad23-033c6d0d4512', 'Only the custom domain name of a single app', FALSE, 1),
    ('bea870e1-5d44-4931-83ba-c82a711e99bf', '18f0ec00-f7d8-4f97-ad23-033c6d0d4512', 'Operating system, region, pricing tier, and number/size of VM instances', TRUE, 2),
    ('53d4f29f-27dd-4f57-8c9b-f6e9ccfadaa2', '18f0ec00-f7d8-4f97-ad23-033c6d0d4512', 'Only the application''s source code repository', FALSE, 3),
    ('f34b7fc0-3e37-480c-919a-9b72b568c803', '18f0ec00-f7d8-4f97-ad23-033c6d0d4512', 'Only the database connection string', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2dbfced5-f8df-4c6a-a139-3d07877435b8', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'A team wants to place several low-traffic internal applications into the same App Service plan. What is the main benefit and the main risk of doing this?',
        'Placing multiple apps in the same plan can save costs since you pay for the compute resources allocated to the plan as a whole. However, because the apps share the same VM instances, overloading the plan''s capacity can cause downtime for both new and existing applications in that plan.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ac7faab5-ac02-426f-9d5b-c7c3544e22ec', '2dbfced5-f8df-4c6a-a139-3d07877435b8', 'Benefit: cost savings from shared compute resources; risk: overloading the plan can cause downtime for all apps in it', TRUE, 1),
    ('630f4582-23c3-4797-96ad-2ff294bfcfee', '2dbfced5-f8df-4c6a-a139-3d07877435b8', 'There is no benefit or risk; plan sharing has no practical effect', FALSE, 2),
    ('e4a9d39f-7d0b-4a7c-9abd-bf38394cfd6d', '2dbfced5-f8df-4c6a-a139-3d07877435b8', 'Benefit: unlimited free scaling; risk: none, since apps in the same plan are fully isolated from each other', FALSE, 3),
    ('7a13052e-75b6-4c82-b4b8-2ca23b9e7838', '2dbfced5-f8df-4c6a-a139-3d07877435b8', 'Benefit: automatic global load balancing; risk: apps sharing a plan cannot use custom domains', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('aa53bb7f-c829-41c1-933a-a05e6f7e4921', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Under what circumstances should you isolate an application into its own new App Service plan rather than adding it to an existing plan?',
        'You should isolate an application in a new plan when it''s resource-intensive, needs to scale independently from other apps in an existing plan, or requires resources located in a different geographic region than the existing plan provides.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d9157835-5c59-425f-bd01-99cd751b2358', 'aa53bb7f-c829-41c1-933a-a05e6f7e4921', 'When the app is resource-intensive, needs to scale independently of others in the plan, or needs resources in a different geographic region', TRUE, 1),
    ('84e33706-08b1-450c-8b6c-1a44e87b375b', 'aa53bb7f-c829-41c1-933a-a05e6f7e4921', 'Only when the app requires a custom domain name', FALSE, 2),
    ('b494158f-09f6-4af8-a355-a1f5478e9ce3', 'aa53bb7f-c829-41c1-933a-a05e6f7e4921', 'Isolation is never recommended under any circumstances', FALSE, 3),
    ('990230b1-3dce-48d9-931d-e7ba2883ed29', 'aa53bb7f-c829-41c1-933a-a05e6f7e4921', 'Whenever the app uses the Free tier, regardless of other factors', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ec3c2e7c-4e91-4e11-a9dd-0fa09ed3287b', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Which App Service pricing tiers run applications on shared compute resources alongside applications from other customers, and are intended only for development and testing?',
        'The Free and Shared tiers run an app on the same VM as other App Service apps, potentially including apps from other customers, with allocated CPU quotas and no scale-out capability. These tiers are intended only for development and testing, and carry no SLA.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('136069f7-ebc0-4be2-81d9-cc1c82ec795f', 'ec3c2e7c-4e91-4e11-a9dd-0fa09ed3287b', 'Standard and Premium', FALSE, 1),
    ('360ff95c-4f89-4211-9c46-36b8d1667010', 'ec3c2e7c-4e91-4e11-a9dd-0fa09ed3287b', 'Free and Shared', TRUE, 2),
    ('77899799-ed70-44a8-aed0-bea5a3c4b193', 'ec3c2e7c-4e91-4e11-a9dd-0fa09ed3287b', 'PremiumV2 and PremiumV3', FALSE, 3),
    ('316788d3-e69c-4d3e-8fa1-529686c549f9', 'ec3c2e7c-4e91-4e11-a9dd-0fa09ed3287b', 'Isolated and IsolatedV2', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('66f78c3a-7cae-434b-bb13-1d2355d89b5f', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What is the key architectural difference offered by the Isolated and IsolatedV2 pricing tiers compared to the dedicated compute tiers (Basic, Standard, Premium)?',
        'The Isolated and IsolatedV2 tiers run dedicated Azure VMs on dedicated Azure virtual networks, providing network isolation on top of the compute isolation already offered by the dedicated tiers (Basic, Standard, Premium). This tier provides the maximum scale-out capabilities and is intended for network-isolated, mission-critical workloads.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f26b293c-e0e3-4510-9594-f6f948cc1842', '66f78c3a-7cae-434b-bb13-1d2355d89b5f', 'Isolated tiers run dedicated VMs on dedicated virtual networks, adding network isolation on top of compute isolation', TRUE, 1),
    ('050d8c10-e1be-49c2-97ff-bbb771f5cbe9', '66f78c3a-7cae-434b-bb13-1d2355d89b5f', 'Isolated tiers are limited to exactly one VM instance with no scale-out option', FALSE, 2),
    ('f8f71731-1a23-4b01-af7d-eb780ac6aacd', '66f78c3a-7cae-434b-bb13-1d2355d89b5f', 'Isolated tiers do not support autoscaling at all', FALSE, 3),
    ('14929c3c-aad0-42a1-8fa8-2add455c1296', '66f78c3a-7cae-434b-bb13-1d2355d89b5f', 'Isolated tiers share compute resources with other customers, unlike the dedicated tiers', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d8227eb8-68cf-41ec-a6f1-a8003ef343fb', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'An application requires automatic scaling based on defined rules and needs deployment slots for staged rollouts. Which minimum pricing tier category supports both of these needs?',
        'The Standard tier is designed to run production workloads and includes rule-based autoscale along with support for deployment slots (staging environments). Free and Shared tiers offer no scale-out capability and no deployment slots, since they are intended purely for development and testing.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('705ed2c0-369d-4510-b05f-68ea94b02b71', 'd8227eb8-68cf-41ec-a6f1-a8003ef343fb', 'Deployment slots and autoscale are unavailable in any App Service tier', FALSE, 1),
    ('736dff97-3345-4410-9ad3-f68b0d8e5f22', 'd8227eb8-68cf-41ec-a6f1-a8003ef343fb', 'Standard (dedicated compute tier)', TRUE, 2),
    ('ed39c7e9-3cde-4551-a14f-fbfcd7324496', 'd8227eb8-68cf-41ec-a6f1-a8003ef343fb', 'Shared (shared compute tier)', FALSE, 3),
    ('d48c6451-02d8-466d-a40f-7753caf98d8c', 'd8227eb8-68cf-41ec-a6f1-a8003ef343fb', 'Free (shared compute tier)', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a7fff628-9932-463a-9084-0269f74de675', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What is the difference between "scale-up" and "scale-out" as applied to an Azure App Service plan?',
        'Scale-up increases CPU, memory, and disk space by changing the App Service plan''s pricing tier, unlocking additional features like custom domains, staging slots, and autoscale. Scale-out increases the number of VM instances that run your app, up to the maximum allowed by your pricing tier.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a436952b-3211-46a0-bca7-0986ccec2d85', 'a7fff628-9932-463a-9084-0269f74de675', 'Scale-up increases the number of VM instances; scale-out changes the pricing tier', FALSE, 1),
    ('89d34456-f1b4-4c36-a01e-e7d61829ed4b', 'a7fff628-9932-463a-9084-0269f74de675', 'Both terms refer to exactly the same operation in App Service', FALSE, 2),
    ('782e4216-aca1-4e9b-9bdd-b2fdaaef5deb', 'a7fff628-9932-463a-9084-0269f74de675', 'Scale-up increases CPU, memory, and disk capacity by changing the pricing tier; scale-out increases the number of VM instances running the app', TRUE, 3),
    ('461fcbd6-6d77-4f2a-9f69-377f65856a54', 'a7fff628-9932-463a-9084-0269f74de675', 'Scale-up and scale-out apply only to Azure SQL Database, not App Service', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b286860b-4dc2-4178-b502-7a5e42a46513', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'When you change the scaling settings of an App Service plan (either scale-up or scale-out), do you need to modify application code or redeploy the app?',
        'scaling setting changes apply within seconds and affect all apps in the plan without any code changes or redeployment — When you change scaling settings, you don''t need to modify your code or redeploy your applications. Changes to a plan''s scaling settings are applied within seconds and affect all applications that run in that App Service plan.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8ab66067-3c5b-4429-bcfd-e41ddf8d9e17', 'b286860b-4dc2-4178-b502-7a5e42a46513', 'Scaling changes require the app to be deleted and recreated', FALSE, 1),
    ('a1f09f8f-060f-47d8-8b7b-21f5447532b5', 'b286860b-4dc2-4178-b502-7a5e42a46513', 'Yes — every scaling change requires a full code redeployment', FALSE, 2),
    ('dbee974c-8a86-4703-9b95-e31f94cb6746', 'b286860b-4dc2-4178-b502-7a5e42a46513', 'Yes, but only when scaling down, not when scaling up', FALSE, 3),
    ('2eb95a31-f6cc-4cf7-9093-b6be601c8026', 'b286860b-4dc2-4178-b502-7a5e42a46513', 'No — scaling setting changes apply within seconds and affect all apps in the plan without any code changes or redeployment', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bcfc3820-3070-45b2-8034-1669cb29f79f', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'In the isolated tier, an App Service plan can achieve additional scale-out capacity beyond the standard maximum. Up to how many instances can be supported in this tier?',
        'In App Service environments of the Isolated tier, you get additional scale-out capacity, up to 100 instances. This exceeds the scale-out limits available in the Free, Shared, and lower dedicated compute tiers.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d15b0de8-47fa-4af8-9106-b1ecdd743834', 'bcfc3820-3070-45b2-8034-1669cb29f79f', 'A hard maximum of exactly 10 instances', FALSE, 1),
    ('598f8a8a-2595-4576-ac44-4cbf896abd79', 'bcfc3820-3070-45b2-8034-1669cb29f79f', 'Isolated tier apps cannot be scaled out at all', FALSE, 2),
    ('a9c4ebf2-a521-46bc-ad22-461d36998135', 'bcfc3820-3070-45b2-8034-1669cb29f79f', 'Up to 100 instances', TRUE, 3),
    ('87d1f167-f47b-4ee6-b153-658aac703cc6', 'bcfc3820-3070-45b2-8034-1669cb29f79f', 'A hard maximum of exactly 3 instances', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5dc865a1-e75a-467f-8190-695bf1320c42', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What is the difference between metrics-based and time-based (schedule-based) autoscale rules in App Service?',
        'Metrics-based rules measure application load, such as CPU time or average response time, and add or remove VMs based on that load. Time-based (schedule-based) rules let you scale ahead of expected load changes by triggering an action at specific recurring dates and times.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b4e591e1-3c27-4f1b-92ff-528f58828491', '5dc865a1-e75a-467f-8190-695bf1320c42', 'Metrics-based rules trigger scaling based on measured load like CPU percentage; time-based rules trigger scaling at predefined dates and times', TRUE, 1),
    ('bd130d84-06d9-4926-8b21-8b38181bf267', '5dc865a1-e75a-467f-8190-695bf1320c42', 'Metrics-based rules only work with Free tier plans', FALSE, 2),
    ('a97c1323-9ebd-4a81-b27c-d7a104715799', '5dc865a1-e75a-467f-8190-695bf1320c42', 'Time-based rules can only scale in, never scale out', FALSE, 3),
    ('516cdbea-dbe7-4aca-9459-4635d3265314', '5dc865a1-e75a-467f-8190-695bf1320c42', 'There is no difference; both terms describe the same trigger type', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8e637624-8c19-4e7d-85b4-086e561e4b40', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Which two considerations are essential when configuring autoscale for an App Service plan to avoid both application failure and excessive cost?',
        'You should define a minimum number of instances to ensure the app keeps running even without load, and a maximum number of instances to cap your total possible hourly cost. There should also be adequate margin between the two, with scale rules to move between them as load changes.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('91b6ca9c-7584-450b-95d5-b919a83475b0', '8e637624-8c19-4e7d-85b4-086e561e4b40', 'Configure only a maximum instance count; a minimum is never required', FALSE, 1),
    ('f6a712dd-93d6-43ca-92a9-68771fbcf243', '8e637624-8c19-4e7d-85b4-086e561e4b40', 'Set the minimum and maximum instance counts to the exact same value', FALSE, 2),
    ('883ccecc-25f7-4191-9e84-c762c750ac44', '8e637624-8c19-4e7d-85b4-086e561e4b40', 'Set a reasonable minimum instance count so the app always has capacity, and set a maximum instance count to cap total hourly cost', TRUE, 3),
    ('058dc187-da6c-4886-ab0d-e92ce9ebff90', '8e637624-8c19-4e7d-85b4-086e561e4b40', 'Disable all notifications, since they interfere with the autoscale engine', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('11c5cb13-4dd6-48d8-b6ea-15438a548005', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What role does the "default instance count" play in an App Service autoscale configuration?',
        'The default instance count is important because autoscale uses this number to scale your service when metrics are not available. Selecting a reasonable default ensures the application has appropriate capacity even if monitoring data is temporarily missing.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('77e1a498-8d86-4096-ba3a-1974342b2dca', '11c5cb13-4dd6-48d8-b6ea-15438a548005', 'It is the number of instances used exclusively during the very first deployment, and never referenced again', FALSE, 1),
    ('4335901a-0f9c-41b3-8cce-360d00cc07ce', '11c5cb13-4dd6-48d8-b6ea-15438a548005', 'It is the number of instances used by the autoscale engine to scale the service when metrics are not available', TRUE, 2),
    ('e7dad050-e7aa-439d-9370-5611f40fa3f6', '11c5cb13-4dd6-48d8-b6ea-15438a548005', 'It permanently overrides the maximum instance count setting', FALSE, 3),
    ('dcd6211d-416b-499f-93ad-ab311ea1b0b9', '11c5cb13-4dd6-48d8-b6ea-15438a548005', 'It has no functional purpose and exists only for documentation', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7e93cced-fc03-4aee-88e7-1e94647662c1', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Which App Service pricing tiers support the newer "automatic scaling" (elastic scale) feature that responds directly to incoming HTTP traffic without configuring scaling rules?',
        'Automatic scaling (elastic scale) is available only on the PremiumV2 and PremiumV3 tiers. It responds directly to incoming HTTP requests without requiring configured rules, is managed by the platform, and keeps warmed instances ready to immediately absorb traffic spikes.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d8fbe1cd-a408-44f0-8309-dc17807bc1e0', '7e93cced-fc03-4aee-88e7-1e94647662c1', 'PremiumV2 and PremiumV3 only', TRUE, 1),
    ('9bd16691-79f6-4dbd-ab2c-2e52f6e72f82', '7e93cced-fc03-4aee-88e7-1e94647662c1', 'Free and Shared only', FALSE, 2),
    ('9b601d91-b921-47d2-ae4b-d2ae1ee8ab83', '7e93cced-fc03-4aee-88e7-1e94647662c1', 'Basic and Standard only', FALSE, 3),
    ('c0675d1a-0472-400b-a347-9eb9d516ecad', '7e93cced-fc03-4aee-88e7-1e94647662c1', 'All tiers support this feature identically', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('04ad065c-e203-432a-8df1-a16c9a778ae4', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'A team cannot predict their application''s load patterns and wants Azure to handle scaling decisions with minimal configuration. Which approach best matches this requirement?',
        'Automatic scaling (elastic scale) is recommended when you want less management overhead, cannot predict load patterns, or need a rapid response to traffic changes without configuring rules. Rule-based autoscale, by contrast, is best when custom scaling logic based on multiple metrics or schedules is required.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7f8ade5c-49a4-45f2-aeec-6cd891889c20', '04ad065c-e203-432a-8df1-a16c9a778ae4', 'Use automatic scaling (elastic scale) on PremiumV2/PremiumV3, since it is platform-managed and requires no custom rules', TRUE, 1),
    ('7f2f039e-4b5a-45d3-a355-a1259ebcaa1f', '04ad065c-e203-432a-8df1-a16c9a778ae4', 'Use rule-based autoscale exclusively, since it requires no configuration at all', FALSE, 2),
    ('428107c0-bb65-4c20-a82f-72ba6b3ff3e7', '04ad065c-e203-432a-8df1-a16c9a778ae4', 'Manually monitor the application and resize the plan by hand every hour', FALSE, 3),
    ('004717f8-380b-4c71-9181-ed40e5381820', '04ad065c-e203-432a-8df1-a16c9a778ae4', 'Downgrade to the Free tier, which scales automatically by default', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('08d6fbd4-03f7-403d-80cc-dfd08979884b', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Which programming languages/frameworks does Azure App Service provide first-class quickstart support for?',
        'Azure App Service provides quickstart guides and first-class support for ASP.NET, Java, Node.js, Python, and PHP. You can also run PowerShell and other scripts or executables as background services within App Service.', 46, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f7959c50-046f-4063-82a6-ba9ebe50986c', '08d6fbd4-03f7-403d-80cc-dfd08979884b', 'App Service does not support any specific language runtimes', FALSE, 1),
    ('102e40da-9a5e-4c3b-a5b4-4c003b9ecc1f', '08d6fbd4-03f7-403d-80cc-dfd08979884b', 'Only ASP.NET and no other language', FALSE, 2),
    ('80a86822-eac6-4feb-aec5-637c4df5f0fb', '08d6fbd4-03f7-403d-80cc-dfd08979884b', 'Only languages that compile to native machine code', FALSE, 3),
    ('a98d7273-3a83-450b-b9dc-d2273e11b7e0', '08d6fbd4-03f7-403d-80cc-dfd08979884b', 'ASP.NET, Java, Node.js, Python, and PHP', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1332777b-47f4-45e5-9ec2-ad75f2c5ac3b', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Which of the following is a listed benefit of Azure App Service related to DevOps workflows?',
        'App Service supports continuous integration and deployment with Azure DevOps Services, GitHub, Bitbucket, Docker Hub, and Azure Container Registry. You can promote updates through test and staging environments and manage apps with Azure PowerShell or the cross-platform CLI.', 47, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('798a814f-3fda-45d9-990c-eb7911fba622', '1332777b-47f4-45e5-9ec2-ad75f2c5ac3b', 'DevOps integration is available only for Java applications', FALSE, 1),
    ('451b7658-417b-473c-8d2d-60acf42bd420', '1332777b-47f4-45e5-9ec2-ad75f2c5ac3b', 'App Service requires all deployments to be performed manually via FTP with no automation options', FALSE, 2),
    ('289a2c38-9f57-4069-9695-dfa0d259b333', '1332777b-47f4-45e5-9ec2-ad75f2c5ac3b', 'App Service only supports deployment from a single, proprietary Microsoft source control system', FALSE, 3),
    ('d545dd27-ba15-4ce5-bd07-c9ce77fa990b', '1332777b-47f4-45e5-9ec2-ad75f2c5ac3b', 'Built-in continuous integration and deployment support with Azure DevOps, GitHub, Bitbucket, Docker Hub, and Azure Container Registry', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5b3295be-92f4-489f-b756-88c75a16e1e6', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'When creating a new App Service application in the Azure portal, which core setting determines the language/SDK version used to run the app (for example .NET Core, Node.js, Python)?',
        'The runtime stack setting defines the software stack used to run your application, including language and SDK versions. Choices include .NET Core, .NET Framework, Node.js, PHP, and Python, with different versions available depending on whether you choose Linux or Windows.', 48, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c3b14959-7223-4857-97ac-fee40d0d2b3b', '5b3295be-92f4-489f-b756-88c75a16e1e6', 'The custom domain name', FALSE, 1),
    ('d84a4562-e3bf-4d05-a500-290bd7f0cb1b', '5b3295be-92f4-489f-b756-88c75a16e1e6', 'The deployment slot name', FALSE, 2),
    ('b564ad12-acf5-4b78-94c1-d6c898bffcf9', '5b3295be-92f4-489f-b756-88c75a16e1e6', 'The runtime stack', TRUE, 3),
    ('31378bae-7dc5-4020-9d4d-67eede0c25e9', '5b3295be-92f4-489f-b756-88c75a16e1e6', 'The pricing tier', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('db10d8a0-a21c-4126-b06f-494278c6cd9d', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What does the "Always On" setting do for an App Service application, and when is it required?',
        'Always On keeps the application loaded even when there is no incoming traffic, preventing it from unloading during idle periods. This setting is required for continuous WebJobs or for WebJobs that are triggered using a CRON expression, since they need the app to remain active.', 49, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ed2a46fc-e239-492c-b369-8edaee928527', 'db10d8a0-a21c-4126-b06f-494278c6cd9d', 'It permanently disables the app''s ability to scale out', FALSE, 1),
    ('e91e1919-378b-403b-9de3-0e67a15a85f7', 'db10d8a0-a21c-4126-b06f-494278c6cd9d', 'It forces the app to run exclusively on the Free tier', FALSE, 2),
    ('f1b19952-b266-41a6-9c11-f2ea649b0472', 'db10d8a0-a21c-4126-b06f-494278c6cd9d', 'It automatically deletes idle deployment slots after 24 hours', FALSE, 3),
    ('320d1d5b-c597-4f61-9a75-1cbc5465192e', 'db10d8a0-a21c-4126-b06f-494278c6cd9d', 'It keeps the app loaded even with no incoming traffic, and is required for continuous WebJobs or WebJobs triggered using a CRON expression', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('84a44979-5839-4fe8-98ce-9f299bfa0ce0', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What is the purpose of "session affinity" (also called Application Request Routing affinity) in a multi-instance App Service deployment?',
        'In a multi-instance deployment, session affinity ensures your application client is routed to the same instance for the life of the session, which is useful for applications that store session state locally on a specific instance rather than externally.', 50, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('213c960b-f7aa-40ef-ac13-e6deb465df81', '84a44979-5839-4fe8-98ce-9f299bfa0ce0', 'It disables HTTPS enforcement for the session', FALSE, 1),
    ('462dbcd3-01bd-43db-99fb-1bb81ed9f762', '84a44979-5839-4fe8-98ce-9f299bfa0ce0', 'It ensures a client is routed to the same instance for the lifetime of a session', TRUE, 2),
    ('cfcae2c6-74cb-4aae-b31e-8de2cd0e41d8', '84a44979-5839-4fe8-98ce-9f299bfa0ce0', 'It permanently pins an application to a single Azure region', FALSE, 3),
    ('1c861543-8bbe-4ac3-8721-b38ae8270ec0', '84a44979-5839-4fe8-98ce-9f299bfa0ce0', 'It automatically load-balances database connections across regions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5d82447f-d9ab-4984-9b0e-468edd451cac', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Which deployment sources does Azure App Service support for automated continuous deployment (CI/CD)?',
        'App Service supports automated deployment directly from several sources: GitHub (via GitHub Actions or the App Service Build Service), Bitbucket, local Git (using a provided local URL as a remote), and Azure Repos, in addition to manual deployment methods like remote Git.', 51, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bfa15e92-7937-4b89-b039-2a2fa924a857', '5d82447f-d9ab-4984-9b0e-468edd451cac', 'Only a proprietary FTP-based upload tool', FALSE, 1),
    ('ac44eabd-cd22-4915-8760-a760a0ee47b2', '5d82447f-d9ab-4984-9b0e-468edd451cac', 'GitHub, Bitbucket, local Git, and Azure Repos', TRUE, 2),
    ('44f3944e-222d-4fa1-aacb-48bb9dd7551c', '5d82447f-d9ab-4984-9b0e-468edd451cac', 'Only manual ZIP file uploads through the portal', FALSE, 3),
    ('12c4d230-90b3-4e0d-be2e-bca85f6d9724', '5d82447f-d9ab-4984-9b0e-468edd451cac', 'CI/CD is not available in App Service under any configuration', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f93417f1-d426-41f6-baf4-b834d6dd17c1', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'When connecting a GitHub repository to App Service for continuous deployment, which two build providers can be selected?',
        'When you connect a GitHub repository to Azure App Service, you can choose between GitHub Actions, which is the default build provider, and the App Service Build Service, giving flexibility in how your build and deployment pipeline is orchestrated.', 52, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('736e9adb-7208-4807-bf72-2561246e101d', 'f93417f1-d426-41f6-baf4-b834d6dd17c1', 'GitHub Actions (the default) and the App Service Build Service', TRUE, 1),
    ('bad7abe6-abc7-4655-a906-9707e085f8f1', 'f93417f1-d426-41f6-baf4-b834d6dd17c1', 'Jenkins and CircleCI exclusively', FALSE, 2),
    ('8cae94b5-3279-4a80-8a94-03fa33284140', 'f93417f1-d426-41f6-baf4-b834d6dd17c1', 'Azure Pipelines is the only available option for GitHub repositories', FALSE, 3),
    ('5dea0569-de73-4705-b302-5724f7f2c059', 'f93417f1-d426-41f6-baf4-b834d6dd17c1', 'Only manual FTP transfer, since GitHub integration doesn''t offer build providers', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('783f3872-2fe1-4081-9971-dae8a5e96c27', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'In which App Service pricing tiers are deployment slots available?',
        'Deployment slots are available in the Standard, Premium, and Isolated v2 App Service pricing tiers. Your application must run in one of these tiers to use deployment slots; the number of slots available also varies by tier.', 53, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e1bfe982-e3af-4d0a-8ad8-5ada74f32cf0', '783f3872-2fe1-4081-9971-dae8a5e96c27', 'Every pricing tier, including Free', FALSE, 1),
    ('43d7d052-e432-4e68-9205-da78fab67125', '783f3872-2fe1-4081-9971-dae8a5e96c27', 'Standard, Premium, and Isolated v2', TRUE, 2),
    ('5f09f866-4b7b-41dd-9557-9866cd7728c3', '783f3872-2fe1-4081-9971-dae8a5e96c27', 'Deployment slots require a separate add-on purchase regardless of tier', FALSE, 3),
    ('e3c3b1e6-479a-4bcb-b041-6c60c25aab96', '783f3872-2fe1-4081-9971-dae8a5e96c27', 'Free and Shared only', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('55c19056-d6a9-4ded-9daf-e7b4f4f2336c', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What is the main benefit of deploying an application update to a staging deployment slot and then swapping it into production, compared to deploying directly to production?',
        'Deploying to a slot and then swapping into production eliminates downtime, since all instances in the target slot are warmed up before the swap and traffic redirection is seamless — no requests are dropped due to the swap operation.', 54, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('baf5a3f4-c21a-403b-be2a-10ff1b6fa693', '55c19056-d6a9-4ded-9daf-e7b4f4f2336c', 'It permanently disables the ability to roll back to a previous version', FALSE, 1),
    ('0538e588-3ca4-4063-9b7a-ceba13ee2806', '55c19056-d6a9-4ded-9daf-e7b4f4f2336c', 'It eliminates downtime, since all instances are warmed up and ready before the swap redirects traffic seamlessly', TRUE, 2),
    ('1f6b11ad-22f3-4ec3-9a59-da051e39ebf4', '55c19056-d6a9-4ded-9daf-e7b4f4f2336c', 'It doubles the hosting cost of the application indefinitely', FALSE, 3),
    ('ca33d833-6526-4865-abe6-eae314dc3313', '55c19056-d6a9-4ded-9daf-e7b4f4f2336c', 'It requires manually restarting all client sessions after every deployment', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a55fa1a1-6eb8-4458-9cfd-0925ae005644', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'After swapping a staging slot into production, the team decides the new version has a problem. How can they quickly restore the previous production version?',
        'After a swap, the previous production application ends up in what was the staging slot. If the newly swapped-in changes are not satisfactory, you can immediately perform the same swap again to restore your "last known good" site.', 55, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2e0cfa16-0cd5-41c9-a8dd-f7ea9c5eee87', 'a55fa1a1-6eb8-4458-9cfd-0925ae005644', 'Perform the same swap operation again, since the previous production app is now sitting in the staging slot', TRUE, 1),
    ('415fdaf3-ee2e-49ab-a826-8f2b96d6af40', 'a55fa1a1-6eb8-4458-9cfd-0925ae005644', 'Rollback requires opening a Microsoft support ticket', FALSE, 2),
    ('5a0e7e14-d186-4b0e-894f-d50a2daf217e', 'a55fa1a1-6eb8-4458-9cfd-0925ae005644', 'They must redeploy the old code from scratch, since rollback is not supported', FALSE, 3),
    ('3ba37d86-3ab4-4f5a-acd4-8552e0d9679f', 'a55fa1a1-6eb8-4458-9cfd-0925ae005644', 'They must delete and recreate the App Service plan entirely', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6a2b44f1-1ecf-4a04-a4b3-fcd7ad23e34f', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Which App Service settings are swapped along with the content when swapping deployment slots, and which remain tied to the specific slot?',
        'Swapped settings include the language stack/bitness, app settings, connection strings, and WebJobs content, among others. Settings that stay with a specific slot (not swapped) include custom domain names, TLS/SSL certificates, scaling settings, Always On, IP restrictions, and diagnostic settings.', 56, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('15f08854-9b0b-400a-998d-558939b1ddeb', '6a2b44f1-1ecf-4a04-a4b3-fcd7ad23e34f', 'Only the custom domain name is swapped; all other settings remain fixed', FALSE, 1),
    ('06d38d9b-88c0-402e-8570-2cedb321eba8', '6a2b44f1-1ecf-4a04-a4b3-fcd7ad23e34f', 'Nothing is ever swapped; only manual copy operations move settings between slots', FALSE, 2),
    ('e6b2623a-6053-447d-ae46-d3508ee5b28b', '6a2b44f1-1ecf-4a04-a4b3-fcd7ad23e34f', 'Absolutely everything about a slot is always swapped with no exceptions', FALSE, 3),
    ('fa10fe58-1544-40c0-8ef5-7bfbbe16118a', '6a2b44f1-1ecf-4a04-a4b3-fcd7ad23e34f', 'General settings like app settings, connection strings, and language stack are swapped; slot-specific items like custom domains, TLS/SSL certificates, and scaling settings stay with the slot', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b2538f18-34b6-4070-b6b2-8f066be9da04', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What does App Service''s built-in authentication and authorization module ("Easy Auth") do, and how much application code does it require?',
        'with little to no application code required — The authentication/authorization module runs in the same sandbox as the application code but as a separate process, and is configured entirely using app settings — no particular language, SDK, or code changes are required. It authenticates users, manages tokens and sessions, and injects identity info into request headers.', 57, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('21367eaa-66da-4d7f-a1fd-1f9c5fd82a2f', 'b2538f18-34b6-4070-b6b2-8f066be9da04', 'It authenticates users, validates and refreshes tokens, manages the authenticated session, and injects identity information into request headers — with little to no application code required', TRUE, 1),
    ('7f91c946-1e3b-4e30-97fe-b12a878daec5', 'b2538f18-34b6-4070-b6b2-8f066be9da04', 'It is a separate paid add-on not included with App Service', FALSE, 2),
    ('e9c096c0-0479-4a87-ad37-f8c29ee88741', 'b2538f18-34b6-4070-b6b2-8f066be9da04', 'It only works with applications written in C\#', FALSE, 3),
    ('f0f61ff1-d392-4cbe-a619-6199cb813ec7', 'b2538f18-34b6-4070-b6b2-8f066be9da04', 'It requires the developer to fully implement OAuth token validation manually in application code', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fcdee94c-5dfb-44c7-96d2-03c6233e806d', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What is the effect of selecting "Require authentication" in App Service''s authentication settings, and what is one caution to keep in mind?',
        'Requiring authentication redirects all anonymous requests to the login page for the chosen provider (or returns HTTP 401 for native mobile app clients). This restricts access to all calls to the app, which may be undesirable for apps needing a public landing page, such as many single-page applications.', 58, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('58371acc-bbbf-43a6-9feb-3e28c93b3284', 'fcdee94c-5dfb-44c7-96d2-03c6233e806d', 'It only applies to requests originating from mobile applications', FALSE, 1),
    ('35e06a00-3410-482a-b14f-03c2088a630e', 'fcdee94c-5dfb-44c7-96d2-03c6233e806d', 'All anonymous requests are redirected to sign in; this can be undesirable if the app needs a publicly accessible home page, such as a single-page app', TRUE, 2),
    ('f017ee50-687e-46f3-a3d5-bec84a3f340a', 'fcdee94c-5dfb-44c7-96d2-03c6233e806d', 'It has no effect on anonymous requests; they continue to reach the application code unchanged', FALSE, 3),
    ('45d55626-fc56-4207-9b9a-11ff13c699b3', 'fcdee94c-5dfb-44c7-96d2-03c6233e806d', 'It permanently disables all forms of authentication for the app', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('238e9d37-3c99-499f-90b3-b3111e618f3b', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'A company wants to point their custom domain "www.contoso.com" to their App Service app instead of the default azurewebsites.net address. Which DNS record type maps one domain name to another domain name (rather than directly to an IP address)?',
        'A CNAME record maps a domain name to another domain name, which DNS then uses to look up the address, while users still see the original domain in their browser. An A record instead maps a domain name directly to an IP address, and must be updated manually if that IP changes.', 59, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f162f9cd-965a-4156-8661-9f4686da5290', '238e9d37-3c99-499f-90b3-b3111e618f3b', 'A TXT record', FALSE, 1),
    ('c2303b69-bc29-451f-8bee-ec9739852073', '238e9d37-3c99-499f-90b3-b3111e618f3b', 'An A record', FALSE, 2),
    ('42ab182b-997a-41c2-afe5-db38248370ec', '238e9d37-3c99-499f-90b3-b3111e618f3b', 'An MX record', FALSE, 3),
    ('3a0cc0b6-9726-4437-bd4d-5deeab568c4c', '238e9d37-3c99-499f-90b3-b3111e618f3b', 'A CNAME record', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a922a6dc-c390-4fb3-ac0e-d2b6345e124e', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'A company wants to map their apex/root domain (e.g., "contoso.com" with no subdomain) to their App Service app, but their domain registrar does not allow CNAME records at the root. What record type must they use instead?',
        'Some domain registrars don''t allow CNAME records for a root/apex domain or wildcard domains. In that case, you must use an A record instead, which maps the domain name directly to an IP address, and requires manual updates if that IP address ever changes.', 60, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d160fcaf-26fe-4d54-b249-78fff84c08d6', 'a922a6dc-c390-4fb3-ac0e-d2b6345e124e', 'No DNS record can support root domain mapping', FALSE, 1),
    ('665ff5da-9ade-46ac-bd8f-c77c41f4e645', 'a922a6dc-c390-4fb3-ac0e-d2b6345e124e', 'An A record', TRUE, 2),
    ('ad792485-fc38-4f3f-bbd8-090a8ce880c0', 'a922a6dc-c390-4fb3-ac0e-d2b6345e124e', 'An MX record', FALSE, 3),
    ('6d6d72c7-f30a-4120-b214-5c95b282e2e9', 'a922a6dc-c390-4fb3-ac0e-d2b6345e124e', 'A CNAME record is still required regardless of registrar restrictions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cb755dc7-cf5c-46b4-8c29-f7e24bc25a67', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Which App Service pricing tiers support the backup and restore feature, and what limitation applies at the lowest supported tier?',
        'Backup and restore is supported in the Basic, Standard, Premium, and Isolated tiers. At the Basic tier, you can only back up and restore the production slot; other tiers offer broader capability, including scheduled backups and multiple slots.', 61, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('231753be-1deb-454e-ab15-cd7b32337f04', 'cb755dc7-cf5c-46b4-8c29-f7e24bc25a67', 'Only the Free tier supports backup and restore, with no limitations', FALSE, 1),
    ('6a3f09c5-642d-49ec-9245-d31bc7fbec39', 'cb755dc7-cf5c-46b4-8c29-f7e24bc25a67', 'Basic, Standard, Premium, and Isolated support it; at the Basic tier you can only back up and restore the production slot', TRUE, 2),
    ('d1f520d3-74c3-4578-9fff-e4826b8bbf90', 'cb755dc7-cf5c-46b4-8c29-f7e24bc25a67', 'Backup and restore requires a completely separate Azure subscription', FALSE, 3),
    ('72d86b8d-41bc-4c39-98fe-6a5c825611fe', 'cb755dc7-cf5c-46b4-8c29-f7e24bc25a67', 'Backup and restore is available in every tier with identical capabilities', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d8fcb97f-982b-44b3-907d-f6d9ed1e952c', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'When restoring a full backup of an App Service app, what happens to files that exist on the live site but were not included in the backup?',
        'When you restore a full backup, all site content is replaced with everything in the backup. If a file exists on the site but not in the backup, it is deleted, since a full backup and restore is meant to bring the site to exactly the state captured at backup time.', 62, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d8fc436e-e1d0-4f55-a81a-960393f5ed8d', 'd8fcb97f-982b-44b3-907d-f6d9ed1e952c', 'Full backups never affect existing files under any circumstances', FALSE, 1),
    ('aeb8d8c4-41da-46d5-8bc4-830b9645672e', 'd8fcb97f-982b-44b3-907d-f6d9ed1e952c', 'They are automatically merged with the backup content and preserved', FALSE, 2),
    ('62856bd1-dfe9-4269-b8c1-1ad80202779e', 'd8fcb97f-982b-44b3-907d-f6d9ed1e952c', 'They are moved to a separate quarantine folder rather than deleted', FALSE, 3),
    ('a7607812-4dcf-465f-964b-5d9bf9619f08', 'd8fcb97f-982b-44b3-907d-f6d9ed1e952c', 'They are deleted, since the full backup replaces all site content with what is in the backup', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9fc9f338-228a-4c67-a3ad-00659af89533', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What does Azure Application Insights primarily help a development team accomplish?',
        'Application Insights, a feature of Azure Monitor, lets you monitor live applications and automatically detect performance anomalies. It provides analytics tools to help diagnose issues and understand what users are actually doing with your applications.', 63, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('83e5415a-7380-471b-abba-6431abeac828', '9fc9f338-228a-4c67-a3ad-00659af89533', 'Provide only static, one-time code analysis before deployment', FALSE, 1),
    ('3afdb6c0-0768-40cf-be22-4a023f030c8f', '9fc9f338-228a-4c67-a3ad-00659af89533', 'Replace the need for an App Service plan entirely', FALSE, 2),
    ('506eee44-5bdb-4141-a413-306d784e443d', '9fc9f338-228a-4c67-a3ad-00659af89533', 'Automatically rewrite inefficient application code without developer involvement', FALSE, 3),
    ('b54a4f33-be3f-4af2-83d2-7a86ea6ae6e9', '9fc9f338-228a-4c67-a3ad-00659af89533', 'Continuously monitor live applications to detect performance anomalies and understand real usage patterns', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2eed4a53-4c4d-439f-9a21-d9eeaad64456', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Which of the following categories of information can Application Insights help a team monitor for an App Service application?',
        'Application Insights can monitor request rates, response times, and failure rates; dependency rates and failures; exceptions from both server and browser; page views and load performance; user/session counts; performance counters; and custom events and metrics, such as items sold or games won.', 64, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a44340ad-7b09-435c-a2ce-27f1f4faf475', '2eed4a53-4c4d-439f-9a21-d9eeaad64456', 'Request rates, response times, and failure rates, as well as exceptions and custom business events', TRUE, 1),
    ('5f114b13-b237-430e-a870-277df56f5d7f', '2eed4a53-4c4d-439f-9a21-d9eeaad64456', 'Application Insights cannot track custom, business-specific events', FALSE, 2),
    ('60995e6b-3493-47d7-bc4b-7756b26055a9', '2eed4a53-4c4d-439f-9a21-d9eeaad64456', 'Only the billing invoice associated with the subscription', FALSE, 3),
    ('1841a67e-504a-4b45-9451-3b47ead6d25d', '2eed4a53-4c4d-439f-9a21-d9eeaad64456', 'Only the total number of deployment slots configured', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2ee3f326-9856-4b3f-99ef-f3aaedd82c3b', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'On which platforms/languages does Application Insights operate, according to Microsoft''s documentation?',
        'Application Insights works on various platforms, including .NET, Node.js, and Java EE, and can be used for configurations hosted on-premises, in a hybrid environment, or in any public cloud, giving broad flexibility to monitor diverse application stacks.', 65, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d10d3189-c72b-46dd-aea1-539c1fc0f5e1', '2ee3f326-9856-4b3f-99ef-f3aaedd82c3b', '.NET, Node.js, and Java EE, among others, across on-premises, hybrid, or any public cloud', TRUE, 1),
    ('537d2bcb-aab4-4e6c-89b6-b25a70187a8c', '2ee3f326-9856-4b3f-99ef-f3aaedd82c3b', 'Only applications written in Python', FALSE, 2),
    ('4f255e20-e243-4f57-9dba-1d99f661b62d', '2ee3f326-9856-4b3f-99ef-f3aaedd82c3b', 'Only applications that do not use any external dependencies', FALSE, 3),
    ('8210afe4-1970-4ec4-acee-3f1414d8425a', '2ee3f326-9856-4b3f-99ef-f3aaedd82c3b', 'Exclusively .NET applications hosted only in Azure', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4502c13f-a9c5-4fad-8a9e-6ccacd05c1db', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'How does container-based virtualization differ fundamentally from VM-based (hardware) virtualization?',
        'Container-based virtualization virtualizes the operating system, allowing multiple applications to run within the same OS instance while remaining isolated from each other. Hardware (VM-based) virtualization instead runs multiple separate, complete OS instances on the same physical machine.', 66, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5c5c4fb2-2c2a-41e1-bdea-1a0f05858427', '4502c13f-a9c5-4fad-8a9e-6ccacd05c1db', 'VMs virtualize only storage, while containers virtualize only networking', FALSE, 1),
    ('b6f5eb31-3375-4bd8-9448-6588b3eb9f10', '4502c13f-a9c5-4fad-8a9e-6ccacd05c1db', 'Containers virtualize the operating system, letting multiple applications share the same OS instance while remaining isolated; VMs virtualize hardware, each running a full separate OS', TRUE, 2),
    ('c70a26af-4403-4301-9a27-1014797be1c3', '4502c13f-a9c5-4fad-8a9e-6ccacd05c1db', 'There is no meaningful difference between containers and virtual machines', FALSE, 3),
    ('f409818f-4433-40ce-b659-c07943a11418', '4502c13f-a9c5-4fad-8a9e-6ccacd05c1db', 'Containers require a full separate kernel per instance, exactly like VMs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e530f25b-a775-486b-90c9-7a5a2602ff3f', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'Compared to virtual machines, what isolation trade-off do containers typically make?',
        'Containers generally provide lightweight isolation from the host and other containers, but they don''t provide as strong a security boundary as a VM. A VM offers full isolation from the host OS and other VMs, which matters when strong security boundaries are critical, such as hosting competing companies'' apps on shared infrastructure.', 67, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0e29896f-db02-4d7a-8faf-f25bb06bc116', 'e530f25b-a775-486b-90c9-7a5a2602ff3f', 'Containers generally provide lightweight isolation from the host and other containers but not as strong a security boundary as a VM', TRUE, 1),
    ('67d8897f-4c1e-4386-a4ff-39ddda661ac7', 'e530f25b-a775-486b-90c9-7a5a2602ff3f', 'Containers and virtual machines provide functionally identical isolation guarantees', FALSE, 2),
    ('58e5e0d7-ac45-455b-984c-84e9346f6394', 'e530f25b-a775-486b-90c9-7a5a2602ff3f', 'Containers always provide a stronger security boundary than virtual machines', FALSE, 3),
    ('b1423b85-53d7-4ffa-b001-4aaa39f40ff6', 'e530f25b-a775-486b-90c9-7a5a2602ff3f', 'Containers provide no isolation whatsoever between applications', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('34396c83-2a0c-4533-a5c9-5d07e1325d23', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What happens when a cluster node running containers fails, in terms of recovery, compared to a failed node running virtual machines?',
        'If a cluster node fails, an orchestrator running on another cluster node quickly recreates any containers that were running on the failed node. Virtual machines can instead fail over to another server in the cluster, where their operating system restarts on the new server.', 68, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('85d3b28e-f8c8-419c-b68b-9f607b20e541', '34396c83-2a0c-4533-a5c9-5d07e1325d23', 'An orchestrator on another cluster node quickly recreates the containers, whereas failed VMs failover to another server and their OS restarts on the new server', TRUE, 1),
    ('8938c489-f9e7-44cf-ad8a-5dd1cb01841c', '34396c83-2a0c-4533-a5c9-5d07e1325d23', 'Containers require manual intervention to recover, while VMs always recover automatically', FALSE, 2),
    ('8ad18e6d-55fe-4e78-815d-06dbe6f0937e', '34396c83-2a0c-4533-a5c9-5d07e1325d23', 'Neither containers nor VMs can recover automatically from a node failure', FALSE, 3),
    ('5274c0de-12ec-4d1a-bb29-008963bd4937', '34396c83-2a0c-4533-a5c9-5d07e1325d23', 'Both containers and VMs recover instantaneously with zero observable downtime', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('684d2b0e-5d0c-4794-b6e7-b94286617a9a', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What is Azure Container Instances (ACI) primarily designed to offer?',
        'Azure Container Instances offers the fastest and simplest way to run a container in Azure, without having to manage virtual machines or adopt a higher-level orchestration service. It''s well suited to any scenario that can operate in isolated containers, including simple applications, task automation, and build jobs.', 69, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2b4d10f5-d002-49ae-8c9a-28b97e2290d0', '684d2b0e-5d0c-4794-b6e7-b94286617a9a', 'A full Kubernetes cluster with complete control over the underlying nodes', FALSE, 1),
    ('94e1bcf6-7af5-464f-a702-aa5f753de1a5', '684d2b0e-5d0c-4794-b6e7-b94286617a9a', 'The fastest and simplest way to run a container in Azure without managing virtual machines or adopting a higher-level orchestration service', TRUE, 2),
    ('033f36ef-f0ec-45e4-a013-b930fd425495', '684d2b0e-5d0c-4794-b6e7-b94286617a9a', 'A service exclusively for running Windows-based virtual machines', FALSE, 3),
    ('f5cdccd4-522f-435b-84e2-6c9d5a5509cf', '684d2b0e-5d0c-4794-b6e7-b94286617a9a', 'A tool used only for managing DNS records', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('936855f8-9270-4f7b-a5bf-73bf4f257881', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What five components make up a container image, according to the module''s description?',
        'A container image is a lightweight, standalone, executable package of software that encapsulates everything needed to run an application: the code, runtime, system tools, system libraries, and settings. This makes it a portable unit that runs consistently across different computing environments.', 70, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('26d1ede0-025e-4623-853f-5f3f0dc020a2', '936855f8-9270-4f7b-a5bf-73bf4f257881', 'A virtual hard disk and a hypervisor', FALSE, 1),
    ('20ea2786-84a8-4382-902e-57a0b359b0cf', '936855f8-9270-4f7b-a5bf-73bf4f257881', 'Code, runtime, system tools, system libraries, and settings', TRUE, 2),
    ('130cf33a-161e-4212-acfb-64e97d9028d5', '936855f8-9270-4f7b-a5bf-73bf4f257881', 'A network security group and a public IP address', FALSE, 3),
    ('9d9a4b13-e4d2-4a7d-a439-579de13c1f42', '936855f8-9270-4f7b-a5bf-73bf4f257881', 'Only the application''s compiled binary, with nothing else', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8cd00590-fa08-472a-89be-1c4b5d9d7321', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What CPU and memory range can be specified per container when deploying with Azure Container Instances?',
        'You specify CPU cores from 0.1 to 4 vCPU, and memory from 0.1 to 16 GB, for each container at deployment time. This resource allocation is fixed for the lifetime of the container group once it is deployed.', 71, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bd1989b2-ee49-432d-995e-4de424dd6bf3', '8cd00590-fa08-472a-89be-1c4b5d9d7321', '0.1 to 4 vCPU cores and 0.1 to 16 GB of memory', TRUE, 1),
    ('d1b3e619-d4d9-4a8a-98b3-0619671587c6', '8cd00590-fa08-472a-89be-1c4b5d9d7321', '1 to 100 vCPU cores with no memory limit', FALSE, 2),
    ('55ece8b0-e2df-4084-b663-4bf758a1377d', '8cd00590-fa08-472a-89be-1c4b5d9d7321', 'A fixed 8 vCPU cores and 32 GB of memory for every container', FALSE, 3),
    ('346b43c6-aec5-4024-ad0e-5112874afee3', '8cd00590-fa08-472a-89be-1c4b5d9d7321', 'CPU and memory cannot be customized in ACI; only defaults are available', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('26bb1aac-1181-47f2-9138-f5ee8af2bf35', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'What happens to a container group''s public IP address and DNS name when the group is deleted?',
        'When a container group is deleted, its IP address and fully qualified domain name (FQDN) are released. If you need the same address later, you would need to create a new group and cannot guarantee getting the identical IP or FQDN back.', 72, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d6eefab0-723d-4eee-a928-91b6b978e22c', '26bb1aac-1181-47f2-9138-f5ee8af2bf35', 'They are released back into the pool and are no longer reserved for that group', TRUE, 1),
    ('1912e840-8072-4497-9072-b7dfb1735f2f', '26bb1aac-1181-47f2-9138-f5ee8af2bf35', 'They remain permanently reserved for that customer''s subscription indefinitely', FALSE, 2),
    ('7077729f-939a-4ff5-b7b7-e927a4c61fb2', '26bb1aac-1181-47f2-9138-f5ee8af2bf35', 'Deleting a container group is not possible once an IP address has been assigned', FALSE, 3),
    ('bc8c3359-3e7f-4579-925e-ddb1cf710756', '26bb1aac-1181-47f2-9138-f5ee8af2bf35', 'They automatically transfer to a newly created container group with no configuration', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('88308184-12eb-4b3f-9234-ff96ed07d691', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'In a multi-container group deployed to Azure Container Instances, how do containers share network ports, and what limitation does this create?',
        'Containers within a container group share a port namespace, meaning port mapping is not supported — you cannot map a container''s internal port to a different external port. To expose a container to external clients, the port must be exposed both on the group''s IP address and from within the container itself.', 73, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c3052cb8-0a0c-4a08-b436-3e1fae692cee', '88308184-12eb-4b3f-9234-ff96ed07d691', 'Each container automatically receives its own dedicated public IP address', FALSE, 1),
    ('ef4352f2-5a55-49a6-8156-49892173ec4b', '88308184-12eb-4b3f-9234-ff96ed07d691', 'Containers in the same group cannot communicate over the network at all', FALSE, 2),
    ('fac99e2b-1ceb-427b-b645-c637a73b8ac9', '88308184-12eb-4b3f-9234-ff96ed07d691', 'Containers in a group share a port namespace, so port mapping between containers is not supported', TRUE, 3),
    ('1e5ea852-b662-484d-adae-86f7c254d111', '88308184-12eb-4b3f-9234-ff96ed07d691', 'Port sharing is unrestricted, with no limitations of any kind', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d3e2d662-be2f-4e7a-aa72-0e3d05b45bf9', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'A team wants to run a monitoring container alongside their main application container to periodically check the application''s health and alert on possible issues. Which ACI deployment pattern does this describe?',
        'A multi-container group is well suited to application monitoring: a monitoring container regularly sends requests to the application container to confirm it''s running and responding correctly, and can trigger an alert if it detects potential issues, all while sharing resources within the same group.', 74, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4e49c5f6-387b-47d9-a4ea-6ffcdd2e7544', 'd3e2d662-be2f-4e7a-aa72-0e3d05b45bf9', 'This scenario requires a completely separate Azure subscription per container', FALSE, 1),
    ('32d53f5b-c833-4069-8f05-c3e6f096aa29', 'd3e2d662-be2f-4e7a-aa72-0e3d05b45bf9', 'A single-container deployment, since ACI does not support running more than one container together', FALSE, 2),
    ('79dcf80f-d48d-4067-b662-2d0f6446f9e2', 'd3e2d662-be2f-4e7a-aa72-0e3d05b45bf9', 'This can only be achieved using Azure Virtual Machine Scale Sets, not ACI', FALSE, 3),
    ('7e2adb15-b16c-4164-b59d-d2affc39e9f8', 'd3e2d662-be2f-4e7a-aa72-0e3d05b45bf9', 'A multi-container group, since it lets sidecar containers like a monitoring container share the lifecycle, network, and storage of the main app container', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c8e203d5-d805-45e9-b737-20d7626d84dc', 'd4f0d2c4-acb5-42bb-a70e-9a96db6ac687', 'SINGLE_CHOICE', 'According to the module''s comparison, which statement best distinguishes Azure Container Apps (ACA) from Azure Kubernetes Service (AKS)?',
        'Azure Container Apps is a serverless platform that simplifies deployment and management of microservices-based applications by abstracting away infrastructure, and it builds on AKS under the hood. AKS instead gives teams with Kubernetes expertise full control and customization over the managed Kubernetes environment, suited to complex orchestration needs.', 75, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('903bb1aa-5962-483c-b159-972c11ef788c', 'c8e203d5-d805-45e9-b737-20d7626d84dc', 'ACA and AKS are simply two different names for the exact same underlying service', FALSE, 1),
    ('0036402b-5245-4c35-9c66-f196d3ff4a24', 'c8e203d5-d805-45e9-b737-20d7626d84dc', 'ACA provides full direct access to native Kubernetes APIs, while AKS does not', FALSE, 2),
    ('4866ed91-2e76-402a-ba96-ac11304d3885', 'c8e203d5-d805-45e9-b737-20d7626d84dc', 'AKS is serverless and requires no infrastructure management, while ACA requires manual cluster administration', FALSE, 3),
    ('93fa38a8-8a38-4aec-813c-d6c01360de13', 'c8e203d5-d805-45e9-b737-20d7626d84dc', 'ACA offers a simplified, fully managed serverless PaaS experience built on AKS, while AKS provides direct, fine-grained control over the Kubernetes environment for complex orchestration needs', TRUE, 4);
