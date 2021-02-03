--
-- PostgreSQL database dump
--

-- Dumped from database version 11.8
-- Dumped by pg_dump version 13.1

-- Started on 2021-02-03 15:45:24

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

SET default_tablespace = '';

--
-- TOC entry 196 (class 1259 OID 65768)
-- Name: acl; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.acl (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL,
    tags text[]
);


ALTER TABLE public.acl OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 65774)
-- Name: acl_group_widget; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.acl_group_widget (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    acl_group_id character varying(255),
    widget_id character varying(255)
);


ALTER TABLE public.acl_group_widget OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 65780)
-- Name: acl_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.acl_groups (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    acl_id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    version character varying(255) NOT NULL
);


ALTER TABLE public.acl_groups OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 65786)
-- Name: api; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.api (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    api_route_suffix character varying(255) NOT NULL,
    api_type character varying(255) NOT NULL,
    authorization_type character varying(255) NOT NULL,
    dependent_api text[],
    description character varying(255),
    host character varying(255) NOT NULL,
    proxy_url character varying(255),
    request_method character varying(255) NOT NULL,
    scope character varying(255),
    version character varying(255) NOT NULL,
    package_id character varying(255) NOT NULL
);


ALTER TABLE public.api OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 65792)
-- Name: api_packages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.api_packages (
    package_id character varying(255) NOT NULL,
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    description character varying(255),
    package_name character varying(255) NOT NULL
);


ALTER TABLE public.api_packages OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 65798)
-- Name: attribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attribute (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    icon character varying(255) NOT NULL,
    icon_type character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.attribute OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 65804)
-- Name: attribute_widget; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attribute_widget (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    attribute_id character varying(255) NOT NULL,
    permission character varying(255) NOT NULL,
    "position" integer NOT NULL,
    widget_id character varying(255) NOT NULL
);


ALTER TABLE public.attribute_widget OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 65810)
-- Name: aws_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_accounts (
    id character varying(255) NOT NULL,
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    account_name character varying(255),
    last_ingested_date timestamp without time zone,
    skip_ingestion boolean,
    spoc character varying(255),
    status character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    access_key character varying(255),
    external_id character varying(255),
    role_arn character varying(255),
    secret_key character varying(255),
    currency character varying(255),
    payer character varying(255)
);


ALTER TABLE public.aws_accounts OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 65816)
-- Name: aws_shared_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_shared_accounts (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    account_id character varying(255),
    scope character varying(255) NOT NULL,
    tenant_id character varying(255) NOT NULL
);


ALTER TABLE public.aws_shared_accounts OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 65822)
-- Name: azure_ea_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.azure_ea_accounts (
    id character varying(255) NOT NULL,
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    account_name character varying(255),
    last_ingested_date timestamp without time zone,
    skip_ingestion boolean,
    spoc character varying(255),
    status character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    app_id character varying(255),
    domain_name character varying(255),
    enrollment_number character varying(255),
    key character varying(255),
    token character varying(1000) NOT NULL,
    currency character varying(255)
);


ALTER TABLE public.azure_ea_accounts OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 65828)
-- Name: azure_ea_shared_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.azure_ea_shared_accounts (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    account_id character varying(255),
    scope character varying(255) NOT NULL,
    tenant_id character varying(255) NOT NULL
);


ALTER TABLE public.azure_ea_shared_accounts OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 65834)
-- Name: azure_plan_csp_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.azure_plan_csp_accounts (
    id character varying(255) NOT NULL,
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    account_name character varying(255),
    last_ingested_date timestamp without time zone,
    skip_ingestion boolean,
    spoc character varying(255),
    status character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    app_id character varying(255),
    domain_name character varying(255),
    key character varying(255),
    microsoft_tenant_id character varying(255),
    partner_id character varying(255),
    billing_aniversary_day integer,
    cloud_type character varying(255),
    currency character varying(255)
);


ALTER TABLE public.azure_plan_csp_accounts OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 65840)
-- Name: azure_plan_csp_shared_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.azure_plan_csp_shared_accounts (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    account_id character varying(255),
    scope character varying(255) NOT NULL,
    tenant_id character varying(255) NOT NULL
);


ALTER TABLE public.azure_plan_csp_shared_accounts OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 65846)
-- Name: customer_integrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_integrations (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    api_key character varying(255),
    config jsonb,
    domain_name character varying(255),
    email character varying(255),
    integration_type character varying(255) NOT NULL,
    supported_email text[],
    widget_code character varying(10000),
    widget_id character varying(255),
    integration_code character varying(2500),
    redirect_uri character varying(255),
    region character varying(255)
);


ALTER TABLE public.customer_integrations OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 65852)
-- Name: databasechangelog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);


ALTER TABLE public.databasechangelog OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 65858)
-- Name: databasechangeloglock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);


ALTER TABLE public.databasechangeloglock OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 65861)
-- Name: default_filter_config; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.default_filter_config (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    default_value jsonb,
    "position" integer NOT NULL
);


ALTER TABLE public.default_filter_config OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 65867)
-- Name: description; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.description (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    desc_sort_key character varying(255) NOT NULL,
    heading character varying(255) NOT NULL,
    "position" integer NOT NULL,
    show_heading boolean NOT NULL,
    type character varying(255) NOT NULL,
    value text[]
);


ALTER TABLE public.description OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 65873)
-- Name: filter_config_widget; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filter_config_widget (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    filter_config_id character varying(255) NOT NULL,
    filter_type character varying(255),
    widget_id character varying(255) NOT NULL
);


ALTER TABLE public.filter_config_widget OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 65879)
-- Name: filters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filters (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    api_id character varying(255),
    filter_json jsonb,
    label character varying(255),
    list_data jsonb,
    placeholder character varying(255),
    selector character varying(255),
    type character varying(255) NOT NULL,
    version character varying(255)
);


ALTER TABLE public.filters OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 65885)
-- Name: layer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.layer (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.layer OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 65891)
-- Name: layer_attribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.layer_attribute (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    attribute_id character varying(255) NOT NULL,
    is_layer_first boolean NOT NULL,
    layer_id character varying(255) NOT NULL,
    "position" integer NOT NULL
);


ALTER TABLE public.layer_attribute OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 65897)
-- Name: master_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.master_policies (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    allowed_apis text[],
    associations text[],
    denied_apis text[],
    policy_name character varying(255) NOT NULL,
    referred_policy text[]
);


ALTER TABLE public.master_policies OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 65903)
-- Name: saml_domain_mapping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.saml_domain_mapping (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    domain_name character varying(255) NOT NULL,
    saml_integration_entity_id character varying(255)
);


ALTER TABLE public.saml_domain_mapping OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 65909)
-- Name: saml_integrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.saml_integrations (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    base_url text,
    configuration_name character varying(16) NOT NULL,
    email_attribute character varying(255),
    ignored_email_ids text[],
    origin character varying(255),
    role_attribute character varying(255),
    saml_metadata_file text,
    saml_metadata_url text
);


ALTER TABLE public.saml_integrations OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 65915)
-- Name: temporary_filters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temporary_filters (
    filter_id character varying(255) NOT NULL,
    filter_type character varying(255),
    service character varying(255)
);


ALTER TABLE public.temporary_filters OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 65921)
-- Name: tenants_whitelabel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tenants_whitelabel (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    tenant_id character varying(255),
    whitelabel_id character varying(255)
);


ALTER TABLE public.tenants_whitelabel OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 65927)
-- Name: views; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.views (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    acl_id character varying(255) NOT NULL,
    layer_id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    policy_id character varying(255) NOT NULL,
    tags text[],
    landing_page_id character varying(255) NOT NULL
);


ALTER TABLE public.views OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 65933)
-- Name: whitelabel_config; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.whitelabel_config (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    domain_id character varying(255),
    image_config jsonb,
    domain_config jsonb,
    domain_email character varying(255),
    email_config jsonb,
    email_verified character varying(255),
    social_media_url jsonb,
    theme_config jsonb
);


ALTER TABLE public.whitelabel_config OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 65939)
-- Name: widget_api; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.widget_api (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    api_id character varying(255) NOT NULL,
    widget_id character varying(255) NOT NULL
);


ALTER TABLE public.widget_api OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 65945)
-- Name: widgets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.widgets (
    id character varying(255) NOT NULL,
    class_type character varying(255),
    created_by_email character varying(255) NOT NULL,
    created_by_tenant_id character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    last_modified_by_email character varying(255) NOT NULL,
    last_modified_by_tenant_id character varying(255) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    description_id character varying(255),
    extra_info jsonb,
    portlet_type character varying(255) NOT NULL,
    portlet_version character varying(255) NOT NULL,
    supported_formats text[],
    widget_name character varying(255) NOT NULL
);


ALTER TABLE public.widgets OWNER TO postgres;

--
-- TOC entry 4074 (class 0 OID 65768)
-- Dependencies: 196
-- Data for Name: acl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.acl (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, name, tags) FROM stdin;
baea8af8-5302-4a8e-882c-9f7934b003d8	AccessControlList	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:19:35.813594+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:19:35.813594+00	viewOnboarding_acl	\N
baea8af8-5302-4a8e-882c-9f7934b003d8	AccessControlList	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:19:35.813594+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:19:35.813594+00	viewOnboarding_acl	\N
\.


--
-- TOC entry 4075 (class 0 OID 65774)
-- Dependencies: 197
-- Data for Name: acl_group_widget; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.acl_group_widget (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, acl_group_id, widget_id) FROM stdin;
\.


--
-- TOC entry 4076 (class 0 OID 65780)
-- Dependencies: 198
-- Data for Name: acl_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.acl_groups (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, acl_id, name, version) FROM stdin;
f2edd827-6101-4985-8fe5-fed2a9fd8fda	ACLGroups	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:19:36.058585+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:19:36.058585+00	baea8af8-5302-4a8e-882c-9f7934b003d8	viewOnboarding	FULL
\.


