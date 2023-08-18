--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.3 (Ubuntu 15.3-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" VALUES
	('00000000-0000-0000-0000-000000000000', '039f2d44-7adb-4e41-83aa-f6badb3af187', '{"action":"user_confirmation_requested","actor_id":"6b91f88d-46c6-47a3-96df-69579ded42c1","actor_username":"tyler@supabase.io","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2023-08-18 00:52:29.460479+00', ''),
	('00000000-0000-0000-0000-000000000000', '86169e7a-6865-4dc9-9b8c-468b6480329b', '{"action":"user_signedup","actor_id":"6b91f88d-46c6-47a3-96df-69579ded42c1","actor_username":"tyler@supabase.io","actor_via_sso":false,"log_type":"team"}', '2023-08-18 00:53:23.173113+00', ''),
	('00000000-0000-0000-0000-000000000000', '9f7c854b-bafc-4cb0-a57c-f1a0d4c853b8', '{"action":"logout","actor_id":"6b91f88d-46c6-47a3-96df-69579ded42c1","actor_username":"tyler@supabase.io","actor_via_sso":false,"log_type":"account"}', '2023-08-18 00:53:38.684132+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c8efedde-f2ad-496c-9ff7-1857cff6a486', '{"action":"login","actor_id":"6b91f88d-46c6-47a3-96df-69579ded42c1","actor_username":"tyler@supabase.io","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2023-08-18 00:53:48.024913+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" VALUES
	('00000000-0000-0000-0000-000000000000', '6b91f88d-46c6-47a3-96df-69579ded42c1', 'authenticated', 'authenticated', 'tyler@supabase.io', '$2a$10$.NfbP.4JExDBm5d3aLPGveEYr8XuFKhe6SSnCZ2c8v0E.VfLIhvTy', '2023-08-18 00:53:23.17413+00', NULL, '', '2023-08-18 00:52:29.485362+00', '', NULL, '', '', NULL, '2023-08-18 00:53:48.025883+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2023-08-18 00:52:29.434574+00', '2023-08-18 00:53:48.027518+00', NULL, NULL, '', '', NULL, DEFAULT, '', 0, NULL, '', NULL, false, NULL);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" VALUES
	('6b91f88d-46c6-47a3-96df-69579ded42c1', '6b91f88d-46c6-47a3-96df-69579ded42c1', '{"sub": "6b91f88d-46c6-47a3-96df-69579ded42c1", "email": "tyler@supabase.io"}', 'email', '2023-08-18 00:52:29.455614+00', '2023-08-18 00:52:29.455789+00', '2023-08-18 00:52:29.455789+00', DEFAULT);


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" VALUES
	('eb5d571f-f102-4954-9f3e-478287d70fff', '6b91f88d-46c6-47a3-96df-69579ded42c1', '2023-08-18 00:53:48.025961+00', '2023-08-18 00:53:48.025961+00', NULL, 'aal1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" VALUES
	('eb5d571f-f102-4954-9f3e-478287d70fff', '2023-08-18 00:53:48.030687+00', '2023-08-18 00:53:48.030687+00', 'password', 'f898b5d2-28db-40b2-a3f0-b61297b7494c');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" VALUES
	('00000000-0000-0000-0000-000000000000', 2, 'ivnqM8Ovc4CRKaWFW9jsyQ', '6b91f88d-46c6-47a3-96df-69579ded42c1', false, '2023-08-18 00:53:48.026675+00', '2023-08-18 00:53:48.026675+00', NULL, 'eb5d571f-f102-4954-9f3e-478287d70fff');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."lists" VALUES
	('b9ed5bc0-67d2-4f14-936e-60d4071fce51', '2023-08-18 01:08:21.846605+00', 'Grocery shopping', '6b91f88d-46c6-47a3-96df-69579ded42c1');


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."items" VALUES
	('98bb494a-1f0d-44db-b1bc-9dc3dbbb3ef0', '2023-08-18 01:08:46.08911+00', 'Milk', false, 'b9ed5bc0-67d2-4f14-936e-60d4071fce51'),
	('80ecbe95-0f4f-474d-9057-64e3da36430d', '2023-08-18 01:08:59.871231+00', 'Eggs', false, 'b9ed5bc0-67d2-4f14-936e-60d4071fce51'),
	('c12efd53-b3e4-427a-bc97-61b84ae7aee4', '2023-08-18 01:28:48.631066+00', 'Bacon', true, 'b9ed5bc0-67d2-4f14-936e-60d4071fce51');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 2, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