--
-- TOC entry 4077 (class 0 OID 65786)
-- Dependencies: 199
-- Data for Name: api; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.api (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, api_route_suffix, api_type, authorization_type, dependent_api, description, host, proxy_url, request_method, scope, version, package_id) FROM stdin;
0ffe5847-8d9e-45a7-b30e-2e2d4e5a97e6	Api	email	SERVICE_TENANT	2020-12-14 06:08:49.243921+00	email	SERVICE_TENANT	2020-12-14 06:08:49.243921+00	/srm-integrations/gmail-integration/send-gmail/{integration-id}	ACTION	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/gmail-integration/send-gmail/{integration-id}	POST	SCOPE_WRITE	V1	integration
6430ca48-c3b0-48e1-bfa6-83e4c052c5b9	Api	email	SERVICE_TENANT	2020-12-14 06:08:49.712997+00	email	SERVICE_TENANT	2020-12-14 06:08:49.712997+00	/srm-integrations/integration-status/GMAIL	FETCH	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/gmail-integration/send-gmail/{integration-id}	GET	SCOPE_WRITE	V1	integration
bc0d4ea7-6114-4576-9c19-a27fceb6bfa7	Api	email	SERVICE_TENANT	2020-12-14 06:08:50.122999+00	email	SERVICE_TENANT	2020-12-14 06:08:50.122999+00	/srm-integrations/gmail-integration/authenticate	CREATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/gmail-integration/authenticate	POST	SCOPE_WRITE	V1	integration
23bb9a56-920e-4148-b0cb-a999d6e40fbe	Api	email	SERVICE_TENANT	2020-12-14 06:08:50.4869+00	email	SERVICE_TENANT	2020-12-14 06:08:50.4869+00	/srm-integrations/gmail-integration/remove	DELETE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/gmail-integration/remove	DELETE	SCOPE_WRITE	V1	integration
b7ba7788-2a7f-426a-b553-6ba96e392218	Api	email	SERVICE_TENANT	2020-12-14 06:08:51.984272+00	email	SERVICE_TENANT	2020-12-14 06:08:51.984272+00	/srm-integrations/freshdesk-integration/authenticate	CREATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/freshdesk-integration/authenticate	POST	SCOPE_WRITE	V1	integration
93408c10-0b5f-4664-abf3-3f1455599d94	Api	email	SERVICE_TENANT	2020-12-14 06:08:52.336054+00	email	SERVICE_TENANT	2020-12-14 06:08:52.336054+00	/srm-integrations/integration-status/FRESHDESK	FETCH	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration-status/FRESHDESK	GET	SCOPE_READ	V1	integration
4e276ae1-2142-446c-b4a5-8b6542b48852	Api	email	SERVICE_TENANT	2020-12-14 06:08:52.647111+00	email	SERVICE_TENANT	2020-12-14 06:08:52.647111+00	/srm-integrations/freshdesk-integration/remove	DELETE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/freshdesk-integration/remove	DELETE	SCOPE_WRITE	V1	integration
b9dbb30a-a763-4e28-ad08-ee156e07e564	Api	email	SERVICE_TENANT	2020-12-14 06:08:52.963113+00	email	SERVICE_TENANT	2020-12-14 06:08:52.963113+00	/srm-integrations/freshdesk-integration/edit	UPDATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/freshdesk-integration/edit	PATCH	SCOPE_WRITE	V1	integration
2a24b003-1ad4-45e5-ac6b-89cf175bd306	Api	email	SERVICE_TENANT	2020-12-14 06:08:54.230859+00	email	SERVICE_TENANT	2020-12-14 06:08:54.230859+00	/srm-integrations/o365-integration/authenticate	CREATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/o365-integration/authenticate	POST	SCOPE_WRITE	V1	integration
e570acf4-6cae-4368-86e5-777c7ad5e875	Api	email	SERVICE_TENANT	2020-12-14 06:08:54.571703+00	email	SERVICE_TENANT	2020-12-14 06:08:54.571703+00	/srm-integrations/o365-integration/remove	DELETE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/o365-integration/remove	DELETE	SCOPE_WRITE	V1	integration
7cfdb1b1-892c-4837-9821-908a314e3626	Api	email	SERVICE_TENANT	2020-12-14 06:08:54.900219+00	email	SERVICE_TENANT	2020-12-14 06:08:54.900219+00	/srm-integrations/o365-integration/send-o365Mail/{integration-id}	ACTION	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/o365-integration/send-o365Mail/{integration-id}	POST	SCOPE_WRITE	V1	integration
b4746112-dcc4-4f1a-b287-1f4164dcb8db	Api	email	SERVICE_TENANT	2020-12-14 06:08:55.184382+00	email	SERVICE_TENANT	2020-12-14 06:08:55.184382+00	/srm-integrations/integration-status/O365	FETCH	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/o365-integration/send-o365Mail/{integration-id}	GET	SCOPE_WRITE	V1	integration
9cb5e221-e1d5-4fc5-abcc-ffc0477b375f	Api	email	SERVICE_TENANT	2020-12-14 06:08:56.523453+00	email	SERVICE_TENANT	2020-12-14 06:08:56.523453+00	/srm-integrations/integration-status/OTRS	FETCH	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration-status/OTRS	GET	SCOPE_WRITE	V1	integration
405c653f-3ba9-4ee2-a64b-30520e153199	Api	email	SERVICE_TENANT	2020-12-14 06:08:56.838139+00	email	SERVICE_TENANT	2020-12-14 06:08:56.838139+00	/srm-integrations/otrs-integration/create-ticket	ACTION	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/otrs-integration/create-ticket	POST	SCOPE_WRITE	V1	integration
f7ec7167-d64b-49cf-a9c7-42845cd2da4a	Api	email	SERVICE_TENANT	2020-12-14 06:08:57.14337+00	email	SERVICE_TENANT	2020-12-14 06:08:57.14337+00	/srm-integrations/otrs-integration/status	SRM_INTEGRATION_API	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/otrs-integration/status	GET	SCOPE_READ	V1	integration
1e042e01-a301-4974-ac6f-d7ff9489189e	Api	email	SERVICE_TENANT	2020-12-14 06:08:57.455293+00	email	SERVICE_TENANT	2020-12-14 06:08:57.455293+00	/srm-integrations/otrs-integration/remove	DELETE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/otrs-integration/remove	DELETE	SCOPE_WRITE	V1	integration
0dcc784e-08c9-4897-b03a-6fc8d8d966eb	Api	email	SERVICE_TENANT	2020-12-14 06:08:57.771961+00	email	SERVICE_TENANT	2020-12-14 06:08:57.771961+00	/srm-integrations/otrs-integration/edit	UPDATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/otrs-integration/edit	PATCH	SCOPE_WRITE	V1	integration
ede2e862-14c9-4aa2-8215-f5c23e5de781	Api	email	SERVICE_TENANT	2020-12-14 06:08:58.058688+00	email	SERVICE_TENANT	2020-12-14 06:08:58.058688+00	/srm-integrations/otrs-integration/authenticate	CREATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/otrs-integration/authenticate	POST	SCOPE_WRITE	V1	integration
2aeb5c65-ca73-4f81-baa5-e49155428d73	Api	email	SERVICE_TENANT	2020-12-14 06:08:59.686812+00	email	SERVICE_TENANT	2020-12-14 06:08:59.686812+00	/srm-integrations/zendesk/remove	DELETE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/zendesk/remove	DELETE	SCOPE_WRITE	V1	integration
52443438-51dd-4f06-b794-205e16ffec89	Api	email	SERVICE_TENANT	2020-12-14 06:09:00.007143+00	email	SERVICE_TENANT	2020-12-14 06:09:00.007143+00	/srm-integrations/zendesk/edit	UPDATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/zendesk/edit	PATCH	SCOPE_WRITE	V1	integration
1533eea7-87d2-4d64-b01d-5eebe0b12b4d	Api	email	SERVICE_TENANT	2020-12-14 06:09:00.338909+00	email	SERVICE_TENANT	2020-12-14 06:09:00.338909+00	/srm-integrations/integration-status/ZENDESK	FETCH	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration-status/ZENDESK	GET	SCOPE_READ	V1	integration
1a7673a4-7242-4789-84f7-e9da39362ca9	Api	email	SERVICE_TENANT	2020-12-14 06:09:00.714693+00	email	SERVICE_TENANT	2020-12-14 06:09:00.714693+00	/srm-integrations/zendesk/authenticate	CREATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/zendesk/authenticate	POST	SCOPE_WRITE	V1	integration
4f3553a3-c413-4b41-b453-c45a04bda195	Api	email	SERVICE_TENANT	2020-12-14 06:09:01.995754+00	email	SERVICE_TENANT	2020-12-14 06:09:01.995754+00	/srm-integrations/freshservice-integration/authenticate	CREATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/freshservice-integration/authenticate	POST	SCOPE_WRITE	V1	integration
0973614a-d3c5-4ce4-90e7-979a87740f05	Api	email	SERVICE_TENANT	2020-12-14 06:09:02.329769+00	email	SERVICE_TENANT	2020-12-14 06:09:02.329769+00	/srm-integrations/integration-status/FRESHSERVICE	FETCH	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration-status/FRESHSERVICE	GET	SCOPE_READ	V1	integration
e45c5151-d98c-40bf-bff7-05cfad94c0ec	Api	email	SERVICE_TENANT	2020-12-14 06:09:02.640992+00	email	SERVICE_TENANT	2020-12-14 06:09:02.640992+00	/srm-integrations/freshservice-integration/edit	UPDATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/freshservice-integration/edit	PATCH	SCOPE_WRITE	V1	integration
db6043fd-e2ea-483e-b6fb-839010e0052e	Api	email	SERVICE_TENANT	2020-12-14 06:09:03.023304+00	email	SERVICE_TENANT	2020-12-14 06:09:03.023304+00	/srm-integrations/freshservice-integration/remove	DELETE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/freshservice-integration/remove	DELETE	SCOPE_WRITE	V1	integration
14f56488-961f-4e2b-823a-d48909647c58	Api	email	SERVICE_TENANT	2020-12-14 06:09:04.48807+00	email	SERVICE_TENANT	2020-12-14 06:09:04.48807+00	/srm-integrations/servicenow-integration/create-incidents	SRM_INTEGRATION_API	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/servicenow-integration/create-incidents	POST	SCOPE_WRITE	V1	integration
7870dca8-2dbd-471a-81b8-9f9d471ddbe7	Api	email	SERVICE_TENANT	2020-12-14 06:09:04.8125+00	email	SERVICE_TENANT	2020-12-14 06:09:04.8125+00	/srm-integrations/servicenow-integration/authenticate	CREATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/servicenow-integration/authenticate	POST	SCOPE_WRITE	V1	integration
a1aadb45-9312-43db-beab-f317621ad94e	Api	email	SERVICE_TENANT	2020-12-14 06:09:05.121872+00	email	SERVICE_TENANT	2020-12-14 06:09:05.121872+00	/srm-integrations/integration-status/SERVICENOW	FETCH	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration-status/SERVICENOW	GET	SCOPE_READ	V1	integration
cb2beb25-a7b7-408f-b991-32de133cfd40	Api	email	SERVICE_TENANT	2020-12-14 06:09:05.418925+00	email	SERVICE_TENANT	2020-12-14 06:09:05.418925+00	/srm-integrations/servicenow-integration/remove	DELETE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/servicenow-integration/remove	DELETE	SCOPE_WRITE	V1	integration
c0bac697-a7cb-4365-9c33-8c68a5fafd43	Api	email	SERVICE_TENANT	2020-12-14 06:09:05.724102+00	email	SERVICE_TENANT	2020-12-14 06:09:05.724102+00	/srm-integrations/servicenow-integration/edit	UPDATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/servicenow-integration/edit	PATCH	SCOPE_WRITE	V1	integration
afb462ae-ef8b-4ac3-b5e2-3d9bdde1d0b4	Api	email	SERVICE_TENANT	2020-12-14 06:09:07.157525+00	email	SERVICE_TENANT	2020-12-14 06:09:07.157525+00	/srm-integrations/slack-integration/authenticate	CREATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/slack-integration/authenticate	POST	SCOPE_WRITE	V1	integration
8b25df2e-e08d-4bfc-9583-dd8f97f5f203	Api	email	SERVICE_TENANT	2020-12-14 06:09:07.454415+00	email	SERVICE_TENANT	2020-12-14 06:09:07.454415+00	/srm-integrations/integration-status/SLACK	FETCH	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration-status/SLACK	GET	SCOPE_READ	V1	integration
7f9dac2d-5894-44f1-8bc2-8625dee51f9f	Api	email	SERVICE_TENANT	2020-12-14 06:09:07.82388+00	email	SERVICE_TENANT	2020-12-14 06:09:07.82388+00	/srm-integrations/slack-integration/send-message	ACTION	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/slack-integration/send-message	POST	SCOPE_WRITE	V1	integration
b154c19d-0052-4257-b001-9d9f5e261a36	Api	email	SERVICE_TENANT	2020-12-14 06:09:08.181684+00	email	SERVICE_TENANT	2020-12-14 06:09:08.181684+00	/srm-integrations/slack-integration/delete	DELETE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/slack-integration/delete	DELETE	SCOPE_WRITE	V1	integration
ef8a9c3a-b3fe-4e71-a5d3-73d084473efd	Api	email	SERVICE_TENANT	2020-12-14 06:09:08.501603+00	email	SERVICE_TENANT	2020-12-14 06:09:08.501603+00	/srm-integrations/slack-integration/list-users	SRM_INTEGRATION_API	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/slack-integration/list-users	GET	SCOPE_READ	V1	integration
878ad43c-c35d-412a-82ee-03aa9ae53369	Api	email	SERVICE_TENANT	2020-12-14 06:09:09.876478+00	email	SERVICE_TENANT	2020-12-14 06:09:09.876478+00	/srm-integrations/integration/sns/exist	SRM_INTEGRATION_API	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration/sns/exist	GET	SCOPE_READ	V1	integration
4e5c988c-065d-4480-a4b7-b5548b418e17	Api	email	SERVICE_TENANT	2020-12-14 06:09:10.173374+00	email	SERVICE_TENANT	2020-12-14 06:09:10.173374+00	/srm-integrations/integration/sns/new	SRM_INTEGRATION_API	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration/sns/new	GET	SCOPE_READ	V1	integration
cfd4e511-c61c-44fe-9c92-b0acdcb1929a	Api	email	SERVICE_TENANT	2020-12-14 06:09:10.462927+00	email	SERVICE_TENANT	2020-12-14 06:09:10.462927+00	/srm-integrations/integration/sns/new-policy	SRM_INTEGRATION_API	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration/sns/new-policy	GET	SCOPE_READ	V1	integration
7c2a7bec-0f77-41bf-a5da-c3cadcf46e27	Api	email	SERVICE_TENANT	2020-12-14 06:09:10.760028+00	email	SERVICE_TENANT	2020-12-14 06:09:10.760028+00	/srm-integrations/integration/sns/get-info	SRM_INTEGRATION_API	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration/sns/get-info	POST	SCOPE_WRITE	V1	integration
12752adc-d34b-493a-b319-929feb35bfc0	Api	email	SERVICE_TENANT	2020-12-14 06:09:11.047261+00	email	SERVICE_TENANT	2020-12-14 06:09:11.047261+00	/srm-integrations/integration/sns/info	SRM_INTEGRATION_API	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration/sns/info	GET	SCOPE_READ	V1	integration
ec3dfacf-57fe-4770-87d0-9974631a3587	Api	email	SERVICE_TENANT	2020-12-14 06:09:11.335258+00	email	SERVICE_TENANT	2020-12-14 06:09:11.335258+00	/srm-integrations/integration/sns/listing	FETCH	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration/sns/listing	GET	SCOPE_READ	V1	integration
0f26d72d-99b4-437c-992a-c651f93fc5d1	Api	email	SERVICE_TENANT	2020-12-14 06:09:11.66329+00	email	SERVICE_TENANT	2020-12-14 06:09:11.66329+00	/srm-integrations/integration/sns/policy	SRM_INTEGRATION_API	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration/sns/policy	POST	SCOPE_WRITE	V1	integration
a0a23e8e-fa8b-4653-b554-5529ad3a1fc1	Api	email	SERVICE_TENANT	2020-12-14 06:09:11.951298+00	email	SERVICE_TENANT	2020-12-14 06:09:11.951298+00	/srm-integrations/integration/sns/public-message	SRM_INTEGRATION_API	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration/sns/public-message	POST	SCOPE_WRITE	V1	integration
8d252f27-f191-43af-b1b1-e03c482101f9	Api	email	SERVICE_TENANT	2020-12-14 06:09:12.26204+00	email	SERVICE_TENANT	2020-12-14 06:09:12.26204+00	/srm-integrations/integration/sns/edit	UPDATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration/sns/edit	POST	SCOPE_WRITE	V1	integration
9834e620-8605-4183-997d-6e8b9b9b36f4	Api	email	SERVICE_TENANT	2020-12-14 06:09:12.626236+00	email	SERVICE_TENANT	2020-12-14 06:09:12.626236+00	/srm-integrations/integration/sns	SRM_INTEGRATION_API	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration/sns	DELETE	SCOPE_WRITE	V1	integration
e6b42384-a695-4766-a6f8-71604ba2644d	Api	email	SERVICE_TENANT	2020-12-14 06:09:14.888025+00	email	SERVICE_TENANT	2020-12-14 06:09:14.888025+00	/srm-integrations/autotask-integration/authenticate	CREATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/autotask-integration/authenticate	POST	SCOPE_WRITE	V1	integration
b3482af1-0083-48df-ada8-ebb1a99c512a	Api	email	SERVICE_TENANT	2020-12-14 06:09:15.210558+00	email	SERVICE_TENANT	2020-12-14 06:09:15.210558+00	/srm-integrations/autotask-integration/status	SRM_INTEGRATION_API	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/autotask-integration/status	GET	SCOPE_READ	V1	integration
ed1e303a-b118-4662-a5d3-2bef5957d406	Api	email	SERVICE_TENANT	2020-12-14 06:09:15.497782+00	email	SERVICE_TENANT	2020-12-14 06:09:15.497782+00	/srm-integrations/integration-status/AUTOTASK	FETCH	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration-status/AUTOTASK	GET	SCOPE_WRITE	V1	integration
2a69c850-865d-4577-b88a-f2c9fa72d826	Api	email	SERVICE_TENANT	2020-12-14 06:09:15.799838+00	email	SERVICE_TENANT	2020-12-14 06:09:15.799838+00	/srm-integrations/autotask-integration/edit	UPDATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/autotask-integration/edit	PATCH	SCOPE_WRITE	V1	integration
bd18b0dc-2167-4c62-94a3-c7f09f67e8ce	Api	email	SERVICE_TENANT	2020-12-14 06:09:16.1012+00	email	SERVICE_TENANT	2020-12-14 06:09:16.1012+00	/srm-integrations/autotask-integration/remove	DELETE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/autotask-integration/remove	DELETE	SCOPE_WRITE	V1	integration
e2e94466-d3c3-4118-8fc5-9e600fbfa71a	Api	email	SERVICE_TENANT	2020-12-14 06:09:16.422207+00	email	SERVICE_TENANT	2020-12-14 06:09:16.422207+00	/srm-integrations/autotask-integration/list-client-ids	SRM_INTEGRATION_API	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/autotask-integration/list-client-ids	GET	SCOPE_READ	V1	integration
3f4207f3-c0fb-4815-87dc-6c8e0900cc8d	Api	email	SERVICE_TENANT	2020-12-14 06:09:16.762924+00	email	SERVICE_TENANT	2020-12-14 06:09:16.762924+00	/srm-integrations/autotask-integration/create-ticket	ACTION	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/autotask-integration/create-ticket	POST	SCOPE_WRITE	V1	integration
e5cf4d0b-89cb-4a9f-ac20-9532fbb2202b	Api	email	SERVICE_TENANT	2020-12-14 06:09:18.452685+00	email	SERVICE_TENANT	2020-12-14 06:09:18.452685+00	/srm-integrations/casdm-integration/remove	DELETE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/casdm-integration/remove	DELETE	SCOPE_WRITE	V1	integration
f79db435-8b58-4746-8c67-7ca63c237eef	Api	email	SERVICE_TENANT	2020-12-14 06:09:18.741919+00	email	SERVICE_TENANT	2020-12-14 06:09:18.741919+00	/srm-integrations/casdm-integration/status	SRM_INTEGRATION_API	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/casdm-integration/status	GET	SCOPE_READ	V1	integration
7795e50b-d0c3-46ae-b5b8-7416d7bc36f6	Api	email	SERVICE_TENANT	2020-12-14 06:09:19.050331+00	email	SERVICE_TENANT	2020-12-14 06:09:19.050331+00	/srm-integrations/integration-status/CASDM	FETCH	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration-status/CASDM	GET	SCOPE_WRITE	V1	integration
45e35eaf-a4ca-4c57-ba9c-078579291107	Api	email	SERVICE_TENANT	2020-12-14 06:09:19.363966+00	email	SERVICE_TENANT	2020-12-14 06:09:19.363966+00	/srm-integrations/casdm-integration/edit	UPDATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/casdm-integration/edit	PATCH	SCOPE_WRITE	V1	integration
cf91cdcb-6ddd-45f8-a380-b0d6b2cbac3b	Api	email	SERVICE_TENANT	2020-12-14 06:09:19.716786+00	email	SERVICE_TENANT	2020-12-14 06:09:19.716786+00	/srm-integrations/casdm-integration/create-ticket	ACTION	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/casdm-integration/create-ticket	POST	SCOPE_WRITE	V1	integration
b7cf817e-2365-4cc0-85f8-276208a926cc	Api	email	SERVICE_TENANT	2020-12-14 06:09:20.007175+00	email	SERVICE_TENANT	2020-12-14 06:09:20.007175+00	/srm-integrations/casdm-integration/authenticate	CREATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/casdm-integration/authenticate	POST	SCOPE_WRITE	V1	integration
0467af97-ffbe-4180-994c-e0d28a190c41	Api	email	SERVICE_TENANT	2020-12-14 06:09:21.486999+00	email	SERVICE_TENANT	2020-12-14 06:09:21.486999+00	/srm-integrations/jiradesk-integration/authenticate	CREATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/jiradesk-integration/authenticate	POST	SCOPE_WRITE	V1	integration
8fd9c48e-60e0-4600-8513-10aac8b211eb	Api	email	SERVICE_TENANT	2020-12-14 06:09:21.777558+00	email	SERVICE_TENANT	2020-12-14 06:09:21.777558+00	/srm-integrations/integration-status/JIRADESK	FETCH	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/integration-status/JIRADESK	GET	SCOPE_READ	V1	integration
f1ffcc93-81fe-4b8d-93ac-42c6521cc406	Api	email	SERVICE_TENANT	2020-12-14 06:09:22.07229+00	email	SERVICE_TENANT	2020-12-14 06:09:22.07229+00	/srm-integrations/jiradesk-integration/remove	DELETE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/jiradesk-integration/remove	DELETE	SCOPE_WRITE	V1	integration
e5a4d0c5-e176-409e-b4da-5779feca4b2e	Api	email	SERVICE_TENANT	2020-12-14 06:09:22.385684+00	email	SERVICE_TENANT	2020-12-14 06:09:22.385684+00	/srm-integrations/jiradesk-integration/edit	UPDATE	BEARER_TOKEN	\N	\N	http://api-stage.centilytics.com	http://api-stage.centilytics.com/srm-integrations/jiradesk-integration/edit	PATCH	SCOPE_WRITE	V1	integration
19e8709b-17a6-4606-8069-9fc01f8cc718	Api	sandeep@centilytics.com	e947d6f5-6a35-4dc8-8c8a-33ed08e1146e	2020-12-14 06:13:45.943455+00	sandeep@centilytics.com	e947d6f5-6a35-4dc8-8c8a-33ed08e1146e	2020-12-14 06:13:45.943455+00	/autotask-integration/list-tickets	FETCH	BEARER_TOKEN	\N	\N	http://localhost:8086	http://localhost:8086/autotask-integration/list-tickets	POST	SCOPE_READ	V2	integration
\.


--
-- TOC entry 4078 (class 0 OID 65792)
-- Dependencies: 200
-- Data for Name: api_packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.api_packages (package_id, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, description, package_name) FROM stdin;
allocationChecks	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:14.993322+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:14.993322+00	all cloud allocationChecks	ALLOCATIONCHECKS
automation	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:14.859507+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:14.859507+00	all cloud automation	AUTOMATION
commonFilters	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:14.837043+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:14.837043+00	all cloud commonFilters	COMMONFILTERS
costallocationoverview	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:15.044124+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:15.044124+00	all cloud costallocationoverview	COSTALLOCATIONOVERVIEW
description	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:14.723771+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:14.723771+00	all cloud description	DESCRIPTION
integration	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:15.020651+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:15.020651+00	all cloud integration	INTEGRATION
linking	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:14.881967+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:14.881967+00	all cloud linking	LINKING
miscellaneous	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:14.903451+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:14.903451+00	all cloud miscellaneous	MISCELLANEOUS
reports	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:14.926886+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:14.926886+00	all cloud reports	REPORTS
security	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:14.947394+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:14.947394+00	all cloud security	SECURITY
visibility	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:14.968872+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 15:11:14.968872+00	all cloud visibility	VISIBILITY
\.


--
-- TOC entry 4079 (class 0 OID 65798)
-- Dependencies: 201
-- Data for Name: attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attribute (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, icon, icon_type, name) FROM stdin;
6f9c8f33-3af8-42f9-b271-9eb9f8b5bff5	AttributeEntity	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:20:43.859606+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:20:43.859606+00	assets/AWS.png	IMAGE	AWS
2a7ca46e-2685-4976-8667-f2f8c9eea93a	AttributeEntity	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:20:43.874567+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:20:43.874567+00	fas fa-home	FONTAWESOME	AWS Home
\.


--
-- TOC entry 4080 (class 0 OID 65804)
-- Dependencies: 202
-- Data for Name: attribute_widget; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attribute_widget (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, attribute_id, permission, "position", widget_id) FROM stdin;
\.


--
-- TOC entry 4081 (class 0 OID 65810)
-- Dependencies: 203
-- Data for Name: aws_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aws_accounts (id, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, account_name, last_ingested_date, skip_ingestion, spoc, status, type, access_key, external_id, role_arn, secret_key, currency, payer) FROM stdin;
\.


--
-- TOC entry 4082 (class 0 OID 65816)
-- Dependencies: 204
-- Data for Name: aws_shared_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aws_shared_accounts (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, account_id, scope, tenant_id) FROM stdin;
\.


--
-- TOC entry 4083 (class 0 OID 65822)
-- Dependencies: 205
-- Data for Name: azure_ea_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.azure_ea_accounts (id, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, account_name, last_ingested_date, skip_ingestion, spoc, status, type, app_id, domain_name, enrollment_number, key, token, currency) FROM stdin;
\.


--
-- TOC entry 4084 (class 0 OID 65828)
-- Dependencies: 206
-- Data for Name: azure_ea_shared_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.azure_ea_shared_accounts (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, account_id, scope, tenant_id) FROM stdin;
\.


--
-- TOC entry 4085 (class 0 OID 65834)
-- Dependencies: 207
-- Data for Name: azure_plan_csp_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.azure_plan_csp_accounts (id, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, account_name, last_ingested_date, skip_ingestion, spoc, status, type, app_id, domain_name, key, microsoft_tenant_id, partner_id, billing_aniversary_day, cloud_type, currency) FROM stdin;
\.


--
-- TOC entry 4086 (class 0 OID 65840)
-- Dependencies: 208
-- Data for Name: azure_plan_csp_shared_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.azure_plan_csp_shared_accounts (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, account_id, scope, tenant_id) FROM stdin;
\.


--
-- TOC entry 4087 (class 0 OID 65846)
-- Dependencies: 209
-- Data for Name: customer_integrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_integrations (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, api_key, config, domain_name, email, integration_type, supported_email, widget_code, widget_id, integration_code, redirect_uri, region) FROM stdin;
56cf0297-0667-4472-a3f5-64ab21329fb9	CustomerIntegrations	sandeep@centilytics.com	e947d6f5-6a35-4dc8-8c8a-33ed08e1146e	2020-12-14 06:17:01.636257+00	sandeep@centilytics.com	e947d6f5-6a35-4dc8-8c8a-33ed08e1146e	2020-12-14 06:17:01.636257+00	\N	{"credentials": {"deskName": "sandeep-edit", "password": "wP~02oB@rC*3#z5QyS$7~n4Wg", "userName": "f2aqobj3ktkc6cz@swcsb050820.com", "trackingId": "C2E2JYVQJGHGA743RILYHGZEKSL"}, "configFeilds": null, "configFeilds2": null, "configFeilds3": {"source": {"1": "Other", "2": "Phone", "4": "Email", "5": "Taskfire Portal", "6": "In Person/Onsite", "8": "Monitoring Alert", "-1": "Client Portal", "-2": "Insourced", "13": "N-Central"}, "status": {"1": "New", "5": "Complete", "11": "Esc to 3-SQL ENG", "12": "Waiting Vendor", "13": "Waiting Customer Response", "14": "Customer Reopened Ticket", "15": "Customer Response Update", "16": "Esc to 2a-Tech Engineer", "17": "Esc to 3-SWC Internal", "19": "Hardware Imaging in Prog", "20": "Delete", "22": "Assigned", "28": "Esc to Client", "31": "Ticket Updated", "34": "Ready for Testing", "35": "Ready for Deployment", "36": "Esc to Taskfire", "37": "Appt Scheduled w Client", "38": "Hardware Order Placed", "40": "Hardware Approved", "41": "Esc to Major IM", "43": "Hardware Shipped to Site", "46": "Hardware Rcvd for Imaging", "47": "Hardware Denied", "48": "Hardware Approval Needed", "49": "Cancelled", "50": "Transferred to SWC", "51": "Reopened Taskfire Ticket", "53": "Esc to Off Hours", "54": "Waiting Customer IT Team"}, "queueId": {"29682833": "1a-Remote Support", "29682969": "MST NOC Alerts (Internal) - OLD QUEUE", "29683476": "Apps Support - Unmanaged", "29683485": "2a-Tier 2-Technical Engineer", "29683489": "3c-Tier 3-SWC Internal Escalations (Internal)", "29688539": "Zephyr Support (Internal)", "29691263": "MST Deletion Queue"}, "priority": {"1": "High", "2": "Medium", "3": "Low", "4": "Critical", "5": "As Scheduled", "10": "CR: Emergency", "11": "CR: Normal - High", "12": "CR: Normal - Medium", "13": "CR: Normal - Low", "14": "CR: Expedited", "15": "CR: Pre-Approved/STD"}}}	\N	\N	AUTOTASK	\N	\N	8d0d7299-f732-438d-b812-20dfc109c200	\N	\N	\N
\.


--
-- TOC entry 4088 (class 0 OID 65852)
-- Dependencies: 210
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) FROM stdin;
1606219426870-1	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:05.563894	1	EXECUTED	8:52591e2b4cf6f3bffebf97651ac1d49b	dropForeignKeyConstraint baseTableName=views, constraintName=FK58nm9y6m87h806cbdp34fs4au		\N	3.8.8	\N	\N	6219444743
1606219426870-2	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:05.969504	2	EXECUTED	8:c156d52643a1e94a3ce6412379fc3c59	dropForeignKeyConstraint baseTableName=acl_group_widget, constraintName=FK5njqxdf61yg08jb3p1ic24nna		\N	3.8.8	\N	\N	6219444743
1606219426870-3	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:06.359008	3	EXECUTED	8:d5ee22ee6f59f6ffc3f1a913e3214d18	dropForeignKeyConstraint baseTableName=acl_group_widget, constraintName=FK6xi3p18x4710p4tfbtur60xth		\N	3.8.8	\N	\N	6219444743
1606219426870-4	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:06.677344	4	EXECUTED	8:37dcbc77a7894c86ce09aabb2599f22c	dropForeignKeyConstraint baseTableName=views, constraintName=FKb50cc6a11fxcigmx0knry9syw		\N	3.8.8	\N	\N	6219444743
1606219426870-5	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:06.987769	5	EXECUTED	8:30f7472f6808e0a24ae40a269faf0f9e	dropForeignKeyConstraint baseTableName=aws_shared_accounts, constraintName=FKcf89qrvk9r6aq4trdki6v5gch		\N	3.8.8	\N	\N	6219444743
1606219426870-6	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:07.310328	6	EXECUTED	8:bbd4748a7178e47de0be4378426e1931	dropForeignKeyConstraint baseTableName=acl_groups, constraintName=FKdxq3wg5u8cawl9rqs3q0m3cdl		\N	3.8.8	\N	\N	6219444743
1606219426870-7	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:07.630377	7	EXECUTED	8:75f5dfdffec4b140b069b4b4e1a57f9f	dropForeignKeyConstraint baseTableName=azure_plan_csp_shared_accounts, constraintName=FKehfoexp6eaq3lij9c1h6i5fgo		\N	3.8.8	\N	\N	6219444743
1606219426870-8	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:07.934859	8	EXECUTED	8:228f4842ab373ecd280a905d970aacaa	dropForeignKeyConstraint baseTableName=views, constraintName=FKfnjomkc9igjlnkbywvwssdpir		\N	3.8.8	\N	\N	6219444743
1606219426870-9	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:08.308645	9	EXECUTED	8:9ec0bdc6060130e4bd4eed380eed5015	dropForeignKeyConstraint baseTableName=azure_ea_shared_accounts, constraintName=FKhtojm57oktgouktk6s93r8j9k		\N	3.8.8	\N	\N	6219444743
1606219426870-10	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:08.708232	10	EXECUTED	8:57de56c6cb118acb9e777b89631954bc	dropForeignKeyConstraint baseTableName=tenants_whitelabel, constraintName=FKiafot0mh5qeuhndmgtkorhe3s		\N	3.8.8	\N	\N	6219444743
1606219426870-11	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:09.036445	11	EXECUTED	8:09666d2270d8c367dba774ff8968aa95	dropForeignKeyConstraint baseTableName=widget_api, constraintName=FKid7qx7d2e5flqfy0re9h5fhba		\N	3.8.8	\N	\N	6219444743
1606219426870-12	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:09.337257	12	EXECUTED	8:eda2352890372fc17c29a32d27039cee	dropForeignKeyConstraint baseTableName=attribute_widget, constraintName=FKj5te9iprqyhewdfxjb0mj30nm		\N	3.8.8	\N	\N	6219444743
1606219426870-13	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:09.815741	13	EXECUTED	8:2ad3ade3e79c86b701f7363ca3c676be	dropForeignKeyConstraint baseTableName=views, constraintName=FKjteycx3p07hbbx7vfjescdj42		\N	3.8.8	\N	\N	6219444743
1606219426870-14	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:10.175446	14	EXECUTED	8:7c14e11b94e1737c242a5e22c191229e	dropForeignKeyConstraint baseTableName=attribute_widget, constraintName=FKkkcdgp3a2hk8vvmmoav08a2rs		\N	3.8.8	\N	\N	6219444743
1606219426870-15	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:10.517695	15	EXECUTED	8:5f00d068e8aa12cff31ccb5c1642f566	dropForeignKeyConstraint baseTableName=layer_attribute, constraintName=FKo2yh3o8nu8fe80tw7s2md25sc		\N	3.8.8	\N	\N	6219444743
1606219426870-16	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:10.846144	16	EXECUTED	8:6cf154714efd57ffa5f300fd06bcb847	dropForeignKeyConstraint baseTableName=customer_integrations, constraintName=FKp8q2wolwt7h06moja6hmxeouc		\N	3.8.8	\N	\N	6219444743
1606219426870-17	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:11.16615	17	EXECUTED	8:21a5a82a8fe98a833621fb7bad12b01a	dropForeignKeyConstraint baseTableName=widget_api, constraintName=FKqd44vfy6l2fqbhbtigg1untcm		\N	3.8.8	\N	\N	6219444743
1606219426870-18	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:11.506402	18	EXECUTED	8:5f44c81d493c294d19855b3c3175ea36	dropForeignKeyConstraint baseTableName=api, constraintName=FKtbkf31ujdjlfkbeccsuctmyb7		\N	3.8.8	\N	\N	6219444743
1606219426870-19	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:12.164993	19	EXECUTED	8:113a196aee7d0ea5bfca8319a02d87e4	dropForeignKeyConstraint baseTableName=layer_attribute, constraintName=FKtkbc8rfixffr0xqediq1yebnq		\N	3.8.8	\N	\N	6219444743
1606219426870-20	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:12.455737	20	EXECUTED	8:08061012e94bd568a1d7e38f3dc73994	dropUniqueConstraint constraintName=UK2cwaqxwtstrwfd1a4yjngx5a7, tableName=customer_integrations		\N	3.8.8	\N	\N	6219444743
1606219426870-21	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:12.823572	21	EXECUTED	8:a0e64a056cf0e0ab2adbaaf1ab78f6aa	dropUniqueConstraint constraintName=UK3qwp8x7q53xjcg17k215m1dcq, tableName=widget_api		\N	3.8.8	\N	\N	6219444743
1606219426870-22	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:13.1123	22	EXECUTED	8:5ac869937ee9e001e36be2f9c3b34da4	dropUniqueConstraint constraintName=UK4ku751l7h7q1rp4f137y1ik0i, tableName=acl_groups		\N	3.8.8	\N	\N	6219444743
1606219426870-23	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:13.438529	23	EXECUTED	8:c091b64ea5d42a481da10428920f5fb1	dropUniqueConstraint constraintName=UK5yigbj5031w7igomvxwmt6qup, tableName=azure_plan_csp_shared_accounts		\N	3.8.8	\N	\N	6219444743
1606219426870-24	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:13.835962	24	EXECUTED	8:d93d7e27574aafeca10c2cecf2ce7614	dropUniqueConstraint constraintName=UK_cpxijx9g61a0n1n08ahn5ki7r, tableName=views		\N	3.8.8	\N	\N	6219444743
1606219426870-25	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:14.162414	25	EXECUTED	8:0b9b11a6f7e1c57b3171fdd530d2ff70	dropUniqueConstraint constraintName=UK_r0qg0ck6ocu8ryi4xeiwuiq3y, tableName=widgets		\N	3.8.8	\N	\N	6219444743
1606219426870-26	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:14.581496	26	EXECUTED	8:cb6cb37a52cedf73449538d0d9d07fce	dropUniqueConstraint constraintName=UKacw2gxp7npbafd8l3yv0cl6la, tableName=attribute_widget		\N	3.8.8	\N	\N	6219444743
1606219426870-27	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:14.911902	27	EXECUTED	8:60ea96e3e47228b1958c72944fa80eb1	dropUniqueConstraint constraintName=UKbnf5746na7ia5waiqpao62eu7, tableName=whitelabel_config		\N	3.8.8	\N	\N	6219444743
1606219426870-28	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:15.269894	28	EXECUTED	8:9c9c7f6104b4589943678162a7b49b1f	dropUniqueConstraint constraintName=UKerjgn9wsspdj6mn1q6vbpd9mn, tableName=aws_shared_accounts		\N	3.8.8	\N	\N	6219444743
1606219426870-29	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:15.592147	29	EXECUTED	8:37095318ab06fbed81a55243fd463648	dropUniqueConstraint constraintName=UKmro7qu5ul7b9vgb7uia71j0a0, tableName=layer_attribute		\N	3.8.8	\N	\N	6219444743
1606219426870-30	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:15.926258	30	EXECUTED	8:a863b04281906625edce8060ad301a75	dropUniqueConstraint constraintName=UKmxp6103jl8o5yyd1iqeudcqah, tableName=api		\N	3.8.8	\N	\N	6219444743
1606219426870-31	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:16.248506	31	EXECUTED	8:a99178a80bb40cf0df0b26e69d644212	dropUniqueConstraint constraintName=UKowjrpc4b8hthtxhnohcik8qq6, tableName=acl_group_widget		\N	3.8.8	\N	\N	6219444743
1606219426870-32	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:16.602576	32	EXECUTED	8:ddb973e50d9c8f7924ba3bc6e020ad2d	dropUniqueConstraint constraintName=UKrhfkak4in603j26mjn8im630d, tableName=azure_ea_shared_accounts		\N	3.8.8	\N	\N	6219444743
1606219426870-33	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:16.897213	33	EXECUTED	8:5dcb2d2a0887da0e886b2ae6b40454fa	dropUniqueConstraint constraintName=uc_api_packagespackage_name_col, tableName=api_packages		\N	3.8.8	\N	\N	6219444743
1606219426870-34	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:17.381877	34	EXECUTED	8:0bfdf66cb895699d54bf3abbeb250216	dropUniqueConstraint constraintName=uc_whitelabel_configdomain_email_col, tableName=whitelabel_config		\N	3.8.8	\N	\N	6219444743
1606219426870-35	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:17.692346	35	EXECUTED	8:886d841913c6c43f02b288ec95b13b08	dropUniqueConstraint constraintName=uc_whitelabel_configdomain_id_col, tableName=whitelabel_config		\N	3.8.8	\N	\N	6219444743
1606219426870-36	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:18.087996	36	EXECUTED	8:0fc4d93fd75c54ee103e03b3c738a1d9	dropTable tableName=acl		\N	3.8.8	\N	\N	6219444743
1606219426870-37	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:18.463713	37	EXECUTED	8:8cc65560ba93a348344edfe7ae4f442a	dropTable tableName=acl_group_widget		\N	3.8.8	\N	\N	6219444743
1606219426870-38	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:19.070588	38	EXECUTED	8:c571712d6d1ef8389d2c6bd6e96ca8fb	dropTable tableName=acl_groups		\N	3.8.8	\N	\N	6219444743
1606219426870-39	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:19.4899	39	EXECUTED	8:4e1872c74613296479b5f5cde1aff9fa	dropTable tableName=api		\N	3.8.8	\N	\N	6219444743
1606219426870-40	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:19.833876	40	EXECUTED	8:b68ad4ed15980aa027699551ecd259c5	dropTable tableName=api_packages		\N	3.8.8	\N	\N	6219444743
1606219426870-41	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:20.237447	41	EXECUTED	8:0aee4f2af26d5f36cba1ad47a4ae38ea	dropTable tableName=attribute		\N	3.8.8	\N	\N	6219444743
1606219426870-42	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:20.939407	42	EXECUTED	8:413f92dac042351db247dfa6951e3ae4	dropTable tableName=attribute_widget		\N	3.8.8	\N	\N	6219444743
1606219426870-43	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:21.279615	43	EXECUTED	8:8513e280ac93b2c43a972cb22ca55350	dropTable tableName=aws_accounts		\N	3.8.8	\N	\N	6219444743
1606219426870-44	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:21.661263	44	EXECUTED	8:0b0ece27f776fe7ada8f59e06559d3ac	dropTable tableName=aws_shared_accounts		\N	3.8.8	\N	\N	6219444743
1606219426870-45	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:22.046864	45	EXECUTED	8:1757f17003691a0c5e61b86494dd07f8	dropTable tableName=azure_ea_accounts		\N	3.8.8	\N	\N	6219444743
1606219426870-46	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:22.402878	46	EXECUTED	8:be6027d7df4bff084ec097e6fc8b5be6	dropTable tableName=azure_ea_shared_accounts		\N	3.8.8	\N	\N	6219444743
1606219426870-47	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:22.75299	47	EXECUTED	8:d7abe86e8959372cb8cf93b8f54ce730	dropTable tableName=azure_plan_csp_accounts		\N	3.8.8	\N	\N	6219444743
1606219426870-48	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:23.118614	48	EXECUTED	8:a9776f36d944e9ac55405ceef657ee50	dropTable tableName=azure_plan_csp_shared_accounts		\N	3.8.8	\N	\N	6219444743
1606219426870-49	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:23.441116	49	EXECUTED	8:bdba4bf052f8452e3991bcaf45c5105e	dropTable tableName=customer_integrations		\N	3.8.8	\N	\N	6219444743
1606219426870-50	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:23.856546	50	EXECUTED	8:7dc5dd4c96007cb06ad1215d8257ce88	dropTable tableName=description		\N	3.8.8	\N	\N	6219444743
1606219426870-51	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:24.220232	51	EXECUTED	8:e1959f94804b02dac26335be9650d05f	dropTable tableName=layer		\N	3.8.8	\N	\N	6219444743
1606219426870-52	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:24.600103	52	EXECUTED	8:0e080780b31eb66573c433afffb94a55	dropTable tableName=layer_attribute		\N	3.8.8	\N	\N	6219444743
1606219426870-53	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:25.001481	53	EXECUTED	8:19a5beb611125dc17d73c6bfc098772f	dropTable tableName=master_policies		\N	3.8.8	\N	\N	6219444743
1606219426870-54	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:25.321768	54	EXECUTED	8:a81d05fc4920f18b9aa51fb4cca0ab9d	dropTable tableName=tenants_whitelabel		\N	3.8.8	\N	\N	6219444743
1606219426870-55	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:25.620397	55	EXECUTED	8:dc734d367402a2b0c01f0ac7f71ac05b	dropTable tableName=views		\N	3.8.8	\N	\N	6219444743
1606219426870-56	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:25.942896	56	EXECUTED	8:422c47e54a3bd1f4bc76a567e470a2a8	dropTable tableName=whitelabel_config		\N	3.8.8	\N	\N	6219444743
1606219426870-57	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:26.25728	57	EXECUTED	8:b29cc55e14ce218fe9234775f3f2b216	dropTable tableName=widget_api		\N	3.8.8	\N	\N	6219444743
1606219426870-58	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-0650.changelog.xml	2020-11-24 12:04:26.599244	58	EXECUTED	8:569f6ef5b04f33bb7bd8a545f99687f5	dropTable tableName=widgets		\N	3.8.8	\N	\N	6219444743
1606224907701-1	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:23.19022	59	EXECUTED	8:0e6f1c24c018b416467a5e6518cef02d	createTable tableName=tenants_whitelabel		\N	3.8.8	\N	\N	6224922232
1606224907701-2	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:23.642202	60	EXECUTED	8:603eb22fdfc9893384ec48b0ee947050	createTable tableName=whitelabel_config		\N	3.8.8	\N	\N	6224922232
1606224907701-3	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:24.001934	61	EXECUTED	8:10c63f23804bc66313c7a4e8e2d13cec	createTable tableName=widget_api		\N	3.8.8	\N	\N	6224922232
1606224907701-4	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:24.486924	62	EXECUTED	8:5a81dfc9ffbfd1dd0cdd8db42bcec73a	createTable tableName=azure_ea_accounts		\N	3.8.8	\N	\N	6224922232
1606224907701-5	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:24.831646	63	EXECUTED	8:c948a82cd7f6b60d37ef165fd75312ec	createTable tableName=azure_ea_shared_accounts		\N	3.8.8	\N	\N	6224922232
1606224907701-6	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:25.227021	64	EXECUTED	8:2460ccb13afa7f63da22d40741a8241d	createTable tableName=customer_integrations		\N	3.8.8	\N	\N	6224922232
1606224907701-7	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:25.683363	65	EXECUTED	8:4a69097c1e656c1700aa4917c23b0b1a	createTable tableName=master_policies		\N	3.8.8	\N	\N	6224922232
1606224907701-8	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:26.106998	66	EXECUTED	8:065f0dfb0c6e23d082728c2cf5415fda	createTable tableName=layer		\N	3.8.8	\N	\N	6224922232
1606224907701-9	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:26.511974	67	EXECUTED	8:c2df42d2c2bc866b9f8aed7903e37c8c	createTable tableName=azure_plan_csp_shared_accounts		\N	3.8.8	\N	\N	6224922232
1606224907701-10	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:26.99715	68	EXECUTED	8:862df2d7ffa03317909004a2d6eacf88	createTable tableName=acl_groups		\N	3.8.8	\N	\N	6224922232
1606224907701-11	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:27.356843	69	EXECUTED	8:c474570ba8e61ac3c2bb4d7f5567ac9b	createTable tableName=acl_group_widget		\N	3.8.8	\N	\N	6224922232
1606224907701-12	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:27.84745	70	EXECUTED	8:64b408e18e4c7fd653783cdeb272a2e8	createTable tableName=azure_plan_csp_accounts		\N	3.8.8	\N	\N	6224922232
1606224907701-13	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:28.31693	71	EXECUTED	8:fe81194b689f16ccbbfc0a39a5949279	createTable tableName=aws_shared_accounts		\N	3.8.8	\N	\N	6224922232
1606224907701-14	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:28.677277	72	EXECUTED	8:b5659746184529f68639f2c0fdd1455d	createTable tableName=layer_attribute		\N	3.8.8	\N	\N	6224922232
1606224907701-15	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:29.092047	73	EXECUTED	8:df2d2ae9d9140872b15825256a158e04	createTable tableName=description		\N	3.8.8	\N	\N	6224922232
1606224907701-16	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:29.611584	74	EXECUTED	8:7c1717979f1a405c4fe6069c58649e49	createTable tableName=attribute		\N	3.8.8	\N	\N	6224922232
1606224907701-17	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:30.077248	75	EXECUTED	8:72a8c169d2920ed376512bd22a7e3a4f	createTable tableName=views		\N	3.8.8	\N	\N	6224922232
1606224907701-18	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:30.577003	76	EXECUTED	8:15f3f20f9b7a09d56dee66abedc8438d	createTable tableName=api		\N	3.8.8	\N	\N	6224922232
1606224907701-19	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:31.146781	77	EXECUTED	8:ffc0305bfb4fd4044aacba64f1fbd85d	createTable tableName=attribute_widget		\N	3.8.8	\N	\N	6224922232
1606224907701-20	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:31.616837	78	EXECUTED	8:047d51336b9e54121c00405ef65765fb	createTable tableName=api_packages		\N	3.8.8	\N	\N	6224922232
1606224907701-21	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:32.186936	79	EXECUTED	8:db789171af7add311cd14b6c223a06a4	createTable tableName=acl		\N	3.8.8	\N	\N	6224922232
1606224907701-22	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:32.596658	80	EXECUTED	8:ab04150ca4f7f1e3856d1a40de7df6c7	createTable tableName=aws_accounts		\N	3.8.8	\N	\N	6224922232
1606224907701-23	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:33.102238	81	EXECUTED	8:5c523425ef81d92c4e33b45c2e2009ef	createTable tableName=widgets		\N	3.8.8	\N	\N	6224922232
1606224907701-24	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:34.036878	82	EXECUTED	8:470270cca6f0f37d2c23c36a7c934a2c	addUniqueConstraint constraintName=uc_whitelabel_configdomain_email_col, tableName=whitelabel_config		\N	3.8.8	\N	\N	6224922232
1606224907701-25	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:34.871873	83	EXECUTED	8:8d7c0f32c8b7ddb626c66f32f135f8f6	addUniqueConstraint constraintName=uc_whitelabel_configdomain_id_col, tableName=whitelabel_config		\N	3.8.8	\N	\N	6224922232
1606224907701-26	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:35.311505	84	EXECUTED	8:a46d8ffada837c3333dd9bf2647ef507	addUniqueConstraint constraintName=UKbnf5746na7ia5waiqpao62eu7, tableName=whitelabel_config		\N	3.8.8	\N	\N	6224922232
1606224907701-27	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:35.676832	85	EXECUTED	8:3b5b75a001bdf4b9dca0849e3e53ff7c	addUniqueConstraint constraintName=UK3qwp8x7q53xjcg17k215m1dcq, tableName=widget_api		\N	3.8.8	\N	\N	6224922232
1606224907701-28	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:36.297139	86	EXECUTED	8:aa9c8788edffe2c77d4bbe6d297f6c93	addForeignKeyConstraint baseTableName=azure_ea_shared_accounts, constraintName=FKhtojm57oktgouktk6s93r8j9k, referencedTableName=azure_ea_accounts		\N	3.8.8	\N	\N	6224922232
1606224907701-29	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:36.721629	87	EXECUTED	8:e816d6d00a5ff24f0382a8e11b1a6db3	addUniqueConstraint constraintName=UKrhfkak4in603j26mjn8im630d, tableName=azure_ea_shared_accounts		\N	3.8.8	\N	\N	6224922232
1606224907701-30	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:37.34175	88	EXECUTED	8:00f8aa0262d79751febc70da8d22b1e9	addUniqueConstraint constraintName=UK2cwaqxwtstrwfd1a4yjngx5a7, tableName=customer_integrations		\N	3.8.8	\N	\N	6224922232
1606224907701-31	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:37.756832	89	EXECUTED	8:03a0d7d327a9a46995d4e4a1ebd374c3	addUniqueConstraint constraintName=UK5yigbj5031w7igomvxwmt6qup, tableName=azure_plan_csp_shared_accounts		\N	3.8.8	\N	\N	6224922232
1606224907701-32	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:38.126894	90	EXECUTED	8:a8cdb190a0cd690634acd12d78476e63	addForeignKeyConstraint baseTableName=acl_group_widget, constraintName=FK6xi3p18x4710p4tfbtur60xth, referencedTableName=acl_groups		\N	3.8.8	\N	\N	6224922232
1606224907701-33	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:38.751494	91	EXECUTED	8:cadcdb8ee68d5a841517fc30a4c6aba3	addUniqueConstraint constraintName=UK4ku751l7h7q1rp4f137y1ik0i, tableName=acl_groups		\N	3.8.8	\N	\N	6224922232
1606224907701-34	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:39.197073	92	EXECUTED	8:1f01934befd2a9d86e0351be5b37d9e3	addUniqueConstraint constraintName=UKowjrpc4b8hthtxhnohcik8qq6, tableName=acl_group_widget		\N	3.8.8	\N	\N	6224922232
1606224907701-35	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:40.037105	93	EXECUTED	8:e7c5e1119eedb925cc77d1b3b381f48d	addForeignKeyConstraint baseTableName=azure_plan_csp_shared_accounts, constraintName=FKehfoexp6eaq3lij9c1h6i5fgo, referencedTableName=azure_plan_csp_accounts		\N	3.8.8	\N	\N	6224922232
1606224907701-36	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:40.656655	94	EXECUTED	8:99792dc15bf58cf19f1091e7f5001ec8	addUniqueConstraint constraintName=UKerjgn9wsspdj6mn1q6vbpd9mn, tableName=aws_shared_accounts		\N	3.8.8	\N	\N	6224922232
1606224907701-37	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:41.321731	95	EXECUTED	8:5a658376d5b5c163e9bb2c5250aff55c	addForeignKeyConstraint baseTableName=layer_attribute, constraintName=FKtkbc8rfixffr0xqediq1yebnq, referencedTableName=layer		\N	3.8.8	\N	\N	6224922232
1606224907701-38	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:41.797124	96	EXECUTED	8:1a6f9c8c87bc5bdbc115a78a912a3a9c	addUniqueConstraint constraintName=UKmro7qu5ul7b9vgb7uia71j0a0, tableName=layer_attribute		\N	3.8.8	\N	\N	6224922232
1606224907701-39	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:42.387112	97	EXECUTED	8:9a49097cd731fffff27046e426c25147	addForeignKeyConstraint baseTableName=views, constraintName=FKfnjomkc9igjlnkbywvwssdpir, referencedTableName=attribute		\N	3.8.8	\N	\N	6224922232
1606224907701-40	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:42.796637	98	EXECUTED	8:1c052851e6b129f77c4efad7c45122dd	addForeignKeyConstraint baseTableName=attribute_widget, constraintName=FKj5te9iprqyhewdfxjb0mj30nm, referencedTableName=attribute		\N	3.8.8	\N	\N	6224922232
1606224907701-41	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:43.761899	99	EXECUTED	8:35da1196da251976cc24efe61056a383	addForeignKeyConstraint baseTableName=layer_attribute, constraintName=FKo2yh3o8nu8fe80tw7s2md25sc, referencedTableName=attribute		\N	3.8.8	\N	\N	6224922232
1606224907701-42	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:44.197248	100	EXECUTED	8:86a29c5f8c4fe7c125b7bc7c672548ce	addForeignKeyConstraint baseTableName=views, constraintName=FK58nm9y6m87h806cbdp34fs4au, referencedTableName=master_policies		\N	3.8.8	\N	\N	6224922232
1606224907701-43	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:44.632198	101	EXECUTED	8:19d40bad54e8fa7710a0d61978610e45	addForeignKeyConstraint baseTableName=views, constraintName=FKb50cc6a11fxcigmx0knry9syw, referencedTableName=layer		\N	3.8.8	\N	\N	6224922232
1606224907701-44	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:45.151878	102	EXECUTED	8:a8d97b8a00eeb00386a11698dc85e4d6	addUniqueConstraint constraintName=UK_cpxijx9g61a0n1n08ahn5ki7r, tableName=views		\N	3.8.8	\N	\N	6224922232
1606224907701-45	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:45.551944	103	EXECUTED	8:c2742fcb740662051a4c94261b8687a9	addForeignKeyConstraint baseTableName=widget_api, constraintName=FKqd44vfy6l2fqbhbtigg1untcm, referencedTableName=api		\N	3.8.8	\N	\N	6224922232
1606224907701-46	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:46.022158	104	EXECUTED	8:ef5c60b73203176b06693aee6d3c1333	addUniqueConstraint constraintName=UKmxp6103jl8o5yyd1iqeudcqah, tableName=api		\N	3.8.8	\N	\N	6224922232
1606224907701-47	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:46.802508	105	EXECUTED	8:d460acfb64f1b7f71bde4a0e254d4b01	addUniqueConstraint constraintName=UKacw2gxp7npbafd8l3yv0cl6la, tableName=attribute_widget		\N	3.8.8	\N	\N	6224922232
1606224907701-48	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:47.182273	106	EXECUTED	8:70f54168c6d46f7506450f4663a1cac1	addForeignKeyConstraint baseTableName=api, constraintName=FKtbkf31ujdjlfkbeccsuctmyb7, referencedTableName=api_packages		\N	3.8.8	\N	\N	6224922232
1606224907701-49	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:47.882074	107	EXECUTED	8:f7a8a2b1eee42b38d541033622161596	addUniqueConstraint constraintName=uc_api_packagespackage_name_col, tableName=api_packages		\N	3.8.8	\N	\N	6224922232
1606224907701-50	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:48.391889	108	EXECUTED	8:894ed59b7c2e302709c85a22394f0018	addForeignKeyConstraint baseTableName=acl_groups, constraintName=FKdxq3wg5u8cawl9rqs3q0m3cdl, referencedTableName=acl		\N	3.8.8	\N	\N	6224922232
1606224907701-51	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:48.831514	109	EXECUTED	8:85f88e12f445bd4ac4253a8d5e587136	addForeignKeyConstraint baseTableName=views, constraintName=FKjteycx3p07hbbx7vfjescdj42, referencedTableName=acl		\N	3.8.8	\N	\N	6224922232
1606224907701-52	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:49.227633	110	EXECUTED	8:a8ebde97b71974553a69cb4d403b4fc9	addForeignKeyConstraint baseTableName=aws_shared_accounts, constraintName=FKcf89qrvk9r6aq4trdki6v5gch, referencedTableName=aws_accounts		\N	3.8.8	\N	\N	6224922232
1606224907701-53	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:49.612044	111	EXECUTED	8:247e0c51b0242499450ffa00623aa013	addUniqueConstraint constraintName=UK_r0qg0ck6ocu8ryi4xeiwuiq3y, tableName=widgets		\N	3.8.8	\N	\N	6224922232
1606224907701-54	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:50.13124	112	EXECUTED	8:99c1a4f3d4f1c2ebe00d841652757844	addForeignKeyConstraint baseTableName=tenants_whitelabel, constraintName=FKiafot0mh5qeuhndmgtkorhe3s, referencedTableName=whitelabel_config		\N	3.8.8	\N	\N	6224922232
1606224907701-55	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:50.721836	113	EXECUTED	8:7ad7e21a9dd745364c9e8f25b4230677	addForeignKeyConstraint baseTableName=widget_api, constraintName=FKid7qx7d2e5flqfy0re9h5fhba, referencedTableName=widgets		\N	3.8.8	\N	\N	6224922232
1606224907701-56	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:51.071885	114	EXECUTED	8:efab6cef1e90dddf94c29fe4ba4d3f12	addForeignKeyConstraint baseTableName=customer_integrations, constraintName=FKp8q2wolwt7h06moja6hmxeouc, referencedTableName=widgets		\N	3.8.8	\N	\N	6224922232
1606224907701-57	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:51.632192	115	EXECUTED	8:21bd0dd3a973f26629c21190096fa63a	addForeignKeyConstraint baseTableName=acl_group_widget, constraintName=FK5njqxdf61yg08jb3p1ic24nna, referencedTableName=widgets		\N	3.8.8	\N	\N	6224922232
1606224907701-58	prog (generated)	file:C:/Users/prog/AppData/Local/Temp/db-final-global-20201124-1322.changelog.xml	2020-11-24 13:35:51.941536	116	EXECUTED	8:2c2a36430b53678810cb3a45f7fbf94d	addForeignKeyConstraint baseTableName=attribute_widget, constraintName=FKkkcdgp3a2hk8vvmmoav08a2rs, referencedTableName=widgets		\N	3.8.8	\N	\N	6224922232
\.


--
-- TOC entry 4089 (class 0 OID 65858)
-- Dependencies: 211
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.databasechangeloglock (id, locked, lockgranted, lockedby) FROM stdin;
1	f	\N	\N
\.


--
-- TOC entry 4090 (class 0 OID 65861)
-- Dependencies: 212
-- Data for Name: default_filter_config; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.default_filter_config (id, class_type, default_value, "position") FROM stdin;
\.


--
-- TOC entry 4091 (class 0 OID 65867)
-- Dependencies: 213
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.description (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, desc_sort_key, heading, "position", show_heading, type, value) FROM stdin;
\.


--
-- TOC entry 4092 (class 0 OID 65873)
-- Dependencies: 214
-- Data for Name: filter_config_widget; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filter_config_widget (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, filter_config_id, filter_type, widget_id) FROM stdin;
\.


--
-- TOC entry 4093 (class 0 OID 65879)
-- Dependencies: 215
-- Data for Name: filters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filters (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, api_id, filter_json, label, list_data, placeholder, selector, type, version) FROM stdin;
\.


--
-- TOC entry 4094 (class 0 OID 65885)
-- Dependencies: 216
-- Data for Name: layer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.layer (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, name) FROM stdin;
e8478668-22cc-4d22-8b1a-f337ade6839e	LayerEntity	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:20:43.846851+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:20:43.846851+00	Clouds
49187016-ace9-4853-a33b-2490ec2af4b7	LayerEntity	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:20:43.872574+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:20:43.872574+00	Modules
\.


--
-- TOC entry 4095 (class 0 OID 65891)
-- Dependencies: 217
-- Data for Name: layer_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.layer_attribute (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, attribute_id, is_layer_first, layer_id, "position") FROM stdin;
d2ab8076-d1a5-4efd-aeed-71dadb249a9e	LayerAttributeMapping	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:20:43.871575+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:20:43.871575+00	6f9c8f33-3af8-42f9-b271-9eb9f8b5bff5	t	e8478668-22cc-4d22-8b1a-f337ade6839e	0
78a23ad9-6701-4119-aa69-16a2c6857dd0	LayerAttributeMapping	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:20:43.873597+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:20:43.873597+00	6f9c8f33-3af8-42f9-b271-9eb9f8b5bff5	f	49187016-ace9-4853-a33b-2490ec2af4b7	0
0b962d64-eb6f-4d41-b368-c0ea0b8175bf	LayerAttributeMapping	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:20:43.875564+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:20:43.875564+00	2a7ca46e-2685-4976-8667-f2f8c9eea93a	t	49187016-ace9-4853-a33b-2490ec2af4b7	0
\.


--
-- TOC entry 4096 (class 0 OID 65897)
-- Dependencies: 218
-- Data for Name: master_policies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.master_policies (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, allowed_apis, associations, denied_apis, policy_name, referred_policy) FROM stdin;
a4bff1d4-da0b-4b8e-a533-618b8d8c0655	MasterPolicy	e947d6f5_6a35_4dc8_8c8a_33ed08e1146e@centilytics-serviceuser.com	e947d6f5-6a35-4dc8-8c8a-33ed08e1146e	2020-11-24 14:23:27.317727+00	e947d6f5_6a35_4dc8_8c8a_33ed08e1146e@centilytics-serviceuser.com	e947d6f5-6a35-4dc8-8c8a-33ed08e1146e	2020-11-24 14:23:27.317727+00	{}	{}	{}	Self_Policy_[e947d6f5-6a35-4dc8-8c8a-33ed08e1146e]	{}
8271429d-2d82-4e81-8df4-46ead3fcd3c3	MasterPolicy	7c67b701_3fb9_47f5_961f_51aff518a030@centilytics-serviceuser.com	7c67b701-3fb9-47f5-961f-51aff518a030	2020-11-24 14:46:37.186956+00	7c67b701_3fb9_47f5_961f_51aff518a030@centilytics-serviceuser.com	7c67b701-3fb9-47f5-961f-51aff518a030	2020-11-24 14:46:37.186956+00	{}	{}	{}	Self_Policy_[7c67b701-3fb9-47f5-961f-51aff518a030]	{}
9cff0472-74ad-406f-87b0-1ea1315414bb	MasterPolicy	f4ebb076_64dc_4054_beaf_d592d33bae83@centilytics-serviceuser.com	f4ebb076-64dc-4054-beaf-d592d33bae83	2020-11-24 14:57:41.39053+00	f4ebb076_64dc_4054_beaf_d592d33bae83@centilytics-serviceuser.com	f4ebb076-64dc-4054-beaf-d592d33bae83	2020-11-24 14:57:41.39053+00	{}	{}	{}	Self_Policy_[f4ebb076-64dc-4054-beaf-d592d33bae83]	{}
e0a3d566-6ab9-4646-80ff-540e4981062b	MasterPolicy	c407ae21_00b2_4996_9d28_1982ed72a4c4@centilytics-serviceuser.com	c407ae21-00b2-4996-9d28-1982ed72a4c4	2020-12-01 08:14:35.099796+00	c407ae21_00b2_4996_9d28_1982ed72a4c4@centilytics-serviceuser.com	c407ae21-00b2-4996-9d28-1982ed72a4c4	2020-12-01 08:14:35.099796+00	{}	{}	{}	Self_Policy_[c407ae21-00b2-4996-9d28-1982ed72a4c4]	{}
8c28798d-8b4b-40c3-a1bd-113081155d56	MasterPolicy	29a5626d_9d25_4771_b621_201132b474b4@centilytics-serviceuser.com	29a5626d-9d25-4771-b621-201132b474b4	2020-12-01 11:00:21.604132+00	29a5626d_9d25_4771_b621_201132b474b4@centilytics-serviceuser.com	29a5626d-9d25-4771-b621-201132b474b4	2020-12-01 11:00:21.604132+00	{}	{}	{}	Self_Policy_[29a5626d-9d25-4771-b621-201132b474b4]	{}
f0f211e5-90db-4c4f-9fec-42bed9433c2f	MasterPolicy	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:20:45.808385+00	sandeepkmr9696@gmail.com	7c67b701-3fb9-47f5-961f-51aff518a030	2020-12-01 11:00:21.93516+00	{c65e285f-dca8-49a0-b775-c9cee1f4b348}	{0c2d7a7f-5c88-436e-aef6-d8913bf2af8f,e947d6f5-6a35-4dc8-8c8a-33ed08e1146e,7c67b701-3fb9-47f5-961f-51aff518a030,f4ebb076-64dc-4054-beaf-d592d33bae83,c407ae21-00b2-4996-9d28-1982ed72a4c4,29a5626d-9d25-4771-b621-201132b474b4}	{}	viewOnboarding	{504cbc74-9ad7-4338-97f8-94dfc4b5e46i,70d98fd6-f914-4f4d-b5b3-231765b557fa}
\.


--
-- TOC entry 4097 (class 0 OID 65903)
-- Dependencies: 219
-- Data for Name: saml_domain_mapping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.saml_domain_mapping (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, domain_name, saml_integration_entity_id) FROM stdin;
\.


--
-- TOC entry 4098 (class 0 OID 65909)
-- Dependencies: 220
-- Data for Name: saml_integrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.saml_integrations (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, base_url, configuration_name, email_attribute, ignored_email_ids, origin, role_attribute, saml_metadata_file, saml_metadata_url) FROM stdin;
\.


--
-- TOC entry 4099 (class 0 OID 65915)
-- Dependencies: 221
-- Data for Name: temporary_filters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temporary_filters (filter_id, filter_type, service) FROM stdin;
\.


--
-- TOC entry 4100 (class 0 OID 65921)
-- Dependencies: 222
-- Data for Name: tenants_whitelabel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tenants_whitelabel (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, tenant_id, whitelabel_id) FROM stdin;
\.


--
-- TOC entry 4101 (class 0 OID 65927)
-- Dependencies: 223
-- Data for Name: views; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.views (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, acl_id, layer_id, name, policy_id, tags, landing_page_id) FROM stdin;
13127e39-83ec-4956-b052-7e4385d42a56	View	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:20:46.250425+00	shubham2600@gmail.com	0c2d7a7f-5c88-436e-aef6-d8913bf2af8f	2020-11-24 14:20:46.250425+00	baea8af8-5302-4a8e-882c-9f7934b003d8	e8478668-22cc-4d22-8b1a-f337ade6839e	viewOnboarding	f0f211e5-90db-4c4f-9fec-42bed9433c2f	\N	2a7ca46e-2685-4976-8667-f2f8c9eea93a
\.


--
-- TOC entry 4102 (class 0 OID 65933)
-- Dependencies: 224
-- Data for Name: whitelabel_config; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.whitelabel_config (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, domain_id, image_config, domain_config, domain_email, email_config, email_verified, social_media_url, theme_config) FROM stdin;
\.


--
-- TOC entry 4103 (class 0 OID 65939)
-- Dependencies: 225
-- Data for Name: widget_api; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.widget_api (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, api_id, widget_id) FROM stdin;
93d80d3b-adf4-4217-ac92-1222cb5dd857	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:08:51.314641+00	email	SERVICE_TENANT	2020-12-14 06:08:51.314641+00	0ffe5847-8d9e-45a7-b30e-2e2d4e5a97e6	6f291b81-6003-4612-9a09-805a0f28514a
3409ff5b-9108-430f-a1cd-718d78572d5c	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:08:51.315677+00	email	SERVICE_TENANT	2020-12-14 06:08:51.315677+00	bc0d4ea7-6114-4576-9c19-a27fceb6bfa7	6f291b81-6003-4612-9a09-805a0f28514a
a2309632-18eb-4e2a-b0eb-3cdcbac97fb7	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:08:51.316643+00	email	SERVICE_TENANT	2020-12-14 06:08:51.316643+00	6430ca48-c3b0-48e1-bfa6-83e4c052c5b9	6f291b81-6003-4612-9a09-805a0f28514a
9ede186c-f5c8-4224-9c4e-33daf3163d8b	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:08:51.31764+00	email	SERVICE_TENANT	2020-12-14 06:08:51.31764+00	23bb9a56-920e-4148-b0cb-a999d6e40fbe	6f291b81-6003-4612-9a09-805a0f28514a
cf45f553-ac46-435e-8ff5-e545d14dde09	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:08:53.545583+00	email	SERVICE_TENANT	2020-12-14 06:08:53.545583+00	b7ba7788-2a7f-426a-b553-6ba96e392218	064ad0e1-154e-4838-8806-beb3ba218dc5
e3336b7a-5347-403b-b4bb-584ff83b8cc8	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:08:53.548581+00	email	SERVICE_TENANT	2020-12-14 06:08:53.548581+00	b9dbb30a-a763-4e28-ad08-ee156e07e564	064ad0e1-154e-4838-8806-beb3ba218dc5
13273938-045a-4dec-9a3e-924037b78b70	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:08:53.550582+00	email	SERVICE_TENANT	2020-12-14 06:08:53.550582+00	93408c10-0b5f-4664-abf3-3f1455599d94	064ad0e1-154e-4838-8806-beb3ba218dc5
e9c94d02-0a85-4e90-b2b0-2bc9a891419c	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:08:53.552584+00	email	SERVICE_TENANT	2020-12-14 06:08:53.552584+00	4e276ae1-2142-446c-b4a5-8b6542b48852	064ad0e1-154e-4838-8806-beb3ba218dc5
73374694-3293-446f-9157-e1d7410add3b	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:08:55.879622+00	email	SERVICE_TENANT	2020-12-14 06:08:55.879622+00	b4746112-dcc4-4f1a-b287-1f4164dcb8db	fcfdfb87-0065-4318-9163-41ebe00d8971
de3dab90-b039-4c02-8630-62f8c2bdab26	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:08:55.879622+00	email	SERVICE_TENANT	2020-12-14 06:08:55.879622+00	2a24b003-1ad4-45e5-ac6b-89cf175bd306	fcfdfb87-0065-4318-9163-41ebe00d8971
37ba7005-4d76-4d77-a537-2e61a11e90e9	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:08:55.880618+00	email	SERVICE_TENANT	2020-12-14 06:08:55.880618+00	e570acf4-6cae-4368-86e5-777c7ad5e875	fcfdfb87-0065-4318-9163-41ebe00d8971
6b590d9a-7ece-42a3-b49c-0e84875e6717	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:08:55.880618+00	email	SERVICE_TENANT	2020-12-14 06:08:55.880618+00	7cfdb1b1-892c-4837-9821-908a314e3626	fcfdfb87-0065-4318-9163-41ebe00d8971
64547f44-32fc-49b1-ad82-e4f4ac180d15	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:08:58.913822+00	email	SERVICE_TENANT	2020-12-14 06:08:58.913822+00	9cb5e221-e1d5-4fc5-abcc-ffc0477b375f	20634973-fc28-41c5-89de-07336a87e702
c87a6b1a-e13f-4ea7-ba78-8f62b642e9ed	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:08:58.915825+00	email	SERVICE_TENANT	2020-12-14 06:08:58.915825+00	f7ec7167-d64b-49cf-a9c7-42845cd2da4a	20634973-fc28-41c5-89de-07336a87e702
a60bdf64-02f5-4c30-a4fa-829631f6b3ea	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:08:58.918846+00	email	SERVICE_TENANT	2020-12-14 06:08:58.918846+00	1e042e01-a301-4974-ac6f-d7ff9489189e	20634973-fc28-41c5-89de-07336a87e702
ff0e35d5-47d8-486f-b86e-537db468fa2a	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:08:58.922805+00	email	SERVICE_TENANT	2020-12-14 06:08:58.922805+00	ede2e862-14c9-4aa2-8215-f5c23e5de781	20634973-fc28-41c5-89de-07336a87e702
a7e725c3-240e-46dd-a4c5-9b5744da9903	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:08:58.925771+00	email	SERVICE_TENANT	2020-12-14 06:08:58.925771+00	405c653f-3ba9-4ee2-a64b-30520e153199	20634973-fc28-41c5-89de-07336a87e702
67b48c84-232f-4f43-98ba-11426b09c811	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:08:58.927773+00	email	SERVICE_TENANT	2020-12-14 06:08:58.927773+00	0dcc784e-08c9-4897-b03a-6fc8d8d966eb	20634973-fc28-41c5-89de-07336a87e702
1eb8a5de-a3e9-4a5d-9d73-754ae3b7c6c0	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:01.30698+00	email	SERVICE_TENANT	2020-12-14 06:09:01.30698+00	2aeb5c65-ca73-4f81-baa5-e49155428d73	601433d7-382f-4291-9b98-2a74a167718f
7abbc503-4796-4fcf-9300-60ceae19f8bc	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:01.30898+00	email	SERVICE_TENANT	2020-12-14 06:09:01.30898+00	1533eea7-87d2-4d64-b01d-5eebe0b12b4d	601433d7-382f-4291-9b98-2a74a167718f
2ce92e7d-48de-4241-b001-41b229128824	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:01.310977+00	email	SERVICE_TENANT	2020-12-14 06:09:01.310977+00	52443438-51dd-4f06-b794-205e16ffec89	601433d7-382f-4291-9b98-2a74a167718f
a248f49e-f92e-48c3-a26f-c839344aaa58	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:01.312974+00	email	SERVICE_TENANT	2020-12-14 06:09:01.312974+00	1a7673a4-7242-4789-84f7-e9da39362ca9	601433d7-382f-4291-9b98-2a74a167718f
0371562a-ef31-484e-9dbd-ad8b38e0416f	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:03.840596+00	email	SERVICE_TENANT	2020-12-14 06:09:03.840596+00	e45c5151-d98c-40bf-bff7-05cfad94c0ec	1384f9af-47d3-40ba-a5b0-964d7eec2b96
ffe4ec91-b1ae-4ecb-be44-7ed5c271b27d	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:03.84354+00	email	SERVICE_TENANT	2020-12-14 06:09:03.84354+00	4f3553a3-c413-4b41-b453-c45a04bda195	1384f9af-47d3-40ba-a5b0-964d7eec2b96
fccea5fe-344c-47eb-bfc8-b2c717fecc6e	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:03.846544+00	email	SERVICE_TENANT	2020-12-14 06:09:03.846544+00	db6043fd-e2ea-483e-b6fb-839010e0052e	1384f9af-47d3-40ba-a5b0-964d7eec2b96
25323ef0-41e3-4cc3-bc8c-1ecf5ede8720	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:03.849534+00	email	SERVICE_TENANT	2020-12-14 06:09:03.849534+00	0973614a-d3c5-4ce4-90e7-979a87740f05	1384f9af-47d3-40ba-a5b0-964d7eec2b96
c5251593-0d1c-47fa-8529-2949a037da09	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:06.425727+00	email	SERVICE_TENANT	2020-12-14 06:09:06.425727+00	7870dca8-2dbd-471a-81b8-9f9d471ddbe7	76d778a9-9fe4-44e4-a825-8ed18db24ecd
acbd444c-1d3c-4bdc-b44d-20d10d5f2e86	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:06.426725+00	email	SERVICE_TENANT	2020-12-14 06:09:06.426725+00	c0bac697-a7cb-4365-9c33-8c68a5fafd43	76d778a9-9fe4-44e4-a825-8ed18db24ecd
3ff1f044-cbed-4edc-9d7a-bb3a6d62d218	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:06.427725+00	email	SERVICE_TENANT	2020-12-14 06:09:06.427725+00	14f56488-961f-4e2b-823a-d48909647c58	76d778a9-9fe4-44e4-a825-8ed18db24ecd
1b59c47c-ae12-459b-aa4f-11366d927836	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:06.428726+00	email	SERVICE_TENANT	2020-12-14 06:09:06.428726+00	a1aadb45-9312-43db-beab-f317621ad94e	76d778a9-9fe4-44e4-a825-8ed18db24ecd
36d7c00b-d484-413a-9ac0-46d6a5dee969	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:06.429732+00	email	SERVICE_TENANT	2020-12-14 06:09:06.429732+00	cb2beb25-a7b7-408f-b991-32de133cfd40	76d778a9-9fe4-44e4-a825-8ed18db24ecd
67590105-8f71-4034-a7bb-8c92ae857420	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:09.213168+00	email	SERVICE_TENANT	2020-12-14 06:09:09.213168+00	8b25df2e-e08d-4bfc-9583-dd8f97f5f203	16d67eaf-8142-4b1c-b7c0-cae70761ddb0
392cd68f-bd09-45b2-9a04-7e85d6e891a7	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:09.214165+00	email	SERVICE_TENANT	2020-12-14 06:09:09.214165+00	b154c19d-0052-4257-b001-9d9f5e261a36	16d67eaf-8142-4b1c-b7c0-cae70761ddb0
9c7965bd-6dbc-4abf-ae14-8ede6ae0cf7f	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:09.215165+00	email	SERVICE_TENANT	2020-12-14 06:09:09.215165+00	7f9dac2d-5894-44f1-8bc2-8625dee51f9f	16d67eaf-8142-4b1c-b7c0-cae70761ddb0
398d1b3a-1223-45eb-8217-774e2e9287d2	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:09.216167+00	email	SERVICE_TENANT	2020-12-14 06:09:09.216167+00	afb462ae-ef8b-4ac3-b5e2-3d9bdde1d0b4	16d67eaf-8142-4b1c-b7c0-cae70761ddb0
dc55099e-0d4c-4c40-a7d1-560eeaff1859	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:09.217168+00	email	SERVICE_TENANT	2020-12-14 06:09:09.217168+00	ef8a9c3a-b3fe-4e71-a5d3-73d084473efd	16d67eaf-8142-4b1c-b7c0-cae70761ddb0
3a47efb5-5d55-4155-8460-1e352e5bdbaa	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:13.896328+00	email	SERVICE_TENANT	2020-12-14 06:09:13.896328+00	7c2a7bec-0f77-41bf-a5da-c3cadcf46e27	02f727e0-e0e4-4672-aa2c-026d3cbe183d
66a8470a-bef3-45de-885c-89d2e826d3d6	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:13.897328+00	email	SERVICE_TENANT	2020-12-14 06:09:13.897328+00	12752adc-d34b-493a-b319-929feb35bfc0	02f727e0-e0e4-4672-aa2c-026d3cbe183d
276d8517-cfbd-498b-bfad-901758b5c1c4	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:13.897328+00	email	SERVICE_TENANT	2020-12-14 06:09:13.897328+00	4e5c988c-065d-4480-a4b7-b5548b418e17	02f727e0-e0e4-4672-aa2c-026d3cbe183d
c8710328-d814-4d17-b56b-d6df55e28456	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:13.89833+00	email	SERVICE_TENANT	2020-12-14 06:09:13.89833+00	a0a23e8e-fa8b-4653-b554-5529ad3a1fc1	02f727e0-e0e4-4672-aa2c-026d3cbe183d
5da88370-2ae3-4b73-91a5-8d052d1c752d	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:13.900332+00	email	SERVICE_TENANT	2020-12-14 06:09:13.900332+00	8d252f27-f191-43af-b1b1-e03c482101f9	02f727e0-e0e4-4672-aa2c-026d3cbe183d
5b619c1d-3714-4655-b1b4-1741438f6e0a	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:13.901332+00	email	SERVICE_TENANT	2020-12-14 06:09:13.901332+00	0f26d72d-99b4-437c-992a-c651f93fc5d1	02f727e0-e0e4-4672-aa2c-026d3cbe183d
23a00c70-f326-44bb-bcc5-d875895ec90f	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:13.901332+00	email	SERVICE_TENANT	2020-12-14 06:09:13.901332+00	cfd4e511-c61c-44fe-9c92-b0acdcb1929a	02f727e0-e0e4-4672-aa2c-026d3cbe183d
8acbfea0-f051-47e2-8f56-441374be527c	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:13.902335+00	email	SERVICE_TENANT	2020-12-14 06:09:13.902335+00	878ad43c-c35d-412a-82ee-03aa9ae53369	02f727e0-e0e4-4672-aa2c-026d3cbe183d
1916d5e6-ce55-4780-a9df-a658e592bc2d	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:13.902335+00	email	SERVICE_TENANT	2020-12-14 06:09:13.902335+00	9834e620-8605-4183-997d-6e8b9b9b36f4	02f727e0-e0e4-4672-aa2c-026d3cbe183d
7c0eacdc-6ed5-4af9-b5e1-56857bcc165c	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:13.903333+00	email	SERVICE_TENANT	2020-12-14 06:09:13.903333+00	ec3dfacf-57fe-4770-87d0-9974631a3587	02f727e0-e0e4-4672-aa2c-026d3cbe183d
296cc03c-3911-4faa-9669-7f98fa96e1f2	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:17.596348+00	email	SERVICE_TENANT	2020-12-14 06:09:17.596348+00	2a69c850-865d-4577-b88a-f2c9fa72d826	aebc3201-dd2e-4f80-9e1e-48063bbaab05
37d624f1-5206-4b27-9bb1-6dda401d1d2c	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:17.598332+00	email	SERVICE_TENANT	2020-12-14 06:09:17.598332+00	b3482af1-0083-48df-ada8-ebb1a99c512a	aebc3201-dd2e-4f80-9e1e-48063bbaab05
af257c78-0937-4ddb-a867-3499b226c3bf	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:17.599342+00	email	SERVICE_TENANT	2020-12-14 06:09:17.599342+00	e2e94466-d3c3-4118-8fc5-9e600fbfa71a	aebc3201-dd2e-4f80-9e1e-48063bbaab05
c6af2754-5602-4d02-83ab-10ab845e0935	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:17.601341+00	email	SERVICE_TENANT	2020-12-14 06:09:17.601341+00	ed1e303a-b118-4662-a5d3-2bef5957d406	aebc3201-dd2e-4f80-9e1e-48063bbaab05
9d1e4ee1-36cc-4d1e-924e-bc6fca32ae92	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:17.602371+00	email	SERVICE_TENANT	2020-12-14 06:09:17.602371+00	3f4207f3-c0fb-4815-87dc-6c8e0900cc8d	aebc3201-dd2e-4f80-9e1e-48063bbaab05
806d9341-c53c-43d5-bdb3-e2621ad728a4	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:17.603326+00	email	SERVICE_TENANT	2020-12-14 06:09:17.603326+00	e6b42384-a695-4766-a6f8-71604ba2644d	aebc3201-dd2e-4f80-9e1e-48063bbaab05
8914cdea-3774-413e-8cf9-b1f6bc9ba970	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:17.604374+00	email	SERVICE_TENANT	2020-12-14 06:09:17.604374+00	bd18b0dc-2167-4c62-94a3-c7f09f67e8ce	aebc3201-dd2e-4f80-9e1e-48063bbaab05
6cd141f1-85c3-429a-8704-f1b60bbd5d18	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:20.772573+00	email	SERVICE_TENANT	2020-12-14 06:09:20.772573+00	f79db435-8b58-4746-8c67-7ca63c237eef	376e8a5a-d348-473f-b62a-600a9352f556
8f0e6f51-24bd-495b-8c57-963f08c7b419	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:20.772573+00	email	SERVICE_TENANT	2020-12-14 06:09:20.772573+00	45e35eaf-a4ca-4c57-ba9c-078579291107	376e8a5a-d348-473f-b62a-600a9352f556
277fea25-622b-4019-93f3-4f8c8b31ac21	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:20.773606+00	email	SERVICE_TENANT	2020-12-14 06:09:20.773606+00	cf91cdcb-6ddd-45f8-a380-b0d6b2cbac3b	376e8a5a-d348-473f-b62a-600a9352f556
8e86a29f-79b8-42b1-9452-b3842d03cf51	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:20.773606+00	email	SERVICE_TENANT	2020-12-14 06:09:20.773606+00	e5cf4d0b-89cb-4a9f-ac20-9532fbb2202b	376e8a5a-d348-473f-b62a-600a9352f556
967ffca6-0a56-426e-bddb-ee2872ed703b	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:20.774571+00	email	SERVICE_TENANT	2020-12-14 06:09:20.774571+00	7795e50b-d0c3-46ae-b5b8-7416d7bc36f6	376e8a5a-d348-473f-b62a-600a9352f556
d09ba340-8f2a-4de3-a2de-812e7b105459	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:20.774571+00	email	SERVICE_TENANT	2020-12-14 06:09:20.774571+00	b7cf817e-2365-4cc0-85f8-276208a926cc	376e8a5a-d348-473f-b62a-600a9352f556
c5d42dc1-7372-4dc8-aefe-2ec31fa682f5	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:23.021345+00	email	SERVICE_TENANT	2020-12-14 06:09:23.021345+00	e5a4d0c5-e176-409e-b4da-5779feca4b2e	084fadf9-3cf2-4af1-a8ed-417b391a7094
f4b8b8bd-1d7d-4a46-8f5c-bde08fe54e94	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:23.022382+00	email	SERVICE_TENANT	2020-12-14 06:09:23.022382+00	0467af97-ffbe-4180-994c-e0d28a190c41	084fadf9-3cf2-4af1-a8ed-417b391a7094
b9b10407-2404-4b02-97c7-bbee6f498ecf	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:23.023388+00	email	SERVICE_TENANT	2020-12-14 06:09:23.023388+00	f1ffcc93-81fe-4b8d-93ac-42c6521cc406	084fadf9-3cf2-4af1-a8ed-417b391a7094
f73529b9-8f40-4ac0-8977-9c74632d3ec6	WidgetApiMapping	email	SERVICE_TENANT	2020-12-14 06:09:23.023388+00	email	SERVICE_TENANT	2020-12-14 06:09:23.023388+00	8fd9c48e-60e0-4600-8513-10aac8b211eb	084fadf9-3cf2-4af1-a8ed-417b391a7094
d7fb5b46-37ba-479f-b4ed-3ca15b860197	WidgetApiMapping	sandeep@centilytics.com	e947d6f5-6a35-4dc8-8c8a-33ed08e1146e	2020-12-14 06:17:01.297075+00	sandeep@centilytics.com	e947d6f5-6a35-4dc8-8c8a-33ed08e1146e	2020-12-14 06:17:01.297075+00	19e8709b-17a6-4606-8069-9fc01f8cc718	8d0d7299-f732-438d-b812-20dfc109c200
\.


--
-- TOC entry 4104 (class 0 OID 65945)
-- Dependencies: 226
-- Data for Name: widgets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.widgets (id, class_type, created_by_email, created_by_tenant_id, created_date, last_modified_by_email, last_modified_by_tenant_id, updated_on, description_id, extra_info, portlet_type, portlet_version, supported_formats, widget_name) FROM stdin;
6f291b81-6003-4612-9a09-805a0f28514a	Widget	email	SERVICE_TENANT	2020-12-14 06:08:50.963803+00	email	SERVICE_TENANT	2020-12-14 06:08:50.963803+00	\N	\N	GMAIL_INTEGRATION	V1	\N	Gmail Integration
fcfdfb87-0065-4318-9163-41ebe00d8971	Widget	email	SERVICE_TENANT	2020-12-14 06:08:55.539092+00	email	SERVICE_TENANT	2020-12-14 06:08:55.539092+00	\N	\N	O365_INTEGRATION	V1	\N	O365 Integration
20634973-fc28-41c5-89de-07336a87e702	Widget	email	SERVICE_TENANT	2020-12-14 06:08:58.480798+00	email	SERVICE_TENANT	2020-12-14 06:08:58.480798+00	\N	\N	OTRS_INTEGRATION	V1	\N	OTRS Integration
601433d7-382f-4291-9b98-2a74a167718f	Widget	email	SERVICE_TENANT	2020-12-14 06:09:01.024925+00	email	SERVICE_TENANT	2020-12-14 06:09:01.024925+00	\N	\N	ZENDESK_INTEGRATION	V1	\N	Zendesk Integration
1384f9af-47d3-40ba-a5b0-964d7eec2b96	Widget	email	SERVICE_TENANT	2020-12-14 06:09:03.447732+00	email	SERVICE_TENANT	2020-12-14 06:09:03.447732+00	\N	\N	FRESHSERVICE_INTEGRATION	V1	\N	FreshService Integration
76d778a9-9fe4-44e4-a825-8ed18db24ecd	Widget	email	SERVICE_TENANT	2020-12-14 06:09:06.060233+00	email	SERVICE_TENANT	2020-12-14 06:09:06.060233+00	\N	\N	SERVICENOW_INTEGRATION	V1	\N	ServiceNow Integration
16d67eaf-8142-4b1c-b7c0-cae70761ddb0	Widget	email	SERVICE_TENANT	2020-12-14 06:09:08.831612+00	email	SERVICE_TENANT	2020-12-14 06:09:08.831612+00	\N	\N	SLACK_INTEGRATION	V1	\N	Slack Integration
02f727e0-e0e4-4672-aa2c-026d3cbe183d	Widget	email	SERVICE_TENANT	2020-12-14 06:09:12.99533+00	email	SERVICE_TENANT	2020-12-14 06:09:12.99533+00	\N	\N	SNS_INTEGRATION	V1	\N	SNS Integration
aebc3201-dd2e-4f80-9e1e-48063bbaab05	Widget	email	SERVICE_TENANT	2020-12-14 06:09:17.097651+00	email	SERVICE_TENANT	2020-12-14 06:09:17.097651+00	\N	\N	AUTOTASK_INTEGRATION	V1	\N	Autotask Integration
084fadf9-3cf2-4af1-a8ed-417b391a7094	Widget	email	SERVICE_TENANT	2020-12-14 06:09:22.69069+00	email	SERVICE_TENANT	2020-12-14 06:09:22.69069+00	\N	\N	JIRADESK_INTEGRATION	V1	\N	Jiradesk Integration
8d0d7299-f732-438d-b812-20dfc109c200	Widget	sandeep@centilytics.com	e947d6f5-6a35-4dc8-8c8a-33ed08e1146e	2020-12-14 06:17:01.230744+00	sandeep@centilytics.com	e947d6f5-6a35-4dc8-8c8a-33ed08e1146e	2020-12-14 06:17:01.230744+00	\N	\N	AUTOTASK_INTEGRATION	V1	\N	AUTOTASK Tickets
376e8a5a-d348-473f-b62a-600a9352f556	Widget	email	SERVICE_TENANT	2020-12-14 06:09:20.350146+00	email	SERVICE_TENANT	2020-12-14 06:09:20.350146+00	\N	\N	AWS_ACCOUNT_LISTING	V1	\N	CASDM Integration
064ad0e1-154e-4838-8806-beb3ba218dc5	Widget	email	SERVICE_TENANT	2020-12-14 06:08:53.268639+00	email	SERVICE_TENANT	2020-12-14 06:08:53.268639+00	\N	\N	VIEWS	V1	\N	FreshDesk Integration
\.


--
-- TOC entry 3872 (class 2606 OID 65952)
-- Name: customer_integrations UK2cwaqxwtstrwfd1a4yjngx5a7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_integrations
    ADD CONSTRAINT "UK2cwaqxwtstrwfd1a4yjngx5a7" UNIQUE (created_by_tenant_id, integration_type);


--
-- TOC entry 3924 (class 2606 OID 65954)
-- Name: widget_api UK3qwp8x7q53xjcg17k215m1dcq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.widget_api
    ADD CONSTRAINT "UK3qwp8x7q53xjcg17k215m1dcq" UNIQUE (widget_id, api_id);


--
-- TOC entry 3836 (class 2606 OID 65956)
-- Name: acl_groups UK4ku751l7h7q1rp4f137y1ik0i; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acl_groups
    ADD CONSTRAINT "UK4ku751l7h7q1rp4f137y1ik0i" UNIQUE (acl_id, name);


--
-- TOC entry 3868 (class 2606 OID 65958)
-- Name: azure_plan_csp_shared_accounts UK5yigbj5031w7igomvxwmt6qup; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.azure_plan_csp_shared_accounts
    ADD CONSTRAINT "UK5yigbj5031w7igomvxwmt6qup" UNIQUE (account_id, tenant_id);


--
-- TOC entry 3896 (class 2606 OID 65960)
-- Name: saml_domain_mapping UK8o9fd1dwp16ah6wns8xftkl9t; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saml_domain_mapping
    ADD CONSTRAINT "UK8o9fd1dwp16ah6wns8xftkl9t" UNIQUE (domain_name);


--
-- TOC entry 3910 (class 2606 OID 65962)
-- Name: views UK_cpxijx9g61a0n1n08ahn5ki7r; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.views
    ADD CONSTRAINT "UK_cpxijx9g61a0n1n08ahn5ki7r" UNIQUE (layer_id);


--
-- TOC entry 3928 (class 2606 OID 65964)
-- Name: widgets UK_r0qg0ck6ocu8ryi4xeiwuiq3y; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.widgets
    ADD CONSTRAINT "UK_r0qg0ck6ocu8ryi4xeiwuiq3y" UNIQUE (description_id);


--
-- TOC entry 3912 (class 2606 OID 65966)
-- Name: views UK_t06wl3s6dwn88agkrrl5pieu6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.views
    ADD CONSTRAINT "UK_t06wl3s6dwn88agkrrl5pieu6" UNIQUE (landing_page_id);


--
-- TOC entry 3850 (class 2606 OID 65968)
-- Name: attribute_widget UKacw2gxp7npbafd8l3yv0cl6la; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attribute_widget
    ADD CONSTRAINT "UKacw2gxp7npbafd8l3yv0cl6la" UNIQUE (attribute_id, widget_id);


--
-- TOC entry 3882 (class 2606 OID 65970)
-- Name: filter_config_widget UKagh7djvbbl578m3fs3ye670fb; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filter_config_widget
    ADD CONSTRAINT "UKagh7djvbbl578m3fs3ye670fb" UNIQUE (filter_config_id, widget_id);


--
-- TOC entry 3916 (class 2606 OID 65972)
-- Name: whitelabel_config UKbnf5746na7ia5waiqpao62eu7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.whitelabel_config
    ADD CONSTRAINT "UKbnf5746na7ia5waiqpao62eu7" UNIQUE (created_by_tenant_id);


--
-- TOC entry 3856 (class 2606 OID 65974)
-- Name: aws_shared_accounts UKerjgn9wsspdj6mn1q6vbpd9mn; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_shared_accounts
    ADD CONSTRAINT "UKerjgn9wsspdj6mn1q6vbpd9mn" UNIQUE (account_id, tenant_id);


--
-- TOC entry 3900 (class 2606 OID 65976)
-- Name: saml_integrations UKfid7jo8uu5fwp9rsab11ur369; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saml_integrations
    ADD CONSTRAINT "UKfid7jo8uu5fwp9rsab11ur369" UNIQUE (created_by_tenant_id, configuration_name);


--
-- TOC entry 3890 (class 2606 OID 65978)
-- Name: layer_attribute UKmro7qu5ul7b9vgb7uia71j0a0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layer_attribute
    ADD CONSTRAINT "UKmro7qu5ul7b9vgb7uia71j0a0" UNIQUE (layer_id, attribute_id);


--
-- TOC entry 3840 (class 2606 OID 65980)
-- Name: api UKmxp6103jl8o5yyd1iqeudcqah; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api
    ADD CONSTRAINT "UKmxp6103jl8o5yyd1iqeudcqah" UNIQUE (api_route_suffix, request_method);


--
-- TOC entry 3832 (class 2606 OID 65982)
-- Name: acl_group_widget UKowjrpc4b8hthtxhnohcik8qq6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acl_group_widget
    ADD CONSTRAINT "UKowjrpc4b8hthtxhnohcik8qq6" UNIQUE (acl_group_id, widget_id);


--
-- TOC entry 3862 (class 2606 OID 65984)
-- Name: azure_ea_shared_accounts UKrhfkak4in603j26mjn8im630d; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.azure_ea_shared_accounts
    ADD CONSTRAINT "UKrhfkak4in603j26mjn8im630d" UNIQUE (account_id, tenant_id);


--
-- TOC entry 3830 (class 2606 OID 65986)
-- Name: acl aclPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acl
    ADD CONSTRAINT "aclPK" PRIMARY KEY (id);


--
-- TOC entry 3834 (class 2606 OID 65988)
-- Name: acl_group_widget acl_group_widgetPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acl_group_widget
    ADD CONSTRAINT "acl_group_widgetPK" PRIMARY KEY (id);


--
-- TOC entry 3838 (class 2606 OID 65990)
-- Name: acl_groups acl_groupsPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acl_groups
    ADD CONSTRAINT "acl_groupsPK" PRIMARY KEY (id);


--
-- TOC entry 3842 (class 2606 OID 65992)
-- Name: api apiPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api
    ADD CONSTRAINT "apiPK" PRIMARY KEY (id);


--
-- TOC entry 3844 (class 2606 OID 65994)
-- Name: api_packages api_packagesPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_packages
    ADD CONSTRAINT "api_packagesPK" PRIMARY KEY (package_id);


--
-- TOC entry 3848 (class 2606 OID 65996)
-- Name: attribute attributePK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attribute
    ADD CONSTRAINT "attributePK" PRIMARY KEY (id);


--
-- TOC entry 3852 (class 2606 OID 65998)
-- Name: attribute_widget attribute_widgetPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attribute_widget
    ADD CONSTRAINT "attribute_widgetPK" PRIMARY KEY (id);


--
-- TOC entry 3854 (class 2606 OID 66000)
-- Name: aws_accounts aws_accountsPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_accounts
    ADD CONSTRAINT "aws_accountsPK" PRIMARY KEY (id);


--
-- TOC entry 3858 (class 2606 OID 66002)
-- Name: aws_shared_accounts aws_shared_accountsPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_shared_accounts
    ADD CONSTRAINT "aws_shared_accountsPK" PRIMARY KEY (id);


--
-- TOC entry 3860 (class 2606 OID 66004)
-- Name: azure_ea_accounts azure_ea_accountsPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.azure_ea_accounts
    ADD CONSTRAINT "azure_ea_accountsPK" PRIMARY KEY (id);


--
-- TOC entry 3864 (class 2606 OID 66006)
-- Name: azure_ea_shared_accounts azure_ea_shared_accountsPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.azure_ea_shared_accounts
    ADD CONSTRAINT "azure_ea_shared_accountsPK" PRIMARY KEY (id);


--
-- TOC entry 3866 (class 2606 OID 66008)
-- Name: azure_plan_csp_accounts azure_plan_csp_accountsPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.azure_plan_csp_accounts
    ADD CONSTRAINT "azure_plan_csp_accountsPK" PRIMARY KEY (id);


--
-- TOC entry 3870 (class 2606 OID 66010)
-- Name: azure_plan_csp_shared_accounts azure_plan_csp_shared_accountsPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.azure_plan_csp_shared_accounts
    ADD CONSTRAINT "azure_plan_csp_shared_accountsPK" PRIMARY KEY (id);


--
-- TOC entry 3874 (class 2606 OID 66012)
-- Name: customer_integrations customer_integrationsPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_integrations
    ADD CONSTRAINT "customer_integrationsPK" PRIMARY KEY (id);


--
-- TOC entry 3876 (class 2606 OID 66014)
-- Name: databasechangeloglock databasechangeloglock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.databasechangeloglock
    ADD CONSTRAINT databasechangeloglock_pkey PRIMARY KEY (id);


--
-- TOC entry 3878 (class 2606 OID 66016)
-- Name: default_filter_config default_filter_configPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.default_filter_config
    ADD CONSTRAINT "default_filter_configPK" PRIMARY KEY (id);


--
-- TOC entry 3880 (class 2606 OID 66018)
-- Name: description descriptionPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT "descriptionPK" PRIMARY KEY (id);


--
-- TOC entry 3884 (class 2606 OID 66020)
-- Name: filter_config_widget filter_config_widgetPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filter_config_widget
    ADD CONSTRAINT "filter_config_widgetPK" PRIMARY KEY (id);


--
-- TOC entry 3886 (class 2606 OID 66022)
-- Name: filters filtersPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filters
    ADD CONSTRAINT "filtersPK" PRIMARY KEY (id);


--
-- TOC entry 3888 (class 2606 OID 66024)
-- Name: layer layerPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layer
    ADD CONSTRAINT "layerPK" PRIMARY KEY (id);


--
-- TOC entry 3892 (class 2606 OID 66026)
-- Name: layer_attribute layer_attributePK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layer_attribute
    ADD CONSTRAINT "layer_attributePK" PRIMARY KEY (id);


--
-- TOC entry 3894 (class 2606 OID 66028)
-- Name: master_policies master_policiesPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.master_policies
    ADD CONSTRAINT "master_policiesPK" PRIMARY KEY (id);


--
-- TOC entry 3898 (class 2606 OID 66030)
-- Name: saml_domain_mapping saml_domain_mappingPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saml_domain_mapping
    ADD CONSTRAINT "saml_domain_mappingPK" PRIMARY KEY (id);


--
-- TOC entry 3902 (class 2606 OID 66032)
-- Name: saml_integrations saml_integrationsPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saml_integrations
    ADD CONSTRAINT "saml_integrationsPK" PRIMARY KEY (id);


--
-- TOC entry 3906 (class 2606 OID 66034)
-- Name: temporary_filters temporary_filtersPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temporary_filters
    ADD CONSTRAINT "temporary_filtersPK" PRIMARY KEY (filter_id);


--
-- TOC entry 3908 (class 2606 OID 66036)
-- Name: tenants_whitelabel tenants_whitelabelPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tenants_whitelabel
    ADD CONSTRAINT "tenants_whitelabelPK" PRIMARY KEY (id);


--
-- TOC entry 3846 (class 2606 OID 66038)
-- Name: api_packages uc_api_packagespackage_name_col; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_packages
    ADD CONSTRAINT uc_api_packagespackage_name_col UNIQUE (package_name);


--
-- TOC entry 3904 (class 2606 OID 66040)
-- Name: saml_integrations uc_saml_integrationsconfiguration_name_col; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saml_integrations
    ADD CONSTRAINT uc_saml_integrationsconfiguration_name_col UNIQUE (configuration_name);


--
-- TOC entry 3918 (class 2606 OID 66042)
-- Name: whitelabel_config uc_whitelabel_configdomain_email_col; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.whitelabel_config
    ADD CONSTRAINT uc_whitelabel_configdomain_email_col UNIQUE (domain_email);


--
-- TOC entry 3920 (class 2606 OID 66044)
-- Name: whitelabel_config uc_whitelabel_configdomain_id_col; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.whitelabel_config
    ADD CONSTRAINT uc_whitelabel_configdomain_id_col UNIQUE (domain_id);


--
-- TOC entry 3914 (class 2606 OID 66046)
-- Name: views viewsPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.views
    ADD CONSTRAINT "viewsPK" PRIMARY KEY (id);


--
-- TOC entry 3922 (class 2606 OID 66048)
-- Name: whitelabel_config whitelabel_configPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.whitelabel_config
    ADD CONSTRAINT "whitelabel_configPK" PRIMARY KEY (id);


--
-- TOC entry 3926 (class 2606 OID 66050)
-- Name: widget_api widget_apiPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.widget_api
    ADD CONSTRAINT "widget_apiPK" PRIMARY KEY (id);


--
-- TOC entry 3930 (class 2606 OID 66052)
-- Name: widgets widgetsPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.widgets
    ADD CONSTRAINT "widgetsPK" PRIMARY KEY (id);


--
-- TOC entry 3947 (class 2606 OID 66053)
-- Name: views FK58nm9y6m87h806cbdp34fs4au; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.views
    ADD CONSTRAINT "FK58nm9y6m87h806cbdp34fs4au" FOREIGN KEY (policy_id) REFERENCES public.master_policies(id);


--
-- TOC entry 3931 (class 2606 OID 66058)
-- Name: acl_group_widget FK5njqxdf61yg08jb3p1ic24nna; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acl_group_widget
    ADD CONSTRAINT "FK5njqxdf61yg08jb3p1ic24nna" FOREIGN KEY (widget_id) REFERENCES public.widgets(id);


--
-- TOC entry 3932 (class 2606 OID 66063)
-- Name: acl_group_widget FK6xi3p18x4710p4tfbtur60xth; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acl_group_widget
    ADD CONSTRAINT "FK6xi3p18x4710p4tfbtur60xth" FOREIGN KEY (acl_group_id) REFERENCES public.acl_groups(id);


--
-- TOC entry 3945 (class 2606 OID 66068)
-- Name: saml_domain_mapping FK8yrya6d4kbpjaievdhf6bhc94; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saml_domain_mapping
    ADD CONSTRAINT "FK8yrya6d4kbpjaievdhf6bhc94" FOREIGN KEY (saml_integration_entity_id) REFERENCES public.saml_integrations(id);


--
-- TOC entry 3948 (class 2606 OID 66073)
-- Name: views FKb50cc6a11fxcigmx0knry9syw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.views
    ADD CONSTRAINT "FKb50cc6a11fxcigmx0knry9syw" FOREIGN KEY (layer_id) REFERENCES public.layer(id);


--
-- TOC entry 3937 (class 2606 OID 66078)
-- Name: aws_shared_accounts FKcf89qrvk9r6aq4trdki6v5gch; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_shared_accounts
    ADD CONSTRAINT "FKcf89qrvk9r6aq4trdki6v5gch" FOREIGN KEY (account_id) REFERENCES public.aws_accounts(id);


--
-- TOC entry 3933 (class 2606 OID 66083)
-- Name: acl_groups FKdxq3wg5u8cawl9rqs3q0m3cdl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acl_groups
    ADD CONSTRAINT "FKdxq3wg5u8cawl9rqs3q0m3cdl" FOREIGN KEY (acl_id) REFERENCES public.acl(id);


--
-- TOC entry 3939 (class 2606 OID 66088)
-- Name: azure_plan_csp_shared_accounts FKehfoexp6eaq3lij9c1h6i5fgo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.azure_plan_csp_shared_accounts
    ADD CONSTRAINT "FKehfoexp6eaq3lij9c1h6i5fgo" FOREIGN KEY (account_id) REFERENCES public.azure_plan_csp_accounts(id);


--
-- TOC entry 3949 (class 2606 OID 66093)
-- Name: views FKfnjomkc9igjlnkbywvwssdpir; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.views
    ADD CONSTRAINT "FKfnjomkc9igjlnkbywvwssdpir" FOREIGN KEY (landing_page_id) REFERENCES public.attribute(id);


--
-- TOC entry 3938 (class 2606 OID 66098)
-- Name: azure_ea_shared_accounts FKhtojm57oktgouktk6s93r8j9k; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.azure_ea_shared_accounts
    ADD CONSTRAINT "FKhtojm57oktgouktk6s93r8j9k" FOREIGN KEY (account_id) REFERENCES public.azure_ea_accounts(id);


--
-- TOC entry 3946 (class 2606 OID 66103)
-- Name: tenants_whitelabel FKiafot0mh5qeuhndmgtkorhe3s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tenants_whitelabel
    ADD CONSTRAINT "FKiafot0mh5qeuhndmgtkorhe3s" FOREIGN KEY (whitelabel_id) REFERENCES public.whitelabel_config(id);


--
-- TOC entry 3951 (class 2606 OID 66108)
-- Name: widget_api FKid7qx7d2e5flqfy0re9h5fhba; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.widget_api
    ADD CONSTRAINT "FKid7qx7d2e5flqfy0re9h5fhba" FOREIGN KEY (widget_id) REFERENCES public.widgets(id);


--
-- TOC entry 3935 (class 2606 OID 66113)
-- Name: attribute_widget FKj5te9iprqyhewdfxjb0mj30nm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attribute_widget
    ADD CONSTRAINT "FKj5te9iprqyhewdfxjb0mj30nm" FOREIGN KEY (attribute_id) REFERENCES public.attribute(id);


--
-- TOC entry 3950 (class 2606 OID 66118)
-- Name: views FKjteycx3p07hbbx7vfjescdj42; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.views
    ADD CONSTRAINT "FKjteycx3p07hbbx7vfjescdj42" FOREIGN KEY (acl_id) REFERENCES public.acl(id);


--
-- TOC entry 3936 (class 2606 OID 66123)
-- Name: attribute_widget FKkkcdgp3a2hk8vvmmoav08a2rs; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attribute_widget
    ADD CONSTRAINT "FKkkcdgp3a2hk8vvmmoav08a2rs" FOREIGN KEY (widget_id) REFERENCES public.widgets(id);


--
-- TOC entry 3943 (class 2606 OID 66128)
-- Name: layer_attribute FKo2yh3o8nu8fe80tw7s2md25sc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layer_attribute
    ADD CONSTRAINT "FKo2yh3o8nu8fe80tw7s2md25sc" FOREIGN KEY (attribute_id) REFERENCES public.attribute(id);


--
-- TOC entry 3940 (class 2606 OID 66133)
-- Name: customer_integrations FKp8q2wolwt7h06moja6hmxeouc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_integrations
    ADD CONSTRAINT "FKp8q2wolwt7h06moja6hmxeouc" FOREIGN KEY (widget_id) REFERENCES public.widgets(id);


--
-- TOC entry 3952 (class 2606 OID 66138)
-- Name: widget_api FKqd44vfy6l2fqbhbtigg1untcm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.widget_api
    ADD CONSTRAINT "FKqd44vfy6l2fqbhbtigg1untcm" FOREIGN KEY (api_id) REFERENCES public.api(id);


--
-- TOC entry 3941 (class 2606 OID 66143)
-- Name: filter_config_widget FKqknjg05tb1enso144yypypbam; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filter_config_widget
    ADD CONSTRAINT "FKqknjg05tb1enso144yypypbam" FOREIGN KEY (filter_config_id) REFERENCES public.filters(id);


--
-- TOC entry 3942 (class 2606 OID 66148)
-- Name: filter_config_widget FKrtebuwjyc50g8e3uufpow3hio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filter_config_widget
    ADD CONSTRAINT "FKrtebuwjyc50g8e3uufpow3hio" FOREIGN KEY (widget_id) REFERENCES public.widgets(id);


--
-- TOC entry 3934 (class 2606 OID 66153)
-- Name: api FKtbkf31ujdjlfkbeccsuctmyb7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api
    ADD CONSTRAINT "FKtbkf31ujdjlfkbeccsuctmyb7" FOREIGN KEY (package_id) REFERENCES public.api_packages(package_id);


--
-- TOC entry 3944 (class 2606 OID 66158)
-- Name: layer_attribute FKtkbc8rfixffr0xqediq1yebnq; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layer_attribute
    ADD CONSTRAINT "FKtkbc8rfixffr0xqediq1yebnq" FOREIGN KEY (layer_id) REFERENCES public.layer(id);


--
-- TOC entry 4110 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2021-02-03 15:45:42

--
-- PostgreSQL database dump complete
--

