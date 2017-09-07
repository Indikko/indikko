--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

-- Started on 2017-04-19 17:19:52

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 16395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2818 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 185 (class 1259 OID 16400)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16403)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 2819 (class 0 OID 0)
-- Dependencies: 186
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 187 (class 1259 OID 16405)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16408)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 2820 (class 0 OID 0)
-- Dependencies: 188
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- TOC entry 189 (class 1259 OID 16410)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 16413)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 2821 (class 0 OID 0)
-- Dependencies: 190
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- TOC entry 191 (class 1259 OID 16415)
-- Name: core_clickstoshowmore; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_clickstoshowmore (
    id integer NOT NULL,
    clicked timestamp with time zone NOT NULL,
    hirer_id integer NOT NULL,
    worker_id integer NOT NULL
);


ALTER TABLE core_clickstoshowmore OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 16418)
-- Name: core_clickstoshowmore_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_clickstoshowmore_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_clickstoshowmore_id_seq OWNER TO postgres;

--
-- TOC entry 2822 (class 0 OID 0)
-- Dependencies: 192
-- Name: core_clickstoshowmore_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_clickstoshowmore_id_seq OWNED BY core_clickstoshowmore.id;


--
-- TOC entry 193 (class 1259 OID 16420)
-- Name: core_endorsment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_endorsment (
    id integer NOT NULL,
    hirer_id integer NOT NULL,
    worker_id integer NOT NULL
);


ALTER TABLE core_endorsment OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 16423)
-- Name: core_endorsment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_endorsment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_endorsment_id_seq OWNER TO postgres;

--
-- TOC entry 2823 (class 0 OID 0)
-- Dependencies: 194
-- Name: core_endorsment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_endorsment_id_seq OWNED BY core_endorsment.id;


--
-- TOC entry 195 (class 1259 OID 16425)
-- Name: core_evaluationparameter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_evaluationparameter (
    id integer NOT NULL,
    description character varying(30) NOT NULL,
    value integer NOT NULL,
    service_id integer NOT NULL
);


ALTER TABLE core_evaluationparameter OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16428)
-- Name: core_evaluationparameter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_evaluationparameter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_evaluationparameter_id_seq OWNER TO postgres;

--
-- TOC entry 2824 (class 0 OID 0)
-- Dependencies: 196
-- Name: core_evaluationparameter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_evaluationparameter_id_seq OWNED BY core_evaluationparameter.id;


--
-- TOC entry 197 (class 1259 OID 16430)
-- Name: core_evaluationtemplate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_evaluationtemplate (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    category_id integer
);


ALTER TABLE core_evaluationtemplate OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16433)
-- Name: core_evaluationtemplate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_evaluationtemplate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_evaluationtemplate_id_seq OWNER TO postgres;

--
-- TOC entry 2825 (class 0 OID 0)
-- Dependencies: 198
-- Name: core_evaluationtemplate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_evaluationtemplate_id_seq OWNED BY core_evaluationtemplate.id;


--
-- TOC entry 199 (class 1259 OID 16435)
-- Name: core_evaluationtemplateitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_evaluationtemplateitem (
    id integer NOT NULL,
    description character varying(30) NOT NULL,
    min_value integer NOT NULL,
    max_value integer NOT NULL,
    evaluation_template_id integer NOT NULL
);


ALTER TABLE core_evaluationtemplateitem OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16438)
-- Name: core_evaluationtemplateitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_evaluationtemplateitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_evaluationtemplateitem_id_seq OWNER TO postgres;

--
-- TOC entry 2826 (class 0 OID 0)
-- Dependencies: 200
-- Name: core_evaluationtemplateitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_evaluationtemplateitem_id_seq OWNED BY core_evaluationtemplateitem.id;


--
-- TOC entry 201 (class 1259 OID 16440)
-- Name: core_groupservicecategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_groupservicecategory (
    id integer NOT NULL,
    description character varying(255) NOT NULL
);


ALTER TABLE core_groupservicecategory OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16443)
-- Name: core_groupservicecategory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_groupservicecategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_groupservicecategory_id_seq OWNER TO postgres;

--
-- TOC entry 2827 (class 0 OID 0)
-- Dependencies: 202
-- Name: core_groupservicecategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_groupservicecategory_id_seq OWNED BY core_groupservicecategory.id;


--
-- TOC entry 203 (class 1259 OID 16445)
-- Name: core_indicouser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_indicouser (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    email character varying(255) NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    is_admin boolean NOT NULL,
    attendance_in_domicile boolean NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    date_of_birth date,
    profile_picture text NOT NULL,
    photo character varying(100),
    facebook_id bigint,
    account_type integer,
    account_state integer NOT NULL,
    is_terms_accepted boolean NOT NULL,
    resume text,
    rate double precision,
    endorsements integer,
    phone_number character varying(20),
    price numeric(6,2),
    is_application_form_filled boolean NOT NULL,
    documents_id integer,
    costumer_service boolean,
    week_availability text,
    place_to_work character varying(200)
);


ALTER TABLE core_indicouser OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16451)
-- Name: core_indicouser_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_indicouser_categories (
    id integer NOT NULL,
    indicouser_id integer NOT NULL,
    servicecategory_id integer NOT NULL
);


ALTER TABLE core_indicouser_categories OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16454)
-- Name: core_indicouser_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_indicouser_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_indicouser_categories_id_seq OWNER TO postgres;

--
-- TOC entry 2828 (class 0 OID 0)
-- Dependencies: 205
-- Name: core_indicouser_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_indicouser_categories_id_seq OWNED BY core_indicouser_categories.id;


--
-- TOC entry 206 (class 1259 OID 16456)
-- Name: core_indicouser_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_indicouser_groups (
    id integer NOT NULL,
    indicouser_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE core_indicouser_groups OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16459)
-- Name: core_indicouser_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_indicouser_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_indicouser_groups_id_seq OWNER TO postgres;

--
-- TOC entry 2829 (class 0 OID 0)
-- Dependencies: 207
-- Name: core_indicouser_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_indicouser_groups_id_seq OWNED BY core_indicouser_groups.id;


--
-- TOC entry 208 (class 1259 OID 16461)
-- Name: core_indicouser_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_indicouser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_indicouser_id_seq OWNER TO postgres;

--
-- TOC entry 2830 (class 0 OID 0)
-- Dependencies: 208
-- Name: core_indicouser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_indicouser_id_seq OWNED BY core_indicouser.id;


--
-- TOC entry 209 (class 1259 OID 16463)
-- Name: core_indicouser_skills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_indicouser_skills (
    id integer NOT NULL,
    indicouser_id integer NOT NULL,
    skill_id integer NOT NULL
);


ALTER TABLE core_indicouser_skills OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16466)
-- Name: core_indicouser_skills_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_indicouser_skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_indicouser_skills_id_seq OWNER TO postgres;

--
-- TOC entry 2831 (class 0 OID 0)
-- Dependencies: 210
-- Name: core_indicouser_skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_indicouser_skills_id_seq OWNED BY core_indicouser_skills.id;


--
-- TOC entry 211 (class 1259 OID 16468)
-- Name: core_indicouser_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_indicouser_user_permissions (
    id integer NOT NULL,
    indicouser_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE core_indicouser_user_permissions OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16471)
-- Name: core_indicouser_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_indicouser_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_indicouser_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 2832 (class 0 OID 0)
-- Dependencies: 212
-- Name: core_indicouser_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_indicouser_user_permissions_id_seq OWNED BY core_indicouser_user_permissions.id;


--
-- TOC entry 278 (class 1259 OID 73863)
-- Name: seq_core_indicouser_workzone_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE seq_core_indicouser_workzone_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_core_indicouser_workzone_id OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 73847)
-- Name: core_indicouser_work_zones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_indicouser_work_zones (
    id integer DEFAULT nextval('seq_core_indicouser_workzone_id'::regclass) NOT NULL,
    indicouser_id integer NOT NULL,
    workzone_id integer NOT NULL
);


ALTER TABLE core_indicouser_work_zones OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16473)
-- Name: core_notification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_notification (
    id integer NOT NULL,
    message character varying(255) NOT NULL,
    is_read boolean NOT NULL,
    level integer NOT NULL,
    to_id integer NOT NULL
);


ALTER TABLE core_notification OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16476)
-- Name: core_notification_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_notification_id_seq OWNER TO postgres;

--
-- TOC entry 2833 (class 0 OID 0)
-- Dependencies: 214
-- Name: core_notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_notification_id_seq OWNED BY core_notification.id;


--
-- TOC entry 270 (class 1259 OID 41006)
-- Name: core_phonenumber; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_phonenumber (
    id integer NOT NULL,
    number text,
    indico_user_id integer NOT NULL
);


ALTER TABLE core_phonenumber OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 41019)
-- Name: core_phonenumber_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_phonenumber_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_phonenumber_seq OWNER TO postgres;

--
-- TOC entry 2834 (class 0 OID 0)
-- Dependencies: 271
-- Name: core_phonenumber_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_phonenumber_seq OWNED BY core_phonenumber.id;


--
-- TOC entry 215 (class 1259 OID 16478)
-- Name: core_place; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_place (
    id integer NOT NULL,
    label character varying(255) NOT NULL,
    street character varying(100) NOT NULL,
    number character varying(10),
    complement character varying(255),
    neighborhood character varying(100) NOT NULL,
    city character varying(80) NOT NULL,
    state character varying(80) NOT NULL,
    country character varying(80),
    zipcode character varying(15),
    latitude numeric(9,6),
    longitude numeric(9,6),
    owner_id integer NOT NULL,
    show_on_map boolean
);


ALTER TABLE core_place OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16484)
-- Name: core_place_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_place_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_place_id_seq OWNER TO postgres;

--
-- TOC entry 2835 (class 0 OID 0)
-- Dependencies: 216
-- Name: core_place_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_place_id_seq OWNED BY core_place.id;


--
-- TOC entry 217 (class 1259 OID 16486)
-- Name: core_reference; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_reference (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    phone_number character varying(20) NOT NULL,
    subscription_id integer NOT NULL
);


ALTER TABLE core_reference OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16489)
-- Name: core_reference_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_reference_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_reference_id_seq OWNER TO postgres;

--
-- TOC entry 2836 (class 0 OID 0)
-- Dependencies: 218
-- Name: core_reference_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_reference_id_seq OWNED BY core_reference.id;


--
-- TOC entry 219 (class 1259 OID 16491)
-- Name: core_relationship; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_relationship (
    id integer NOT NULL,
    social_network integer NOT NULL,
    user_one_id integer NOT NULL
);


ALTER TABLE core_relationship OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16494)
-- Name: core_relationship_friends; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_relationship_friends (
    id integer NOT NULL,
    relationship_id integer NOT NULL,
    indicouser_id integer NOT NULL
);


ALTER TABLE core_relationship_friends OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16497)
-- Name: core_relationship_friends_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_relationship_friends_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_relationship_friends_id_seq OWNER TO postgres;

--
-- TOC entry 2837 (class 0 OID 0)
-- Dependencies: 221
-- Name: core_relationship_friends_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_relationship_friends_id_seq OWNED BY core_relationship_friends.id;


--
-- TOC entry 222 (class 1259 OID 16499)
-- Name: core_relationship_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_relationship_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_relationship_id_seq OWNER TO postgres;

--
-- TOC entry 2838 (class 0 OID 0)
-- Dependencies: 222
-- Name: core_relationship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_relationship_id_seq OWNED BY core_relationship.id;


--
-- TOC entry 223 (class 1259 OID 16501)
-- Name: core_servicecategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_servicecategory (
    id integer NOT NULL,
    description character varying(100) NOT NULL,
    image character varying(100),
    is_active boolean NOT NULL,
    group_id integer
);


ALTER TABLE core_servicecategory OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16504)
-- Name: core_servicecategory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_servicecategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_servicecategory_id_seq OWNER TO postgres;

--
-- TOC entry 2839 (class 0 OID 0)
-- Dependencies: 224
-- Name: core_servicecategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_servicecategory_id_seq OWNED BY core_servicecategory.id;


--
-- TOC entry 225 (class 1259 OID 16506)
-- Name: core_servicediscount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_servicediscount (
    id integer NOT NULL,
    discount_date date NOT NULL,
    price numeric(6,2) NOT NULL,
    service_provided_id integer NOT NULL
);


ALTER TABLE core_servicediscount OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16509)
-- Name: core_servicediscount_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_servicediscount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_servicediscount_id_seq OWNER TO postgres;

--
-- TOC entry 2840 (class 0 OID 0)
-- Dependencies: 226
-- Name: core_servicediscount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_servicediscount_id_seq OWNED BY core_servicediscount.id;


--
-- TOC entry 227 (class 1259 OID 16511)
-- Name: core_servicemessage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_servicemessage (
    id integer NOT NULL,
    message character varying(255) NOT NULL,
    is_new boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    destinatary_id integer NOT NULL,
    sender_id integer NOT NULL,
    service_id integer NOT NULL
);


ALTER TABLE core_servicemessage OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16514)
-- Name: core_servicemessage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_servicemessage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_servicemessage_id_seq OWNER TO postgres;

--
-- TOC entry 2841 (class 0 OID 0)
-- Dependencies: 228
-- Name: core_servicemessage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_servicemessage_id_seq OWNED BY core_servicemessage.id;


--
-- TOC entry 229 (class 1259 OID 16516)
-- Name: core_serviceprovided; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_serviceprovided (
    id integer NOT NULL,
    duration integer NOT NULL,
    price numeric(6,2) NOT NULL,
    service_type_id integer NOT NULL,
    worker_id integer NOT NULL,
    fixed_price boolean
);


ALTER TABLE core_serviceprovided OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16519)
-- Name: core_serviceprovided_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_serviceprovided_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_serviceprovided_id_seq OWNER TO postgres;

--
-- TOC entry 2842 (class 0 OID 0)
-- Dependencies: 230
-- Name: core_serviceprovided_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_serviceprovided_id_seq OWNED BY core_serviceprovided.id;


--
-- TOC entry 231 (class 1259 OID 16521)
-- Name: core_servicerequest; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_servicerequest (
    id integer NOT NULL,
    date date NOT NULL,
    "time" time without time zone NOT NULL,
    payment_preference integer NOT NULL,
    status integer NOT NULL,
    created timestamp with time zone NOT NULL,
    price numeric(6,2),
    more_info text,
    updated timestamp with time zone NOT NULL,
    address_id integer,
    owner_id integer NOT NULL,
    service_provided_id integer,
    is_delivery boolean DEFAULT true
);


ALTER TABLE core_servicerequest OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16527)
-- Name: core_servicerequest_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_servicerequest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_servicerequest_id_seq OWNER TO postgres;

--
-- TOC entry 2843 (class 0 OID 0)
-- Dependencies: 232
-- Name: core_servicerequest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_servicerequest_id_seq OWNED BY core_servicerequest.id;


--
-- TOC entry 233 (class 1259 OID 16529)
-- Name: core_servicetype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_servicetype (
    id integer NOT NULL,
    description character varying(255) NOT NULL,
    service_category_id integer NOT NULL
);


ALTER TABLE core_servicetype OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16532)
-- Name: core_servicetype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_servicetype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_servicetype_id_seq OWNER TO postgres;

--
-- TOC entry 2844 (class 0 OID 0)
-- Dependencies: 234
-- Name: core_servicetype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_servicetype_id_seq OWNED BY core_servicetype.id;


--
-- TOC entry 235 (class 1259 OID 16534)
-- Name: core_skill; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_skill (
    id integer NOT NULL,
    description character varying(100) NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE core_skill OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16537)
-- Name: core_skill_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_skill_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_skill_id_seq OWNER TO postgres;

--
-- TOC entry 2845 (class 0 OID 0)
-- Dependencies: 236
-- Name: core_skill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_skill_id_seq OWNED BY core_skill.id;


--
-- TOC entry 237 (class 1259 OID 16539)
-- Name: core_subscription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_subscription (
    id integer NOT NULL,
    candidate_id integer NOT NULL
);


ALTER TABLE core_subscription OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16542)
-- Name: core_subscription_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_subscription_id_seq OWNER TO postgres;

--
-- TOC entry 2846 (class 0 OID 0)
-- Dependencies: 238
-- Name: core_subscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_subscription_id_seq OWNED BY core_subscription.id;


--
-- TOC entry 239 (class 1259 OID 16544)
-- Name: core_userdocuments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_userdocuments (
    id integer NOT NULL,
    person_id character varying(100),
    residence_proof character varying(100),
    cpf character varying(100)
);


ALTER TABLE core_userdocuments OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16547)
-- Name: core_userdocuments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_userdocuments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_userdocuments_id_seq OWNER TO postgres;

--
-- TOC entry 2847 (class 0 OID 0)
-- Dependencies: 240
-- Name: core_userdocuments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_userdocuments_id_seq OWNED BY core_userdocuments.id;


--
-- TOC entry 241 (class 1259 OID 16549)
-- Name: core_workerevaluation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_workerevaluation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    punctuality integer NOT NULL,
    quality integer NOT NULL,
    trust integer NOT NULL,
    cost_benefit integer NOT NULL,
    testimonial character varying(255) NOT NULL,
    partial_rate double precision,
    recommend boolean NOT NULL,
    hirer_id integer NOT NULL,
    worker_id integer NOT NULL,
    status character(1)
);


ALTER TABLE core_workerevaluation OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 16552)
-- Name: core_workerevaluation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_workerevaluation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_workerevaluation_id_seq OWNER TO postgres;

--
-- TOC entry 2848 (class 0 OID 0)
-- Dependencies: 242
-- Name: core_workerevaluation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_workerevaluation_id_seq OWNED BY core_workerevaluation.id;


--
-- TOC entry 243 (class 1259 OID 16554)
-- Name: core_workerevaluationitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_workerevaluationitem (
    id integer NOT NULL,
    item integer NOT NULL,
    value integer NOT NULL,
    "workerEvaluation_id" integer NOT NULL
);


ALTER TABLE core_workerevaluationitem OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 16557)
-- Name: core_workerevaluationitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_workerevaluationitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_workerevaluationitem_id_seq OWNER TO postgres;

--
-- TOC entry 2849 (class 0 OID 0)
-- Dependencies: 244
-- Name: core_workerevaluationitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_workerevaluationitem_id_seq OWNED BY core_workerevaluationitem.id;


--
-- TOC entry 276 (class 1259 OID 73845)
-- Name: sec_core_workzone_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sec_core_workzone_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sec_core_workzone_id OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 73837)
-- Name: core_workzone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_workzone (
    id bigint DEFAULT nextval('sec_core_workzone_id'::regclass) NOT NULL,
    zone text,
    neighborhood text,
    state text,
    city text
);


ALTER TABLE core_workzone OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 16559)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 16566)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 2850 (class 0 OID 0)
-- Dependencies: 246
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- TOC entry 247 (class 1259 OID 16568)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 16571)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 2851 (class 0 OID 0)
-- Dependencies: 248
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- TOC entry 249 (class 1259 OID 16573)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 16579)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 2852 (class 0 OID 0)
-- Dependencies: 250
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- TOC entry 251 (class 1259 OID 16581)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 16587)
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE django_site OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 16590)
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_site_id_seq OWNER TO postgres;

--
-- TOC entry 2853 (class 0 OID 0)
-- Dependencies: 253
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- TOC entry 254 (class 1259 OID 16592)
-- Name: oauth2_provider_accesstoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE oauth2_provider_accesstoken (
    id integer NOT NULL,
    token character varying(255) NOT NULL,
    expires timestamp with time zone NOT NULL,
    scope text NOT NULL,
    application_id integer NOT NULL,
    user_id integer
);


ALTER TABLE oauth2_provider_accesstoken OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 16598)
-- Name: oauth2_provider_accesstoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE oauth2_provider_accesstoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE oauth2_provider_accesstoken_id_seq OWNER TO postgres;

--
-- TOC entry 2854 (class 0 OID 0)
-- Dependencies: 255
-- Name: oauth2_provider_accesstoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE oauth2_provider_accesstoken_id_seq OWNED BY oauth2_provider_accesstoken.id;


--
-- TOC entry 256 (class 1259 OID 16600)
-- Name: oauth2_provider_application; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE oauth2_provider_application (
    id integer NOT NULL,
    client_id character varying(100) NOT NULL,
    redirect_uris text NOT NULL,
    client_type character varying(32) NOT NULL,
    authorization_grant_type character varying(32) NOT NULL,
    client_secret character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    user_id integer NOT NULL,
    skip_authorization boolean NOT NULL
);


ALTER TABLE oauth2_provider_application OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 16606)
-- Name: oauth2_provider_application_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE oauth2_provider_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE oauth2_provider_application_id_seq OWNER TO postgres;

--
-- TOC entry 2855 (class 0 OID 0)
-- Dependencies: 257
-- Name: oauth2_provider_application_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE oauth2_provider_application_id_seq OWNED BY oauth2_provider_application.id;


--
-- TOC entry 258 (class 1259 OID 16608)
-- Name: oauth2_provider_grant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE oauth2_provider_grant (
    id integer NOT NULL,
    code character varying(255) NOT NULL,
    expires timestamp with time zone NOT NULL,
    redirect_uri character varying(255) NOT NULL,
    scope text NOT NULL,
    application_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE oauth2_provider_grant OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 16614)
-- Name: oauth2_provider_grant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE oauth2_provider_grant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE oauth2_provider_grant_id_seq OWNER TO postgres;

--
-- TOC entry 2856 (class 0 OID 0)
-- Dependencies: 259
-- Name: oauth2_provider_grant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE oauth2_provider_grant_id_seq OWNED BY oauth2_provider_grant.id;


--
-- TOC entry 260 (class 1259 OID 16616)
-- Name: oauth2_provider_refreshtoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE oauth2_provider_refreshtoken (
    id integer NOT NULL,
    token character varying(255) NOT NULL,
    access_token_id integer NOT NULL,
    application_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE oauth2_provider_refreshtoken OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 16619)
-- Name: oauth2_provider_refreshtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE oauth2_provider_refreshtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE oauth2_provider_refreshtoken_id_seq OWNER TO postgres;

--
-- TOC entry 2857 (class 0 OID 0)
-- Dependencies: 261
-- Name: oauth2_provider_refreshtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE oauth2_provider_refreshtoken_id_seq OWNED BY oauth2_provider_refreshtoken.id;


--
-- TOC entry 274 (class 1259 OID 65627)
-- Name: sec-core_indicouser_week_availability; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "sec-core_indicouser_week_availability"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "sec-core_indicouser_week_availability" OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 65602)
-- Name: server_acmechallenge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE server_acmechallenge (
    id integer NOT NULL,
    challenge character varying(255) NOT NULL,
    response character varying(255) NOT NULL
);


ALTER TABLE server_acmechallenge OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 65600)
-- Name: server_acmechallenge_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE server_acmechallenge_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE server_acmechallenge_id_seq OWNER TO postgres;

--
-- TOC entry 2858 (class 0 OID 0)
-- Dependencies: 272
-- Name: server_acmechallenge_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE server_acmechallenge_id_seq OWNED BY server_acmechallenge.id;


--
-- TOC entry 262 (class 1259 OID 16621)
-- Name: social_auth_association; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE social_auth_association (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    secret character varying(255) NOT NULL,
    issued integer NOT NULL,
    lifetime integer NOT NULL,
    assoc_type character varying(64) NOT NULL
);


ALTER TABLE social_auth_association OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 16627)
-- Name: social_auth_association_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE social_auth_association_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE social_auth_association_id_seq OWNER TO postgres;

--
-- TOC entry 2859 (class 0 OID 0)
-- Dependencies: 263
-- Name: social_auth_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE social_auth_association_id_seq OWNED BY social_auth_association.id;


--
-- TOC entry 264 (class 1259 OID 16629)
-- Name: social_auth_code; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE social_auth_code (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    code character varying(32) NOT NULL,
    verified boolean NOT NULL
);


ALTER TABLE social_auth_code OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 16632)
-- Name: social_auth_code_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE social_auth_code_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE social_auth_code_id_seq OWNER TO postgres;

--
-- TOC entry 2860 (class 0 OID 0)
-- Dependencies: 265
-- Name: social_auth_code_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE social_auth_code_id_seq OWNED BY social_auth_code.id;


--
-- TOC entry 266 (class 1259 OID 16634)
-- Name: social_auth_nonce; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE social_auth_nonce (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    "timestamp" integer NOT NULL,
    salt character varying(65) NOT NULL
);


ALTER TABLE social_auth_nonce OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 16637)
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE social_auth_nonce_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE social_auth_nonce_id_seq OWNER TO postgres;

--
-- TOC entry 2861 (class 0 OID 0)
-- Dependencies: 267
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE social_auth_nonce_id_seq OWNED BY social_auth_nonce.id;


--
-- TOC entry 268 (class 1259 OID 16639)
-- Name: social_auth_usersocialauth; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE social_auth_usersocialauth (
    id integer NOT NULL,
    provider character varying(32) NOT NULL,
    uid character varying(255) NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE social_auth_usersocialauth OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 16645)
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE social_auth_usersocialauth_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE social_auth_usersocialauth_id_seq OWNER TO postgres;

--
-- TOC entry 2862 (class 0 OID 0)
-- Dependencies: 269
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE social_auth_usersocialauth_id_seq OWNED BY social_auth_usersocialauth.id;


--
-- TOC entry 2291 (class 2604 OID 16647)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- TOC entry 2292 (class 2604 OID 16648)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2293 (class 2604 OID 16649)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- TOC entry 2294 (class 2604 OID 16650)
-- Name: core_clickstoshowmore id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_clickstoshowmore ALTER COLUMN id SET DEFAULT nextval('core_clickstoshowmore_id_seq'::regclass);


--
-- TOC entry 2295 (class 2604 OID 16651)
-- Name: core_endorsment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_endorsment ALTER COLUMN id SET DEFAULT nextval('core_endorsment_id_seq'::regclass);


--
-- TOC entry 2296 (class 2604 OID 16652)
-- Name: core_evaluationparameter id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_evaluationparameter ALTER COLUMN id SET DEFAULT nextval('core_evaluationparameter_id_seq'::regclass);


--
-- TOC entry 2297 (class 2604 OID 16653)
-- Name: core_evaluationtemplate id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_evaluationtemplate ALTER COLUMN id SET DEFAULT nextval('core_evaluationtemplate_id_seq'::regclass);


--
-- TOC entry 2298 (class 2604 OID 16654)
-- Name: core_evaluationtemplateitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_evaluationtemplateitem ALTER COLUMN id SET DEFAULT nextval('core_evaluationtemplateitem_id_seq'::regclass);


--
-- TOC entry 2299 (class 2604 OID 16655)
-- Name: core_groupservicecategory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_groupservicecategory ALTER COLUMN id SET DEFAULT nextval('core_groupservicecategory_id_seq'::regclass);


--
-- TOC entry 2300 (class 2604 OID 16656)
-- Name: core_indicouser id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser ALTER COLUMN id SET DEFAULT nextval('core_indicouser_id_seq'::regclass);


--
-- TOC entry 2301 (class 2604 OID 16657)
-- Name: core_indicouser_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_categories ALTER COLUMN id SET DEFAULT nextval('core_indicouser_categories_id_seq'::regclass);


--
-- TOC entry 2302 (class 2604 OID 16658)
-- Name: core_indicouser_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_groups ALTER COLUMN id SET DEFAULT nextval('core_indicouser_groups_id_seq'::regclass);


--
-- TOC entry 2303 (class 2604 OID 16659)
-- Name: core_indicouser_skills id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_skills ALTER COLUMN id SET DEFAULT nextval('core_indicouser_skills_id_seq'::regclass);


--
-- TOC entry 2304 (class 2604 OID 16660)
-- Name: core_indicouser_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_user_permissions ALTER COLUMN id SET DEFAULT nextval('core_indicouser_user_permissions_id_seq'::regclass);


--
-- TOC entry 2305 (class 2604 OID 16661)
-- Name: core_notification id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_notification ALTER COLUMN id SET DEFAULT nextval('core_notification_id_seq'::regclass);


--
-- TOC entry 2335 (class 2604 OID 41021)
-- Name: core_phonenumber id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_phonenumber ALTER COLUMN id SET DEFAULT nextval('core_phonenumber_seq'::regclass);


--
-- TOC entry 2306 (class 2604 OID 16662)
-- Name: core_place id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_place ALTER COLUMN id SET DEFAULT nextval('core_place_id_seq'::regclass);


--
-- TOC entry 2307 (class 2604 OID 16663)
-- Name: core_reference id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_reference ALTER COLUMN id SET DEFAULT nextval('core_reference_id_seq'::regclass);


--
-- TOC entry 2308 (class 2604 OID 16664)
-- Name: core_relationship id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_relationship ALTER COLUMN id SET DEFAULT nextval('core_relationship_id_seq'::regclass);


--
-- TOC entry 2309 (class 2604 OID 16665)
-- Name: core_relationship_friends id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_relationship_friends ALTER COLUMN id SET DEFAULT nextval('core_relationship_friends_id_seq'::regclass);


--
-- TOC entry 2310 (class 2604 OID 16666)
-- Name: core_servicecategory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicecategory ALTER COLUMN id SET DEFAULT nextval('core_servicecategory_id_seq'::regclass);


--
-- TOC entry 2311 (class 2604 OID 16667)
-- Name: core_servicediscount id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicediscount ALTER COLUMN id SET DEFAULT nextval('core_servicediscount_id_seq'::regclass);


--
-- TOC entry 2312 (class 2604 OID 16668)
-- Name: core_servicemessage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicemessage ALTER COLUMN id SET DEFAULT nextval('core_servicemessage_id_seq'::regclass);


--
-- TOC entry 2313 (class 2604 OID 16669)
-- Name: core_serviceprovided id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_serviceprovided ALTER COLUMN id SET DEFAULT nextval('core_serviceprovided_id_seq'::regclass);


--
-- TOC entry 2314 (class 2604 OID 16670)
-- Name: core_servicerequest id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicerequest ALTER COLUMN id SET DEFAULT nextval('core_servicerequest_id_seq'::regclass);


--
-- TOC entry 2316 (class 2604 OID 16671)
-- Name: core_servicetype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicetype ALTER COLUMN id SET DEFAULT nextval('core_servicetype_id_seq'::regclass);


--
-- TOC entry 2317 (class 2604 OID 16672)
-- Name: core_skill id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_skill ALTER COLUMN id SET DEFAULT nextval('core_skill_id_seq'::regclass);


--
-- TOC entry 2318 (class 2604 OID 16673)
-- Name: core_subscription id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_subscription ALTER COLUMN id SET DEFAULT nextval('core_subscription_id_seq'::regclass);


--
-- TOC entry 2319 (class 2604 OID 16674)
-- Name: core_userdocuments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_userdocuments ALTER COLUMN id SET DEFAULT nextval('core_userdocuments_id_seq'::regclass);


--
-- TOC entry 2320 (class 2604 OID 16675)
-- Name: core_workerevaluation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_workerevaluation ALTER COLUMN id SET DEFAULT nextval('core_workerevaluation_id_seq'::regclass);


--
-- TOC entry 2321 (class 2604 OID 16676)
-- Name: core_workerevaluationitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_workerevaluationitem ALTER COLUMN id SET DEFAULT nextval('core_workerevaluationitem_id_seq'::regclass);


--
-- TOC entry 2322 (class 2604 OID 16677)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- TOC entry 2324 (class 2604 OID 16678)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- TOC entry 2325 (class 2604 OID 16679)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- TOC entry 2326 (class 2604 OID 16680)
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- TOC entry 2327 (class 2604 OID 16681)
-- Name: oauth2_provider_accesstoken id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauth2_provider_accesstoken ALTER COLUMN id SET DEFAULT nextval('oauth2_provider_accesstoken_id_seq'::regclass);


--
-- TOC entry 2328 (class 2604 OID 16682)
-- Name: oauth2_provider_application id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauth2_provider_application ALTER COLUMN id SET DEFAULT nextval('oauth2_provider_application_id_seq'::regclass);


--
-- TOC entry 2329 (class 2604 OID 16683)
-- Name: oauth2_provider_grant id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauth2_provider_grant ALTER COLUMN id SET DEFAULT nextval('oauth2_provider_grant_id_seq'::regclass);


--
-- TOC entry 2330 (class 2604 OID 16684)
-- Name: oauth2_provider_refreshtoken id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauth2_provider_refreshtoken ALTER COLUMN id SET DEFAULT nextval('oauth2_provider_refreshtoken_id_seq'::regclass);


--
-- TOC entry 2336 (class 2604 OID 65605)
-- Name: server_acmechallenge id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY server_acmechallenge ALTER COLUMN id SET DEFAULT nextval('server_acmechallenge_id_seq'::regclass);


--
-- TOC entry 2331 (class 2604 OID 16685)
-- Name: social_auth_association id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY social_auth_association ALTER COLUMN id SET DEFAULT nextval('social_auth_association_id_seq'::regclass);


--
-- TOC entry 2332 (class 2604 OID 16686)
-- Name: social_auth_code id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY social_auth_code ALTER COLUMN id SET DEFAULT nextval('social_auth_code_id_seq'::regclass);


--
-- TOC entry 2333 (class 2604 OID 16687)
-- Name: social_auth_nonce id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY social_auth_nonce ALTER COLUMN id SET DEFAULT nextval('social_auth_nonce_id_seq'::regclass);


--
-- TOC entry 2334 (class 2604 OID 16688)
-- Name: social_auth_usersocialauth id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY social_auth_usersocialauth ALTER COLUMN id SET DEFAULT nextval('social_auth_usersocialauth_id_seq'::regclass);


--
-- TOC entry 2719 (class 0 OID 16400)
-- Dependencies: 185
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 2863 (class 0 OID 0)
-- Dependencies: 186
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- TOC entry 2721 (class 0 OID 16405)
-- Dependencies: 187
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2864 (class 0 OID 0)
-- Dependencies: 188
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 2723 (class 0 OID 16410)
-- Dependencies: 189
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add session	5	add_session
14	Can change session	5	change_session
15	Can delete session	5	delete_session
16	Can add site	6	add_site
17	Can change site	6	change_site
18	Can delete site	6	delete_site
19	Can add user social auth	7	add_usersocialauth
20	Can change user social auth	7	change_usersocialauth
21	Can delete user social auth	7	delete_usersocialauth
22	Can add nonce	8	add_nonce
23	Can change nonce	8	change_nonce
24	Can delete nonce	8	delete_nonce
25	Can add association	9	add_association
26	Can change association	9	change_association
27	Can delete association	9	delete_association
28	Can add code	10	add_code
29	Can change code	10	change_code
30	Can delete code	10	delete_code
31	Can add application	11	add_application
32	Can change application	11	change_application
33	Can delete application	11	delete_application
34	Can add grant	12	add_grant
35	Can change grant	12	change_grant
36	Can delete grant	12	delete_grant
37	Can add access token	13	add_accesstoken
38	Can change access token	13	change_accesstoken
39	Can delete access token	13	delete_accesstoken
40	Can add refresh token	14	add_refreshtoken
41	Can change refresh token	14	change_refreshtoken
42	Can delete refresh token	14	delete_refreshtoken
43	Can add Grupo (Profissão)	15	add_groupservicecategory
44	Can change Grupo (Profissão)	15	change_groupservicecategory
45	Can delete Grupo (Profissão)	15	delete_groupservicecategory
46	Can add Profissão	16	add_servicecategory
47	Can change Profissão	16	change_servicecategory
48	Can delete Profissão	16	delete_servicecategory
49	Can add Tipo de serviço	17	add_servicetype
50	Can change Tipo de serviço	17	change_servicetype
51	Can delete Tipo de serviço	17	delete_servicetype
52	Can add Diferenciais	18	add_skill
53	Can change Diferenciais	18	change_skill
54	Can delete Diferenciais	18	delete_skill
55	Can add documentos do usuário	19	add_userdocuments
56	Can change documentos do usuário	19	change_userdocuments
57	Can delete documentos do usuário	19	delete_userdocuments
58	Can add usuário	20	add_indicouser
59	Can change usuário	20	change_indicouser
60	Can delete usuário	20	delete_indicouser
61	Can access as a worker	20	worker_pass
62	Can access as a contractor	20	contractor_pass
63	Can add Serviço	21	add_serviceprovided
64	Can change Serviço	21	change_serviceprovided
65	Can delete Serviço	21	delete_serviceprovided
66	Can add Desconto no Serviço	22	add_servicediscount
67	Can change Desconto no Serviço	22	change_servicediscount
68	Can delete Desconto no Serviço	22	delete_servicediscount
69	Can add relationship	23	add_relationship
70	Can change relationship	23	change_relationship
71	Can delete relationship	23	delete_relationship
72	Can add evaluation template	24	add_evaluationtemplate
73	Can change evaluation template	24	change_evaluationtemplate
74	Can delete evaluation template	24	delete_evaluationtemplate
75	Can add evaluation template item	25	add_evaluationtemplateitem
76	Can change evaluation template item	25	change_evaluationtemplateitem
77	Can delete evaluation template item	25	delete_evaluationtemplateitem
78	Can add place	26	add_place
79	Can change place	26	change_place
80	Can delete place	26	delete_place
81	Can add service request	27	add_servicerequest
82	Can change service request	27	change_servicerequest
83	Can delete service request	27	delete_servicerequest
84	Can add evaluation parameter	28	add_evaluationparameter
85	Can change evaluation parameter	28	change_evaluationparameter
86	Can delete evaluation parameter	28	delete_evaluationparameter
87	Can add notification	29	add_notification
88	Can change notification	29	change_notification
89	Can delete notification	29	delete_notification
90	Can add service message	30	add_servicemessage
91	Can change service message	30	change_servicemessage
92	Can delete service message	30	delete_servicemessage
93	Can add subscription	31	add_subscription
94	Can change subscription	31	change_subscription
95	Can delete subscription	31	delete_subscription
96	Can add reference	32	add_reference
97	Can change reference	32	change_reference
98	Can delete reference	32	delete_reference
99	Can add endorsment	33	add_endorsment
100	Can change endorsment	33	change_endorsment
101	Can delete endorsment	33	delete_endorsment
102	Can add worker evaluation	34	add_workerevaluation
103	Can change worker evaluation	34	change_workerevaluation
104	Can delete worker evaluation	34	delete_workerevaluation
105	Can add worker evaluation item	35	add_workerevaluationitem
106	Can change worker evaluation item	35	change_workerevaluationitem
107	Can delete worker evaluation item	35	delete_workerevaluationitem
108	Can add clicks to show more	36	add_clickstoshowmore
109	Can change clicks to show more	36	change_clickstoshowmore
110	Can delete clicks to show more	36	delete_clickstoshowmore
111	Can add Número de telefone	37	add_phonenumber
112	Can change Número de telefone	37	change_phonenumber
113	Can delete Número de telefone	37	delete_phonenumber
114	Can add ACME Challenge	38	add_acmechallenge
115	Can change ACME Challenge	38	change_acmechallenge
116	Can delete ACME Challenge	38	delete_acmechallenge
\.


--
-- TOC entry 2865 (class 0 OID 0)
-- Dependencies: 190
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 116, true);


--
-- TOC entry 2725 (class 0 OID 16415)
-- Dependencies: 191
-- Data for Name: core_clickstoshowmore; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_clickstoshowmore (id, clicked, hirer_id, worker_id) FROM stdin;
1	2016-10-17 21:38:49.94474-04	39	322
2	2016-10-18 13:42:59.473173-04	5	322
3	2016-10-18 13:43:01.500582-04	5	322
4	2016-11-22 10:10:31.140194-04	78	141
5	2016-11-22 11:05:02.91765-04	140	141
6	2016-11-23 19:09:47.597942-04	140	333
7	2016-11-24 22:03:16.943455-04	140	333
8	2016-11-24 22:10:57.024161-04	140	333
9	2016-11-24 22:13:24.405752-04	140	333
10	2016-11-24 22:15:32.835158-04	140	333
11	2016-12-19 18:41:14.362813-04	140	141
12	2016-12-29 11:00:26.628735-04	357	333
13	2016-12-29 11:00:45.560961-04	357	338
14	2017-01-23 20:51:12.15647-04	78	141
15	2017-01-23 20:51:14.423916-04	78	141
20	2017-02-23 19:35:23.610154-04	375	141
29	2017-03-07 16:48:51.750884-04	375	141
30	2017-03-07 17:08:01.989378-04	375	141
31	2017-03-07 17:13:14.075691-04	375	141
32	2017-03-07 17:13:29.254957-04	375	141
33	2017-03-07 17:13:39.579296-04	375	141
34	2017-03-07 17:13:55.375838-04	375	141
35	2017-03-07 17:14:06.302361-04	375	375
36	2017-03-07 17:14:24.045104-04	375	375
37	2017-03-07 17:14:30.184408-04	375	375
38	2017-03-07 17:14:47.352407-04	375	141
39	2017-03-07 17:15:01.100968-04	375	375
40	2017-03-07 17:16:20.203823-04	375	375
46	2017-04-07 21:09:06.293198-04	375	375
\.


--
-- TOC entry 2866 (class 0 OID 0)
-- Dependencies: 192
-- Name: core_clickstoshowmore_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_clickstoshowmore_id_seq', 46, true);


--
-- TOC entry 2727 (class 0 OID 16420)
-- Dependencies: 193
-- Data for Name: core_endorsment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_endorsment (id, hirer_id, worker_id) FROM stdin;
1	140	141
\.


--
-- TOC entry 2867 (class 0 OID 0)
-- Dependencies: 194
-- Name: core_endorsment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_endorsment_id_seq', 4, true);


--
-- TOC entry 2729 (class 0 OID 16425)
-- Dependencies: 195
-- Data for Name: core_evaluationparameter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_evaluationparameter (id, description, value, service_id) FROM stdin;
\.


--
-- TOC entry 2868 (class 0 OID 0)
-- Dependencies: 196
-- Name: core_evaluationparameter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_evaluationparameter_id_seq', 1, false);


--
-- TOC entry 2731 (class 0 OID 16430)
-- Dependencies: 197
-- Data for Name: core_evaluationtemplate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_evaluationtemplate (id, name, created, updated, category_id) FROM stdin;
3	Diarista 2	2016-06-28 15:05:56.583288-04	2016-06-28 15:12:51.621772-04	\N
4	Eletricista	2016-06-28 15:54:27.648231-04	2016-06-28 15:54:27.648302-04	4
5	Limpador de Ar Condicionado e Fancoil	2016-06-28 16:21:38.588051-04	2016-06-28 16:47:05.406158-04	35
2	Babá	2016-06-28 13:51:44.468465-04	2016-06-28 16:54:49.571051-04	2
6	Garçom	2016-06-28 17:40:32.845164-04	2016-06-29 21:55:45.475199-04	10
9	Faz-tudo	2016-06-30 09:00:57.473244-04	2016-06-30 09:00:57.473305-04	62
10	DiaristaTeste	2016-06-30 14:21:31.945245-04	2016-06-30 14:22:19.01722-04	\N
1	Diarista	2016-06-28 04:17:01.179025-04	2016-06-30 14:22:28.990397-04	1
12	Maquiador	2016-07-18 11:33:45.010651-04	2016-07-18 11:33:45.010715-04	22
13	Manicure	2016-07-18 13:39:34.823164-04	2016-07-18 13:39:34.823228-04	23
7	Buffet	2016-06-28 17:53:27.179793-04	2016-07-18 14:25:00.970668-04	16
14	Food Truck	2016-07-18 13:41:51.60805-04	2016-07-23 16:43:50.886712-04	18
15	Sobrancelha	2016-07-23 17:15:06.130419-04	2016-07-23 17:15:06.130457-04	25
16	Corretor de Seguros e Plano de Saúde	2016-07-26 13:15:05.373472-04	2016-07-26 13:15:05.373542-04	33
17	Bolos, Salgados e Docinhos	2016-07-29 14:49:25.254048-04	2016-07-29 14:53:50.889384-04	12
\.


--
-- TOC entry 2869 (class 0 OID 0)
-- Dependencies: 198
-- Name: core_evaluationtemplate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_evaluationtemplate_id_seq', 19, true);


--
-- TOC entry 2733 (class 0 OID 16435)
-- Dependencies: 199
-- Data for Name: core_evaluationtemplateitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_evaluationtemplateitem (id, description, min_value, max_value, evaluation_template_id) FROM stdin;
4	Salas	0	10	3
5	Cozinha	0	10	3
6	Eletricista	0	10000	4
7	Limpeza de AC de 7 a 9.000 BTU	30	250	5
8	Limpeza de AC de 12.000 BTU´s	30	250	5
9	Limpeza de AC de 18.000 BTU´s	50	350	5
10	Limpeza de AC de 24.000 BTU´s	50	350	5
11	Limpeza de AC de 36.000 BTU´s	50	400	5
12	Limpeza de AC de 48.000 BTU´s	50	450	5
13	Limpeza de AC de 60.000 BTU´s	50	500	5
14	Limpeza de Fancoil	50	1000	5
15	Manutenção de Ar Cond. split	0	5000	5
16	Manutenção de Ar. Cond. caixa	0	1000	5
17	Instalação de Ar Cond. split	0	5000	5
18	Construção de Dutos por metro	0	5000	5
19	Elaboração de Projeto Refrig.	0	100000	5
20	Elaboração de Projeto Exaustão	0	100000	5
1	Quartos	0	10	1
2	Banheiros	0	8	1
21	Peças de roupas	0	500	1
22	Cozinhar para quantas pessoas	0	40	1
23	Limpeza de área externa?	0	5	1
24	Possui crianças em casa?	0	30	1
3	Número de crianças	0	30	2
25	Alguma menor de 3 anos?	0	30	2
26	Alguma com necess. especiais ?	0	30	2
27	Servir quantas refeições?	0	30	2
30	Número de convidados?	0	0	7
31	Bebida alcóolica para quantos?	0	0	7
28	Taças de refrig. para levar	0	500	6
29	Pessoas no evento	0	1000	6
34	Ralo(s) emtupido(s)	0	0	9
35	Troca de tomada(s)	0	0	9
36	Troca de lâmpada(s)	0	0	9
37	Outros	0	0	9
38	Sala	0	5	10
39	Banheiro	0	2	10
40	Cozinha	0	1	10
42	Maquiagem simples sem cílios	0	1	12
43	Maquiagem simples com cílios	0	1	12
44	Maquiagem completa para festa	0	1	12
45	Maquiagem de fantasia	0	1	12
46	Curso de maquiagem	0	1	12
47	Penteado simples	0	1	12
48	Tranças para festas	0	1	12
53	Manicure	0	1	13
54	Pedicure	0	1	13
55	Aplicar Unhas de Porcelana	0	1	13
56	Desenho Artístico	0	1	13
57	Hambúrgueres	0	200	14
58	Paletas	0	200	14
59	Tapiocas	0	200	14
60	Espetinho (churrasco)	0	200	14
61	Comida Regional (tacacá, etc)	0	100	14
62	Outros	0	1000	14
63	Design	0	1	15
64	Definitiva fio a fio	0	1	15
65	Plano de saúde individual	0	1	16
66	Plano de saúde PJ	0	1	16
67	Seguro de vida	0	10	16
68	Seguro de empresa	0	5	16
69	Seguro de imóvel	0	5	16
70	Seguro de carros	0	5	16
71	Naked cakes (sem cobertura)	0	1	17
72	Bolo pequeno	0	2	17
73	Bolo médio	0	2	17
74	Bolo grande	0	2	17
75	Bolo de casamento	0	2	17
76	Bolo no pote	0	20	17
78	Cento de salgados fritos	0	20	17
79	Cento de salgados folheados	0	20	17
80	Cento de salgados mistos	0	20	17
81	Cupcakes	0	200	17
82	Cento de Brigadeiros	0	20	17
83	Cento de doces de forno	0	20	17
84	Brownies	0	200	17
77	Cento de salgados de forno	0	20	17
85	Cento de salgados fritos	0	20	17
86	Cento de salgados folheados	0	20	17
87	Cento de salgados mistos	0	20	17
88	Cupcakes	0	200	17
89	Cento de Brigadeiros	0	20	17
90	Cento de doces de forno	0	20	17
91	Brownies	0	200	17
\.


--
-- TOC entry 2870 (class 0 OID 0)
-- Dependencies: 200
-- Name: core_evaluationtemplateitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_evaluationtemplateitem_id_seq', 95, true);


--
-- TOC entry 2735 (class 0 OID 16440)
-- Dependencies: 201
-- Data for Name: core_groupservicecategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_groupservicecategory (id, description) FROM stdin;
\.


--
-- TOC entry 2871 (class 0 OID 0)
-- Dependencies: 202
-- Name: core_groupservicecategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_groupservicecategory_id_seq', 1, false);


--
-- TOC entry 2737 (class 0 OID 16445)
-- Dependencies: 203
-- Data for Name: core_indicouser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_indicouser (id, password, last_login, is_superuser, email, date_joined, is_staff, is_active, is_admin, attendance_in_domicile, first_name, last_name, date_of_birth, profile_picture, photo, facebook_id, account_type, account_state, is_terms_accepted, resume, rate, endorsements, phone_number, price, is_application_form_filled, documents_id, costumer_service, week_availability, place_to_work) FROM stdin;
395	pbkdf2_sha256$24000$xEHyebSJsXer$DDQvV5EUHcXuR2B+0Vmmv3nIVXZSvk9O6nnS+69NqcE=	2017-03-30 19:57:30.313764-04	f	asdasdasd	2017-03-30 19:57:30.061095-04	f	t	f	t	asdasd	asdasd	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
333	pbkdf2_sha256$24000$HNIzQ0iDBRDD$WxnJDXOJapO8MhCt2eSiGGY+N/Jc0L2IuwYTtc5bN5w=	2016-10-11 10:45:04-04	f	cresceeaparece.salao@gmail.com	2016-10-11 10:45:04-04	f	t	f	t	Salão	Cresce e Aparece	\N		profile/2016/10/11/Salão_Cresce_e_Aparece.jpg	\N	2	1	t	O Salão Cresce e Aparece está no mercado de Manaus há 4 anos e oferece diversos serviços de beleza e estética.	4.5	0	991088311	0.00	t	37	f	\N	\N
396	pbkdf2_sha256$24000$AIT9EgMF0LEr$xV5SMFX4kNQZXEN6vnDnGPhEzI9AxPFP6iDeGNy3lgk=	2017-03-31 15:32:03.360434-04	f	123asd	2017-03-31 15:32:03.12928-04	f	t	f	t	asd	asd	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
75	pbkdf2_sha256$24000$P5XQBdwtrkxP$0FZhur0xxMLGsWz0fwczso5Vxa8/MVrNIj746rMzqcQ=	2016-06-30 10:22:58.589478-04	t	services@indicoapp.com	2016-06-28 04:26:44-04	t	t	f	t			\N			\N	\N	0	f		0	0	\N	\N	f	\N	f	\N	\N
338	pbkdf2_sha256$24000$eJvFR7onVZZq$BKYnv3gX9K4dEBsRhrldcgiYDLknQeal63TeKuVudts=	2016-11-23 15:17:40-04	f	Davicmonteiro29@gmail.com	2016-11-23 15:17:40-04	f	t	f	t	Davi	Monteiro	\N			\N	2	1	t	Corto cabelo.	4	0	92999994444	0.00	t	3	f	\N	\N
103	pbkdf2_sha256$24000$ZiB90MyoSKFC$94PdciEXDcp41NX1GqU7wfu138bcSAL61lxsEmpTBGw=	2016-11-08 09:48:44.083086-04	f	clinfisiomao@gmail.com	2016-11-05 15:40:45.21369-04	f	t	f	t	Clinfisio	Clínica de Fisioterapia	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
80	pbkdf2_sha256$24000$zBnYEWpNYaGb$kri561aYvVcSklpKyhur2+1Oj0ZOnLVHpCf+/zNHOmc=	2016-06-28 12:55:51.053422-04	f	victor.lauria@gmail.com	2016-06-28 12:55:50.444417-04	f	t	f	t	Victor	Lauria	\N			\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
98	!cL0pkPtCyLckYRhGKyzCj4xwRiMu7gxxccUdhTVg	2016-06-28 21:28:31.983701-04	f	kamylemedina@hotmail.com	2016-06-28 21:28:31.403217-04	f	t	f	t	Kamyle	Medina Monte Rey	\N	https://graph.facebook.com/10207976031253375/picture	profile/2016/06/28/profile_98.jpg	\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
11	pbkdf2_sha256$24000$PPPaQlWYBxlr$fLgMCOkYHXsR00cUYHEtz0OaZybPVWzC9bF0LL3Fv94=	2016-06-14 12:23:30.593626-04	f	ph_gomes@yahoo.com.br	2016-06-14 12:23:30.442338-04	f	t	f	t	Pedro	Gomes	\N			\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
309	pbkdf2_sha256$24000$JF3nbMqjduo0$OR3F4qhYsrHWT4AHhnVRJMCv7J3M5VDM6f7ocyfwBfw=	2016-09-06 03:39:36.242698-04	f	lilianmds23@hotmail.com	2016-09-06 03:31:03.654608-04	f	t	f	t	Lilian	Moreira	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
32	pbkdf2_sha256$24000$OpluscUvLShS$NZemWcY4I4H0e+HTYpJUN0INa5pIdLNGltqwRfJkiCE=	2016-06-20 17:00:33.506166-04	f	sublimeessencias@gmail.com	2016-06-20 09:29:58.975196-04	f	t	f	t	Sublime	Essências	\N			\N	2	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
13	!RzFs0c4HWfTjXTuLKF0mkJlwW4PxKr47H5iAOssM	2016-06-15 11:52:30.096462-04	f	alexandresoria@msn.com	2016-06-15 11:52:29.638474-04	f	t	f	t	Alexandre	Soria	\N	https://graph.facebook.com/10204309310127514/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
14	pbkdf2_sha256$24000$nFLXqaZNzWo6$oGesoZP3z0O9hATZY+lxOlX+xiQ8ysZFexxUuzuFGF4=	2016-06-15 12:32:07.087104-04	f	neves_leo@hotmail.com	2016-06-15 12:32:06.954501-04	f	t	f	t	LEONARDO	RODRIGUES	\N			\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
99	!Gks0P94DikCm0F8BwWrFHzLeqYK4JATMG25anLhm	2016-07-07 22:31:31.102459-04	f	jacobmonteiro@hotmail.com	2016-06-28 21:34:23.131189-04	f	t	f	t	Jacob	Monteiro	\N	https://graph.facebook.com/1284003761617659/picture	profile/2016/07/13/profile_99.jpg	\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
28	!9SdlqLHX3tBs2XzMI8JLlKeaSqLnAjjpOMbMUuWk	2016-06-19 12:55:46.04275-04	f	sandra_sarkis@yahoo.com.br	2016-06-19 12:55:45.867222-04	f	t	f	t	Sandra	Sarkis	\N	https://graph.facebook.com/1191358567581238/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
31	!hNYr8NoDYi8W8DJlxlPQFTIvzBe2BXS0BKJrSMQd	2016-06-19 20:24:05.78697-04	f	andreluiz@me.com	2016-06-19 20:24:05.653209-04	f	t	f	t	Andre	Luiz Albuquerque Lima	\N	https://graph.facebook.com/10210162995379651/picture		\N	2	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
15	!sqaF7wshuifN41fDNwbQuDmaQ1j7y1dQD9EJ8wVW	2016-06-15 13:02:38.589888-04	f	georjeanne@hotmail.com	2016-06-15 13:02:38.368867-04	f	t	f	t	Georjeanne	De Gussem	\N	https://graph.facebook.com/1097288133650243/picture		\N	2	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
95	!1EefRd5MgvVNla6IZAv1ji4q4B2GyRrvBs1BVmIb	2016-06-28 19:38:43.072086-04	f	barbaranogueira@gmail.com	2016-06-28 19:38:42.266273-04	f	t	f	t	Bárbara	Nogueira	\N	https://graph.facebook.com/1113688825369392/picture	profile/2016/06/28/profile_95.jpg	\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
192	pbkdf2_sha256$24000$rT10ks07G3pX$pGLodJCMv/P7BpS7OxWvYxepTKrYPngjr78w+TkhV8o=	2016-07-02 19:45:39.780843-04	f	biotecsaudeambiental@bol.com.br	2016-07-02 19:45:39.493114-04	f	t	f	t	Suelen	Garrido	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
195	pbkdf2_sha256$24000$kiKOVXzf6gRS$botS2VORjZDW2FlPzy6X4iWSfedNKsKWVd4Bx6gArFI=	2016-07-10 15:11:27.008019-04	f	frank.souza@yahoo.com.br	2016-07-10 15:11:26.224871-04	f	t	f	t	Frank	Souza	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
19	pbkdf2_sha256$24000$Pchzvo5wJM3I$SJYUI4Jrse5rKsPJSZLMht7LNOMR4FAshFFw/3YZ0qk=	2016-06-15 17:25:41-04	f	tatazinha_deedee@hotmail.com	2016-06-15 17:25:40-04	f	t	f	t	Taianna	Castro	\N			\N	1	0	f		0	0		\N	f	\N	f	\N	\N
40	!KQtf0yXKxdJgqEl3VuPpHvBh8RZGrlsAOXRFSNm7	2016-06-21 10:59:15.255599-04	f	erick.sarkis@hotmail.com	2016-06-21 10:59:15.058573-04	f	t	f	t	Erick	Sarkis	\N	https://graph.facebook.com/1182406601823727/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
24	pbkdf2_sha256$24000$7aQglh7k6fmW$pRPhe/NApBaIgYXZ4m79t08Tcys9CMU6bJOOSumokBE=	2016-06-15 23:41:01.33708-04	f	judith@local.com	2016-06-15 23:41:01.220885-04	f	t	f	t	judith	frazão	\N			\N	2	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
29	pbkdf2_sha256$24000$iUKvaJKarWg3$fEQoenfRC44i8Q8hFeRI/TkU0uFZbEObVLFAMVuXNjY=	2016-06-19 14:57:44.788958-04	f	sidiaambrosio@yahoo.com.br	2016-06-19 14:57:44.436828-04	f	t	f	t	Sídia	Ambrosio	\N			\N	2	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
26	!YIV8zQUbfs7t1rvDVqBH4ImdZaRaH6tFgqbg9o1R	2016-06-17 19:11:32.277034-04	f	teeago@hotmail.com	2016-06-17 19:11:32.058333-04	f	t	f	t	Tiago	Oliveira Lopes	\N	https://graph.facebook.com/10153708797851239/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
108	pbkdf2_sha256$24000$8RDJK71f8Cbp$U4+PONjWv094kTLPbFsnXpnj2PDg+Ry3ra3WJTVIQS8=	2016-06-29 15:19:45.810204-04	f	keinevalle@yahoo.com.br	2016-06-29 10:44:29.180348-04	f	t	f	t	Keine	Valle	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
106	pbkdf2_sha256$24000$BkhYBb9kifw6$sx7459hOZFj80q1XlisjN0/Z83/EPyVv1UcRrw24PwQ=	2016-06-29 10:19:21.234005-04	f	raphaelmb_adv@hotmail.com	2016-06-29 10:19:20.520136-04	f	t	f	t	Raphael	Martins	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
198	!zkvVPyDLzOIQAmVdV9i1muWl5t1ylrHu0KtJPdYl	2016-07-13 14:23:17.714278-04	f	jammesfotografia@gmail.com	2016-07-13 08:54:51.541012-04	f	t	f	t	Jammes	Aguiar	\N	https://graph.facebook.com/829165733883942/picture	profile/2016/07/13/profile_198.jpg	\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
53	!AE2V1aWooKfljwlJSfBH7FUciJ9Lsxs8SqjadYyL	2016-06-23 06:49:56.314315-04	f	gutemberg21@hotmail.com	2016-06-23 06:49:56.06818-04	f	t	f	t	Heitor	Augusto	\N	https://graph.facebook.com/10204756253385426/picture		\N	2	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
41	pbkdf2_sha256$24000$wc50LqJGuF3k$+qpMlTrt4nRlxebAJ/wUfMy67yAjqySx9rp51xtqixU=	2016-06-21 19:42:58.163102-04	f	devaninha@hotmail.com	2016-06-21 19:42:57.900971-04	f	t	f	t	Devane	Batista Costa	\N			\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
168	pbkdf2_sha256$24000$6W472PCNNRVe$AbnZhiWyyBlVpJRNHbeHpC6DTHnIpfJ/pDYnQgfx+K8=	2016-06-30 12:34:08.382019-04	f	trabalhador2@indicoapp.com	2016-06-30 12:34:07.223814-04	f	t	f	t	Trabalhador	Dois	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
51	!tqTF8PHDqNvtmSzLWKCYpWyeuwc7lHvezv56ETdS	2016-06-23 04:17:00.056845-04	f	mi_saray@hotmail.com	2016-06-23 04:16:59.894277-04	f	t	f	t	Michele	Bonfim	\N	https://graph.facebook.com/836930283079468/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
52	!lJWe9PTzzMhBj74WJDug4ZBxEj5QWRQDrVumsyso	2016-06-23 06:40:31.100462-04	f	hsantos29@hotmail.com	2016-06-23 06:40:30.778861-04	f	t	f	t	Helio	Santos	\N	https://graph.facebook.com/10207589389307494/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
54	pbkdf2_sha256$24000$nvDRvnXAmzcL$JNCUNZoDSJ7mx6jaeMfhDF7HCMj7ye7+VWpmUx5Akss=	2016-06-23 09:04:35.805754-04	f	raissarabelo2@gmail.com	2016-06-23 09:04:35.592839-04	f	t	f	t	Raissa	Borges	\N			\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
56	!jWzIeY9suaW4nXgeO48e36hKsczNOgY9bPPkuovw	2016-06-23 14:42:59.291443-04	f	lulafreitas@hotmail.com	2016-06-23 14:42:59.205339-04	f	t	f	t	Luiz	Carlos Marques Freitas	\N	https://graph.facebook.com/946152412171117/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
96	pbkdf2_sha256$24000$ZqWTYcwIz45W$MFGeVS5FRMR1hWUDyAMibLXjeJlF0FK2Z5uJKfcXpYg=	2016-06-28 21:18:30.703544-04	f	comercial@renanpessoa.com.br	2016-06-28 21:18:30.601933-04	f	t	f	t	Renan	Pessoa	\N			\N	2	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
57	pbkdf2_sha256$24000$G1NOmHBLEmKp$e85tXh5Ce38wJfzJXo9Zb+4dqWNs2tuVamkXpuiuWUs=	2016-06-25 18:56:01.263856-04	f	campos.matheus@yahoo.com.br	2016-06-23 16:14:35.273205-04	f	t	f	t	Matheus	Campos	\N			\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
27	!sN9yAxtyfcBmjnKityJGFfkp7cxfbC0yTeTafUoH	2016-11-23 08:33:32.062071-04	f	marissa_sarkis@hotmail.com	2016-06-19 08:16:50.082413-04	f	t	f	t	Marissa	Sarkis	\N	https://graph.facebook.com/1160023740706413/picture	profile/2016/11/23/profile_27.jpg	\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
335	!0aT37EAfmEE6cOFuw1xh7BUxao50vbkR2Ja03jC1	2016-11-21 23:53:57.971273-04	f	eltonsrc@gmail.com	2016-11-21 23:53:25.062524-04	f	t	f	t	Elton	Ribeiro	\N	https://graph.facebook.com/1101912819880758/picture	profile/2016/11/22/profile_335.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
60	pbkdf2_sha256$24000$nxgWlhk6XWwy$Mn1Xji57Pgsumk907REjRb/ZtusXvv6nIOvLq17GLEE=	2016-06-26 09:09:26.663109-04	f	niceaarie@gmail.com	2016-06-26 09:09:26.424187-04	f	t	f	t	Nicéa	Nakagawa Arie	\N			\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
61	!95kth0k6onhUmmqBLN6iWVwin3ugvrurEul5PSgg	2016-07-08 13:34:39.729547-04	f	cashmeyre@hotmail.com	2016-06-26 13:09:42.001079-04	f	t	f	t	Gecimeire	Medeiros M	\N	https://graph.facebook.com/1045784395505808/picture	profile/2016/07/08/profile_61.jpg	\N	2	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
59	!rQUGfIHtSyhAqBAfUK9PYaL9wxEWHTdLthAf6OTK	2016-06-25 02:05:35.740655-04	f	linecker.scarpelli@gmail.com	2016-06-25 02:05:35.472926-04	f	t	f	t	Linecker	Scarpelli Corretor	\N	https://graph.facebook.com/1901527816740916/picture	profile/2016/07/07/profile_59.jpg	\N	2	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
126	!4hSYQXBmJPj7HZ9RoDny4Enk1oouUAZttdj36lfC	2016-09-27 09:48:18.244081-04	f	tomas.medeiros@gmail.com	2016-06-29 16:48:41.712197-04	f	t	f	t	Tomás	J M Lima	\N	https://graph.facebook.com/580260168832363/picture	profile/2016/09/27/profile_126.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
194	pbkdf2_sha256$24000$BgM7tXo7hhfK$yFGp8o9ZTUVw0TE4W5SfUXifeAXi469NKnvPtRax618=	2016-07-08 14:21:09.55524-04	f	joao.toledano@outlook.com	2016-07-08 14:21:09.433042-04	f	t	f	t	João de Deus	Toledano	\N		profile/2016/07/08/image.jpeg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
318	!5L9fNRI7lR5Y6LOEDte0kSBQPtifok9M8LAqnJ80	2016-10-05 17:32:49.118839-04	f	ideiasfera@gmail.com	2016-10-05 17:32:48.006771-04	f	t	f	t	Bruno	Seabra Carneiro	\N	https://graph.facebook.com/989120967877266/picture	profile/2016/10/05/profile_318.jpg	\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
88	!sdCYr0frDJUCmguEAQYovvj5JMkn5pHRT4LVAowt	2016-06-28 15:55:13.881475-04	f	danyzinha_18@hotmail.com	2016-06-28 15:55:13.08646-04	f	t	f	t	Daniela	Seixas Pereira	\N	https://graph.facebook.com/10201864080759959/picture	profile/2016/06/28/profile_88.jpg	\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
201	!GjZBZHFkg7jyEB1opCW8QpyGokyz3HuadQf4JrOj	2016-07-13 13:43:12.298632-04	f	amandaa-limaa1@hotmail.com	2016-07-13 13:43:11.387024-04	f	t	f	t	Amanda	Chaves	\N	https://graph.facebook.com/1065491676866724/picture	profile/2016/07/13/profile_201.jpg	\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
63	!dLmao3c8JqlMyYGD03RWKG5fSusOaS6vgXoBNhRv	2016-06-27 17:18:36.039873-04	f	renatojleite@gmail.com	2016-06-27 17:18:35.815729-04	f	t	f	t	Renato	J L Nóbrega	\N	https://graph.facebook.com/10154269977454817/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
207	pbkdf2_sha256$24000$O9Oc2wBclXMU$VwcLQP1RdQKFQIHfFHvwhUCIoyHzwyZkq0w6WWQaplc=	2016-07-19 21:20:33.436228-04	f	bruna.viana.cabral@gmail.com	2016-07-19 21:20:33.351704-04	f	t	f	t	Bruna	Cabral	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
97	!Uu4Soe91CW0taGVVMR7MNLA7Fl5WU7yo5fCAvOF9	2016-06-28 21:24:23.683259-04	f	palestrante@renanpessoa.com.br	2016-06-28 21:24:23.282421-04	f	t	f	t	Renan	Pessoa	\N	https://graph.facebook.com/1139997526063356/picture	profile/2016/06/28/profile_97.jpg	\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
325	pbkdf2_sha256$24000$UrSjzmlkKSiM$UPFfDkisjyxppmw4XsoLjM7qFiG99uGqBbb2bTYo8Xo=	2016-10-08 12:25:14.988445-04	f	carinaramosmk2016@gmail.com	2016-10-08 12:25:14.821894-04	f	t	f	t	Carina	Ramos	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
209	pbkdf2_sha256$24000$y93TcRzVgXIh$g9gOlLDEVUF3E97MCMbZsmTIcO7XNCyAAZZzTjBb7l8=	2016-07-21 09:56:15.299173-04	f	caisantiago@gmail.com	2016-07-20 09:01:02.492631-04	f	t	f	t	Caroline	Affonso	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
211	pbkdf2_sha256$24000$qYzvOO2r4LKg$AQtP20Ar5XPMDZwBC/WOeVSH4HgyYoHWh3kEVkt9Cy8=	2016-07-21 13:58:42.774466-04	f	faby2008_bia@hotmail.com	2016-07-21 13:58:42.646784-04	f	t	f	t	Fabiane	Andrade	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
214	pbkdf2_sha256$24000$Mnw0OD2xcaF0$jhBnUZ/99X6WmdiUnC5jo6hnczbWQOA3Dy9KtQ7+OlE=	2016-07-21 14:42:37.525455-04	f	paulo.melosb@gmail.com	2016-07-21 14:42:37.321384-04	f	t	f	t	Paulo	Rodrigo	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
100	pbkdf2_sha256$24000$NaC7j1p9gWYZ$hiv5u9FXAOELqg8Dic1dFoHkPu6oh/TOynTj/aVezVw=	2016-06-28 22:50:12.579012-04	f	miguelmoura@hotmail.com	2016-06-28 22:50:12.47471-04	f	t	f	t	Miguel	Moura	\N		profile/2016/06/29/image.jpeg	\N	2	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
94	pbkdf2_sha256$24000$2mGBxyiqaOl4$4Q/gPkGhzwut2w60OJ+n3JQ7tzgyeGla+2+sr1pk+SI=	2016-06-28 18:17:46.106195-04	f	contato@guerreirolisboa.com.br	2016-06-28 18:17:45.907825-04	f	t	f	t	Malu	Lisboa	\N		profile/2016/06/28/image.png	\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
216	pbkdf2_sha256$24000$gQUBKQ8zkyAu$vbC/2z1CQON0aBbRiNNJdctAGEmS048GNGmun5MIgDE=	2016-07-21 14:58:24.201689-04	f	juliana_farias@hotmail.com	2016-07-21 14:58:24.082534-04	f	t	f	t	Juliana	Farias	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
110	!KAuXhWkdgV3YmXGyil2d5iymDIoh8NTxtzRWxRjY	2016-06-29 11:26:02.47739-04	f	pallomythagomes@gmail.com	2016-06-29 11:26:01.924708-04	f	t	f	t	Paloma	Gomes	\N	https://graph.facebook.com/10208378651442354/picture	profile/2016/06/29/profile_110.jpg	\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
127	pbkdf2_sha256$24000$Lyeg77ynSqf6$+mf6QYIeOzNrS4W2pHuGMUTfRAKompx1fC2AzgMjtSE=	2016-06-29 18:28:12.563243-04	f	santosdiegoferreira975@gmail.com	2016-06-29 18:28:12.188013-04	f	t	f	t	Diego ferreira	santos	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
135	pbkdf2_sha256$24000$XRmkQ4dIV5DQ$jf71yYo7MiTSRzg8nmBXY+qkdu5pWkW1Hlk1pzV39JM=	2016-06-30 07:18:38.051215-04	f	fredbarretolima@yahoo.com.br	2016-06-30 07:14:54.011174-04	f	t	f	t	Fred	Barreto Lima	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
128	pbkdf2_sha256$24000$20V9C6FISamk$MYqddGdhj2e1nL1zSFTHwUtSwz8lh69FCAKhU+TgoQ4=	2016-06-29 18:37:17.54153-04	f	santosdiegoferreira075@gmail.com	2016-06-29 18:37:16.426541-04	f	t	f	t	Diego ferreira	santos	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
139	pbkdf2_sha256$24000$2ZbHRLeCOucC$B1NpWVM6EQFcp3jMFzFkO9BswU/pNIl3cbxPc4wW63Y=	2016-06-30 08:55:22.788442-04	f	fabiopavesi22@hotmail.com	2016-06-30 08:55:22.654916-04	f	t	f	t	Fabio	Pavesi	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
137	pbkdf2_sha256$24000$08v8sHx79Tc0$AbVDfpbEpp7I6k5aXLRkULQ35ej5bXmU7fPedgkbT4A=	2016-06-30 07:20:22.231844-04	f	barretolimaf@gmail.com	2016-06-30 07:20:22.112339-04	f	t	f	t	Fred	Barreto Lima	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
138	pbkdf2_sha256$24000$TJG0MFDXEgvL$kbcXrKC704V+Cr2L3RoRLt+60IOjg+/vJv4QuSiMQqE=	2016-06-30 08:51:27.042963-04	f	alex.alves2020@gmail.com	2016-06-30 08:51:26.919942-04	f	t	f	t	Alexandro	Alves	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
134	!VI9kcBGipDOoXIpk3oK8hEjUEIgm56m96pHSFJ0t	2016-06-30 02:59:29.798388-04	f	alessandro.barbosa@gmail.com	2016-06-30 02:59:28.584217-04	f	t	f	t	Alessandro	Barbosa	\N	https://graph.facebook.com/878041928930941/picture	profile/2016/06/30/profile_134.jpg	\N	2	2	t	fasffffffff  fsafafaf	0	0	\N	45.00	t	20	f	\N	\N
206	!wROs8E4VaG03hawNzsKZ6fwiKtQnJz0RPVcY6O7Q	2016-07-19 08:56:41.236723-04	f	maralveslapa@gmail.com	2016-07-19 08:56:40.560281-04	f	t	f	t	AlvesLapa	Corretora	\N	https://graph.facebook.com/165949487157025/picture	profile/2016/07/19/profile_206.jpg	\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
181	pbkdf2_sha256$24000$CRX9VsZCcxGt$XssBWb5JKN91igWg9qPiKu7kUM1/mjHLN4n3pG2rk/E=	2016-06-30 16:02:57-04	f	almirarochamartins@gmail.com	2016-06-30 16:02:56-04	f	t	f	t	Almira	Martins	\N			\N	2	1	t	Me chamo Mira e trabalho há 3 anos como diarista. Gosto do que faço. Lavo, passo e limpo, só não cozinho. Trabalho em casa com animais.	0	0	\N	80.00	t	30	f	\N	\N
217	pbkdf2_sha256$24000$LCZ6U0cqQXG4$5M8L38jPAeKcAJl2b3M80LYAzvTo2F7YDo4MFMY6iOI=	2016-07-21 15:11:10.055911-04	f	aldvieira1068@gmail.com	2016-07-21 15:11:09.861311-04	f	t	f	t	Ana Lucia	Dutra Vieira	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
249	pbkdf2_sha256$24000$mDujkMDTKW7k$2NcGuh85Pq/kK4p9JVWPPFDM0UpjTRfgLdogDAlxBkM=	2016-07-23 16:56:46.162777-04	f	kelma2016.Maia@outlook.com	2016-07-23 16:56:46.048229-04	f	t	f	t	kelma	maia	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
191	!266AyBMwuWr1reWAF65o1SBZlxAdSpWK4aZ6dy7J	2016-07-02 19:39:30.083721-04	f	tofsutille@gmail.com	2016-07-02 19:39:29.288221-04	f	t	f	t	Sutille	Christopher	\N	https://graph.facebook.com/10208399771465379/picture	profile/2016/07/02/profile_191.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
182	pbkdf2_sha256$24000$L1mk5W2uGB10$aXuM/NPJTtpuTZJzEpujBSQnhYIj2/gAqrhfVkJ+oAs=	2016-07-01 17:31:16.342239-04	f	renatinhaxp_pinheiro@hotmail.com	2016-07-01 17:31:15.646241-04	f	t	f	t	Renata	Pinheiro	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
208	pbkdf2_sha256$24000$khD0dbllryjW$UYGLNOkbwFsvj9JZNEJfW1sJrVVTKU0dehUUHPddNiQ=	2016-07-19 21:22:25.198424-04	f	trabalho@admin.com	2016-07-19 21:22:25.1073-04	f	t	f	t	Fabio	Serra	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
200	pbkdf2_sha256$24000$yAP39VRzLWmP$CZp3YR+gdfr2+C0niYiLiTaVaMOnHHG0p8G7qdSUxWY=	2016-07-13 10:54:02.618876-04	f	sprissantoa@yahoo.com.br	2016-07-13 10:54:02.531051-04	f	t	f	t	Priscila	Santos	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
202	pbkdf2_sha256$24000$8MaI6vlyrJPG$St8dK4XA76LOptZBneBm9XQV6777SsI6abGgBvD+IAY=	2016-07-15 00:29:17.422857-04	f	tmrmotta@outlook.com	2016-07-15 00:29:17.172397-04	f	t	f	t	Thiago	Ferreira	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
177	pbkdf2_sha256$24000$VCsQnqTgB2ka$7RDmL23EN2iK+TzfIppqUn5BtMRjOw7gXfP1FMIM9bg=	2016-06-30 15:27:05.394104-04	f	crisvidal.designer@gmail.com	2016-06-30 15:27:05.232605-04	f	t	f	t	Cristhiany	Vidal	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
178	pbkdf2_sha256$24000$iTjGPMVDn7M2$CiV3JHBYr04IOcXK0E+ALVxjSK3dYoq1KeW+QuGj/KM=	2016-06-30 15:32:33.650594-04	f	uniformes.perola@gmail.com	2016-06-30 15:32:33.321096-04	f	t	f	t	Pérola	Uniformes	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
218	pbkdf2_sha256$24000$K5giahBK3U5w$pa4ZoxjpHor4g/THXZnJwvIxegyeR5lTkIzva6tGX6w=	2016-07-21 15:27:50.121495-04	f	suanefernandessilva@gmail.com	2016-07-21 15:27:49.948416-04	f	t	f	t	Suane	Fernandes	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
222	!T6aB7PsFYQBHkKWuU8hzkJqQrcYyZciUQRCh1z4I	2016-07-21 16:35:58.487726-04	f	valsarquis@hotmail.com	2016-07-21 16:35:57.422199-04	f	t	f	t	Val	Celestino	\N	https://graph.facebook.com/1260592280647744/picture	profile/2016/07/21/profile_222.jpg	\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
227	pbkdf2_sha256$24000$vNN9UrWzBLMf$wqBeOFxGxHaDOYjAOVuZQKlFH387dNrrzYYisbqmtas=	2016-08-19 20:34:13.025968-04	f	danniexm@hotmail.com	2016-07-21 20:41:54.41675-04	f	t	f	t	Dannie	Ximenes	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
203	pbkdf2_sha256$24000$FQAAI1FQT95r$33J9VLjuOVHWOTkGxynq5eCWpR9jFe3BkD0n+2+EIGY=	2016-07-18 12:45:36.452055-04	f	natalialima@hotmail.com.br	2016-07-18 12:30:42.762705-04	f	t	f	t	Natalia	Lima	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
175	pbkdf2_sha256$24000$M75WDHV1t6CO$P+WMbfwpQ9jQL7Q8tjilwQCt7LG5Limwb9anImVvT3M=	2016-07-28 08:46:58.147503-04	f	taianna.castro@gmail.com	2016-06-30 14:53:20.543346-04	f	t	f	t	Taianna	Castro	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
185	pbkdf2_sha256$24000$Y23C2BBFQOgY$BmyCOJI1jax7QEaNU1vsNA1+jtY64kev+vYmVApAdso=	2016-07-02 12:10:24.861295-04	f	diogo_ristoff@hotmail.com	2016-07-02 12:10:24.677951-04	f	t	f	t	Diogo	Ristoff	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
210	!4txxqobsSObX9YwVkpaOyE0MaHEQJjk4OmQ3vAhE	2016-07-20 13:41:54.582852-04	f	sabrinagesta@gmail.com	2016-07-20 13:41:53.943603-04	f	t	f	t	Sabrina	Gesta	\N	https://graph.facebook.com/1243362905674011/picture	profile/2016/07/20/profile_210.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
219	pbkdf2_sha256$24000$Sc0Bzh8CPdj3$78n+DNL+ikQBKPD2etDP4aZaI7wP1cT+RbVL4nrTymg=	2016-10-06 22:55:02.992755-04	f	emanoel.lima@icloud.com	2016-07-21 15:33:10.30882-04	f	t	f	t	Emanoel	Lima	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
213	pbkdf2_sha256$24000$elXwunJd2F4G$sawZiArF45XDvP2o6eZNRXO0AjGpoAaKvUC988C18V8=	2016-07-21 14:13:56.880258-04	f	sigrid.ms@hotmail.com	2016-07-21 14:13:56.785196-04	f	t	f	t	sigrid	Moreira de Souza	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
220	pbkdf2_sha256$24000$QkmfKt4MpCyf$7cn5De5DxWFgAkCWLVXzEHQPT0s87sEC49eR4Khz0cA=	2016-07-21 15:54:02.657717-04	f	nayla_monteiro@hotmail.com	2016-07-21 15:54:02.566149-04	f	t	f	t	Nayla	Nagawo	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
225	pbkdf2_sha256$24000$lCp5bfn8X8g6$s54me+WMV77BA0kYlGurLNiA61vLMvzRvk7GjNPjLas=	2016-07-21 17:43:17.261447-04	f	valdacfranca@gmail.com	2016-07-21 17:43:17.091808-04	f	t	f	t	Valda	Cavalcante	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
221	pbkdf2_sha256$24000$mT90mdOeTTsW$UH25ZRPuwkXYyJJ9tmf8R5qrTcf9lkS7i9EauXXtx+o=	2016-07-21 16:25:12.450746-04	f	pri_cobain1@hotmail.com	2016-07-21 16:25:12.335131-04	f	t	f	t	Priscila	Albuquerque	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
223	pbkdf2_sha256$24000$IeEO47RbFiZn$ve47O64QJ2d9hUU90m/v4cPX6DLv94e/s93twchHfQY=	2016-07-21 16:40:46.893922-04	f	angelita_amaz@hotmail.com	2016-07-21 16:40:46.711711-04	f	t	f	t	Angelita	Albuquerque	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
224	pbkdf2_sha256$24000$b0nCSbRoGth7$hwQaLsWG3HPklC5sx7pnfSwkztYrQsgUHLSzIAAvb9M=	2016-07-21 16:56:46.18095-04	f	bio_frors@hotmail.com	2016-07-21 16:56:46.043475-04	f	t	f	t	Fabricio	Froes	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
215	pbkdf2_sha256$24000$GdumNKdWYufB$/x5izGb+9lWIEo7+j5Z5l9wxTRMdiDcO4taghgkZxtI=	2016-07-21 23:23:20.741222-04	f	thalita_castelo@hotmail.com	2016-07-21 14:51:25.259894-04	f	t	f	t	Thalita	Castelo branco	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
229	!TIJpVMLpnMeX0QQybAmmDiMsbits6XNVNA9rF19g	2016-07-21 23:06:37.595007-04	f	thaisfeerreeira@gmail.com	2016-07-21 23:06:36.813473-04	f	t	f	t	Thaís	Ferreira	\N	https://graph.facebook.com/1134723923257439/picture	profile/2016/07/22/profile_229.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
230	pbkdf2_sha256$24000$EWsrXBtECrug$pSo/Krai37X610/Sm3A39JiunVbuvLimXR/F/DBuyQI=	2016-07-22 00:00:08.942297-04	f	jamillerodrigues@live.com	2016-07-22 00:00:08.752404-04	f	t	f	t	Jamille	Rodrigues	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
231	pbkdf2_sha256$24000$905XnTpuexBB$i2ybXH2mWCF7ruzoZXYhotVjVY/3yYhffXFaF465ZFA=	2016-07-22 00:06:58.131447-04	f	silviocosth2@gmail.com	2016-07-22 00:06:57.907627-04	f	t	f	t	Silvio	Costh	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
232	pbkdf2_sha256$24000$owqmKUuUPCNV$xO6EZWVLBV7Varu0TCpOZN8VakHiHrAhzOcsoKsixEA=	2016-07-22 00:34:50.783819-04	f	thais.spires@hotmail.com	2016-07-22 00:34:50.223069-04	f	t	f	t	Thais	Pires	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
233	pbkdf2_sha256$24000$jcLAq7WEqMYo$jYZbJKpKfLY2C4IOzlqE87l+EFtRfSZTC83mLIXUXQ8=	2016-07-22 00:37:07.894749-04	f	sac@pizza2go.com.br	2016-07-22 00:37:07.724539-04	f	t	f	t	Pizza2Go	Pires	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
250	pbkdf2_sha256$24000$IDs41Rio2jqU$x3ZGRVwqm7MaucoPFnvHOkrYuwLCKpz4yw2CMHSOK88=	2016-07-23 18:44:35.602988-04	f	sangiobotelho88@gmail.com	2016-07-23 18:44:35.31155-04	f	t	f	t	Sangio	Botelho	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
300	pbkdf2_sha256$24000$YA8cAiPzdBfk$nU3rSB9ugfA5mD+Rn9R6l5PGgAjqmvx1CTymx9O2biI=	2016-08-21 00:02:19.54-04	f	Sangiobotelho88@gmail.com	2016-08-21 00:02:19.45975-04	f	t	f	t	Sangio	Botelho	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
258	pbkdf2_sha256$24000$cbrSd8KTXHR7$g3Yb01YyoAxDXgrrAvJPyoddTn0Bye9sB6mJ9QCs6gE=	2016-07-27 21:42:36.712523-04	f	chilli69@gmail.com	2016-07-27 21:42:36.388686-04	f	t	f	t	Leandro	Barbosa	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
319	pbkdf2_sha256$24000$80ehR1s593hO$P4JyVlKm9V6UoL/GziTEwGwl1i1JIUsB7hxrmZlz6p0=	2016-10-05 21:56:35.532365-04	f	laira.lmartins@hotmail.com	2016-10-05 21:56:35.365302-04	f	t	f	t	Laura	Martins	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
260	pbkdf2_sha256$24000$0NZ8xWX5wXJf$we2Pw6oG73c/ILlDuSceSyssWrtTkUXlugjuvT9ty6M=	2016-07-27 21:48:38.184268-04	f	lcbarbosa@hotmail.com	2016-07-27 21:48:37.768033-04	f	t	f	t	Leandro	Barbosa	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
264	pbkdf2_sha256$24000$t0sVKUIFVXnZ$IW8gA+mw7HE5wEpyGpES5CUjFtjmAgtWQyohDiEkbXU=	2016-07-27 22:59:36.021662-04	f	niltonvitor74@gmail.com	2016-07-27 22:59:35.868555-04	f	t	f	t	ligia	costa	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
234	!IKvOOc2GfT67YwnowaX3lNTQTK4Adss65Uq1JSi1	2016-10-23 22:49:00.477081-04	f	mica_santos@hotmail.com	2016-07-22 00:38:08.08785-04	f	t	f	t	Michelle	Santos	\N	https://graph.facebook.com/10209719125317521/picture	profile/2016/10/24/profile_234.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
160	!epZUOCmYJGR6LfDnxtsR1N8JrdGFgCB9jg6u38Ea	2016-11-21 10:37:56.634876-04	f	ramayana1970@gmail.com	2016-11-21 10:37:56.634876-04	f	t	f	t	Ramayana	Menezes	\N			\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
268	pbkdf2_sha256$24000$dEACCLaKgLs1$eQXqWDHCpL0JO4nNcsOK9p7rNBGV6B1wjRteM9un+m4=	2016-07-28 22:39:52.141608-04	f	paula.vfviana@gmail.com	2016-07-28 22:39:52.036365-04	f	t	f	t	Paula	Ferreira	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
326	pbkdf2_sha256$24000$Thuv4eQHZIEQ$qbcZwzZH2jJS2h3FawBoy1zB20u2XiX5KXBj6fn3cvI=	2016-10-09 11:22:40.105024-04	f	alessandramagalhaes@outlook.com	2016-10-09 11:22:39.983059-04	f	t	f	t	elivandro	souza de lima	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
330	pbkdf2_sha256$24000$XtYMTj9GW2F8$lK4lepzu+jCdG7nPlc0Iz5JkJlB4txHWPqv6KaBkurI=	2016-10-10 15:08:57.192154-04	f	julianasouza956@gmail.com	2016-10-10 15:08:57.027911-04	f	t	f	t	Juliana	Souza	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
301	pbkdf2_sha256$24000$Htu9fJ6Fltb7$pbqSqjqAxg9PjBhx9K8UcB31xZTz5aqeCTjHMnMRD5g=	2016-08-21 21:19:59.545633-04	f	barbsena.cn@gmail.com	2016-08-21 21:19:59.359726-04	f	t	f	t	Bárbara	Sena	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
235	!lETzAqYqQ6iR2IlIGCgRxIPcXCTdIhwa93tw4ogX	2016-07-22 01:27:49.197947-04	f	tatazinha_xp_angel@hotmail.com	2016-07-22 01:27:48.633508-04	f	t	f	t	Tata	Albuquerque	\N	https://graph.facebook.com/1006373386124698/picture	profile/2016/07/22/profile_235.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
238	pbkdf2_sha256$24000$8Hmv5al5Hnj5$+pS0IGRyZp0W9+7jhIVf5ukuZ09V5n6MU+BuVhmOAPc=	2016-07-22 07:24:41.179396-04	f	beto@amandabeautycenter.com.br	2016-07-22 07:24:41.016163-04	f	t	f	t	Luiz Alberto	Pontes	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
239	pbkdf2_sha256$24000$bjoUIKlrzWx7$2op/QnniNbI5Xpi4yDgExlaxDdJU0aRd7twhlZUszh0=	2016-07-22 07:53:13.043564-04	f	JULIANACPLIMA@gmail.com	2016-07-22 07:53:13.043564-04	f	t	f	t	JULIANA	PINHEIRO	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
310	!KiE0BCIUg6v2qP0SJ9pLWLBrazPTMHYq0Gmba9Mt	2016-09-12 13:35:56.706498-04	f	thaisspetry@gmail.com	2016-09-12 13:35:55.875383-04	f	t	f	t	Thaís	Stahlschmidt Petry	\N	https://graph.facebook.com/1237368472993450/picture	profile/2016/09/12/profile_310.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
265	pbkdf2_sha256$24000$6zWgrnAuQUDS$m5sh4I5OJk8yOXVRtuXqGRSwtoZToNwbUtuHnEiXinM=	2016-07-27 23:22:00.231439-04	f	lelefmontero@hotmail.com	2016-07-27 23:22:00.131071-04	f	t	f	t	Leandra	Montero	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
241	!MEamETp9djkymOcCUaiNnammfraJfyl76pYXVxiK	2016-07-22 07:53:53.500988-04	f	monicamonteiro92@gmail.com	2016-07-22 07:53:52.612482-04	f	t	f	t	Monica	Monteiro	\N	https://graph.facebook.com/10206685761640752/picture	profile/2016/07/22/profile_241.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
269	pbkdf2_sha256$24000$nyi8chhlJtCI$kscLsrqYO33SAgc/DOdn3p4VBTiKTQcGJq34jq2BC7E=	2016-07-29 12:22:44.824808-04	f	sofiakimak@hotmail.com	2016-07-29 12:22:44.492672-04	f	t	f	t	Sofia	Kimak	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
271	pbkdf2_sha256$24000$Pgb7CORJ5dI6$kUBwDkasZmgC0RyUJ5WYGxUIq0LF6/jNOIb5ovesgSg=	2016-08-01 18:27:51.557297-04	f	isaias@live.com	2016-08-01 18:27:51.232414-04	f	t	f	t	Isaias	Miguel	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
305	!IT82kimb8UpgU6gk2U6mXBfUxS1iFZZ8FM7hecLp	2016-08-30 23:00:55.509255-04	f	fredaobracher@hotmail.com	2016-08-30 23:00:54.955549-04	f	t	f	t	Frederico	Bracher	\N	https://graph.facebook.com/1151647524872088/picture	profile/2016/08/31/profile_305.jpg	\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
274	pbkdf2_sha256$24000$Cj3adxD6HfGC$haXWQAgVU5Oi7WGbAwPzcpvzB/7Bk8v0+1kuxftM2II=	2016-08-05 00:51:44.941644-04	f	viaegidecorretora@gmail.com	2016-08-05 00:51:44.703186-04	f	t	f	t	Joélia	Medeiros	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
311	!qHWfdt0TDmNdVYP0Qg3cjmK3FNBG3AgxdQnc7iHm	2016-09-15 12:20:13.581495-04	f	jtolledano@hotmail.com	2016-09-15 12:20:12.752837-04	f	t	f	t	Joao	Toledano	\N	https://graph.facebook.com/10154633527594430/picture	profile/2016/09/15/profile_311.jpg	\N	2	2	t	Trabalho com vendas de cosméticos, consultor contábil.	0	0	92993529370	0.00	t	33	f	\N	\N
306	!a3u1y9mjr2x40OOtWyERk9eWz2LBa4jfohu9xUl6	2016-09-01 10:45:20.296159-04	f	marcio1234@hotmail.com	2016-09-01 10:45:19.444785-04	f	t	f	t	Marcio	Assis de Castro	\N	https://graph.facebook.com/10153976811819506/picture	profile/2016/09/01/profile_306.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
322	pbkdf2_sha256$24000$4hBQpENyhK1I$C13M2KryXLGodGhsTQBlxQr/k6mo7Zw0FI2bBzrStew=	2016-10-06 23:07:23.979783-04	f	erikajovanka@hotmail.com	2016-10-06 13:22:38.693444-04	f	t	f	t	Érika Jovanka	Santos da Silva	\N			\N	2	2	t	Sou maquiadora especializada em noivas, peles manchadas e em peles maduras. Aplico técnicas de visagismo.\r\nAtendo em qualquer lugar que for preciso!	0	0	92996145997	0.00	t	35	f	\N	\N
321	pbkdf2_sha256$24000$4J59UkkH8wqj$7Uw2eoAEZVlKFqMU0XydKmyWmXF1cKkTjrAf1EsLSSY=	2016-11-24 23:54:01.907283-04	f	renee_pantoja@hotmail.com	2016-10-06 09:27:33.483907-04	f	t	f	t	Hares House	Serviços Estéticos	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
312	pbkdf2_sha256$24000$lJc3JIJOBX2t$YBFnKa5bcVBwAM5qHl0Fez+0VKCqvpRstPWZVxUq1Qk=	2016-09-19 20:24:05.730693-04	f	mvmconstrucoes.am@gmail.com	2016-09-19 20:20:18.84419-04	f	t	f	t	MVM	Construções	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
337	!1Qjh4KHpMQZVWH9initap6L4xftpq6kxvjiZD8XU	2016-11-23 13:52:58.482087-04	f	souandrefernandes@gmail.com	2016-11-23 13:52:57.959409-04	f	t	f	t	André	Fernandes	\N	https://graph.facebook.com/1147127615342217/picture	profile/2016/11/23/profile_337.jpg	\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
320	pbkdf2_sha256$24000$8UkQjagFrFfw$4JSDdfyQ1A6A4vINIi+oS3i7dgpTi5bGMEbyXJx5ne4=	2016-10-06 07:16:37.426847-04	f	valente.maia@hotmail.com	2016-10-06 07:16:37.062537-04	f	t	f	t	Clinica	Mais Longevidade	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
327	pbkdf2_sha256$24000$EHPbG9iBT24e$MEAm36v1i7GC4gCnqEZCbV8pkuFh7ewYF11jJarOsPY=	2016-10-09 22:21:22-04	f	thaisrochaeuevc@hotmail.com	2016-10-09 22:16:39-04	f	t	f	t	Thaís	R. Figueira De Oliveira	\N	https://graph.facebook.com/10205739776332674/picture	profile/2016/10/09/profile_327.jpg	\N	1	1	f		0	0		0.00	f	\N	f	\N	\N
336	!ITb0TzhrT8kCVZGmOpQgB26nQRmBHplhvuwliwHg	2016-11-22 14:37:33.384746-04	f	drica_dada@yahoo.com.br	2016-11-22 14:37:32.572366-04	f	t	f	t	Adriana	Dada	\N	https://graph.facebook.com/1240530822684421/picture	profile/2016/11/23/profile_336.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
242	!ybqYrYuipYI6ZyyM1kDw5ALj8k8MWkCIWZYkrdJa	2016-07-22 08:03:41.487047-04	f	fernanda.4breu@hotmail.com	2016-07-22 08:03:40.718712-04	f	t	f	t	Fernanda	Abreu	\N	https://graph.facebook.com/1090996744326730/picture	profile/2016/07/22/profile_242.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
270	pbkdf2_sha256$24000$Y5oQklviH8On$D4s8zi5iUcz4Gc8se6jLaulfgluzmUD6vAW0K23esJ4=	2016-07-29 15:04:52.605077-04	f	leslaynegomez@hotmail.com	2016-07-29 15:04:52.434874-04	f	t	f	t	LESLAYNE	GOMEZ	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
243	pbkdf2_sha256$24000$EpJnlVF5vJyD$awgoAQ2OCeLW7Nj54bBQKGFN2ElPA72wHyRn10S699c=	2016-07-22 12:54:05.788349-04	f	claudiapinheiro277@gmail.com	2016-07-22 12:54:05.50453-04	f	t	f	t	Claudia	Pinheiro	\N		profile/2016/07/22/Screenshot_2016-06-09-19-30-17.png	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
302	pbkdf2_sha256$24000$k8214SZgVxIG$8CTQ6Cl3lsh+D54qm7kfPzuzIR2Oo2Ar8xHEC+JpRjs=	2016-08-22 08:42:53.945724-04	f	marina.bbeling@gmail.com	2016-08-22 08:42:53.799628-04	f	t	f	t	marina	Benites	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
347	!T3HT7JN5qBhN3365M4yShUzV369Vl6A7S2toIWNu	2016-11-25 14:19:00.900345-04	f	thiagoalexandres@gmail.com	2016-11-25 14:19:00.091633-04	f	t	f	t	Thiago	Santiago	\N	https://graph.facebook.com/1175375935883510/picture	profile/2016/11/25/profile_347.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
350	!sBn6NkUk7vXuc0brX2lEjw8VMTIH5KkcTzQZ97vq	2016-11-30 14:59:51.778596-04	f	veloso.larissabraga@gmail.com	2016-11-30 14:59:51.23797-04	f	t	f	t	Larissa	Braga Veloso	\N	https://graph.facebook.com/1201765189861167/picture	profile/2016/12/07/profile_350.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
358	pbkdf2_sha256$24000$uuShK3FqtFsW$iNHK92KZA8Au13qJGXPE7GpdIxRnoeOjxg6V+b0/XWs=	2016-12-18 20:40:41.641066-04	f	felipe@jukx.com.br	2016-12-18 19:17:43.79752-04	f	t	f	t	Felipe	Testes	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
272	pbkdf2_sha256$24000$CaIPfRiCQspJ$lRHGOTqXsLmJtXJ+C4Dv9vFAw++O65B3hGMK/GEHk5A=	2016-08-01 20:49:22.378263-04	f	marketing.eleven@gmail.com	2016-08-01 20:47:26.471917-04	f	t	f	t	Eleven	Soluções Criativas	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
252	!0Lwb5HGos9etKvQsrWeiRnqB0uyz9sOmsEP01jzH	2016-07-24 17:10:41.823328-04	f	medeiros_andrea@hotmail.com	2016-07-24 17:10:41.020474-04	f	t	f	t	Andrea	Medeiros	\N	https://graph.facebook.com/1136695099756247/picture	profile/2016/07/24/profile_252.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
323	!rliIDZPqN59BmUW8L5uPmVAkHZHtMyt7GQgxkryi	2016-10-07 06:32:50.613877-04	f	echo_a_m@yahoo.com.br	2016-10-07 06:32:49.798704-04	f	t	f	t	Marcello	Victor Soares Braga	\N	https://graph.facebook.com/1551912471492211/picture	profile/2016/10/08/profile_323.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
307	pbkdf2_sha256$24000$ct676ZAlOrDp$LJoREKuPfF36mVCyF29XS1hIVcbPtTpQJjfWjYXNKPw=	2016-09-01 18:53:30.939494-04	f	fernando.ian@hotmail.com	2016-09-01 18:53:30.84967-04	f	t	f	t	fg instalaçoes e	seviços	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
280	!J1wCuoFnTPqbmLF89vebK4vYYX6s5g4sOJJqTsJv	2016-09-18 16:52:33.200196-04	f	dpf_fisio@hotmail.com	2016-08-09 21:22:35.034742-04	f	t	f	t	Deane	P. F. Guedes	\N	https://graph.facebook.com/10205275541682596/picture	profile/2016/09/18/profile_280.jpg	\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
332	!mhZTfMw1ouGpkcoIubNhJlTmL1yjEH0WP30tPm50	2016-10-11 13:22:19.249701-04	f	honorio.nobrega@outlook.com	2016-10-11 05:52:13.663965-04	f	t	f	t	Honorio	Nobrega Junior	\N	https://graph.facebook.com/1774983726123286/picture	profile/2016/10/11/profile_332.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
256	!4cNjzDGKpTYh6aOTSBnYkxoald23bl38BZhfi9sV	2016-07-27 01:16:18.995661-04	f	joelia.medeiros@hotmail.com	2016-07-27 01:16:17.114518-04	f	t	f	t	Joelia	Thomas Medeiros	\N	https://graph.facebook.com/10205196138502490/picture	profile/2016/07/27/profile_256.jpg	\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
288	pbkdf2_sha256$24000$61H2FhRDyYEq$mBUcV73GvVviTQLWMTAcMoCfCylgNYvWkp7EnPj4q/o=	2016-08-16 23:19:40.543235-04	f	celio2001@hotmail.com	2016-08-16 23:19:40.348642-04	f	t	f	t	Celio	Araujo	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
266	pbkdf2_sha256$24000$EZHcxxJ8wahi$dc/ISqcuOIAVZqSgBPXNCComyi+u0BsctX6bdgenF0s=	2016-07-28 12:48:03.39444-04	f	contato@estudioncfotografia.com	2016-07-28 12:48:03.29498-04	f	t	f	t	Nathalia	Carvalho	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
292	pbkdf2_sha256$24000$xxcEVa84VNes$mIiF/WbrMWsbtGAuuJfeBU2io1VQRz8DiKUoVKr9fEQ=	2016-08-18 12:31:29.271134-04	f	maysacorreia_@hotmail.com	2016-08-18 12:31:29.090029-04	f	t	f	t	Maysa	Correia	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
294	pbkdf2_sha256$24000$TqUStWduzBFY$otMqHwtz8cY2GjuumxvjtfJmnyl+9sUb0u6l+NQgDak=	2016-08-18 20:17:04.464242-04	f	Fabianadejesus25@icloud.com	2016-08-18 20:17:04.273409-04	f	t	f	t	Fabiana	De Jesus Oliveira	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
303	pbkdf2_sha256$24000$t9FDLmqcXzKr$wVnpphrmzl4kvS4vmieJtFY5tn5tP0STLUatHUmgWoM=	2016-08-22 11:36:39.948579-04	f	mrn.belini@gmail.com	2016-08-22 09:17:36.440205-04	f	t	f	t	Mariana	Belini	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
244	!T988WTf4SgjmPwOXjtWUTOoQhPAlYYwZJ6SlhEtM	2016-07-22 14:19:06.145264-04	f	gabxfelix@gmail.com	2016-07-22 14:19:05.301554-04	f	t	f	t	Gabriella	Félix	\N	https://graph.facebook.com/281304608914375/picture	profile/2016/07/22/profile_244.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
253	!nbFYeofJrUKJSiLAQ7x1ecGax8U4ZT75vWEUSES6	2016-10-10 10:14:47.242501-04	f	taynapereiramendes@hotmail.com	2016-07-26 11:29:43.307498-04	f	t	f	t	Tayná	Mendes	\N	https://graph.facebook.com/1149991271739694/picture	profile/2016/10/10/profile_253.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
245	pbkdf2_sha256$24000$1Stw5I4Jy2cW$UFgDe0XIAvTCM2cf/+RnXzg55wCppaJHqlzutYOz3+g=	2016-07-22 15:37:48.734166-04	f	gildenice.alves@gmail.com	2016-07-22 15:33:34.223245-04	f	t	f	t	Gildenice	Alves	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
246	pbkdf2_sha256$24000$kTQg4cXmF2iv$1IDZygB/WhK7D3CZMLfsa62oWRJA+V3+8eIKFfzN3oM=	2016-07-22 20:27:39.752275-04	f	angelcastro.rc@gmail.com	2016-07-22 20:27:39.65244-04	f	t	f	t	Rosangela	Castro	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
247	pbkdf2_sha256$24000$I4YtaYmQkISF$2YogJjDB1n4vvt8pKKFRwFXybbP0lSJzE/JuDW7osWk=	2016-07-23 11:24:34.617647-04	f	azedo.maria@hotmail.com	2016-07-23 11:24:34.417064-04	f	t	f	t	Maria	Azedo	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
248	pbkdf2_sha256$24000$dhfoDGOJUvN9$kyAE6Apo6mtvqoUVlYGXBfxocscAoe5gF3DyeCMfr78=	2016-07-23 12:14:43.845689-04	f	danielsantos-1986@hotmail.com	2016-07-23 12:14:43.65812-04	f	t	f	t	daniel	santos	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
257	pbkdf2_sha256$24000$MHcisvqK9uHr$lqTWL3AwBTkVNZDgJmyzYAb/jhJ7/DgD4A6L/HtKlP4=	2016-07-27 16:51:03.985072-04	f	thays.lira01@gmail.com	2016-07-27 16:51:03.569449-04	f	t	f	t	thays	lira	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
267	pbkdf2_sha256$24000$DNnCgb4AfH3L$iqr8VUEtlC4WngJeDyhJsY7Y3elyR+lbz5kak2lHlDE=	2016-07-28 16:50:58.369969-04	f	bio_froes@hotmail.com	2016-07-28 16:50:58.150979-04	f	t	f	t	Fabricio	Froes	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
317	pbkdf2_sha256$24000$T8oKDxNqnyjn$fKmQbaTF2j6Wy1qWqedsS0cYhK+YD9OnbJ0HMOD5yaE=	2016-10-05 15:43:54.511942-04	f	amgesta@yahoo.com.br	2016-10-05 15:43:54.370946-04	f	t	f	t	André	Marinho Gesta de Melo	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
273	pbkdf2_sha256$24000$DhCZzGoNDNI7$JPruovTqMAgd+BG9zju2zgWQt/QQYHl0cBLsunwoC/o=	2016-08-02 12:44:02.675309-04	f	diegosprnascimento@hotmail.com	2016-08-02 12:44:02.158835-04	f	t	f	t	Diego	Nascimento	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
329	pbkdf2_sha256$24000$qcRS4aIZ86g6$nQhdkNEzenQQZhRcTVktICz51l1Bn0IIInY6DPxU14k=	2016-10-10 10:26:52.526666-04	f	santapellemanaus@gmail.com	2016-10-10 10:26:52.095898-04	f	t	f	t	Tayná	Mendes	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
278	pbkdf2_sha256$24000$CQceIC2tm4gf$aI19aBr4TSyGT+ErM2Vj5wsfjJ4WKQkNZgymqkgLmQc=	2016-08-10 19:59:13.453731-04	f	ramayana@prodam.am.gov.br	2016-08-05 14:54:46.330276-04	f	t	f	t	Ramayana	Menezes	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
324	!e6uWBPwiy9fSB6T2XXmliowH2BeuNrFXdqn9blCY	2016-10-08 06:34:48.219901-04	f	mayaraneves18@hotmail.com	2016-10-08 06:34:47.614253-04	f	t	f	t	Mayara	Neves	\N	https://graph.facebook.com/1112016668834689/picture	profile/2016/10/08/profile_324.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
308	pbkdf2_sha256$24000$FwG9AR4F1QZi$2n/IQfqYxYtJiLwhD+O3rXyhofnMBSyvWgw0L6r4puo=	2016-10-21 09:26:09.871836-04	f	marcia.calderaro@hotmail.com	2016-09-02 20:30:53.908803-04	f	t	f	t	Marcia	Calderaro	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
2	!DyZYEUOi9yjTDhLOEwOCusKmSuDHdnFmQplsfkDX	2016-10-17 02:08:54.651344-04	f	pqpayla@hotmail.com	2016-10-17 02:02:52.138003-04	f	t	f	t	Ayla	Souza	\N	https://graph.facebook.com/1353452071385211/picture	profile/2016/10/17/profile_2.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
4	pbkdf2_sha256$24000$wmpzJsni7aTu$rDumCXBdWBkv+O1ZJ2t3u01nUuD2onl9xEoqFk2IgiA=	2016-10-17 14:51:00.369813-04	f	josemiguel@bol.com.br	2016-10-17 14:50:58.632849-04	f	t	f	t	Joselito	Miguel	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
5	pbkdf2_sha256$24000$SOT2ugKEJYhk$9G/QiwWBuVgnaoGGqdc1Hz320IR3S9IvkoWTT0Dkvzc=	2016-10-18 10:04:24.040974-04	f	celio20001@bol.com	2016-10-18 10:04:23.878887-04	f	t	f	t	Celio	Almeida	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
6	!sN37RtlKoHVvyOAb3woZkVrBZv8AtbbCzDrNClCq	2016-10-18 22:24:21.98052-04	f	dsazulay@gmail.com	2016-10-18 22:24:20.720423-04	f	t	f	t	Diego	Azulay	\N	https://graph.facebook.com/1466014640080963/picture	profile/2016/10/19/profile_6.jpg	\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
7	pbkdf2_sha256$24000$4SqKzQuaeYaW$u7oZ3ULpCzuTHxZH6a6EXjiGI1xRFO+BS0OCVKeF79I=	2016-10-20 19:14:06.195878-04	f	dsazulay@hotmail.com	2016-10-20 18:41:54.535262-04	f	t	f	t	Diego	Azulay	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
8	!VNXnw3WZhewWLGQiWQLHndMPnMSZVTV4JzHVxXN7	2016-10-20 19:16:13.406254-04	f	wallacemedeiros740@gmail.com	2016-10-20 19:16:12.433753-04	f	t	f	t	Wallace	Medeiros	\N	https://graph.facebook.com/343748905971703/picture	profile/2016/10/20/profile_8.jpg	\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
348	!WlADZdxj3k81O5MWJ3jBAGXCi1HXPAsYf1Unn9vu	2016-11-28 13:39:04.066987-04	f	lulobaum@gmail.com	2016-11-28 13:39:03.334372-04	f	t	f	t	Luana	Lobão	\N	https://graph.facebook.com/1142665782435177/picture	profile/2016/11/28/profile_348.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
21	pbkdf2_sha256$24000$DVJyfqrO3a2x$Y7wSZ10uHQSsPEcCLiW00M7+y7PC/fVX/3Pg1i1mfTI=	2016-10-23 20:27:53.77151-04	f	lisiane271@hotmail.com	2016-10-23 20:27:53.608619-04	f	t	f	t	Lisi	Chiroque	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
10	pbkdf2_sha256$24000$5KAFLDzr48SG$ZXkj7FnlWz+jCsaMVUCeTfccDFsPutIiBxWpVzmI6Pg=	2016-10-21 19:51:41.831819-04	f	mar.rosiane@hotmail.com	2016-10-21 19:51:41.683202-04	f	t	f	t	Rosiane	Mar	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
12	!XsDkaayV2GTSLNlxLjFmkgPE2Qj2Fy8zenlUlcYu	2016-10-22 23:18:55.758171-04	f	dra.mariliaoliveira@gmail.com	2016-10-22 23:18:55.758171-04	f	t	f	t	Marilia	Oliveira	\N			\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
351	pbkdf2_sha256$24000$Mjfr5NYm8n7N$xpPStGrKZ6NP+oW1aJjM9wEOSLsFUsWeHLkKid7ldM8=	2016-11-30 19:10:23.263725-04	f	lisborgesmakeup@gmai.com	2016-11-30 19:10:23.147565-04	f	t	f	t	Lisiane	Borges Makeup	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
356	pbkdf2_sha256$24000$wIG8uE5cus8H$IH5CkSXbgWmBZ93mmaIyNlpwNR7r1T+AdjJM/GuLcao=	2016-12-09 10:27:02.38716-04	f	reinaldokalisto@hotmail.com	2016-12-09 10:27:02.142211-04	f	t	f	t	Michele	Guedes	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
30	pbkdf2_sha256$24000$s6U6w7ghiptP$Tl8duyWsjXdWn5gJqhVGJhb6Vil8w18kJ6FBkxl1udI=	2016-10-26 23:26:52.480961-04	f	dennysantony@gmail.com	2016-10-26 23:26:51.512009-04	f	t	f	t	Dennys	Antony dos Santos	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
22	pbkdf2_sha256$24000$3uKmundXDNmv$llTsCv7airVJPXca3O9WSi94vd2lWRk9LIOeuJOqPd4=	2016-10-23 22:43:04.823673-04	f	paulo.sucesso@gmail.com	2016-10-23 22:43:04.70879-04	f	t	f	t	PAULO	FILHO	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
16	!YTvujwakrBZ87fp4mCx5iWW4OFKYiG6exHxPgKWZ	2016-10-23 16:43:07.754609-04	f	palomatavares@gmail.com	2016-10-23 16:43:06.665162-04	f	t	f	t	Paloma	Tavares	\N	https://graph.facebook.com/1251075208256347/picture	profile/2016/10/23/profile_16.jpg	\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
354	pbkdf2_sha256$24000$pU6SGsmMy0I2$vBOl4weyC+eiFWTBW7dKaUgzwx7y3VlAE9V6gyyDYyg=	2016-12-03 20:41:46.320901-04	f	sandra.sr.807@gmail.com.br	2016-12-03 20:41:46.22362-04	f	t	f	t	Sandra Regina de oliveira	Oliveira	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
23	!cw02elJlM6urYeqrSP1HQf8x7FFMq6wG8HnJkhDy	2016-10-23 23:21:11.327449-04	f	claudia2cartorio@hotmail.com	2016-10-23 23:21:10.655361-04	f	t	f	t	Claudia	Ribeiro	\N	https://graph.facebook.com/508174255973784/picture	profile/2016/10/24/profile_23.jpg	\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
33	!A0cDE1FFxtjBPvePIAaOWarRlEAvFfSXFWyFTHId	2016-10-27 15:11:26.762338-04	f	lili.potter6@gmail.com	2016-10-27 15:11:26.762338-04	f	t	f	t	Aline	Vasconcelos	\N			\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
25	pbkdf2_sha256$24000$4DhocqEyGiiX$16q4YrJTdJEXCnZ1Q6DF27v6SbX28zHzMct87Ir6RjE=	2016-10-23 23:24:31.764634-04	f	crcastroribeiro@gmail.com	2016-10-23 23:24:31.685066-04	f	t	f	t	Claudia	Ribeiro	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
360	pbkdf2_sha256$24000$JJ7NGRTRzN5Q$KIrNel3vPxYJLJ6GbHJ7K1kP4e8X3GWbBlOIal/uF48=	2016-12-31 10:54:21.846813-04	f	contato@acertecertificadora.com.br	2016-12-31 10:54:21.715099-04	f	t	f	t	Acerte certificadora	Certificado digital	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
77	pbkdf2_sha256$24000$xsvN7kjcZy58$Aosz9b3ycFU6zvkKuGgNWUkvyhJyWMaKDJzqIsQqIrM=	2017-02-06 10:07:28.081725-04	f	felipe_gutobc@hotmail.com	2016-11-01 18:13:18.896624-04	f	t	f	t	ANDRE	SANTORO	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
35	!7EgytGKNYR9AirnR4NUZjUKKyuKjQKK3zcwSDmKY	2016-10-28 20:02:32.818389-04	f	estevescaricaturas@gmail.com	2016-10-28 20:02:32.818389-04	f	t	f	t	Esteves	Caricaturas	\N			\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
36	!7sA3XO2Lh4ft5rp7Y4yexVuDJgcag1GFGk7kZHvi	2016-10-30 08:16:08.635076-04	f	wendellenrycco2322@gmail.com	2016-10-30 08:16:08.635076-04	f	t	f	t	Wendell	Queiroz	\N			\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
37	pbkdf2_sha256$24000$1fyZEgRB42t6$6sLsBXlhdNxYvWf6H6aMjGB9NWhqhuD6yMafN/pNDs0=	2016-10-30 08:43:39.938851-04	f	assiswendelll@gmail.com	2016-10-30 08:43:39.818498-04	f	t	f	t	Wendell	Queiroz	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
38	pbkdf2_sha256$24000$40VaD6JQWigZ$+JcRHG4R6jOZSNkdGvZv3+yxLX1YiJyflONxsRu8UUA=	2016-10-30 18:19:47.297534-04	f	soarescarlet@gmail.com	2016-10-30 18:19:47.11482-04	f	t	f	t	Bárbara	Scarlet	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
42	!LtuWpNzrCgCVRF45HIYz9yFyZaSPiNPzHgFiIUh5	2016-10-31 15:55:08.093921-04	f	adrianofreitas5@hotmail.com	2016-10-31 15:55:08.093921-04	f	t	f	t	Adriano	Freitas	\N			\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
43	pbkdf2_sha256$24000$FgNQQ6Th7fm6$d6PIIeROlTyUJv4ybweF9L/n+HkjcyEB4sUtVZNK0P8=	2016-11-01 14:09:00.466267-04	f	woneivital@hotmail.com	2016-11-01 14:09:00.272851-04	f	t	f	t	Wonei	Vital	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
81	!fCr1ou2oN5mmb5dabVcOJnrXT0CMWLJAsI9owxJ3	2016-11-02 12:26:34.925149-04	f	ingra_castelo@hotmail.com	2016-11-02 12:26:34.925149-04	f	t	f	t	Ingra	Castelo Branco	\N			\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
76	pbkdf2_sha256$24000$MZtfHz6GpmCW$CqRGZz+1WMPYVnKpYU/1yrFHpovux06er0frEL2S3HY=	2016-11-01 18:12:33.426435-04	f	mic.bell81@gmail.com	2016-11-01 18:12:32.50432-04	f	t	f	t	Michelle	Lima	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
79	pbkdf2_sha256$24000$wtZvVNOnBQUd$vff6ligxtEOjWCANx4GLDGXc0dOeBOklfG0HnQ03hTA=	2016-11-02 08:40:39.928095-04	f	Andrezafernanda_Soares@hotmail.com	2016-11-02 08:40:39.240112-04	f	t	f	t	Andreza	Soares	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
85	!x9rcUIF8kQNFkfrddRC2GoxyOOtdhStdLiSTJRJQ	2016-11-02 23:16:35.295232-04	f	ingridcblima@gmail.com	2016-11-02 23:16:35.295232-04	f	t	f	t	Ingrid	Cristina Lima	\N			\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
87	pbkdf2_sha256$24000$ZwcPsSGZ62Rj$tomBZ5iYUcHFwr7sCDY9b7YxMag4ibHPXm84TNPuWaI=	2016-11-03 14:08:05.801467-04	f	lidianebmelo@hotmail.com	2016-11-03 14:08:05.640745-04	f	t	f	t	Lidiane	Maciel	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
89	!KxyKNVRihXiSySHVpUx82S2aIwTsB16qIkcIVLbF	2016-11-04 13:03:13.284355-04	f	mitto@emci.com.br	2016-11-04 13:03:13.284355-04	f	t	f	t	Mitto	Santos	\N			\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
91	!MiS3He0aVSBOHuLBPANPkzdmgLwXNh169efYv0YC	2016-11-04 19:05:31.26895-04	f	mayaragrimm@me.com	2016-11-04 19:05:31.26895-04	f	t	f	t	Mayara	Grimm	\N			\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
93	pbkdf2_sha256$24000$xqrFiuQ1O5Ul$QoyYSqh09FIw6orBZRcEZzSNL8zQlqYKZ8O3ipkU2tE=	2016-11-04 21:15:43.172352-04	f	chris_manaus@hotmail.com	2016-11-04 21:15:42.96757-04	f	t	f	t	Christianny	Sena	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
112	pbkdf2_sha256$24000$dqiN1V1P2gmg$oNVaB6i+DzkWP4VDXoNmW3UYKTpGN0ky3PiyRHN5JRo=	2016-11-09 08:55:12.425027-04	f	sbellezalucy@gmail.com	2016-11-09 08:55:12.313601-04	f	t	f	t	Luciana	Santos	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
101	pbkdf2_sha256$24000$6MIsuDQJS0Nh$WqEnwn2TYkQIrhX4bBK9tyOk5RRvoPiO9GohFSLMwjI=	2016-11-05 11:37:58.444589-04	f	marlianesantarem30@gmail.com	2016-11-05 11:32:44.599687-04	f	t	f	t	marliane	santarem	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
113	pbkdf2_sha256$24000$3XhLYIhYYFbK$md7P4t543onbRLd+iKxVJ/hgN6bzpxHbCGsSvX+Ynb0=	2016-11-09 09:56:14.963774-04	f	esenna170285@gmail.com	2016-11-09 09:56:14.788336-04	f	t	f	t	eliane	sena	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
102	!T8RJjvV68CCD63lKZz0rTKpPmkX4RESERmxHdMhQ	2016-11-05 15:38:46.551705-04	f	map_035@hotmail.com	2016-11-05 15:38:45.556521-04	f	t	f	t	Marcio	Alves	\N	https://graph.facebook.com/1136971626371499/picture	profile/2016/11/05/profile_102.jpg	\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
119	!HdjmrnZoEI83PKsEq7O6miotxfKzbHCmCW2ohyH4	2016-11-16 12:55:18.73238-04	f	marluceassimen@gmail.com	2016-11-16 12:55:17.908588-04	f	t	f	t	Marluce	Assimen	\N	https://graph.facebook.com/1261887047215660/picture	profile/2016/11/16/profile_119.jpg	\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
104	pbkdf2_sha256$24000$1dBGDLaL4n4r$BdaZLIO6NiJ3C/n22KooNGeoWdmJVuKyY6QOjuiLVcg=	2016-11-05 16:03:57.306961-04	f	jurimarmaiajr@hotmail.com	2016-11-05 16:03:57.204062-04	f	t	f	t	Jurimar	Maia	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
114	!JZpd8qRlA7FN3eRMSXXh7IctN5MTP2DnKq0QYuax	2016-11-10 10:16:12.891114-04	f	santiagomarcilene@gmail.com	2016-11-10 10:16:12.064577-04	f	t	f	t	Marcilene	Santiago	\N	https://graph.facebook.com/1034114506696925/picture	profile/2016/11/10/profile_114.jpg	\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
105	!syrLSqLHHFUQqXoONPx7cp3hoULAueITHxP2aj2j	2016-11-05 17:05:25.925891-04	f	joyce_dannay@hotmail.com	2016-11-05 17:05:25.357311-04	f	t	f	t	Joyce	Dannay	\N	https://graph.facebook.com/10205876962442947/picture	profile/2016/11/05/profile_105.jpg	\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
107	pbkdf2_sha256$24000$RY9nOUg48sKp$qbfR7+jz5HpgCNV50YJx3J1H/wyUm1vhSqeGH9WwFj8=	2016-11-05 20:31:28.458131-04	f	hudsandrakat@hotmail.com	2016-11-05 20:31:28.36753-04	f	t	f	t	Hudsandra	Teixeira	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
352	!5lqdXlmFeOOZu2T29JPQDjpJHQGCOXejMHs5bIg6	2016-11-30 19:30:49.435389-04	f	lisianelcborges@gmail.com	2016-11-30 19:21:37.950242-04	f	t	f	t	Lisiane	Borges	\N	https://graph.facebook.com/1456280187733172/picture	profile/2016/11/30/profile_352.jpg	\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
109	pbkdf2_sha256$24000$EnQtmMCXEWeS$kMP55q5ZJCAVXhA0PHEfaXdKcyqnV3R+eZzQ/znM1To=	2016-11-07 09:53:55.591327-04	f	jessyca_cesar@outlook.com	2016-11-07 09:53:55.472518-04	f	t	f	t	Jéssyca	César	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
111	pbkdf2_sha256$24000$obl23vzXHWPt$GJGCCMzaxl/5tVScXhPjAOw9vznqvbntq1rNIW8PSic=	2016-11-08 11:58:36.851184-04	f	ferrarezimae@gmail.com	2016-11-08 11:58:36.705106-04	f	t	f	t	Bruno	Ferrarezi	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
116	!m1MuKqScNcRCE0i73uwVSaysIeyCY5OPkSsIggma	2016-11-11 06:12:30.316334-04	f	luizroberto.pereira16@gmail.com	2016-11-11 06:12:29.637386-04	f	t	f	t	Luiz	Roberto	\N	https://graph.facebook.com/1675645566080189/picture	profile/2016/11/11/profile_116.jpg	\N	\N	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
117	pbkdf2_sha256$24000$CqKiCqjrSnkd$O7GZF5S6Skb7Pk8HxsNUaVFuzozC6zt8bEfPT7E8Wos=	2016-11-14 09:27:48.161786-04	f	uchoaart@gmail.com	2016-11-14 09:23:27.900287-04	f	t	f	t	SÉRGIO	UCHÔA	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
359	!YAzeu4bFzV1j8LSbsjW4pOop1cTEjpqk4Qp0eSJn	2016-12-27 17:28:19.783011-04	f	geraldofarias92@gmail.com	2016-12-27 17:28:19.340907-04	f	t	f	t	Geraldo	Augusto Farias	\N	https://graph.facebook.com/1327111284030044/picture	profile/2016/12/27/profile_359.jpg	\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
118	pbkdf2_sha256$24000$cXrAjb8L91y5$ZTYIXzokfIZMx/ICha3hMnEdlbRn0yII8R5DwTRduMs=	2016-11-14 20:00:06.611218-04	f	financeiro@cliviva.com.br	2016-11-14 20:00:06.42259-04	f	t	f	t	Clínica Cliviva	Centro Médico da Liberdade	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
355	pbkdf2_sha256$24000$BHNWiCibREc3$HIJeV6NRtRX79z2pYR9KAsbnLHU1CpO2KxfiPX3Wde4=	2016-12-06 18:50:40.840386-04	f	rafaelsilva181@outlook.com	2016-12-06 18:48:01.937891-04	f	t	f	t	Rafael	da Silva Pedroso	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
349	!0qYPGjn8j6xjpxH9XDzN6NO5YZinrNN8RTGJtpda	2016-11-30 09:21:59.038956-04	f	raiinonata@hotmail.com	2016-11-30 09:21:58.03942-04	f	t	f	t	Ray	Silva	\N	https://graph.facebook.com/985651848214123/picture	profile/2016/11/30/profile_349.jpg	\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
131	pbkdf2_sha256$24000$nVg0dWXpTy1W$Pc0UZXMkoVdtOhlQuKJQty6bcieqmxjyuo4Yj4VVO0Y=	2016-11-19 10:54:21.493648-04	f	breno@vanguardacomunicacao.com.br	2016-11-19 10:22:58.756564-04	f	t	f	t	Breno	Maciel	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
129	pbkdf2_sha256$24000$w2fLFuMtOvzN$TfARPHY1U2Z4kEmy4wHHMeLdGpzfj3gfORJdS/f8GJM=	2016-11-18 21:45:46.167908-04	f	biamorares796@gmail.com	2016-11-18 21:45:46.024653-04	f	t	f	t	Bia	Moraes	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
141	pbkdf2_sha256$24000$buJni1j6baUB$U/FPMRO6VGYSWlrn1cIdtKWocCtTkVvUoRVICg/6vx0=	2017-02-06 21:02:09.543086-04	f	rrrrr@email.com	2016-11-19 12:39:17-04	f	t	f	t	Ra	Figua	\N	https://graph.facebook.com/136448916868667/picture	profile/2017/02/06/profile_141.jpg	\N	2	1	t	Sou diarista	3.6000000000000001	1	1199998765	0.00	t	2	f	\N	\N
130	pbkdf2_sha256$24000$X6rTWBgPGTfb$VNofHxOA7WRp0ZyFWzQZ2U+jgtH2QHJkvV6e2Re20qc=	2016-11-18 21:48:50.527546-04	f	mariamoraes796@gmail.com	2016-11-18 21:48:50.442052-04	f	t	f	t	Maria	Moraes	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
140	!SxMajXSJR9HxrlfPobGOn93oH86MFMHEnXEZMi3O	2016-12-19 18:31:44.688311-04	t	rnovellino@gmail.com	2016-11-19 12:26:21-04	t	t	f	t	Raoni	Novellino	\N	https://graph.facebook.com/10207068720506061/picture	profile/2016/12/19/profile_140.jpg	\N	1	0	f		0	0	11991109009	0.00	f	\N	f	\N	\N
357	!qwRwFJWDPHCoeS2Y0IyaXcCKEFFHsiD1c035MMyS	2016-12-18 20:42:10.812307-04	f	felipe.carvalho07@gmail.com	2016-12-18 15:08:02.010819-04	f	t	f	t	Felipe	Carvalho	\N	https://graph.facebook.com/10209754042922126/picture	profile/2016/12/29/profile_357.jpg	\N	1	0	f	\N	0	0	92984201817	0.00	f	\N	f	\N	\N
361	pbkdf2_sha256$24000$1gOVcONmqSlc$cmPrbi20bFIvtoaom6U9pMb1rik8b8h1crA+ZtbAvMs=	2017-01-03 09:31:41.054229-04	f	dra.janainafurtado@gmail.com	2017-01-03 09:31:40.803193-04	f	t	f	t	Janaina	Furtado	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
362	pbkdf2_sha256$24000$qY7DeqbMCX83$7DVA/eLl044dBcQg/wCnrsy7AUK0U9zB5mVrqvES2Js=	2017-01-04 13:14:05.806128-04	f	maialarissa216@gmail.com	2017-01-04 13:14:05.642545-04	f	t	f	t	Larissa	Mais	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
363	pbkdf2_sha256$24000$RdtPfS5fqzvc$2+MEvaFkMt7kIIJmYycOc0C8HLLRgeh4OKeS6ME/ySY=	2017-01-08 12:12:33.625003-04	f	clydomarevomel@hotmail.com	2017-01-08 12:12:33.356874-04	f	t	f	t	CLYDOMAR	MATOS	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
364	pbkdf2_sha256$24000$LmyNcBxxIg8D$bdBfjS1wwFWeVcg9BL5cBCubKfAMvEdbBjrkFJh9VgI=	2017-01-08 12:49:38.639828-04	f	aldemirn50@gmail.com	2017-01-08 12:49:38.458409-04	f	t	f	t	Aldemir	Nascimento	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
365	pbkdf2_sha256$24000$0XB4NR3TkWfG$Fv6vtON9ThGYR1T02Gu2EDb/zJzM5AdenTa9RFcWD3Q=	2017-01-18 10:12:59.905738-04	f	souza-samanta@hotmail.com	2017-01-18 10:12:59.752987-04	f	t	f	t	Samanta	Souza	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
78	pbkdf2_sha256$24000$n5kSEypE2g6z$+rKuEErplyZ+BFYw+SnrjMCXuskux7DX2/SNPFuA2Us=	2017-01-24 19:20:31.254274-04	t	master@indicoapp.com.br	2016-06-28 05:33:41-04	t	t	f	t	Davi	Monteiro	\N	https://graph.facebook.com/1144082712308478/picture	profile/2017/02/06/profile_78.jpg	\N	1	1	t		0	0	92982652715	100.00	t	14	f	\N	\N
374	!xhkUEsDjQkVZrvbHDl8HtE7lX3OrEhyA815LPV4s	2017-01-26 15:44:45.840745-04	f	mayara_braz@hotmail.com	2017-01-26 15:44:45.635205-04	f	t	f	t	Mayara	Braz	\N	https://graph.facebook.com/10206289310791656/picture	profile/2017/01/26/profile_374.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
353	pbkdf2_sha256$24000$sms3zEXzIMtG$YG3O00Aoc1Mr4QLcWiXXUa7kVTEjsRXVndjjgA+Kddc=	2017-02-06 20:05:51.969059-04	t	funk1470@yahoo.com	2016-12-02 10:59:23-04	t	t	f	t	Raoni	Novellino	\N			\N	1	0	f		0	0		0.00	f	\N	f	\N	\N
377	!N6RWBoHzrfMb4ixolE9gWK2B20FHBl8q5lCMa8DW	2017-01-29 12:48:00.250899-04	f	biancaelita97@hotmail.com	2017-01-29 12:47:59.599397-04	f	t	f	t	Bianca	Elita	\N	https://graph.facebook.com/624711637715583/picture	profile/2017/01/29/profile_377.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
39	pbkdf2_sha256$24000$stZPO0M3Xwkp$j3SrIytiHtY5KwBJ1krf283MxGz6B5qapQAKwNbA8oU=	2017-01-29 20:02:16.239668-04	t	elton@hotmail.com	2016-06-21 09:08:53-04	t	t	f	t	Ramayana	Menezes	\N	https://graph.facebook.com/1409594705724802/picture	profile/2016/11/20/profile_39.jpg	\N	1	0	f		0	0	92981191519	\N	f	\N	f	\N	\N
379	pbkdf2_sha256$24000$mhSdzkxfQ91J$3SCUkc9BFlJ5XjFh6PMsBSYqFTJPHwbNvy1u8rJ5Qkk=	2017-01-31 23:10:40.017254-04	f	testando@testando.com	2017-01-31 23:10:39.704198-04	f	t	f	t	Testando	Testando	\N			\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
380	!Rxf9eSy0ENGOAhbIMOTGYFDnotLlyAl60JngGlGp	2017-02-01 08:04:48.273965-04	f	patrikrc@hotmail.com	2017-02-01 08:04:47.267793-04	f	t	f	t	Patrik	Ribeiro Costa	\N	https://graph.facebook.com/1598483603500750/picture	profile/2017/02/01/profile_380.jpg	\N	2	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
405	pbkdf2_sha256$24000$WyAonsrePpul$7dwWFBZkpupKhqvXf3Lv2M1AoWiMf6ifRqTFDlQP90I=	2017-04-11 04:53:09.644652-04	f	yanbrandaodiniz	2017-04-11 04:53:09.557094-04	f	t	f	t	Novo	Teste	\N		profile/2017/04/11/ak.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f		
402	pbkdf2_sha256$24000$DV6yUEnMDblB$7+K7OmY3UvxUdgnIV6DzvsEN9wgP6BLfUZ4+geV1xHU=	2017-04-11 04:50:54.448788-04	f	yan_b-@hotmail.com	2017-04-08 04:11:25-04	f	t	f	t	Yan	Trabalhador	\N		profile/2017/04/11/o2624426.jpg	\N	2	2	t		0	0		0.00	t	58	f	4:00 AM|1:15 AM|7:15 AM|6:15 AM|12:15 AM|4:15 AM|4:15 AM|1:15 AM|6:15 AM|7:15 AM|4:15 AM|4:15 AM|4:15 AM|4:15 AM	
401	pbkdf2_sha256$24000$BhYG5q78i20C$N5VY297AfkER5jnZo0mrSIxghxm7byzwqFLBHDnzkvc=	2017-04-07 23:42:54.564811-04	f	teste123	2017-04-07 23:41:57-04	f	t	f	t	Teste	Manaus	\N			\N	2	2	f		0	0		0.00	f	\N	f		
404	pbkdf2_sha256$24000$9cYU75NFlLTR$7BSBS4+g+RVcxq584TuHOqvdBljkUql6YPDvxI9ry6M=	2017-04-11 05:57:49.99661-04	f	testeindikko@indikko.com	2017-04-11 04:37:52.85022-04	f	t	f	t	Alessandra	Tapajós	\N		profile/2017/04/11/dota_2_stamp_by_zakafein-d5ckk79.gif	\N	2	3	t		0	0	\N	0.00	t	60	f		
403	pbkdf2_sha256$24000$9wrljanWdiAS$eiKNT4DBL7v1PKQeyFFzp4d0CWVwstQDx3TZKSxswGo=	2017-04-08 04:21:16.137616-04	f	novo_trab	2017-04-08 04:18:37-04	f	t	f	t	Novo	Trabalhador	\N			\N	2	2	t		0	0		0.00	t	59	f		
406	pbkdf2_sha256$24000$hha8TMqZIKhP$qdmAzmmxfgfA4HEDGAfpDr3+kdpMRki2weRz5oN1QBw=	2017-04-13 14:47:21.721403-04	f	huehue	2017-04-11 05:19:23-04	f	t	f	t	Mais	Um Novo	\N		profile/2017/04/11/dota_2___morphling_by_yonggfx-d5diols.jpg	\N	2	2	t		5	0		0.00	t	61	f		
375	pbkdf2_sha256$24000$8TwtPnGZhcnt$Wr0swc5ek/Awb6EPNkbUZdOFyigsF+zGEuVsnFU1R00=	2017-04-18 02:17:41.627387-04	t	ybrandao.d@gmail.com	2017-01-27 02:46:57-04	t	t	f	t	Yan	Brandão	\N		profile/2017/04/11/alleria_windrunner__dota_2__by_epalsimac45-d4xqbh2.jpg	\N	2	2	t	Sou zica	4.46	0	92981400474	0.00	t	45	t	\N	Maria Bunita
400	pbkdf2_sha256$24000$GNHJW1pBNQPq$an6bUgHrvrOZIyBNorUV2zSCRkDdDGQtIRSRc2jPRqA=	2017-04-11 06:17:03.575174-04	f	maonaindikko	2017-04-07 21:01:59.075757-04	f	t	f	t	Manaus	Indikko	\N			\N	2	3	t		0	0	\N	0.00	t	62	f		
\.


--
-- TOC entry 2738 (class 0 OID 16451)
-- Dependencies: 204
-- Data for Name: core_indicouser_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_indicouser_categories (id, indicouser_id, servicecategory_id) FROM stdin;
13	78	1
19	134	1
30	181	1
35	311	62
37	322	22
119	402	10
120	403	2
121	404	32
122	406	15
123	400	14
124	406	64
125	375	64
\.


--
-- TOC entry 2872 (class 0 OID 0)
-- Dependencies: 205
-- Name: core_indicouser_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_indicouser_categories_id_seq', 125, true);


--
-- TOC entry 2740 (class 0 OID 16456)
-- Dependencies: 206
-- Data for Name: core_indicouser_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_indicouser_groups (id, indicouser_id, group_id) FROM stdin;
\.


--
-- TOC entry 2873 (class 0 OID 0)
-- Dependencies: 207
-- Name: core_indicouser_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_indicouser_groups_id_seq', 1, false);


--
-- TOC entry 2874 (class 0 OID 0)
-- Dependencies: 208
-- Name: core_indicouser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_indicouser_id_seq', 406, true);


--
-- TOC entry 2743 (class 0 OID 16463)
-- Dependencies: 209
-- Data for Name: core_indicouser_skills; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_indicouser_skills (id, indicouser_id, skill_id) FROM stdin;
73	181	1
74	181	2
75	181	3
76	181	5
77	181	6
86	311	244
88	322	81
89	322	87
90	322	245
35	78	1
36	78	2
37	78	3
38	78	4
39	78	5
40	78	6
41	78	7
57	134	1
58	134	2
2	141	1
3	141	2
4	141	3
5	141	4
6	141	5
7	141	6
218	406	248
222	375	170
223	375	248
\.


--
-- TOC entry 2875 (class 0 OID 0)
-- Dependencies: 210
-- Name: core_indicouser_skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_indicouser_skills_id_seq', 223, true);


--
-- TOC entry 2745 (class 0 OID 16468)
-- Dependencies: 211
-- Data for Name: core_indicouser_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_indicouser_user_permissions (id, indicouser_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2876 (class 0 OID 0)
-- Dependencies: 212
-- Name: core_indicouser_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_indicouser_user_permissions_id_seq', 1, false);


--
-- TOC entry 2811 (class 0 OID 73847)
-- Dependencies: 277
-- Data for Name: core_indicouser_work_zones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_indicouser_work_zones (id, indicouser_id, workzone_id) FROM stdin;
7	375	10
\.


--
-- TOC entry 2747 (class 0 OID 16473)
-- Dependencies: 213
-- Data for Name: core_notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_notification (id, message, is_read, level, to_id) FROM stdin;
3	A Solicitação cod. 2 foi aceita pelo profissional.	f	2	75
4	A Solicitação cod. 2 foi iniciada pelo profissional.	f	2	75
5	A Solicitação cod. 2 foi finalizada pelo profissional.	f	2	75
15	Solicitação cod. 10 foi rejeitada pelo profissional.	f	6	108
42	A Solicitação cod. 17 foi iniciada pelo profissional.	f	2	108
70	A Solicitação cod. 28 foi aceita pelo profissional.	f	2	185
72	Solicitação cod. 29 foi rejeitada pelo profissional.	f	6	185
74	A Solicitação cod. 30 foi aceita pelo profissional.	f	2	185
28	A Solicitação cod. 17 foi aceita pelo profissional.	f	2	108
29	A Solicitação cod. 18 foi aceita pelo profissional.	f	2	108
30	A Solicitação cod. 19 foi aceita pelo profissional.	f	2	108
75	A Solicitação cod. 28 foi iniciada pelo profissional.	f	2	185
76	A Solicitação cod. 28 foi finalizada pelo profissional.	f	2	185
78	Solicitação cod. 30 foi cancelada pelo profissional.	f	6	185
37	A Solicitação cod. 22 foi aceita pelo profissional.	f	2	108
43	A Solicitação cod. 17 foi finalizada pelo profissional.	f	2	108
1	Nova solicitação de serviço cod. 1	f	5	141
2	A Solicitação cod. 1 foi aceita pelo profissional.	f	2	78
6	Nova solicitação de serviço cod. 5	f	5	141
7	Solicitação cod. 2 foi rejeitada pelo profissional.	f	6	140
8	A Solicitação cod. 3 foi aceita pelo profissional.	f	2	140
9	Solicitação cod. 3 foi cancelada pelo profissional.	f	6	140
10	A Solicitação cod. 4 foi aceita pelo profissional.	f	2	140
11	A Solicitação cod. 4 foi iniciada pelo profissional.	f	2	140
12	A Solicitação cod. 4 foi finalizada pelo profissional.	f	2	140
13	A Solicitação cod. 1 foi iniciada pelo profissional.	f	2	78
14	A Solicitação cod. 1 foi finalizada pelo profissional.	f	2	78
16	Nova solicitação de serviço cod. 7	f	5	141
81	Nova solicitação de serviço cod. 8	f	5	338
82	A Solicitação cod. 5 foi aceita pelo profissional.	f	2	140
83	A Solicitação cod. 5 foi iniciada pelo profissional.	f	2	140
84	A Solicitação cod. 5 foi finalizada pelo profissional.	f	2	140
85	Nova solicitação de serviço cod. 9	f	5	141
86	A Solicitação cod. 9 foi aceita pelo profissional.	f	2	140
87	Solicitação cod. 9 foi cancelada pelo profissional.	f	6	140
88	Nova solicitação de serviço cod. 10	f	5	338
89	Nova solicitação de serviço cod. 11	f	5	141
90	Nova solicitação de serviço cod. 12	f	5	141
91	A Solicitação cod. 12 foi aceita pelo profissional.	f	2	140
92	A Solicitação cod. 12 foi iniciada pelo profissional.	f	2	140
93	A Solicitação cod. 12 foi finalizada pelo profissional.	f	2	140
94	NOVA AVALIAÇÃO: Raoni Novellino avaliou seu perfil.	f	6	141
95	Nova solicitação de serviço cod. 13	f	5	141
96	Solicitação cod. 13 foi rejeitada pelo profissional.	f	6	140
97	Nova solicitação de serviço cod. 14	f	5	141
103	A Solicitação cod. 17 foi aceita pelo profissional.	f	2	78
104	A Solicitação cod. 17 foi iniciada pelo profissional.	f	2	78
105	A Solicitação cod. 17 foi finalizada pelo profissional.	f	2	78
108	A Solicitação cod. 19 foi aceita pelo profissional.	f	2	78
109	A Solicitação cod. 19 foi iniciada pelo profissional.	f	2	78
110	A Solicitação cod. 19 foi finalizada pelo profissional.	f	2	78
115	Nova solicitação de serviço cod. 21	f	5	141
116	A Solicitação cod. 20 foi aceita pelo profissional.	f	2	375
117	A Solicitação cod. 20 foi iniciada pelo profissional.	f	2	375
118	A Solicitação cod. 20 foi finalizada pelo profissional.	f	2	375
120	A Solicitação cod. 22 foi aceita pelo profissional.	f	2	375
121	A Solicitação cod. 22 foi iniciada pelo profissional.	f	2	375
122	A Solicitação cod. 22 foi finalizada pelo profissional.	f	2	375
124	A Solicitação cod. 23 foi aceita pelo profissional.	f	2	375
125	A Solicitação cod. 23 foi iniciada pelo profissional.	f	2	375
126	A Solicitação cod. 23 foi finalizada pelo profissional.	f	2	375
128	A Solicitação cod. 24 foi aceita pelo profissional.	f	2	375
129	A Solicitação cod. 24 foi iniciada pelo profissional.	f	2	375
130	A Solicitação cod. 24 foi finalizada pelo profissional.	f	2	375
136	Nova solicitação de serviço cod. 32	f	5	141
138	A Solicitação cod. 26 foi aceita pelo profissional.	f	2	375
139	A Solicitação cod. 28 foi aceita pelo profissional.	f	2	375
140	A Solicitação cod. 29 foi aceita pelo profissional.	f	2	375
141	A Solicitação cod. 30 foi aceita pelo profissional.	f	2	375
142	A Solicitação cod. 31 foi aceita pelo profissional.	f	2	375
143	A Solicitação cod. 33 foi aceita pelo profissional.	f	2	375
144	A Solicitação cod. 26 foi iniciada pelo profissional.	f	2	375
145	A Solicitação cod. 28 foi iniciada pelo profissional.	f	2	375
146	A Solicitação cod. 29 foi iniciada pelo profissional.	f	2	375
147	A Solicitação cod. 30 foi iniciada pelo profissional.	f	2	375
148	A Solicitação cod. 31 foi iniciada pelo profissional.	f	2	375
149	A Solicitação cod. 29 foi finalizada pelo profissional.	f	2	375
150	A Solicitação cod. 29 foi finalizada pelo profissional.	f	2	375
160	A Solicitação cod. 41 foi aceita pelo profissional.	f	2	375
161	A Solicitação cod. 41 foi iniciada pelo profissional.	f	2	375
162	A Solicitação cod. 41 foi finalizada pelo profissional.	f	2	375
164	Nova solicitação de serviço cod. 42	f	5	338
\.


--
-- TOC entry 2877 (class 0 OID 0)
-- Dependencies: 214
-- Name: core_notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_notification_id_seq', 190, true);


--
-- TOC entry 2804 (class 0 OID 41006)
-- Dependencies: 270
-- Data for Name: core_phonenumber; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_phonenumber (id, number, indico_user_id) FROM stdin;
13	(12) 31231-2313	375
23	(92) 98140-0474	402
24	(92) 80793-1541	403
25	(92) 92929-2922	404
26	(12) 31231-2312	406
27	(92) 92929-2929	400
\.


--
-- TOC entry 2878 (class 0 OID 0)
-- Dependencies: 271
-- Name: core_phonenumber_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_phonenumber_seq', 27, true);


--
-- TOC entry 2749 (class 0 OID 16478)
-- Dependencies: 215
-- Data for Name: core_place; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_place (id, label, street, number, complement, neighborhood, city, state, country, zipcode, latitude, longitude, owner_id, show_on_map) FROM stdin;
2	casa	rua de teste	1	sem complemento	bairro de teste	Manaus	AM	Brasil	6900000	\N	\N	75	f
3	Minha casa	Av. Efigênio Salles, 2226, Cond. Greenwood Park, casa i-23, Aleixo	i-23		Aleixo	Manaus	AM	Brasil	69060-23	\N	\N	78	f
5	Ed Vieiralves Business Center	Rua Salvador	120	Consultório 603	Adrianópolis	Manaus	AM	Brasil	69057040	\N	\N	100	f
21	Casa	E 41ST ST	428		....	Hialeah	AM	Brasil	33013	\N	\N	99	f
23	Casa	Rua Inconfidência,	11	Rua Inconfidência, 11	nova esperanca	Manaus	AM	Brasil	69037360	\N	\N	234	f
24	Maison luh	Rua rio madeira	179	Ao lado do varejão vieiralvez	Vieiralvez	Manaus	AM	Brasil		\N	\N	243	f
25	Trabalho	Mangabeira	465	Casa	Grande Vitória	Manaus	AM	Brasil	69086663	\N	\N	300	f
26	Santa Pelle - Estética&Beleza	Criciúma (Antiga rua 9)	368	Alvorada 2	Alvorada 2	Manaus	AM	Brasil	69042043000	\N	\N	253	f
27	Trabalho	Criciúma (Antiga rua 9)	368	Rua Entre a drogaria Sto Rémedio e a Igreja Santa Teresinha	Alvorada 2	Manaus	AM	Brasil	69043000	\N	\N	329	f
1	Seringas	Rua das seringas	101	Conj. Acariquara	Coroado IIIIII	Manaus	AM	Brasil	69082676	\N	\N	141	f
4	Minha casa	Rua Costa Carvalho	351	ap 94a	CoroCoro	Manaus	AM	Brasil	69000000	\N	\N	140	f
6	Bunita Manauara	Av. Mário Ipiranga Monteiro, loja 54, piso Tucumã	1300	Manauara Shopping	Adrianópolis	Manaus	AM	Brasil	69057023	\N	\N	78	f
7	Endereço Profissional	Av. Efigênio Salles, casa i-23, cond. Greenwood Park	2226		Aleixo	Manaus	AM	Brasil	69060023	\N	\N	338	f
29	casa	são jorge	54		santa luzia	manaus	AM	Brasil	69074490	\N	\N	39	f
48	Casa	Rua Pintassilgo	362		Cidade Nova	Manaus	AM	Brasil	69094010	\N	\N	375	t
\.


--
-- TOC entry 2879 (class 0 OID 0)
-- Dependencies: 216
-- Name: core_place_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_place_id_seq', 48, true);


--
-- TOC entry 2751 (class 0 OID 16486)
-- Dependencies: 217
-- Data for Name: core_reference; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_reference (id, name, phone_number, subscription_id) FROM stdin;
22	Claudio Sampaio	55555555555555	17
32	DAVI	92982652715	27
2	Davi	92999995566	2
\.


--
-- TOC entry 2880 (class 0 OID 0)
-- Dependencies: 218
-- Name: core_reference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_reference_id_seq', 33, true);


--
-- TOC entry 2753 (class 0 OID 16491)
-- Dependencies: 219
-- Data for Name: core_relationship; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_relationship (id, social_network, user_one_id) FROM stdin;
6	1	13
7	1	15
10	1	26
11	1	27
12	1	28
13	1	31
15	1	40
16	1	51
17	1	52
18	1	53
19	1	56
20	1	59
21	1	61
22	1	63
28	1	75
29	1	78
31	1	88
32	1	95
33	1	97
34	1	98
35	1	99
38	1	106
39	1	108
40	1	110
46	1	126
50	1	134
78	1	185
79	1	191
82	1	198
83	1	201
84	1	206
85	1	210
86	1	222
87	1	229
88	1	234
89	1	235
90	1	241
91	1	242
92	1	244
93	1	252
94	1	253
95	1	256
97	1	280
98	1	305
99	1	306
100	1	310
101	1	311
102	1	318
103	1	323
104	1	324
105	1	327
106	1	332
1	1	2
2	1	39
3	1	5
4	1	6
5	1	8
8	1	16
9	1	23
23	1	102
24	1	105
25	1	114
26	1	116
27	1	119
30	1	140
109	1	335
110	1	336
111	1	337
112	1	347
113	1	348
114	1	349
115	1	350
116	1	352
117	1	357
118	1	359
119	1	374
120	1	377
121	1	375
122	1	380
123	1	141
124	1	353
131	1	402
132	1	404
133	1	400
134	1	405
\.


--
-- TOC entry 2754 (class 0 OID 16494)
-- Dependencies: 220
-- Data for Name: core_relationship_friends; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_relationship_friends (id, relationship_id, indicouser_id) FROM stdin;
\.


--
-- TOC entry 2881 (class 0 OID 0)
-- Dependencies: 221
-- Name: core_relationship_friends_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_relationship_friends_id_seq', 1, false);


--
-- TOC entry 2882 (class 0 OID 0)
-- Dependencies: 222
-- Name: core_relationship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_relationship_id_seq', 134, true);


--
-- TOC entry 2757 (class 0 OID 16501)
-- Dependencies: 223
-- Data for Name: core_servicecategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_servicecategory (id, description, image, is_active, group_id) FROM stdin;
35	Limpador de Ar Condicionado e Fancoil	cat/2016/07/05/Ãcone_limpador_de_ar1.png	f	\N
32	Acupuntura		f	\N
31	Quiropraxista		f	\N
10	Garçom	cat/2016/07/05/Ãcone_garÃons1.png	f	\N
2	Babá	cat/2016/07/05/Ãcone_babÃ1.png	f	\N
13	Animador de festa	cat/2016/07/05/Ãcone_animador1.png	f	\N
14	Bandas e DJ´s	cat/2016/07/05/Ãcone_banda1.png	f	\N
16	Buffet	cat/2016/07/05/Ãcone__buffet1.png	f	\N
36	Manutenção de Porta Automática		f	\N
37	Chaveiro		f	\N
15	Aluguel de Sistema de Som e Iluminação	cat/2016/07/05/Ãcone_som1.png	f	\N
11	Cerimonialista	cat/2016/07/05/Ãcone_cerimonialista1.png	f	\N
42	Banho e tosa		f	\N
18	Food truck, bike e afins	cat/2016/07/05/Ãcone_food1.png	f	\N
43	Hospedagem para cães e gatos	cat/2016/07/05/Ãcone_hospedagem1.png	f	\N
30	Fisioterapia	cat/2016/07/05/Ãcone_fisioterapia1.png	f	\N
12	Bolos, Salgados e Docinhos	cat/2016/07/05/Ãcone_bolos1.png	f	\N
27	Costureira	cat/2016/07/05/Ãcone_costureira1.png	f	\N
41	Veterinário	cat/2016/07/05/Ãcone_veterinÃrio1.png	f	\N
29	Personal Trainer	cat/2016/07/05/Ãcone_personal1.png	f	\N
44	Nutricionista	cat/2016/07/05/Ãcone_nutricionista1.png	f	\N
33	Corretor de Seguros e Plano de Saúde	cat/2016/07/05/Ãcone_corretor1.png	f	\N
17	Cozinheira para eventos	cat/2016/07/05/Ãcone_cozinheira1.png	f	\N
20	Decoração de festas	cat/2016/07/05/Ãcone_decoraÃÃo1.png	f	\N
59	Tapeceiro		f	\N
28	Sapateiro		f	\N
4	Eletricista		f	\N
60	Enfermeiro		f	\N
62	Faz-tudo		f	\N
22	Maquiador	cat/2016/10/05/ícone_tamanho_2.1_1.png	f	\N
1	Diarista	cat/2016/07/05/Ãcone_diarista1.png	f	\N
24	Depilação	cat/2016/10/05/ícone_tamanho_2.2.png	t	\N
25	Sobrancelha	cat/2016/10/05/ícone_tamanho_2.3_1.png	t	\N
23	Manicure	cat/2016/10/05/ícone_tamanho_2.4.png	t	\N
64	Cabeleireiro	cat/2017/04/07/photo-cabelo.png	t	\N
48	Assistência Técnica	cat/2016/07/05/Ãcone_assistÃªncia1.png	f	\N
\.


--
-- TOC entry 2883 (class 0 OID 0)
-- Dependencies: 224
-- Name: core_servicecategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_servicecategory_id_seq', 64, true);


--
-- TOC entry 2759 (class 0 OID 16506)
-- Dependencies: 225
-- Data for Name: core_servicediscount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_servicediscount (id, discount_date, price, service_provided_id) FROM stdin;
\.


--
-- TOC entry 2884 (class 0 OID 0)
-- Dependencies: 226
-- Name: core_servicediscount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_servicediscount_id_seq', 9, true);


--
-- TOC entry 2761 (class 0 OID 16511)
-- Dependencies: 227
-- Data for Name: core_servicemessage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_servicemessage (id, message, is_new, created, destinatary_id, sender_id, service_id) FROM stdin;
\.


--
-- TOC entry 2885 (class 0 OID 0)
-- Dependencies: 228
-- Name: core_servicemessage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_servicemessage_id_seq', 1, false);


--
-- TOC entry 2763 (class 0 OID 16516)
-- Dependencies: 229
-- Data for Name: core_serviceprovided; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_serviceprovided (id, duration, price, service_type_id, worker_id, fixed_price) FROM stdin;
47	12	133.00	19	375	t
48	12	123.00	22	375	t
50	12	12.00	19	375	f
51	12	123.00	22	406	t
52	12	12.00	21	375	t
\.


--
-- TOC entry 2886 (class 0 OID 0)
-- Dependencies: 230
-- Name: core_serviceprovided_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_serviceprovided_id_seq', 52, true);


--
-- TOC entry 2765 (class 0 OID 16521)
-- Dependencies: 231
-- Data for Name: core_servicerequest; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_servicerequest (id, date, "time", payment_preference, status, created, price, more_info, updated, address_id, owner_id, service_provided_id, is_delivery) FROM stdin;
\.


--
-- TOC entry 2887 (class 0 OID 0)
-- Dependencies: 232
-- Name: core_servicerequest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_servicerequest_id_seq', 50, true);


--
-- TOC entry 2767 (class 0 OID 16529)
-- Dependencies: 233
-- Data for Name: core_servicetype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_servicetype (id, description, service_category_id) FROM stdin;
14	Maquiagem simples sem cílios	22
15	Maquiagem simples com cílios	22
16	Maquiagem para festa com cílios	22
17	Maquiagem para noiva	22
19	Limpeza	48
20	Teste	31
21	Corte Masculino	64
22	Corte Feminino	64
\.


--
-- TOC entry 2888 (class 0 OID 0)
-- Dependencies: 234
-- Name: core_servicetype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_servicetype_id_seq', 22, true);


--
-- TOC entry 2769 (class 0 OID 16534)
-- Dependencies: 235
-- Data for Name: core_skill; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_skill (id, description, category_id) FROM stdin;
1	Passadeira	1
2	Lavadeira	1
3	Faxineira	1
4	Cozinheira	1
5	Trabalha em casa com animais de estimação	1
6	Trabalha em horários diurnos e noturnos	1
7	Possui locomoção própria	1
8	Possui curso técnico	2
9	Trabalha de dia e de noite	2
10	Pode dormir com a criança (a combinar)	2
11	Pode viajar	2
12	Possui passaporte	2
13	Possui condução própria	2
14	Possui escada	4
15	Trabalha dia e noite	4
81	Atendimento no salão e à domicílio	22
82	Atende apenas em horário comercial	22
87	Atende em qualquer horário com agendamento	22
245	Atendimento à domicílio	22
34	Transporte próprio	10
35	Trabalha dia e noite	10
36	Trabalha de uniforme	10
37	Possui bandeja, taças e copos para aluguel	10
38	Churrasqueiro	10
39	Acompanhamento para o dia da festa	11
40	Assessoria total do evento	11
41	Bolos de casamento	12
42	Bolos	12
43	Salgados fritos	12
44	Salgados de forno e canapés	12
45	Docinhos	12
46	Doces para casamento	12
47	Festas infantis	13
48	Confraternizações	13
49	Despedida de solteiro	13
50	Banda de rock	14
51	Banda de pagode	14
52	Banda sertaneja	14
53	Voz e violão	14
54	DJ de festa infantil	14
55	DJ	14
56	Sistema de som próprio	14
57	Sistema de iluminação próprio	14
58	Jogo de iluminação simples	15
59	Jogo de iluminação completo	15
60	Caixa de música	15
61	Sistema de som completo	15
62	Pequenas confraternizações	16
63	Infantil	16
64	Local próprio	16
65	Até 20 pessoas	16
66	Até 100 pessoas	16
67	Até 200 pessoas	16
68	Mais de 200 pessoas	16
69	Inclui louças e toalhas de mesa	16
70	Food truck para eventos	18
71	Food bike para eventos	18
72	Frozen yogurt e Paletas	18
83	Unhas de porcelana	23
84	Desenhos feitos à mão	23
85	Serviços a domicílio	23
86	Esterilização em autoclave	23
88	Masculina	24
89	Femininia	24
90	Serviços a domicílio	24
91	Hora marcada	24
92	Ordem de chegada	24
93	Depilação	25
100	Ajustes	27
101	Corte industrial	27
102	Vestidos de festas	27
103	Roupas por encomenda	27
104	Fardamentos	27
105	Malhas	27
106	Facção têxtil	27
107	Reparos em mochilas e bolsas de couro	28
108	Furo em cintos	28
109	Troca e colagem de solas	28
110	Atende fora da academia	29
111	Infantil	29
112	Atendimento compartilhado	29
113	Estética	30
114	Pós-traumática	30
115	Mscular	30
116	Pilates	30
117	Seguros	33
118	Plano de Saúde	33
122	Manuntenção	35
123	Instalação	35
124	Portas de rolar de aço	36
125	Portas automáticas sensoriais	36
126	Serviço a domicílio	37
127	Serviço de chaves para carros	37
135	Cães e gatos	41
136	Rural	41
137	Serviços a domicílio	41
94	Fio a fio	25
121	Limpeza de ar condicionado split	35
138	Aplicação de vacinas	41
139	Transporte do pet próprio	41
140	Serviço de acompanhamento por câmeras	41
141	Serviço delivery	42
142	Serviço de acompanhamento por câmeras	42
143	Empresa	43
144	Particular	43
145	Obesidade	44
146	Gestantes	44
147	Atletas de alto rendimento	44
148	Diabéticos	44
149	Reeducação alimentar	44
156	Cupcakes	12
157	Brownies	12
158	Personalizados	12
165	Ar Condicionados	48
166	Eletrodomésticos	48
167	Geladeira & Freezer	48
168	TV	48
169	Aple	48
170	Samsung	48
171	LG	48
172	Toshiba	48
173	Sony	48
174	Acessórios para celulares	48
175	HP	48
176	Tonner e cartuchos de tinta	48
95	Design de sobrancelhas	25
164	Serviços a domicílio	25
211	Henna	25
212	Definitiva	25
229	Puffs	59
230	Sofás	59
231	Cabeceiras	59
232	Baús	59
233	Troca de curativos em domicílio	60
234	Administração de medicação	60
235	Passagem de cateter e sondas	60
238	Limpeza de Fancoil	35
239	Limpeza de ar condicionado de caixa	35
237	Elaboração de projetos técnicos	35
240	Fabricação de dutos de refrigeração e exaustão	35
241	Desemtupimento de ralos	62
242	Troca de lâmpadas	62
243	Troca de tomadas	62
244	Outros	62
248	Atende crianças	64
\.


--
-- TOC entry 2889 (class 0 OID 0)
-- Dependencies: 236
-- Name: core_skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_skill_id_seq', 248, true);


--
-- TOC entry 2771 (class 0 OID 16539)
-- Dependencies: 237
-- Data for Name: core_subscription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_subscription (id, candidate_id) FROM stdin;
27	181
30	311
32	322
34	333
17	134
2	141
3	338
41	375
53	402
54	403
55	404
56	406
57	400
\.


--
-- TOC entry 2890 (class 0 OID 0)
-- Dependencies: 238
-- Name: core_subscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_subscription_id_seq', 57, true);


--
-- TOC entry 2773 (class 0 OID 16544)
-- Dependencies: 239
-- Data for Name: core_userdocuments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_userdocuments (id, person_id, residence_proof, cpf) FROM stdin;
35	doc/2016/10/07/20161006_132608.jpg	doc/2016/10/07/FB_IMG_1432954056904.jpg	doc/2016/10/07/20161006_132616.jpg
36	doc/2016/10/10/IMG_7478.PNG	doc/2016/10/10/IMG_7478.PNG	doc/2016/10/10/IMG_7477.PNG
6	doc/2016/06/27/images.jpg	doc/2016/06/27/Plantas-de-casas-Térrea-cód.307.jpg	doc/2016/06/27/images2.jpg
37	doc/2016/10/11/WhatsApp_Image_2016-10-10_at_15.29.03.jpeg	doc/2016/10/11/WhatsApp_Image_2016-10-10_at_15.29.02.jpeg	doc/2016/10/11/WhatsApp_Image_2016-10-10_at_15.29.03.jpeg
14	doc/2016/06/28/Babá.JPG	doc/2016/06/28/foto_2.JPG	doc/2016/06/28/323e4488-739c-493a-9e8e-4ae45f003d0a.jpg
20	doc/2016/06/30/tick-256.png	doc/2016/06/30/tick-256.png	doc/2016/06/30/tick-256.png
21	doc/2016/06/30/1170871_1287239251293181_5795712561133562305_n.jpg	doc/2016/06/30/1170871_1287239251293181_5795712561133562305_n.jpg	doc/2016/06/30/1170871_1287239251293181_5795712561133562305_n.jpg
22	doc/2016/06/30/20160102_091945.jpg	doc/2016/06/30/image_20160316_192711.jpg	doc/2016/06/30/1454033227848.jpg
23	doc/2016/06/30/1170871_1287239251293181_5795712561133562305_n.jpg	doc/2016/06/30/1170871_1287239251293181_5795712561133562305_n.jpg	doc/2016/06/30/1170871_1287239251293181_5795712561133562305_n.jpg
24	doc/2016/06/30/1170871_1287239251293181_5795712561133562305_n.jpg	doc/2016/06/30/1170871_1287239251293181_5795712561133562305_n.jpg	doc/2016/06/30/1170871_1287239251293181_5795712561133562305_n.jpg
25	doc/2016/06/30/1493190_794622910590828_2360501177843751872_n.jpg	doc/2016/06/30/20140829_093436.jpg	doc/2016/06/30/bandeira.png
26	doc/2016/06/30/1170871_1287239251293181_5795712561133562305_n.jpg	doc/2016/06/30/1170871_1287239251293181_5795712561133562305_n.jpg	doc/2016/06/30/1170871_1287239251293181_5795712561133562305_n.jpg
27	doc/2016/06/30/1170871_1287239251293181_5795712561133562305_n.jpg	doc/2016/06/30/1170871_1287239251293181_5795712561133562305_n.jpg	doc/2016/06/30/1170871_1287239251293181_5795712561133562305_n.jpg
28	doc/2016/06/30/1170871_1287239251293181_5795712561133562305_n.jpg	doc/2016/06/30/1170871_1287239251293181_5795712561133562305_n.jpg	doc/2016/06/30/1170871_1287239251293181_5795712561133562305_n.jpg
29	doc/2016/06/30/20160630_100635-3.jpg	doc/2016/06/30/20160630_100635-1.jpg	doc/2016/06/30/20160630_100635-2.jpg
30	doc/2016/06/30/323e4488-739c-493a-9e8e-4ae45f003d0a.jpg	doc/2016/06/30/bol_SANDRA_CLEY_SARKIS_BENACON_241.038.292-49.pdf	doc/2016/06/30/bol_SANDRA_CLEY_SARKIS_BENACON_241.038.292-49_1.pdf
31	doc/2016/07/02/PEDIDO_ESPERMOGRAMA.pdf	doc/2016/07/02/PEDIDO_ESPERMOGRAMA.pdf	doc/2016/07/02/PEDIDO_ESPERMOGRAMA.pdf
32	doc/2016/07/25/identidade-digital.jpg	doc/2016/07/25/comprovante-de-residencia.jpg	doc/2016/07/25/cpf.jpg
33	doc/2016/09/15/image.jpeg	doc/2016/09/15/image.png	doc/2016/09/15/image.jpeg
34	doc/2016/10/03/manicure.png	doc/2016/10/03/cabeleireiro_3.png	doc/2016/10/03/cabeleireiro.png
1	doc/2016/10/14/IMG_7022.JPG	doc/2016/10/14/IMG_7022.JPG	doc/2016/10/14/IMG_7022.JPG
2	doc/2016/11/19/me.jpg	doc/2016/11/19/me.jpg	doc/2016/11/19/me.jpg
3	doc/2016/11/23/Outlet_da_Manazinha_-_Um_doce_de_MÃe_Atualizado.jpg	doc/2016/11/23/IMG_6620.JPG	doc/2016/11/23/IMG_6620.JPG
39	doc/2017/01/20/38498-O1K2EA.jpg	doc/2017/01/20/38498-O1K2EA.jpg	doc/2017/01/20/38498-O1K2EA.jpg
40	doc/2017/01/24/image.jpeg	doc/2017/01/24/image.jpeg	doc/2017/01/24/image.jpeg
42	doc/2017/02/20/9-oriental-pattern-bamboo.jpg	doc/2017/02/20/9-oriental-pattern-bamboo.jpg	doc/2017/02/20/9-oriental-pattern-bamboo.jpg
43	doc/2017/02/27/20kyj48.jpg	doc/2017/02/27/20kyj48.jpg	doc/2017/02/27/20kyj48.jpg
44	doc/2017/02/27/20kyj48.jpg	doc/2017/02/27/20kyj48.jpg	doc/2017/02/27/20kyj48.jpg
45	doc/2017/03/07/teste.bmp	doc/2017/03/07/teste.bmp	doc/2017/03/07/teste.bmp
46	doc/2017/03/23/20kyj48.jpg	doc/2017/03/23/20kyj48.jpg	doc/2017/03/23/20kyj48.jpg
47	doc/2017/03/27/20kyj48.jpg	doc/2017/03/27/20kyj48.jpg	doc/2017/03/27/20kyj48.jpg
48	doc/2017/03/28/20kyj48.jpg	doc/2017/03/28/20kyj48.jpg	doc/2017/03/28/20kyj48.jpg
49	doc/2017/03/30/20kyj48.jpg	doc/2017/03/30/20kyj48.jpg	doc/2017/03/30/20kyj48.jpg
50	doc/2017/03/30/20kyj48.jpg	doc/2017/03/30/20kyj48.jpg	doc/2017/03/30/20kyj48.jpg
51	doc/2017/03/30/20kyj48.jpg	doc/2017/03/30/20kyj48.jpg	doc/2017/03/30/20kyj48.jpg
52	doc/2017/03/30/20kyj48.jpg	doc/2017/03/30/20kyj48.jpg	doc/2017/03/30/20kyj48.jpg
53	doc/2017/03/30/20kyj48.jpg	doc/2017/03/30/20kyj48.jpg	doc/2017/03/30/20kyj48.jpg
54	doc/2017/03/30/20kyj48.jpg	doc/2017/03/30/20kyj48.jpg	doc/2017/03/30/20kyj48.jpg
55	doc/2017/03/31/photo-make.png	doc/2017/03/31/photo-make.png	doc/2017/03/31/photo-make.png
56	doc/2017/04/06/34b8ef41738393.582457d260792.jpg	doc/2017/04/06/img.jpg	doc/2017/04/06/9efe8849608233.58b9fe71528db_1.jpg
58	doc/2017/04/08/img.jpg	doc/2017/04/08/img.jpg	doc/2017/04/08/img.jpg
59	doc/2017/04/08/img.jpg	doc/2017/04/08/img.jpg	doc/2017/04/08/img.jpg
60	doc/2017/04/11/img.jpg	doc/2017/04/11/img.jpg	doc/2017/04/11/img.jpg
61	doc/2017/04/11/img.jpg	doc/2017/04/11/img.jpg	doc/2017/04/11/img.jpg
62	doc/2017/04/11/img-2017-04-11_061816.565294.jpg	doc/2017/04/11/img-2017-04-11_061816.739409.jpg	doc/2017/04/11/img-2017-04-11_061816.759422.jpg
\.


--
-- TOC entry 2891 (class 0 OID 0)
-- Dependencies: 240
-- Name: core_userdocuments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_userdocuments_id_seq', 62, true);


--
-- TOC entry 2775 (class 0 OID 16549)
-- Dependencies: 241
-- Data for Name: core_workerevaluation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_workerevaluation (id, created, punctuality, quality, trust, cost_benefit, testimonial, partial_rate, recommend, hirer_id, worker_id, status) FROM stdin;
40	2017-04-12 19:58:41.169656-04	5	5	5	5	asdasd	5	f	406	406	A
41	2017-04-13 23:02:59.859137-04	5	5	5	5	asdasd	5	t	375	406	A
8	2017-03-07 02:22:45.560075-04	5	4	5	5	Eu sou muito bom	3	f	375	375	A
17	2017-03-27 15:14:44.100232-04	5	5	5	1	Eae	4	t	375	333	A
19	2017-03-27 15:28:12.913497-04	5	5	5	1	12312313	4	t	375	338	A
35	2017-04-11 04:38:42.179567-04	5	5	5	5	Excelente trabalho, Yan faz serviço completo, limpo e com rapidez. Com certeza uma ótima escolha na hora da necessidade.	5	t	404	375	A
36	2017-04-11 04:40:22.259067-04	5	4	5	4	Se você precisa de rapidez e eficiência, só chamar o Yan que com certeza ele resolverá seu problema! :)	4.5	f	400	375	A
37	2017-04-11 04:51:55.478351-04	5	4	4	5	E se eu quiser escrever tanto que chegue a dar três linhas o que pode acontecer? Será que um vai sobre escrever outro? espero que não por que já chega de problema quero começar a fazer o aplicativo, ok?	4.5	f	402	375	A
38	2017-04-11 04:57:11.492286-04	4	5	5	5	123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890	4.75	t	405	375	A
39	2017-04-11 05:20:23.825021-04	5	5	5	5	Agora vai!	5	t	406	375	A
\.


--
-- TOC entry 2892 (class 0 OID 0)
-- Dependencies: 242
-- Name: core_workerevaluation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_workerevaluation_id_seq', 41, true);


--
-- TOC entry 2777 (class 0 OID 16554)
-- Dependencies: 243
-- Data for Name: core_workerevaluationitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_workerevaluationitem (id, item, value, "workerEvaluation_id") FROM stdin;
\.


--
-- TOC entry 2893 (class 0 OID 0)
-- Dependencies: 244
-- Name: core_workerevaluationitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_workerevaluationitem_id_seq', 1, false);


--
-- TOC entry 2809 (class 0 OID 73837)
-- Dependencies: 275
-- Data for Name: core_workzone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_workzone (id, zone, neighborhood, state, city) FROM stdin;
1	Sul	Centro	AM	Manaus
2	Sul	Nossa Senhora Aparecida	AM	Manaus
3	Sul	Presidente Vargas	AM	Manaus
4	Sul	Praça 14 de Janeiro	AM	Manaus
5	Sul	Cachoeirinha	AM	Manaus
6	Oeste	São Raimundo	AM	Manaus
7	Oeste	Glória	AM	Manaus
8	Oeste	Santo Antônio	AM	Manaus
9	Oeste	Vila da Prata	AM	Manaus
10	Oeste	Compensa	AM	Manaus
11	Oeste	São Jorge	AM	Manaus
12	Oeste	Santo Agostinho	AM	Manaus
13	Oeste	Nova Esperança	AM	Manaus
14	Oeste	Lírio do Vale	AM	Manaus
15	Centro-Oeste	Planalto	AM	Manaus
16	Centro-Oeste	Alvorada	AM	Manaus
17	Centro-Oeste	Redenção	AM	Manaus
18	Centro-Oeste	Da Paz	AM	Manaus
19	Sul	Raiz	AM	Manaus
20	Sul	São Francisco	AM	Manaus
21	Sul	Petrópolis	AM	Manaus
22	Sul	Japiim	AM	Manaus
23	Leste	Coroado	AM	Manaus
24	Sul	Educandos	AM	Manaus
25	Sul	Santa Luzia	AM	Manaus
26	Sul	Morro da Liberdade	AM	Manaus
27	Sul	Betânia	AM	Manaus
28	Sul	Colônia Oliveira Machado	AM	Manaus
29	Sul	São Lázaro	AM	Manaus
30	Sul	Crespo	AM	Manaus
31	Sul	Vila Buriti	AM	Manaus
32	Sul	Distrito Industrial I	AM	Manaus
33	Leste	Distrito Industrial II	AM	Manaus
34	Leste	Mauazinho	AM	Manaus
35	Leste	Colônia Antônio Aleixo	AM	Manaus
36	Leste	Puraquequara	AM	Manaus
37	Centro-Oeste	Dom Pedro	AM	Manaus
38	Centro-Sul	Flores	AM	Manaus
39	Centro-Sul	Parque 10 de Novembro	AM	Manaus
40	Centro-Sul	Aleixo	AM	Manaus
41	Centro-Sul	Adrianópolis	AM	Manaus
42	Centro-Sul	Nossa Senhora das Graças	AM	Manaus
43	Centro-Sul	São Geraldo	AM	Manaus
44	Centro-Sul	Chapada	AM	Manaus
45	Norte	Colônia Santo Antônio	AM	Manaus
46	Norte	Novo Israel	AM	Manaus
47	Norte	Colônia Terra Nova	AM	Manaus
48	Norte	Santa Etelvina	AM	Manaus
49	Norte	Monte das Oliveiras	AM	Manaus
50	Norte	Cidade Nova	AM	Manaus
51	Norte	Novo Aleixo	AM	Manaus
52	Norte	Cidade de Deus	AM	Manaus
53	Norte	Nova Cidade	AM	Manaus
54	Oeste	Ponta Negra	AM	Manaus
55	Oeste	Tarumã	AM	Manaus
56	Oeste	Tarumã-Açu	AM	Manaus
57	Leste	Armando Mendes	AM	Manaus
58	Leste	Zumbi dos Palmares	AM	Manaus
59	Leste	São José Operário	AM	Manaus
60	Leste	Tancredo Neves	AM	Manaus
61	Leste	Jorge Teixeira	AM	Manaus
62	Leste	Gilberto Mestrinho	AM	Manaus
63	Norte	Lago Azul	AM	Manaus
\.


--
-- TOC entry 2779 (class 0 OID 16559)
-- Dependencies: 245
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2016-10-13 23:54:56.519588-04	255	pryhrebeloo@gmail.com	3		20	39
2	2016-10-14 08:32:55.624925-04	331	teste@testeultimo.com	3		20	78
3	2016-10-14 08:35:48.646463-04	152	contratante1@indicoapp.com	3		20	78
4	2016-10-14 08:35:48.653106-04	316	teste@teste1.com	3		20	78
5	2016-10-14 08:35:48.660323-04	315	teste@teste.com	3		20	78
6	2016-10-14 08:35:48.666013-04	149	trabalhador1@indicoapp.com	3		20	78
7	2016-10-14 08:36:25.642633-04	313	davicmonteiro29@gmail.com	3		20	78
8	2016-10-14 08:54:18.679092-04	1	Solicitação de DAVI MONTEIRO	2	Adicionado reference "Reference object"	31	78
9	2016-10-14 08:55:41.610929-04	1	Documentos de DAVI MONTEIRO	2	Nenhum campo modificado.	19	78
10	2016-10-14 08:55:56.153764-04	1	Solicitação de DAVI MONTEIRO	2	Nenhum campo modificado.	31	78
11	2016-10-14 08:57:56.180145-04	1	davicmonteiro29@gmail.com	2	Modificado account_state.	20	78
12	2016-10-14 09:02:15.012092-04	1	Corte Masculino	1	Adicionado.	17	78
13	2016-10-14 09:03:03.301387-04	1	davicmonteiro29@gmail.com - Corte Masculino	1	Adicionado.	21	78
14	2016-10-14 09:09:32.882496-04	2	Corte Feminino	1	Adicionado.	17	78
15	2016-10-14 09:13:00.67048-04	3	Escova de cabelo liso até os ombros	1	Adicionado.	17	78
16	2016-10-14 09:13:19.317917-04	4	Escova de cabelo liso além dos ombros	1	Adicionado.	17	78
17	2016-10-14 09:13:45.216009-04	5	Escova de cabelo ondulado até os ombros	1	Adicionado.	17	78
18	2016-10-14 09:22:51.288141-04	6	Hidratação	1	Adicionado.	17	78
19	2016-10-14 09:26:17.842122-04	7	Penteado simples	1	Adicionado.	17	78
20	2016-10-14 09:58:20.049664-04	8	Penteado especial	1	Adicionado.	17	78
21	2016-10-14 12:06:09.248418-04	9	Escova progressiva	1	Adicionado.	17	78
22	2016-10-14 12:06:36.561634-04	10	Escova marroquina	1	Adicionado.	17	78
23	2016-10-14 12:08:07.230559-04	11	Tingimento retoque de raiz	1	Adicionado.	17	78
24	2016-10-14 12:08:44.510558-04	12	Tingimento mechas	1	Adicionado.	17	78
25	2016-10-14 12:09:26.1557-04	13	Tingimento total	1	Adicionado.	17	78
26	2016-10-14 13:25:06.511401-04	14	Maquiagem simples sem cílios	1	Adicionado.	17	78
27	2016-10-14 13:25:25.155273-04	15	Maquiagem simples com cílios	1	Adicionado.	17	78
28	2016-10-14 13:26:56.677602-04	16	Maquiagem para festa com cílios	1	Adicionado.	17	78
29	2016-10-14 13:27:53.269512-04	17	Maquiagem para noiva	1	Adicionado.	17	78
30	2016-10-17 10:13:40.047901-04	279	raiinonata@hotmail.com	3		20	78
31	2016-10-17 11:40:28.521256-04	226	rafaelduarte221@gmail.com	3		20	78
32	2016-10-18 13:27:23.411925-04	3	davi@teste.com	3		20	78
33	2016-10-21 14:47:01.596042-04	1	davicmonteiro29@gmail.com	3		20	78
34	2016-11-03 14:26:07.957866-04	21	Cabeleireiro	2	Modificado is_active.	16	78
35	2016-11-03 14:26:23.24174-04	23	Manicure	2	Modificado is_active.	16	78
36	2016-11-03 14:26:37.945136-04	24	Depilação	2	Modificado is_active.	16	78
37	2016-11-03 14:26:52.183306-04	22	Maquiador	2	Modificado is_active.	16	78
38	2016-11-03 14:27:18.276948-04	20	davi@teste.com	3		20	78
39	2016-11-03 14:27:18.280612-04	17	teste@teste.com	3		20	78
40	2016-11-17 20:42:01.383953-04	34	eltonsrc@gmail.com	3		20	39
41	2016-11-19 11:36:32.992621-04	120	eltonsrc@gmail.com	3		20	39
42	2016-11-19 11:46:25.778811-04	136	eltonsrc@gmail.com	3		20	39
43	2016-11-19 12:43:30.98254-04	141	rrrrr@email.com	2	Modificado account_state.	20	78
44	2016-11-19 12:46:44.979642-04	1	Diarista	2	Modificado is_active.	16	78
45	2016-11-19 13:01:51.224759-04	141	rrrrr@email.com	2	Modificado categories.	20	78
46	2016-11-19 13:02:16.88941-04	1	Diarista	2	Modificado is_active.	16	78
47	2016-11-19 13:02:29.743496-04	21	Cabeleireiro	2	Modificado is_active.	16	78
48	2016-11-19 13:10:18.359488-04	2	Solicitação de Raoni Novellino	2	Adicionado reference "Reference object"	31	78
49	2016-11-20 15:03:33.296974-04	196	ramayana1970@gmail.com	3		20	39
50	2016-11-20 16:04:33.059559-04	142	ramayana1970@gmail.com	3		20	39
51	2016-11-20 19:02:23.731615-04	143	eltonsrc@gmail.com	3		20	39
52	2016-11-20 19:06:19.55188-04	145	eltonsrc@gmail.com	3		20	39
53	2016-11-21 10:10:51.116827-04	148	ramayana1970@gmail.com	3		20	39
54	2016-11-21 23:39:00.807584-04	146	eltonsrc@gmail.com	3		20	39
55	2016-11-21 23:50:52.491463-04	164	eltonsrc@gmail.com	3		20	39
56	2016-11-22 10:00:23.503743-04	141	rrrrr@email.com	2	Modificado categories.	20	78
57	2016-11-22 10:00:49.477338-04	141	rrrrr@email.com	2	Nenhum campo modificado.	20	78
58	2016-11-23 09:21:43.579487-04	11	EvaluationTemplate object	2	Deletado evaluation template item "Corte de cabelo feminino". Deletado evaluation template item "Corte de cabelo masculino". Deletado evaluation template item "Tinturaria". Deletado evaluation template item "Marroquina". Deletado evaluation template item "Great Lengths (Mega hair)".	24	78
59	2016-11-23 15:06:51.564227-04	18	Davicmonteiro29@gmail.com	2	Modificado categories, account_state e skills.	20	78
60	2016-11-23 15:07:32.937727-04	18	Davicmonteiro29@gmail.com	3		20	78
61	2016-11-23 15:19:40.686336-04	338	Davicmonteiro29@gmail.com	2	Modificado account_state.	20	78
62	2016-11-23 15:59:20.038027-04	18	Corte Masculino	1	Adicionado.	17	78
63	2016-11-23 16:00:11.344659-04	7	Davicmonteiro29@gmail.com - Escova de cabelo liso até os ombros	1	Adicionado.	21	78
64	2016-12-02 10:47:47.492228-04	140	rnovellino@gmail.com	2	Modificado is_staff.	20	78
65	2016-12-02 10:57:07.978071-04	140	rnovellino@gmail.com	2	Modificado is_superuser.	20	78
66	2016-12-02 11:08:57.049985-04	353	funk1470@yahoo.com	2	Modificado is_staff e is_superuser.	20	78
67	2016-12-03 20:15:53.223763-04	19	EvaluationTemplate object	1	Adicionado. Adicionado evaluation template item "desc"	24	39
68	2016-12-03 20:16:10.557291-04	19	EvaluationTemplate object	3		24	39
69	2017-01-20 09:13:11.458919-04	90	camila.falabella@gmail.com	2	Modificado categories, account_state e is_staff.	20	78
70	2017-01-20 10:10:33.065383-04	90	camila.falabella@gmail.com	2	Modificado account_type e is_superuser.	20	78
71	2017-01-20 10:12:42.068875-04	90	camila.falabella@gmail.com	3		20	78
72	2017-01-20 10:15:24.967075-04	368	camila_falabella@hotmail.com	2	Modificado is_staff.	20	78
73	2017-01-20 10:44:55.840547-04	369	camila.falabella@gmail.com	2	Modificado account_state.	20	78
74	2017-01-24 19:38:32.569651-04	373	teste@teste.com	2	Modificado account_state.	20	78
75	2017-01-24 19:49:38.638016-04	18	Corte Masculino	3		17	78
76	2017-01-27 08:57:34.253006-04	376	ybd@icomp.ufam.edu.br	2	Modificado account_state.	20	78
77	2017-01-27 12:24:08.055476-04	375	ybrandao.d@gmail.com	2	Modificado is_staff e is_superuser.	20	78
78	2017-01-27 12:36:02.740638-04	11	EvaluationTemplate object	2	Adicionado evaluation template item "Pessoas a ser atendidas"	24	375
79	2017-01-31 08:33:16.640307-04	21	Cabeleireiro	2	Adicionado Diferenciais "Atende idosos e especiais" Modificado description para Diferenciais "Aceita cartão de crédito". Modificado description para Diferenciais "Atende crianças". Modificado description para Diferenciais "Condução própria".	16	78
80	2017-02-23 04:20:03.004208-04	41	Documentos de Yan Diniz	3		19	375
81	2017-02-23 04:21:54.544128-04	381	yan_b-@hotmail.com	2	Modificado account_state.	20	375
82	2017-02-23 04:22:34.744061-04	381	yan_b-@hotmail.com	2	Modificado account_state.	20	375
83	2017-02-27 04:00:47.272682-04	383	teste2@gmail.com	2	Modificado first_name e last_name.	20	375
84	2017-03-03 02:59:45.283769-04	375	ybrandao.d@gmail.com	2	Modificado account_state.	20	375
85	2017-03-03 05:05:42.808244-04	375	ybrandao.d@gmail.com	2	Modificado attendance_in_domicile.	20	375
86	2017-03-03 07:14:00.829929-04	376	ybd@icomp.ufam.edu.br	2	Modificado attendance_in_domicile e costumer_service.	20	375
87	2017-03-03 07:17:11.953489-04	376	ybd@icomp.ufam.edu.br	2	Modificado attendance_in_domicile e costumer_service.	20	375
88	2017-03-03 07:32:02.386949-04	376	ybd@icomp.ufam.edu.br	2	Modificado attendance_in_domicile.	20	375
89	2017-03-07 02:15:47.992244-04	375	ybrandao.d@gmail.com	2	Modificado account_state.	20	375
90	2017-03-07 02:19:24.25627-04	385	teste@testemail.com.br	3		20	375
91	2017-03-07 02:49:29.496567-04	376	ybd@icomp.ufam.edu.br	2	Modificado account_state.	20	375
92	2017-03-07 03:46:19.007121-04	375	ybrandao.d@gmail.com	2	Modificado account_type.	20	375
93	2017-03-07 05:21:48.49148-04	369	camila.falabella@gmail.com	2	Modificado account_state.	20	375
94	2017-03-22 04:42:06.475188-04	21	Cabeleireiro	2	Modificado image.	16	375
95	2017-03-22 04:42:38.761601-04	25	Sobrancelha	2	Modificado is_active.	16	375
96	2017-03-23 01:07:38.41602-04	388	novoteste@testemail.com	2	Modificado account_state.	20	375
97	2017-03-27 15:43:25.62276-04	389	manausindikko@testeindikko.com	2	Modificado account_state.	20	375
98	2017-03-28 14:04:02.145478-04	391	yanbrandao@indikko.com	2	Modificado account_state.	20	375
99	2017-03-30 05:35:37.584414-04	384	yan_teste@gm.com	2	Modificado account_state.	20	375
100	2017-03-30 17:13:48.551351-04	394	92807931	2	Modificado account_state.	20	375
101	2017-03-31 13:29:06.078642-04	24	Depilação	2	Modificado is_active.	16	375
102	2017-03-31 13:29:15.874602-04	25	Sobrancelha	2	Modificado is_active.	16	375
103	2017-03-31 13:29:22.55468-04	23	Manicure	2	Modificado is_active.	16	375
104	2017-03-31 17:59:10.566173-04	375	ybrandao.d@gmail.com	2	Nenhum campo modificado.	20	375
105	2017-03-31 18:00:29.775938-04	375	ybrandao.d@gmail.com	2	Modificado categories.	20	375
106	2017-03-31 18:01:42.011946-04	375	ybrandao.d@gmail.com	2	Modificado account_type.	20	375
107	2017-03-31 21:23:27.767574-04	397	teste123	2	Modificado account_state.	20	375
108	2017-04-05 16:38:31.007672-04	16	PhoneNumber object	3		37	375
109	2017-04-05 16:38:31.031134-04	15	PhoneNumber object	3		37	375
110	2017-04-05 16:38:31.033088-04	14	PhoneNumber object	3		37	375
111	2017-04-05 16:52:31.853305-04	20	PhoneNumber object	3		37	375
112	2017-04-05 16:52:31.862102-04	19	PhoneNumber object	3		37	375
113	2017-04-06 01:20:17.844176-04	399	maonaindikko	2	Modificado account_state.	20	375
114	2017-04-06 01:24:27.976107-04	399	maonaindikko	2	Modificado account_state.	20	375
115	2017-04-06 01:25:30.028094-04	399	maonaindikko	2	Modificado account_type e categories.	20	375
116	2017-04-06 01:27:01.990151-04	399	maonaindikko	2	Modificado account_state.	20	375
117	2017-04-06 01:27:49.000056-04	57	Documentos de Manaus Online	3		19	375
118	2017-04-07 17:15:14.363105-04	391	yanbrandao@indikko.com	3		20	375
119	2017-04-07 17:15:36.012905-04	392	agoravai@testeindikko.com	3		20	375
120	2017-04-07 17:15:52.328981-04	393	nosqueta@gmindikko.com	3		20	375
121	2017-04-07 17:16:08.983777-04	389	manausindikko@testeindikko.com	3		20	375
122	2017-04-07 17:16:08.99062-04	399	maonaindikko	3		20	375
123	2017-04-07 17:16:39.656698-04	387	maisum@testemail.com	3		20	375
124	2017-04-07 17:16:39.665497-04	388	novoteste@testemail.com	3		20	375
125	2017-04-07 17:16:39.667455-04	386	test@testmail.com	3		20	375
126	2017-04-07 17:16:39.66843-04	382	teste@gmail.com	3		20	375
127	2017-04-07 17:16:39.669408-04	373	teste@teste.com	3		20	375
128	2017-04-07 17:16:39.670392-04	397	teste123	3		20	375
129	2017-04-07 17:16:39.671362-04	383	teste2@gmail.com	3		20	375
130	2017-04-07 17:16:39.67234-04	384	yan_teste@gm.com	3		20	375
131	2017-04-07 17:16:39.67234-04	398	zueirabr	3		20	375
132	2017-04-07 17:17:01.371151-04	381	yan_b-@hotmail.com	3		20	375
133	2017-04-07 17:17:42.902134-04	394	92807931	3		20	375
134	2017-04-07 17:17:42.910601-04	376	ybd@icomp.ufam.edu.br	3		20	375
135	2017-04-07 17:18:06.10219-04	369	camila.falabella@gmail.com	3		20	375
136	2017-04-07 17:18:06.110988-04	368	camila_falabella@hotmail.com	3		20	375
137	2017-04-07 18:59:48.996774-04	375	ybrandao.d@gmail.com	2	Modificado categories.	20	375
138	2017-04-07 19:00:17.150707-04	375	ybrandao.d@gmail.com	2	Modificado categories.	20	375
139	2017-04-07 19:00:34.974121-04	375	ybrandao.d@gmail.com	2	Modificado categories.	20	375
140	2017-04-07 19:35:06.321639-04	64	Cabeleireiro	1	Adicionado.	16	375
141	2017-04-07 19:37:35.706353-04	64	Cabeleireiro	2	Adicionado Diferenciais "Atende crianças"	16	375
142	2017-04-07 21:07:13.793818-04	19	Limpeza	1	Adicionado.	17	375
143	2017-04-07 21:08:47.373977-04	48	Assistência Técnica	2	Modificado is_active.	16	375
144	2017-04-07 21:22:33.389254-04	20	Teste	1	Adicionado.	17	375
145	2017-04-07 23:42:39.290384-04	401	teste123	2	Modificado account_type e account_state.	20	375
146	2017-04-08 01:54:26.479361-04	48	Assistência Técnica	2	Modificado is_active.	16	375
147	2017-04-08 04:14:55.339522-04	402	yan_b-@hotmail.com	2	Modificado account_state.	20	375
148	2017-04-08 04:21:02.396333-04	403	novo_trab	2	Modificado account_state.	20	375
149	2017-04-11 05:40:08.051533-04	21	Corte Masculino	1	Adicionado.	17	375
150	2017-04-11 05:40:17.827351-04	22	Corte Feminino	1	Adicionado.	17	375
151	2017-04-12 19:57:10.739862-04	406	huehue	2	Modificado account_state.	20	375
\.


--
-- TOC entry 2894 (class 0 OID 0)
-- Dependencies: 246
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 151, true);


--
-- TOC entry 2781 (class 0 OID 16568)
-- Dependencies: 247
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	sites	site
7	default	usersocialauth
8	default	nonce
9	default	association
10	default	code
11	oauth2_provider	application
12	oauth2_provider	grant
13	oauth2_provider	accesstoken
14	oauth2_provider	refreshtoken
15	core	groupservicecategory
16	core	servicecategory
17	core	servicetype
18	core	skill
19	core	userdocuments
20	core	indicouser
21	core	serviceprovided
22	core	servicediscount
23	core	relationship
24	core	evaluationtemplate
25	core	evaluationtemplateitem
26	core	place
27	core	servicerequest
28	core	evaluationparameter
29	core	notification
30	core	servicemessage
31	core	subscription
32	core	reference
33	core	endorsment
34	core	workerevaluation
35	core	workerevaluationitem
36	core	clickstoshowmore
37	core	phonenumber
38	server	acmechallenge
\.


--
-- TOC entry 2895 (class 0 OID 0)
-- Dependencies: 248
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 38, true);


--
-- TOC entry 2783 (class 0 OID 16573)
-- Dependencies: 249
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2016-10-13 22:35:54.920151-04
2	contenttypes	0002_remove_content_type_name	2016-10-13 22:35:54.936543-04
3	auth	0001_initial	2016-10-13 22:35:55.004132-04
4	auth	0002_alter_permission_name_max_length	2016-10-13 22:35:55.026347-04
5	auth	0003_alter_user_email_max_length	2016-10-13 22:35:55.040016-04
6	auth	0004_alter_user_username_opts	2016-10-13 22:35:55.053841-04
7	auth	0005_alter_user_last_login_null	2016-10-13 22:35:55.065429-04
8	auth	0006_require_contenttypes_0002	2016-10-13 22:35:55.068752-04
9	auth	0007_alter_validators_add_error_messages	2016-10-13 22:35:55.08086-04
10	core	0001_initial	2016-10-13 22:35:56.334488-04
11	admin	0001_initial	2016-10-13 22:35:56.445124-04
12	admin	0002_logentry_remove_auto_add	2016-10-13 22:35:56.533531-04
13	default	0001_initial	2016-10-13 22:35:56.737737-04
14	default	0002_add_related_name	2016-10-13 22:35:56.808387-04
15	default	0003_alter_email_max_length	2016-10-13 22:35:56.8229-04
16	oauth2_provider	0001_initial	2016-10-13 22:35:57.183198-04
17	oauth2_provider	0002_08_updates	2016-10-13 22:35:57.432778-04
18	sessions	0001_initial	2016-10-13 22:35:57.45904-04
19	sites	0001_initial	2016-10-13 22:35:57.488739-04
20	sites	0002_auto_20160528_2022	2016-10-13 22:35:57.509541-04
21	server	0001_initial	2017-03-31 20:58:11.737112-04
\.


--
-- TOC entry 2896 (class 0 OID 0)
-- Dependencies: 250
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 21, true);


--
-- TOC entry 2785 (class 0 OID 16581)
-- Dependencies: 251
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
v4c4ki9gewfx4kr55x6dep7dy3yqjynj	M2I3ODk5ZDdiZjljMjRiNDkzM2NiNjNhZTk1Y2M4OWY5ZDNmYTA2ZTp7ImZhY2Vib29rX3N0YXRlIjoiOVdNUFp3OTJTR241VnhYY0RTUkt4WXFzOWpwb3c3MWIiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-10 11:19:09.311304-04
5zdzibwreq6qz2qknu4vld8pyx2wuywo	ZDBmODc2M2Q2ODY1NWZmYmFhMDZjZDMzMWM2ZDQwMmMzMmZjZjdmMTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJQWExtV1BCRThNOXZ6bkNGTDhIalJSRzFLVWVEY25FViJ9	2016-11-13 21:59:00.170702-04
3f70z8akmsdnw4deqaohcnvac97gdpgy	OThlOGM5MDI4ODQ5ZTQwYzg2ZGRiMmVmMzJhZjA0ZTg2NzgyMTkzNzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJNTm1zQkczcEdLekxVbTFDYWtBYzlyeWZZQjZYWDRzRiJ9	2016-10-30 07:25:57.531067-04
9wvv27zkoiz219y4jcphkf24u62seld2	N2ExZjNmZmEyY2RhNzg3OTg0ODQ0YzRlOTBjYjY1NTM3NGQ0NTQ2MDp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJsVlFKTXJtT0Y0SDNNUERnQ0JIYWRFRVNZQWo2RzFsUCJ9	2016-10-30 07:41:15.365173-04
bzptp1elmk72xv58fuunfj1d8vx0pehm	MDcwMThjNjJhM2Y3NjZjOWE3Yjc0N2FjMzY2MmFjZTkzM2FiMjQwYjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJvQ2ZZZkFidmlOenF3VTNVdERjak5xekllT3NTSmoxQyJ9	2016-10-30 07:43:12.815147-04
ioblnm7ahyjslp1v4k4huv3239ccpzou	ZWZkMGM4ODY1ZTg5MGY5OWY1NjcxNzM2ZmI5YzJhMWJlM2ZkZTkzMTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJ4V2RYekVHQ2NETUE1U3NScUFsT3RFUWg5bG9sZEZIMiIsIl9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGViZjAzNzhkZTAzZDY2Njk3Y2I2Mzg3ZWMxNjk5YTZhM2ExNGE0MCIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIn0=	2016-10-31 02:08:54.659078-04
1beb2m38ic3u6f2p5onpgy9yiq3tdywr	ODBhN2FjYTQyOWRjZWE2YzFjZjZlNzczMzI5ZTFhMzdkYTBiNDI0Njp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYTJiMzFkN2Q2NzViOTBmOWZjZWYwNmE1NjY1M2Y0MmI5NDFjZmM2In0=	2016-10-31 08:48:23.103248-04
uo1jtpp0k1lzzytj2gzkr10fj8u9h2t9	Y2Y4ZjZkMTBmZmU0MTRhMzc1ZmZkOGEwNGU5ZTA3ZmVlZDc0MzQ3ZTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJtMU5ET1RGUHM2SkQ5UXpDczFSNlIzTlVqU0hjN1ZPaiJ9	2016-10-31 13:34:38.674016-04
e0kz0fl50yqza7osopb2v0x86k9ge55y	ZWJmZDljODQ5ZjFiMTk4ZDhmMDZiMzVjMDRlMGRkNTYxYzk2ODIzNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjVhZjNlZjhiYWJiN2MxZjk5YTU0YTk3NzkxNzZkYjdmNzg0YzA2MCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2016-10-31 14:51:01.653892-04
c9anhgg53z0vo64wi5g212iccouz1dtp	YWE2NDdkMGIxNDlkN2VhYzQ4OTVjNTM4YmIzNThmOTc2MjA2ZTM0NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjUiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjdjOTJkNjFhNTUzOTU5YzVjMzVkNGRkN2MzNTc5NTEyN2Q0MjdhIn0=	2016-11-01 10:04:24.826793-04
ucsvbd3wfkc0845rexip8oqdo5o39v6p	OGRjMTBjNzk0MmM4NTZkNjQzOTRhMmJkOGY0NWVhMjI0MWQyNWYwMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijc4IiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2016-11-01 13:27:39.04379-04
tha6sbycaugyzndo4cq380o5ty2nehbj	M2UxMjI4M2VmYzM5N2ZhY2Q3MzI3MGU5NzdmMzQxZGVhY2Y0NGNjZjp7ImZhY2Vib29rX3N0YXRlIjoiVUttR1BYZG55TE9HMEs4d29zVXBZbWZGNFpKenJDdGMiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-01 19:31:36.93897-04
980tfoxpabsbhls7l1h6y8rmn6pawpvc	MjZjMWFjM2Q3Y2Y4ZWNhMmZkZDM5NTExNTQyNjcwNWFiOWNiMjAxMDp7ImZhY2Vib29rX3N0YXRlIjoiZHdPUGdNYUw3aGo3c3dUdE1oRTE1QUhaak5zQzZ6TjgiLCJuZXh0IjoiL3JlZGlyZWN0LyJ9	2016-11-01 19:31:46.50516-04
lw37tkjjjrfqtvbfkb2kyhva9q6ofhae	YzM0MzNkZDgyYzNlYzIwMDMyZmZiZGI2Yzg5MTcyYzgxZDJhZjlkNTp7ImZhY2Vib29rX3N0YXRlIjoiQ2dwVUdTeDlRYjdNR29HME9TdGZCaDI5SFFQV3M5RTYiLCJuZXh0IjoiL3JlZGlyZWN0LyJ9	2016-11-01 19:31:46.974959-04
c4bggsqg88kebtv4ikvu0c2jf56dmtjk	OTY3OWQxNDIyZDI3OWEzYTNiZTk1ZTY4YzFiNzQ5ZTcxODgxNzYxYjp7InNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2hhc2giOiJlM2U2Y2FkNzg0M2E0YzRkM2E3NmI4ZWMzNWVjNDg4OWUyMDE3NzYzIiwiZmFjZWJvb2tfc3RhdGUiOiJmeGxYZ2hzWk42cmI3QzNlT2JueWRqNVJHb0hQR2s0UCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=	2016-11-01 22:24:21.989932-04
8ko4k44yq0nulmd7dqw6jb6pdynhaqw9	MDdkY2RlZDJhMWFmNGM5ZDMzZWVjZGEzMTQ0NDkwNWZiNTBlMTUwMDp7ImZhY2Vib29rX3N0YXRlIjoiSEtqaE5tYkViczVlanRmN0VHd3lKczk4ZFBUODBxYUEiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-01 22:26:19.07051-04
qqpnnhrsu5lzg8bxo8svl0h78g4led1v	Y2ZhOTg1ZDNkOTU4ZjI5ZTViMDE0NzY0MjM5YTA2NWI5MDllNTgwZTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJSNGdjUTJPS1Nyd1Jsbkt2djk2TEhEMTJ1RFdBbEFxQSJ9	2016-11-03 16:37:49.854774-04
xyq5nqs93f4mtiejmt6j6jytg0ttfpe1	NDJlNzI1NWJhYmFlNThhY2QyNDg4Yzc0ODA3NDJhOGJmZTA3MGE5ZDp7ImZhY2Vib29rX3N0YXRlIjoiVWtiR0ZZbVBVd2JwNnExZUlBcTNnMlk1Y3hQdVlxMDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImEyMzllMjZhMTIyODhiOWE4YjRmMGViYTQ3ZTNjNjhlZDM5YjhmZWMiLCJfYXV0aF91c2VyX2lkIjoiNyIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIn0=	2016-11-03 18:41:55.525879-04
axpguesy6q3t3ewj3qipxunz7l08t3um	Mzc3ZTQ0M2E0OTY0Mjk5MjIyNTU0MjAzMDFlZTE1MzVjNjEwMWI5Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTIzOWUyNmExMjI4OGI5YThiNGYwZWJhNDdlM2M2OGVkMzliOGZlYyIsIl9hdXRoX3VzZXJfaWQiOiI3In0=	2016-11-03 19:14:06.199345-04
juocw7aep4m11hkyz1vyiwr0jm70mol4	ZTcwMjVlYTgyNTQ2ZjhkOGNhYmVhMWM5ZmM0YmZkNzZhZmQ1YjkyNTp7ImZhY2Vib29rX3N0YXRlIjoiaEVROWt0TXhJSVNRbE9xdDk1ZHFJcjZGMW9Xa1Bid0YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9oYXNoIjoiZThiNDA2NGM2M2FjMjBiNjY3ZWMwYTI2YmY0NWEwNGVkODBkNWJjNCIsIl9hdXRoX3VzZXJfaWQiOiI4In0=	2016-11-03 19:16:13.422834-04
t9qokx00k57t1b0z0ye7i0ah8nfgl9np	NTM0OWNkNmM4NDc0NGFjYmUzMGQyNjg3NWJmYzFjYjI5ZDAxNTBlNzp7ImZhY2Vib29rX3N0YXRlIjoiM0V6aUV2V2JvTTl6Rjg2SVpuUDJ4cFRvaW8wOXFybmYiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-03 21:58:41.95416-04
iu81dhu8qdn61q4ylwut68k9fjhamtyd	YjdlM2UwZmU0NDZiODNjZjQxZWQ1Y2MwODU4ZDgyMGE3YjI4NzM1Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2lkIjoiMzA4IiwiZmFjZWJvb2tfc3RhdGUiOiJuS3g1WnVHdFdRcDlJZXByUjRBRVNzVHI5QlhYdWVNbSIsIl9hdXRoX3VzZXJfaGFzaCI6ImRhN2E1MmQ4MGI1N2JjMzIzNGMzMjExNGUyOTY1YWFhYTY4NzFkMjYifQ==	2016-11-04 09:26:09.877107-04
5gld8fjtqy28hft9jdwkyyo93snqyk0k	MzQ3MDVlMGVkZTI2MTk0ZjU1MWYyY2E2NzE1Yzk3MWM5MmI4NDgyNDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNhOGFhYzk2OGQ0MGZhYTQzM2Y2NjY2YmQyYTU1MTBiOTgzYTVlMTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2016-11-04 19:51:42.589321-04
kcnvaxkewyijbmkfx0ux84n3dmk1teut	ZTZkZjg3ZDM3ODQ3MmY3ZTQ0ODk4YjcwOTJhMTE4NzMyYzBhMjExNDp7ImZhY2Vib29rX3N0YXRlIjoiOFd6cVFEZVN4R0VrRjJya3RkUUx6OUdGTFl5Q0dLUlEiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-04 20:47:17.936452-04
etklr7yszot0appfmg2bb9uyt2k7eu5d	Nzg0MDE3MmM4ZTRjNDBjNjhiNGJmODQ2Mzg4NzFhM2Y0OTA0MmMzZjp7ImZhY2Vib29rX3N0YXRlIjoic3ludzV3MHQyOHRoeng2ejFYVFNId2k1enVJYzVFUXAiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-05 18:06:43.165524-04
d3ylrzrcqzgl3nkl02fo1azy4cdkxs4a	MmJlODVkZDExNTQ4OTdhNWIxZTg2MWU5NGE3MjhkNDU4ZDcwZmM5Mjp7ImZhY2Vib29rX3N0YXRlIjoic2lvd0xVdnNoMmxvSHFrNGZqNVl2UktZWmllNHlRd0kiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-05 23:20:15.008388-04
3cn6hz66cs9p61b7o1qno7boajqf07vb	YzUyMDAyNjNkYThmOGIxYzJkM2Q4OGU1NzYyZDUzYjFiNGRmMjk4ODp7ImZhY2Vib29rX3N0YXRlIjoiTzVTZWhSZDFJSHRmcG8yZm5jeEJsY0FPdWg2d3IzZUIiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-10 15:11:43.852818-04
idwh0ndxf7y5w5a1bgjenbtckdhozlgu	NmZiNzIxZjliNjBlMGU0ZDlhNDEwZmM0NzBlZmRhYWQ1OGViZjk1OTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM4IiwiX2F1dGhfdXNlcl9oYXNoIjoiMjU5MjBjMzNkYzc5NDNjZDJiMjEzZmU2ZDExZjhjZjk2MzhkMmY3OCJ9	2016-11-13 18:19:48.079061-04
vvbcardg8swi8c6ownmj5cjhpbph3a8b	MGVmMTg3YjFkODAxNGQ1ZGIzZTNiYTJlYmM5MzAyYWNkMDYzMTRhNTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJlek9qQXJNZzBBQTNjV0FMY01Zb3MzU0o2VmRxQmdYVCJ9	2016-11-14 09:53:33.9528-04
42ae9fv1ei5z7c0vp8hruyd669u45be0	ZmIyNWEwMTY3YjgwMmM5YTNkNTRmNDkwNTU3ZmQ4NTY1Y2VhZjJiMDp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJMRnU2OXFVdU45dm5ZUVlxdlU1NTJwd1hiNkZjdmlHdyJ9	2016-11-14 09:53:34.089556-04
682efil344tnmot2fvekh3wcj9fmt8ib	NTA4NDliZjdiMDg4YzVjODFiYzhhNjM5YzI0MWY0MzViMDNhNzAzMTp7ImZhY2Vib29rX3N0YXRlIjoia2YybThsT2s4d0dPb3BOb1NmbVY4eHJrTkVrQ3RseXAiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-14 11:58:42.329529-04
cu4btz6kfw2er8wwxaipi1svr5mie1zi	NGYzZmJiNWMyYzgwY2YzMGI5NjVjODBiZDUzOTFmZjcwMjA3NDY0NDp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJ4bnFlYnZqdk10czVHMU5GaElpblZUcHZia3dNSmVoVyJ9	2016-11-14 22:46:11.870456-04
x7epm25rptmwltu63vqb3naqbzv21te6	Yjk2MDExYThiOTU2OTc2NjI5ZjE5ZGM2NDA1ZDQxOWNlOTNmMTI3ODp7ImZhY2Vib29rX3N0YXRlIjoiM01CZEhaRlhXeVFCMHhjWmlYdTN6WmlvRTJvUkJvdGMiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-16 13:47:21.076357-04
labn7875w5lweeh3130112nbpyefrily	YjY1YTE5MDYwOTc0YWNhZWUwNzkzYTY3NTRiODE2NTA4NzdjODQxNTp7ImZhY2Vib29rX3N0YXRlIjoiTVRIcHdVSDFWS1BZOG9RaDRmaEFXUncyRVM5NXdZR1MiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-16 23:16:06.579668-04
p8z0ssxnghcxx95ehj79r9j76h6hrt4n	MTA3MGEwZjcxNjM5NzgyMDA5ZjM0Y2Q4NmY4Y2U0ODI5ZDA4NmZhYTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJlOGY1MDVSc0h2YnNsRkc4R1JqTWNCUTJ4bXhqUTl1aCJ9	2016-11-17 09:14:24.186965-04
fkwg7c9iar2t71ui3efzbeb8n6el2pbk	ZWZlZjNiMDIxNTZiMWY5NmVmNTEyMTIxZjA5Mjg2YTcyY2VhNTcxYzp7Il9hdXRoX3VzZXJfaWQiOiI4NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjk1YWRjOTExY2MwZTE2YTM1ZjRhZTZkM2JmYzY0YTg0ZDdjOTM2ZiJ9	2016-11-17 14:08:06.628109-04
82aysh5g35i5w83r7wwnxg1bm5mdcbjb	NWRhMDZkNzdlYjQ3ZGJhY2JlZjdhODMxNTk2Mjk2ZDk2M2QwZDdmMzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJxaXRHTkxpMmIyRWdYWW5EQlN2cmZXYjJTOFVKam9HRCJ9	2016-11-18 13:02:57.119505-04
5kzbd67o62mhoea8gcfcif3lrb0rvj99	ZmU5MjQxZTkwMDJkNGNlOGMzN2UxZTEwMGUwYjRjOTRhMTc0OTRiMjp7ImZhY2Vib29rX3N0YXRlIjoiQXppbHBDbDltMmF5M3JtUGJZWWNXbEUxNU1MZzdLSUMiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-18 16:42:37.870448-04
mspkl0wfpev3cspbzkzr8xumc960frlu	MTYyNTViMzE1ZWE3NmRlMmI3OGMzOTdhMWU1Nzk4YjY3ODFjYmVlYTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjkwIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGQ0OGMwZWRjMTFjNzQ3ZjIxMTE3OGU0ODZmZTc3Yzk4MTk4OTUyYSJ9	2016-11-18 17:46:48.714502-04
k3chobjp0kzee5niq30f0h9g23pixque	ZmY5ODFmZmU4MGUyOGZjNGYyZWE1NDExNDI4Y2M2NmU0OGE0NGFlNTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmNiOTkxYTM0ZGI5MWMyNDhkYTkzMzRhOGY1MjRjNDA0ZWViMzZmMSIsIl9hdXRoX3VzZXJfaWQiOiIyNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiZmFjZWJvb2tfc3RhdGUiOiJqempxYU5WR25MY3NtcXkzUzZqaThiNGZwQURuaWhBbCJ9	2016-11-18 18:01:18.243269-04
wynvwa5f0iqkzhlkz9gw8s5gla9qaf96	N2YzNjFkOTExNDlhNjRiOGY5MGM2MDc2ZGVhMjk2Y2Q1MWY3M2VlODp7ImZhY2Vib29rX3N0YXRlIjoiV1RQMnNkcm9qYTVIN0dTZkVOZjhIckpJT0lrRno4VUgiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-18 19:08:35.243805-04
rxu1phjr7keikc5x43k78676phipo8d2	MGNjNDAxZjQ2Mjg2OGExM2I4MDU1ZjQ5MDE3OTQxNjM2MmFiNDNlYzp7ImZhY2Vib29rX3N0YXRlIjoiNzM1bzlibmxyc0xBR0xGOUJBQzNoM3V5WXVKWHlPeHgiLCJuZXh0IjoiL3JlZGlyZWN0LyJ9	2016-11-18 22:28:11.875862-04
bi9plu9w77f0o51xwbuyc8t6ryllmo6o	ZGUyMTZiZGQ3M2Y3ZTcyZTcyMGEyNTAxMTY3YTEzNzhkOTcwM2RlNzp7ImZhY2Vib29rX3N0YXRlIjoic2M2Z2FIaFI0bDVlMlRzd2NZb1J6enJ1V2RSU0F1OGciLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-19 15:38:46.541079-04
u0qwe54oyybv8lqlluqus9b9mdowhd3z	ZTVkODFmZTA0Y2MzNzViNDliZTFiNTExOTI3Njc2ODViNThhNzcxZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTZjMmUxNTk5NjU4ODQ4NDhhNmVkMjRiMzlkMGZjMDVhNWI4MDY5ZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDMifQ==	2016-11-19 15:40:46.134246-04
jdub1regr5iltvuekvy27ehv7qra6b7n	ZDA1MTgzMDI5ZmRlMDkxYjRkN2JjZTFhYzViMTVlZWU0ZWM5OWZiMzp7ImZhY2Vib29rX3N0YXRlIjoiOFB6N2hhVURRWERzZnpvV3FEdGNoWnVjcG9qeE82Y3giLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-19 17:05:25.914326-04
jdo4ht9qp7u4vwxjhuwth5cqswm1z9ts	NTVjYjJhMDMyZGY4ZDdmYWZmZTBjOGUzNWQyMWFjY2I2M2EyMDgyODp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJxWWdyb1lSVmpITW00ZUwzVVFPNWwzRkd6bzNUWkFpaSJ9	2016-11-21 01:31:16.796387-04
h5zuarrmxo4hv7qc55g06k64huyoyuqy	ZmQ2ZWFjMTdlZmIxYjc1MzUxMTZhZmZlOWM1MTJjYzAyN2Y2Mzk1Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImE4MDg4OTE4ZWQ3ZWJhNjI5MmFkNzJiNmExMzkyZjQ5YmEyZDJmNDYiLCJfYXV0aF91c2VyX2lkIjoiMTA5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2016-11-21 09:53:56.348157-04
ljhsap5pmyoi7gbi84sjhho7xgyzxgzn	YmNjMjgzMmZkY2E1OTQwOTgzOWQxYjhiYjQwN2U0MTY1ZDhlYWQ2Mzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJnaFdWYXVnVGJvekg2Sk9BbHdmdXNQbWxlSllNT3I1aSJ9	2016-11-21 18:45:23.770484-04
x0v92ykhq9prmpwdkp9ja934lvlcse0d	OWU1Yzg3ZGVhOWU3ZTI3Yjg2ZTJiYjUzOGZhYjMyMzg3MjNkMGU4Njp7ImZhY2Vib29rX3N0YXRlIjoiaG12eUgwTnEwT1RpNEtXMGlKY3pmMmRPNGsyb2wxa20iLCJfYXV0aF91c2VyX2lkIjoiMTAzIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImU2YzJlMTU5OTY1ODg0ODQ4YTZlZDI0YjM5ZDBmYzA1YTViODA2OWQifQ==	2016-11-22 09:48:44.088079-04
4rd5rf4sktosa3h3m3synr1bb2bswxkx	YTNjMGI5NWNmZDhhNzkzMjk3NWFlYzkxYWI4OGU1YWMzNzQxYzYxNjp7Il9hdXRoX3VzZXJfaWQiOiIxMTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImMxYzVhNGZlMGIyZDYxODU0NmJjOWNkZGI4ZjFkZjI1MWZhNTFiYjQifQ==	2016-11-22 11:58:37.6469-04
e5qx2zz9sxniq0mvy6pq1ml37hd9fhcz	Y2E1MDBjYTNjYjIyOGEyZjIyZTc1MGEwZWZkZTBiYzI0YmE5MzVkNzp7Il9hdXRoX3VzZXJfaWQiOiIxMTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjdmNDhhOTAxYjNiNGVmMGJlZTAwOGM1M2UzODhiZDVjZWU0ZDg1ZDQifQ==	2016-11-23 08:55:13.18179-04
twpnvrcdiysu8qfb9uha7ycjl6dqotba	YzQ2NGNmMDE2ZTQ4MTJlOTIxOTllZmZiOWNhYWFjMjMwZTIzMjllYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImRkYTg0ODBlNjI1MDRiODM4OTk0YWUyMzJkODRmOTI4MjZjZGFlZWIiLCJfYXV0aF91c2VyX2lkIjoiMTEzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2016-11-23 09:56:15.740769-04
chqkfdo2ykqxxi5es8b93ea9kdf57gkq	MDNiMzczMDMzYmU2Mzc5Njg5MTBlZTkzOWRmNmVhYWRkMmIzNTQ1NTp7ImZhY2Vib29rX3N0YXRlIjoiTHg1bkxtMExnMlA5VFNXNVlyRUh0R1MxdnlpcFJCR2siLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-24 10:16:12.876701-04
aner26f8qgva7a4z5i5uuunboj8rgcvq	YjcyOWQ4YjNmMWQ0MzVmYmY2NWI1MzMwNTkzMmIyYWZlZDNjODNkYjp7ImZhY2Vib29rX3N0YXRlIjoiQmZGTW9BbW5TNFdENE53RnhwY0dyY245d3Z4aXdFUzkiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-24 10:17:40.849124-04
ey8qbnaekh5vk4tjdcogtgosnuq147p7	NmJmMjdiOTJlMDdjNThkODc2YmJkODc1MDQ4ZjRmODU1YjE0OTE0NTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJldkpSMWoxRkpORjVVYXJ4ZEg2MzRyN1diaUxOYWU3USJ9	2016-11-11 20:01:00.582721-04
srt6dit67yfirk8u47r2azatfywfht7v	MTQ3NWMwYzlkZWYyZDAxZWEyYjFiZjUwZjY0Yjc0ZjJhMjIwNmI3Yzp7ImZhY2Vib29rX3N0YXRlIjoiSXpCQlRKYzF0UzVvVzZ4QmhNcnFvczZiQjRoT1pNMDQiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-25 10:35:22.687275-04
5m4bd0b70d3yj15g4ywc9byf98uuig9n	MjdhNmRmNTUxOWU5YThiMGE2MWM2M2EyY2I2YzY2MWMyNWRhNzcwNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImM5Y2FmMGNjODdkOWNlNjM0OGEzZDUyODk1NjhjMTczODQ1ODM5ZmUiLCJmYWNlYm9va19zdGF0ZSI6Imdad1hlb2g1VUVTa3NnU0dkOFNGNjJmWjhoWXg0TXdDIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2siLCJfYXV0aF91c2VyX2lkIjoiMTYiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-06 16:43:07.759017-04
atydhiapxml0hygdq7hga3bbwiq6e1gk	OGE0MmFjYTZhNjZmYTI5ZmMwZThhNGNhN2M1ZWQ1M2M0MmY1N2QwZTp7Im5leHQiOiIvcmVkaXJlY3QvIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJmYWNlYm9va19zdGF0ZSI6IkVMSk5PcTVHSkNRZTZJWENyQ08wWlpkUkJtM2RqMzFTIiwiX2F1dGhfdXNlcl9pZCI6IjM3IiwiX2F1dGhfdXNlcl9oYXNoIjoiYTJhMmRmYTJlNGY2YzA5YjczNzc4Mjc3YjkwMzM2ZGVkYjMyOTkyOSJ9	2016-11-13 08:43:40.71223-04
b8z0979edy5c04rstoemb2wk8lkq46mm	ZTU4ZTcwZTgyOWIyODc2YjdjNzQ3NDlhZGRlMzNmNzU4NWU5ZDRlZTp7ImZhY2Vib29rX3N0YXRlIjoiS2M5bktOQ2VLM0k4ZXVkUHk3MTBNNGdreVV6ZDhQaFQiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-13 20:49:44.659866-04
1z604uej7u5esr899kdgwiglqfom1l1k	OTVjYTI0NDYxZTVjNWRkOWY1ODk2NmRhZTY4MWRkOWJmNTYzYTM4Mzp7ImZhY2Vib29rX3N0YXRlIjoiWFZKMzdWbWR3U0Y5SkZQcU82MFRJd2dmMGk5ajdWYTEiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-14 11:17:58.13748-04
zil3tbo6zin4dsxf8l5s13ptnp8vzv56	MzMxMTcwNTRkNWI0ZDMxNDNhZGFlMjc5NTJjMWQzN2Q2Mjc0YWU5YTp7ImZhY2Vib29rX3N0YXRlIjoid2JxSkd0VUlXNEl0b052b1RON0ZqTzN6WFBxVmgzQzkiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-14 15:49:58.338051-04
t5lvugn8h3r0vvwff4bx8jkh8r6wle4u	NjFiYWUyYjU5NzQzNmUwODQyNWJkYjcxYjU1MDY5ZDI4MzYwN2VlOTp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTNhNzc5MjYwNTI4OTI4NjdhZDcyZDFhYTBmYjFlYzI4MTE1N2E5YyJ9	2016-11-06 18:54:58.545426-04
eicnn8lm8vl6f5m1k3w8gxrevlwzlc0a	OGJlYjU1NzE0OWNhYWU3ODJlOTEyOTUyZWY4MDZkMmU1MDgzZmI0MDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjM1OTFkNjAxOTJlN2RiYzkxMDU4ZDI3YTRmNWMzMzI4MGNlNTE4NiJ9	2016-11-15 14:09:01.236819-04
051ldcy6t7katwii130cxni5jo80ocbi	OTI0Njg5OGVhNDgzMzgxZWExNDMzNmIwNDE0Mzk5NDUxYTFhZDI5ODp7Il9hdXRoX3VzZXJfaWQiOiI3NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTg3MGIxNWIyZTAyOWZhNzYyNTZhODI1NTQ3MjM3NjNmODAwMWU2MCJ9	2016-11-15 18:12:34.311165-04
97ye6mw7qcdynmrlmtxuntxxvkhvlk78	NjZiM2RkZGZhMzc5MTI4ZTkxOTEyNzQwNDEwYmMzZTQ2YTQ4NzU2Mjp7ImZhY2Vib29rX3N0YXRlIjoiSEFLWVlNbE9ZMGE4cVFKRXpGMDJLRUw0YWRiRGlOZ3giLCJfYXV0aF91c2VyX2hhc2giOiIyMGFkNjJmZDUxNmEzNTk5ZGZiN2Q2MTczYmQ4MmI0NjA4MzE3MWY3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMjEiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-06 20:27:54.584174-04
kn50ewuc0zs4ur4268bu5rtdgoabgupz	MTU3MmIzZThlMjdkZDU5NTc1MGE0MGE1MzFmMTY0ODY1MTFjMDc3ZTp7Il9hdXRoX3VzZXJfaWQiOiIyMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ2ZmY2NjFmODBiNjQ2YTJiNzFiNjVlNjc3Yjk5MTBhZjIxY2RmMDUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2016-11-06 22:43:05.580337-04
fm91jx0x2n5ahxy6mr3h2n1xvfs7f0nq	OGEzMjUzNTI4YjNmY2QzZTIyNDE2NTNjYmUwZjQ3ZTRlNTU1NGM0Yzp7Il9hdXRoX3VzZXJfaWQiOiI3NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2UyNDQwZGRiZWFkODg3NGQwNzE4M2FlYTg2YjNhZTU1YzZiMTgzYSJ9	2016-11-15 18:13:20.522931-04
4r7ze2jvi01flt8a8gjpxmfcc4cireij	NTU0NTU3ZTNjODI0MTQ2Y2RiZDZjYTc3MDM4NjhkMGFkNzZmMThiZTp7ImZhY2Vib29rX3N0YXRlIjoiRXFJSmxnZU9BeXoxV0JqRDI3SHRGU3Q3ZEd6N0NJNG4iLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-16 00:15:04.047592-04
1wmnapl5taqrcqk8gzvp8ijn26nzd2np	ODU5MzU1OGE3YmRhOGRkMTAyZGRiOWIwNDhiMzYxZTk3YjBmNTQ5MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2lkIjoiNzkiLCJfYXV0aF91c2VyX2hhc2giOiIxZmEzNWY2ZDI5ZjY5OTIxZTI1Y2ZhNDllNzgyMDAzMGJhYWVkZjg4IiwiZmFjZWJvb2tfc3RhdGUiOiJaNXc3TjU5UlZDSGxveWFNNFNXYzM4WUk0NERZeUJrTiJ9	2016-11-16 08:40:40.797204-04
eubijx27k2hji3d124gjb0gvkgu8ynqa	MDdhMDg3ZjZhNTNiYWMwYWQxYmVhMThiYzE4ZjU5Zjc2Nzg1ZmY3YTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJsYzdwaUZiTkZGbE5STVVrM05aSTVCNEI2WDRoQnhwcyJ9	2016-11-06 23:21:11.316263-04
9055k8u03ww05l7ch6ky8f6uaten9fxb	MTUzMzE0MjE3ZDlkMDBjMThhNGQyYWUxNDZiMjg3ZGM3NjkwY2U1OTp7ImZhY2Vib29rX3N0YXRlIjoiV3FPdEx4b3NudlhZc2tzSkJrWnVpVHFkczljczE5dXYiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-16 22:55:02.717096-04
j8kragf8t5x4h5k4hnzbwkh78xml4ohw	MzIwNWIwNzdkOWE2NzI5ZjQyYjJiZGM0OWY2ODk5NzNmOTlmZDQ3Mjp7ImZhY2Vib29rX3N0YXRlIjoicjVZVXhyakNjY0czVkROSGp3SlRXNzFMNjBYU3FmaHoiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjZjMjNkYWQyYWFkOGQ1NDdmZmY5NTdiNGU1YjBlOWZlYWZiMGZjZDEiLCJfYXV0aF91c2VyX2lkIjoiMjM0Iiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2sifQ==	2016-11-07 21:44:38.937266-04
gmankq26i0qpfjmpoh89gq1zt1rirf6e	NTdjZjU0YzVjNGQyMzMwMDUwYTliZWY3Y2Y2YmU2ZDk1NWE2OWUyZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3OCJ9	2016-11-08 10:57:18.362918-04
ep6j0u6cuu4d6g9wwnzwaio6gveug4j0	NTdjZjU0YzVjNGQyMzMwMDUwYTliZWY3Y2Y2YmU2ZDk1NWE2OWUyZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3OCJ9	2016-11-08 10:58:52.860837-04
8nq3fsvfwsk0bwu9r6nuorgijgg3jd0q	Y2FiYTE0YmUxYjRkZDlkZmQyNGU1OWY4MTRkY2VhNmYzNjNhM2NkOTp7ImZhY2Vib29rX3N0YXRlIjoiMGpCc3duWnpSUlJ1bld1ZmlPVE1WT1FqVjMwTGRUNHMiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-09 11:13:26.51084-04
f2ojl7k9k2wavf8lycjc6zoldhf2tagg	OTk3OWUyNjYyYWQwYzQ5N2RlZjUzNDA2NjlmN2IxNGRmYjc5OWY5Njp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJLall6YXloMGFaUm1sM3RuVW1OVkNUSktSZk9DaGJEQyJ9	2016-11-09 13:54:18.448952-04
i17jud709uaewz2fhpml98io9bizcys2	OGRjMTBjNzk0MmM4NTZkNjQzOTRhMmJkOGY0NWVhMjI0MWQyNWYwMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijc4IiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2016-11-17 08:17:23.066657-04
f1g4sa710u0ppgk22drfie6p72bgndab	YjExMzgyNGUxMTdlYTA0ZTIxYzRjMTMyODdlZmQwODAwYmNkMGZmZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGQzNDlmM2Q3ZjEwOGVjZTJkOGM1MGZiMzBiZmRiNDNhMjM4NmQ1ZSIsIl9hdXRoX3VzZXJfaWQiOiIzMCJ9	2016-11-09 23:26:53.336621-04
0aqzov68z4xwbk4d0gapiv3a9b68z32h	NDQyMDE3MjAwZDU1NTkxYWQ1MGU3M2Q5NDEwNTk0Mzk2OWZiMTU3Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDY4ZGMxY2Q0MjYwNGJlYWM0YjVhMDI1MTdhNTllYWZlN2ZmOGUxMSIsIl9hdXRoX3VzZXJfaWQiOiI5MyJ9	2016-11-18 21:15:44.002866-04
vnyfyiae2eiqy43ewdpaw36f9e854zlg	ZjM3Nzg3NzQyMWVhNjg0OTExZTI3OGVmM2RhOTEzOWUwYWExY2Y1Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDQ3ZmJiMjA2ODBiNjdhZDFkNTA4OTA4MTJmYTJhNzM5MDMxNmYwOCIsIl9hdXRoX3VzZXJfaWQiOiIxMDQifQ==	2016-11-19 16:03:58.066384-04
r7doxxrtcmwszjd6ebldor8emt9upbw6	YWY0YTkyMDk1OGI0YWFmZjgzZDgyZTM1NzUzYmM1OWU0M2U2OTY1Nzp7ImZhY2Vib29rX3N0YXRlIjoiYjhsMEVJVkRRT3V0VXRTelFRb1JOOVZnTXVuWTF6R0QiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-25 06:12:30.30172-04
md7ie2ijfspjin9vvgm8k7l5ayzirp0s	ZmY1MWMwY2IzZmE5MmM3NzcyNjUzNjMwOWIwNjc3NWFhNWZiNDIxYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFiNjEyY2VhNDYzNjNkOWI1MDRmMDQxYWYwYTUxNDQ0YjhmZTYxMWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMzgifQ==	2016-12-07 15:17:41.250693-04
4amj8d81ws9gqsguje7gzmnfki2dahd4	YmFkNGNhOWYzYzgwNTViOWMwZjY3ZjdkMjk4ZDU4NmYwYWE5NjZmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTI5MzRhYTFmMzE3NzM4NTQyYmY4YTZhYzQzZDYyODU3MGJhNjRhNCIsIl9hdXRoX3VzZXJfaWQiOiIxMTcifQ==	2016-11-28 09:27:48.172407-04
xsc2q9bjaca50q1b54h0essmqeu8p4ki	YTc0MWJkMGNkMzIyODQwZWZiMzkyYjQ2MTNiZjAwMzc0Nzc0OGQ1Nzp7ImZhY2Vib29rX3N0YXRlIjoiSUx4bE8zWEo2YVlyaW5ZaWpjTXlwVmk0OW12cmZSaDYiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-12-08 20:45:36.797701-04
av4xkuz6ydk7ikot4504tq0xc2j852ph	MzkzMjhkYWM0OGIxZmRjOGI5NGNlMGZmYjA3ODI3MTk1ZWFiODBhMzp7Il9hdXRoX3VzZXJfaWQiOiIxMTgiLCJfYXV0aF91c2VyX2hhc2giOiI2NTJkZWZkMTVkYjkxZjE5OWM0OTY5MDdkOGJmZGYyOTI4MGU5NzYwIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2016-11-28 20:00:09.563464-04
dbz7eo2tr785adjms54p37u379kyo40k	MmE2NjZkYzYwZjMxYjE4YmYzOTAxZjQyYjQ5MjdjYmEwMWU1ZWVkZjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJwZnhJemZVN0lFak9zMnd0TGY2ZHRVd253VUxmVEtIVCJ9	2016-11-29 09:46:44.713649-04
v61ui6q64pb3jynuhjdvf1ysr3nyh6er	MzViYjc3MmI1Yzc2YjYxZTc4OGRkOTdjMTJhOWU4YjA1MmVmMzBhNjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJSeWZsTnl5cVFWOTlPSmZrdU94RERvTVVpVkx0S09ERCJ9	2016-11-30 12:55:18.724119-04
68fxkdml3uc446laoypu6l2sv613oxqz	NzgxODAzYjg3YjM5MDk3ZDliOTY1MjM5YjdkZGI4ZjRmZjljOThjYjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJhSUxPeUdXVE5kTWJhZlB6alRnMUxuRUVOMlJ1U3NvdCJ9	2016-12-01 00:48:37.71979-04
mu6ppnx72e0qap9yqdjifjzd5qcjuunq	Mzc3NTk5MmY3ZjUyYjFlZTEwMDkwNmZlMzNjZjE3NGY1M2IwM2MzOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY1ODk1ZThiMGJiMWI5NThmYWQ2YzlmNjEyYzZjNDg0ZjkwNjM4Y2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImZhY2Vib29rX3N0YXRlIjoiMm55cEM4NUtZTlNuZVNNTDdiSk9QVFlxVzR1ZG5GTVgiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsIl9hdXRoX3VzZXJfaWQiOiIzOSJ9	2016-12-04 22:58:41.446992-04
fotpj00kz9w1eqn87r9prtd6j6b9qxnn	ZTBmNDUxMDI3NzU1NGM4NjFhYjNhYWI2ZTllMjY0YTVmMmRmZDMxODp7Il9hdXRoX3VzZXJfaWQiOiI3OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2016-12-01 08:55:12.791132-04
0smqrn59ijb3035auovfn25jqg69uwff	MjZlNTQ0ZDk2ZjE3MzAzMjI4MDFhNzA1N2I3NjA0NWVhMzEyMWVhNjp7ImZhY2Vib29rX3N0YXRlIjoiMzhuWkhOMVZuR3ZNZTdiUzVzWlQ2Qk1NemRCVjJJRHUiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-12-04 23:24:09.22406-04
ax56ftlt8jsfpv9unaqzqvlbc4nt9g35	ZDE3NDA3MWFiMzg5OWUxZjU1YTFjMWRkZmQ0MWQyN2IyOTdkNzFiODp7Il9hdXRoX3VzZXJfaWQiOiIzNTMiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU3YzgwNGU5M2MwMmVhZGZhMmU1NWQxNjM2N2YwYjAwMWJjYWFiIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2016-12-16 11:01:54.424492-04
wtzpih54po3bs6f0su0pk1tya7cyb15v	NmRmY2Y1MTUzMWRiZTYzMjA5NDU2NmIxNTc1MDEyODQ0NjU4NzYzNjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJocXFoQ01RMkFPVUprTGhxdUVaQ1pDS2hYNUlSdUJPcSJ9	2016-12-05 23:41:35.862622-04
yf18yobslfiutia47lexdf9e65txjnrg	ZTBmNDUxMDI3NzU1NGM4NjFhYjNhYWI2ZTllMjY0YTVmMmRmZDMxODp7Il9hdXRoX3VzZXJfaWQiOiI3OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2016-12-03 12:40:33.241529-04
cjvacyyx7zkf0if2jj9dcrxyedd18jjb	M2U1NjhkYTAwZGEyMzgxNzhhZTZmMWQ5ZGM3NmY3MjE2N2FhNGU4Yjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc4OGQ0OWRmZGIxY2FjZWMzMjRlMWZiNjk1ZDJkZjViZWU4M2M0YzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMzAifQ==	2016-12-02 21:48:51.366154-04
k5ruiq4d9l8pc49yv29vkzsdha5hfbu2	MDA1ZDRmY2M3MDc0ZjgwN2IxNGZiNTQwNzZlNjJkN2EyMGMzMWRiMzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJHTndUY1FsQWJHUjNWeWVtU20wTVprRFBNdDNDNlA3aCJ9	2016-12-02 23:28:44.961423-04
lizm8t141v84sipark5l36y4pe0xi34s	MWIzYzkxZjdhNWQ4ZjJlNzkxOWU3MWM2ODg3NTE4NjVmY2U0NGRhZDp7InNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiX2F1dGhfdXNlcl9pZCI6Ijc4IiwiZmFjZWJvb2tfc3RhdGUiOiJPVXJRQUQyWFJlVnluRlgzWkZBNXowdlE2eTcwT1NDdyIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiJ9	2016-12-06 09:48:12.435523-04
htei7yyyx51qcg4xteqh7mfgj0yp9tup	MTk1Mzk1YWFlMDY0ODZkMzBiNmY5ZTczNDQ2Y2VmYmExZjU2NDVjMTp7Il9hdXRoX3VzZXJfaWQiOiI3OCIsIl9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2016-12-06 09:59:05.299524-04
fyysc2eda86bzrp2eu6dwai2p04jrjed	MDI0Y2MzNTYzNzViMzI1OWM4OTQ4NDllOWUyYzIzNWM0ZTE4MDhmNDp7Il9hdXRoX3VzZXJfaWQiOiIzOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjU4OTVlOGIwYmIxYjk1OGZhZDZjOWY2MTJjNmM0ODRmOTA2MzhjYiJ9	2016-12-03 13:07:23.308557-04
4i5jhd98b7ngklik4zypi43d9y3ef4c4	ZTBmNDUxMDI3NzU1NGM4NjFhYjNhYWI2ZTllMjY0YTVmMmRmZDMxODp7Il9hdXRoX3VzZXJfaWQiOiI3OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2016-12-03 13:11:28.14862-04
taf65iv4pya9xjm046730ul4lin85f5d	NGUxZDljZTJiMDZjMmRiOTJhMDVkNDY0NDljYzQxMWJlNGRiZTliMTp7ImZhY2Vib29rX3N0YXRlIjoiYmtEdTNFNzlOaXgxRTBvM3hBYnJ4OTltZzNESkZFWmEiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-12-04 03:56:52.263534-04
jbx7h159qwo3jkl5rsnv27rlao7dgitc	YjY0ZDczN2VhYmIwZTA4NDY0ZWY0ZWZlNzczYzQ0NzNjY2RjMGI4MTp7ImZhY2Vib29rX3N0YXRlIjoieTBUWnQ1RmFwelN6UmJCbGRWR05KU0dxcTNDZkh1eDQiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-12-04 08:56:05.286654-04
4oo2cwby862fy9x3bwo4kg3snr1myxkb	NTJmYWIwZjg1MTQ4NmEzMGFlMDM4NzQ1NGRlNDhiNDNhN2IxMjAyYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY1ODk1ZThiMGJiMWI5NThmYWQ2YzlmNjEyYzZjNDg0ZjkwNjM4Y2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzOSJ9	2016-12-07 09:44:05.157976-04
mizafdk6a6xxgv0ifwblvtqswd4fh44g	MDVhZGZkNTk5ODllMjNmNzIxOTEwYTY1YjVjZmI3Mzc1MzhmM2Y1Mjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJNMXFWZUtTMjVCMFZXQUZtUm01RTV4aTB2R0JuY0JVYyJ9	2016-12-04 19:07:05.88085-04
oopf8w1w1q941xs0tb6gnd80sdf5xain	MWI1YjZiYTBhYWJmN2U5Y2E3OWM2NjYxMWQxNzQwYTNjODA3YTI4NTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJwZW5wczREUEFuZ2tiYWg1VDczSWJOWDZlTUJ4MkNSNSJ9	2016-12-04 19:24:44.57474-04
zi7dtxkx3rk8zht1wy06vtluw0rvcnch	YTI4YjBmODgyYWM0OWFhM2JmZWVjZDFmYjJkMTRkNzdlYjM3Y2ZiZjp7ImZhY2Vib29rX3N0YXRlIjoiMkZCb0g2Q2U3ekdmc25odFVjRVEwWTZNWElXTVVSRlEiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-12-06 10:45:53.155985-04
3iskywxbuv954vr6z2udp2hakp5udc29	MDI0Y2MzNTYzNzViMzI1OWM4OTQ4NDllOWUyYzIzNWM0ZTE4MDhmNDp7Il9hdXRoX3VzZXJfaWQiOiIzOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjU4OTVlOGIwYmIxYjk1OGZhZDZjOWY2MTJjNmM0ODRmOTA2MzhjYiJ9	2016-12-17 20:09:02.485345-04
2svx6eqbybbgyggvfzda5hsccjiewru0	MzllYWY0YWYyNmI5OTE0YTVjNzA1MGUxZjQ5ZTI0Y2ZiMmQ5MzJlMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIifQ==	2017-02-10 11:30:52.212872-04
pitlsylzj9vnf4ynkvk73guf3w1opybl	N2M0NWU3NTZhMzNiZmVjYTJiMTI2ZTNmZjMwZThkMWFjZTE0NzVmYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJmYWNlYm9va19zdGF0ZSI6IlFGcGZGYTZ5ZXVnVW5jeUhUZTh1azg0OW1VUUl3Z1J5IiwiX2F1dGhfdXNlcl9pZCI6Ijc4IiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayJ9	2017-02-06 13:46:52.915055-04
plhujyb8tc16u5cvwy5jab84ylhumq3u	YjVkYmNhNmUwYTc3ZTUyNWQ1NDA1ZmZlYzcyNWNkOWJkODJjMTQ5YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM1NiIsIl9hdXRoX3VzZXJfaGFzaCI6IjQ1NzYwZWMyZDk4MzE0NzE2MjE1ZjE4OWU0ZGI5YzM2YWZmZDU3NDkifQ==	2016-12-23 10:27:03.196338-04
6dcx0lfdjdmuq0nmes5qzyxedxlkq3pb	Y2RmOTY2ZTY4NzFhZDFiNzNiYjFkNGMyY2M0Yzk4NDkzMzU4Y2EwMzp7ImZhY2Vib29rX3N0YXRlIjoiNHUxcTVPbzZpMHNENnF1SzNvd1FmeG9Jamh6MzRFbDgiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfaWQiOiI3OCIsIl9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-02-07 19:07:49.535124-04
96ie881o8svg6a65ob7kwiovebaxk71d	ZGRjNmEzNzc2M2ViOTkzZTQ3ZjIzOGI2ZTg2YzIyNjFmMGUxMWIxMjp7ImZhY2Vib29rX3N0YXRlIjoidDFtV3BFUjExY2o1T2I4aG9FWmRuR3dqZGF5UkxpRDYiLCJfYXV0aF91c2VyX2lkIjoiNzgiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2016-12-31 11:49:07.219192-04
xc2oyqljthz1dwfjnx5pu1et2gbu9yh2	OGE2NjMxMzYxZTM3ZmE4NjBhMWNmMTYyYWMzODE0M2RmZWYyNWU1ZTp7ImZhY2Vib29rX3N0YXRlIjoiT3V6MEVYOVNNbHZoWTBLNTNXaVRHbFc4QzNBZGk5SXIiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfaWQiOiI3OCIsIl9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-02-07 19:20:31.271334-04
nmj9f1ac2bx2h0rwj97gbmu7iezmuon7	ZTJiNjcwOWFlOGVmMTAzZjBiMDFmY2Q3M2EyOTYyNzg0MWQwN2EwZTp7Il9hdXRoX3VzZXJfaWQiOiIxNDEiLCJfYXV0aF91c2VyX2hhc2giOiIxYWQ1MjlhZDVlMzE0MmZlZTQ5YTMyM2QxMDQ4Nzc3NDc5MzFjOWU2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2016-12-09 19:14:19.996335-04
kwuez0ur9dus1xpmz90pb7aeo18dedmu	ZWIyMzI2OGFjMjU2OTg3NjU1MDY4Yzc0MGUxMjVlYjhhODcwZWU1Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2NzdmZmYxZDMxOThkNmM4ZTM0OTBjNTQyZDQ3ODQyOTQ5MGNmZDEiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9pZCI6IjM0OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsImZhY2Vib29rX3N0YXRlIjoicEg0NkVKTmtsaGtwY1NkczA4bVhoYTEzSkwycEhZcDIifQ==	2016-12-14 09:21:59.044268-04
dt3qumrma6hj56g69agz2t9wbnehfdno	MDI0Y2MzNTYzNzViMzI1OWM4OTQ4NDllOWUyYzIzNWM0ZTE4MDhmNDp7Il9hdXRoX3VzZXJfaWQiOiIzOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjU4OTVlOGIwYmIxYjk1OGZhZDZjOWY2MTJjNmM0ODRmOTA2MzhjYiJ9	2017-01-04 14:52:10.203887-04
5q4kz48wpr0o86ys9mhbbyyccb8f7636	MzQxN2M4NGJlNjIyNGZhZmFjZTA1MGQ2N2IxMWMzYTAxNWViYzI4Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjBlNzAxN2ZlYTUzN2NmYmMxZWY5NzViM2ZjZWIxN2IzMDhlMjljM2EiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9pZCI6IjM1NyIsImZhY2Vib29rX3N0YXRlIjoiZEF3ZG5kbjB6ZlpMWjNLdnRNQTJvTE5MenE0TDNCbmwifQ==	2017-01-12 00:44:52.400212-04
c77v7nq3yj3jsj4vxfs7cxykn6xbirk3	ZWYxYzUwM2I0YWRjMzVkN2NlMmNlMzM0YzM5OWZiYzQzMDlhMDAxOTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzcyNjA3NTc5ZDE2MTE3Y2JlZWMzYjNiMDM0NTY2YjhjZGMwMDJkNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiZmFjZWJvb2tfc3RhdGUiOiJtRXdNODBEbE9GOGdoNE11MzQ2NGthSDJaNWxQZFB1eCIsIl9hdXRoX3VzZXJfaWQiOiIzNjAifQ==	2017-01-14 10:54:22.650663-04
fnkhzb30heaee3tobsqi808xmf16gfsu	NDUwOTM0MmE3MDY2NWVmZGM3MGZiMDhhOWQ3NmJlZjY4NjNlZjM0Zjp7Il9hdXRoX3VzZXJfaWQiOiIzNjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjdlZjA4ZGFlZmNhNzI2MGE2NDE2MGYwYjdjMTE3NTJmZDgxZDNjZTgifQ==	2017-01-17 09:31:41.960441-04
e6hdx1zmpw5zimnwrato947rdpzpwsh0	NjU4ZTY2YjQyNTVmYjAyYTZkNzc5NjFhZmFkYWZhMTZkZGY2NTlmZTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJHNThQbUVXdGIwYk01RFphRFpwWm5hMVVSdVlWU1lGTCJ9	2017-01-20 07:17:55.963639-04
03q1clnqt4rtfb848up9t0ivibtxligj	OTViYzc2NTg1M2U0NWE4YTJiNWY2OGE3ZDZjOWMyYjhmZDkyMGIwNzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJqWldvOWNubGhMaVhsYU9zTXZzVjVCR0xDMzBjcE8wTCJ9	2017-01-23 19:06:22.201486-04
v3h9cmi7ol88po3q1x3n35b622z94vi5	YmVjMWNjY2FhOThhZDg3ZDEyNGMwM2RjYzAxODhiN2E5Zjk0ZDhjZDp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJBeGtzaTRVWVI5WG1jenU5WmhQd3BvN0hlODg3ZGV1ZyJ9	2017-01-25 00:04:07.915173-04
ix2svrtp4zrboq28nrsyhxih38bb8126	MGI3ZGY3YTRjOGExMzZmOTJmYjQ2YjdlMDY3MTdiNDA1ZWMzMjg3Zjp7ImZhY2Vib29rX3N0YXRlIjoiV1F6cmdyWkVSWm9wb09VaFVTa0hUMjFmR3RQbW1TZDAiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-02-01 09:55:08.24132-04
kc9rm6tblefofyqvimrvo49wgvdx4c63	ZDkxZDU4YzgyOWM1YTgzZWU0MmY5NDAxN2YyNGE2YmE2MzU3ODhhYTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJISjZSUDJtMVpJOTV6dVR6Y25UaXF0ZFNXcmlYNU8yMyJ9	2017-02-01 11:28:55.081643-04
xz1etb0xrjfsonhnt8igkvbcsvxudnog	YzQ3Y2Q0YWRhMzkwNDQ5OTA1N2UxM2MzNTk2Yzk3MWU5ZmE3MTAxMzp7ImZhY2Vib29rX3N0YXRlIjoiR3lVMlRiOGlDTk1jaVFseXpsa2xVMEtDa2hEZE9YNlAiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-02-01 17:33:52.458622-04
knjc2mgd03erpjhk56bkooipwyzdpkyn	ZjkzMGNhZDA5Yzg4Y2VmNDNmZTkzNGUwZmRmY2JlOWNhODc4YTAyYTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiIxa1NoZUo4VEpEOXd6T1M1UkdJRFp0cXpEZEYybDI2UCJ9	2017-02-03 02:03:51.18169-04
lhjliituwpze7mnkrr0h28t867nmjdk2	MDI0Y2MzNTYzNzViMzI1OWM4OTQ4NDllOWUyYzIzNWM0ZTE4MDhmNDp7Il9hdXRoX3VzZXJfaWQiOiIzOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjU4OTVlOGIwYmIxYjk1OGZhZDZjOWY2MTJjNmM0ODRmOTA2MzhjYiJ9	2017-02-12 20:02:16.246347-04
xqs7k0af8mcn0c9od48rzf3128le7y1b	MzkzZjk4NDUyNjk2ODE5ZjBmOWE3MWQ2MzViYjVkOGQ4ZmIwMmI2ZTp7Il9hdXRoX3VzZXJfaWQiOiIzNzYiLCJfYXV0aF91c2VyX2hhc2giOiJkNTY3YTAxMzQ4MjQyOTIzYTU3YTZiMDRjY2YyNzYzOWE4Yzg5OWUyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-02-14 19:25:13.635241-04
x3jjvlrpn9qh75a3y8gnbr91gq7v7m3l	ZDUyODUzM2MxZTk3YWM4MDJjNjQ1ZDQzNzk1MGQzNDE5NTI1OTY1NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM1MyIsIl9hdXRoX3VzZXJfaGFzaCI6IjcxNTdjODA0ZTkzYzAyZWFkZmEyZTU1ZDE2MzY3ZjBiMDAxYmNhYWIifQ==	2017-02-20 09:04:22.18612-04
aj3mlayqtcdolyc128dwbl1xxswqgjkz	YjdhM2U1ZGZlZjViYzczM2FmMzg5NWZhYTg2YjgwYjMwNTA2MTNlOTp7Il9hdXRoX3VzZXJfaWQiOiIzOSIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1ODk1ZThiMGJiMWI5NThmYWQ2YzlmNjEyYzZjNDg0ZjkwNjM4Y2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2016-12-06 10:49:49.866774-04
mbhokv3v1oi91nt5c78fkufe2vrbzqeg	MzM4YmUxMTI1OGRmZjQ2Nzk2OTQ3MzdhZGYzZDJjNGVmZWQzNjA2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk1MDNkNmZlNDI1YjUzZjU0OTc0Mjc0ZTY0MTdhMjgxYTAzNTIyNDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzNTUifQ==	2016-12-20 18:48:02.877898-04
gss942i6e2x35y1eoczuzwwfpjiiqwba	MGViMTg0NDYwMmM0N2IzYjhmYmFiMjRiNzg5MjFkN2RjMGRlN2E0Mjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9pZCI6IjM1MCIsIl9hdXRoX3VzZXJfaGFzaCI6IjdmZDhiNTM0MjZhYjM0Y2JlMTBmYjE3ZGFkYzYzNjM0YTE0MDk1NjMiLCJmYWNlYm9va19zdGF0ZSI6InE3cTRBTzFvRjRzWjQ1ZXd0UW5RcWgzaGRWS2pqdlRkIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2sifQ==	2016-12-21 10:30:40.28927-04
jatcgta1naebzu906stig981wmy2m9o7	OTA3Y2ZhMjI2YTM0MTlhOTMwNmYyN2I3MmNiNGRlYmUxOGY0OWNlYjp7ImZhY2Vib29rX3N0YXRlIjoiU0UwOGdZT1I0OE1UMTkxeGJrOVVuQndWblFFeU1pcnMiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsIl9hdXRoX3VzZXJfaWQiOiIzOSIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1ODk1ZThiMGJiMWI5NThmYWQ2YzlmNjEyYzZjNDg0ZjkwNjM4Y2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2016-12-06 13:18:34.397767-04
0tgwn1q0j592k28gkp8je2dzs1acgmns	OGQyYmQ1MzE3ODk4Mjc3ZWYyOTBjMjM1MjU0OTQ0YWZlZTA3NDJkOTp7ImZhY2Vib29rX3N0YXRlIjoib0tPR1RMcGRZS21FMFBzcWttSjFOdEt6Y2FMSkdvNXciLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-12-24 05:22:53.986958-04
x6lhbbe98d92sr8578pssa4hn8jg57gk	YTNkZjA0YTY1NTk4NDZhZWFiZWZkNDkwOTg3NTA0NzY2ZGRiNzQxMjp7ImZhY2Vib29rX3N0YXRlIjoiNmR6cWQwNXlnMEdmWHVqMzdvQ3poNXpJOTRHRUZiNHYiLCJuZXh0IjoiL3JlZGlyZWN0LyJ9	2016-12-31 12:24:55.275298-04
gsz1wap6msevw44wjzjgy0gk3p5vm6eb	MTNlZDFjZWRkODFhZTc1N2YxNWZhM2RkNGY4YzY1Yjk3N2FhNDI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ1MTQ1YTI5YTBmODgyZmEyMzI5MjZlNWJmZjE0MmE0OWZmYWQ0OWIiLCJfYXV0aF91c2VyX2lkIjoiMzIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsImZhY2Vib29rX3N0YXRlIjoibUdsckhGWlZ2YnV6Y09wS3dmVm55bldyTmVZU1JTUFAifQ==	2016-12-08 23:54:01.914012-04
8nr47isty8nq1rnpapvtzc7x0wqyo0as	MzIwMThiNTQyNTQ1ZTFhZTcyY2U5NGE4YmZmNGYzN2M3ZGI3NzI2MDp7Il9hdXRoX3VzZXJfaWQiOiIzNDciLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsIl9hdXRoX3VzZXJfaGFzaCI6ImE0NjhiNWEzYmU4YTU2MzM4YTQ2NmY2YjBmMzJkNTUxNDJkMDM1YTAiLCJmYWNlYm9va19zdGF0ZSI6IlpEbXE1Mk1DbGp1cnAxZGs3dzZPUHlvV2owZjRuM0EzIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2siLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIifQ==	2016-12-09 14:19:00.911863-04
a9e8j591pqgddt9hulf8dln1v5j6xypc	ZmQyZWQzNjMyMjY5NWViY2I4OWY1MDRhZjNlMWMyMDI2OWNiMDM1NTp7InNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2hhc2giOiIwNzY3ZjQwNWRmOTQwMjA0YmFhZmM0MjdhNDIxNTJjMjdjYjljMzhjIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIiwiX2F1dGhfdXNlcl9pZCI6IjE0MCIsImZhY2Vib29rX3N0YXRlIjoiOGVQV3I4T3lQSHNFdVhWSlpBVnFRMnhsNHFOTlI4OHEifQ==	2017-01-02 18:31:44.692891-04
jqa5mt31jb81hs23c2p0uhl2ywaerlrz	NzdkZTY0YmJkMWIwZTFkNzZlNTNiZDczYzFhYThjYTdiOTM2MzA4Zjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJ2Wm5iWnp0c2o0NkdZTXB0bWNnYkRBck1pdXJDWU03QSJ9	2017-01-10 05:53:05.588178-04
2rgdaza63nbefd5zgjk8x1v5g2ru5u7p	Yzc0ZjE3ZDYyY2U4NDQ4YjQ0OGIwZWY5MDZmZjk2MzFmYjExYWMzYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyZGFjZWVkZWM2NDIzZTg5YzkzYTNjNThhYmQwZGIwNmIzZjZmYzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJfYXV0aF91c2VyX2lkIjoiMjciLCJuZXh0IjoiL3JlZGlyZWN0LyIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiZmFjZWJvb2tfc3RhdGUiOiJvUGg0MXl1ME5Qd0ZCdE5YYTFWeHBKeDZ3RU5MUUVCWiJ9	2016-12-07 08:33:32.067993-04
7wgw8mtp6d6gpy1a1tbke9jaeu5f3wxk	YzA1Mzc4NzYwZjBkYjI3NmQ0ZjNhZjk0M2YyMmZjZjBiNDI5MDNjZTp7ImZhY2Vib29rX3N0YXRlIjoiQjR1MEIwdGdDcVhpWGpyTkNzcHR0RTNMb3I1dU1kU2siLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-01-14 23:44:22.752453-04
wul23awrckfn9t808hyl63dkiu4xka07	YmEyM2Q4NjE5MGM1OTZmNmY1YTU3NDM2ODkzZTdiYzczOWE1OTMwZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJmYWNlYm9va19zdGF0ZSI6IkFVVWxWSXh0Z1pqTHVkcGh4a0JuSnl6cGlqcWVQWkVyIiwiX2F1dGhfdXNlcl9pZCI6Ijc4IiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiJ9	2016-12-07 09:55:53.438645-04
zto0054ziddp8m17pygji659qkqtkadk	MzUzYTllZmFkZTc4OWYyYmI4YTk2YzYzYjNhYjg3MDlhNjIxMWU5NDp7Il9hdXRoX3VzZXJfaWQiOiIzNjMiLCJfYXV0aF91c2VyX2hhc2giOiJjZWQzYThkYmNkYjMwMDlkN2I3MGEzMmIxMTIzMDljMWI5MzkwZWRlIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-01-22 12:12:34.481222-04
yunuz1fr2q5mamabqjvaoz3z0qavu3wz	ZDMxMWJiNDkwM2E5YzM1MDdiNWFlZDNmOTgwOTZjZTgxOWFlNDk1NTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJxTFhCRmRRNHZEcld2OG5xUHV6Rm5TSHlPVWJBMXVHdyJ9	2017-01-23 19:09:15.054488-04
vr5yjm9ms3ajldabxgw41t2gdevixgr0	OTgxYTQ5ZWYwOWEzN2FlODVhNjEyNWRjNmM3M2RmMjc5MTFlYjQwMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJfYXV0aF91c2VyX2lkIjoiNzgiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiZmFjZWJvb2tfc3RhdGUiOiJvYWhadUxwdWd3bndxamxIUzZLVUZuU2NzQ3BJQlNHaCJ9	2016-12-07 10:16:40.018072-04
so0i8mxsy8pa0f8eazjmkwcsmzmzyhbo	MDRjZjMzNGEzZTQ2ZTljY2VhZjY4NDQ3YTZjZWU2NzQ2OWJlY2Y0ZDp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJRMmxmeXVmZGZTdGZOQm5RY0pYaDFCdUxLdThSUjdtYSJ9	2016-12-07 10:33:05.366223-04
tw5k2qgx1rgs4fg790vhhesyr0zckkz3	ZWM3MWRkZGQ0MmQ5YzM1MTAwZWNmMTM0ZTMxNDY0MjUwYjhlZDkwMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImJiMWNmNWM5NzQzNTM1ODY4NmRhMDllODc3M2NhY2NmYWM3YWM4ZDkiLCJmYWNlYm9va19zdGF0ZSI6IkhSdmo3aENHNTFDbmRHQmQxY0xwOEZWTFM1MU5IaEhnIiwiX2F1dGhfdXNlcl9pZCI6IjMzNiIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2siLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIifQ==	2016-12-07 10:46:12.465599-04
2l4he9eve32zd12fg4szjqr7lwps3vam	NTJmYWIwZjg1MTQ4NmEzMGFlMDM4NzQ1NGRlNDhiNDNhN2IxMjAyYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY1ODk1ZThiMGJiMWI5NThmYWQ2YzlmNjEyYzZjNDg0ZjkwNjM4Y2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzOSJ9	2016-12-07 11:15:42.427487-04
et0nglazswif4a8h6yzv9v5ecqlb44kp	ZDVjNzMyYTlhNzI1MDU2OTZlMTZjNmVmYjA3ZTQ3Mzk0YjJjODExNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjM0MDFhYzkxZmE0ZjkwNDMyMzg2NTcxZGE3MDFkODUzOTUzYzk4ZWEiLCJfYXV0aF91c2VyX2lkIjoiMzUyIiwiZmFjZWJvb2tfc3RhdGUiOiJsT1Ywb3M0SndlcVZ0WVpNZ1Z4TWRqQ2lvbGN1VkRhVyIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2siLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIifQ==	2016-12-14 19:21:38.844665-04
d40j08u22o3xndewrbcuci73f61ifjsx	YTRmMWM3MmQ4MTRiY2UwN2I4NzgwOTg0YzBiNTA3OGY1YzQ1NzZmMzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJFckp2eEttcGJwcXFCTzMwMkxUQ0JnNEdaUEVZRXdvdiJ9	2016-12-07 13:52:58.472631-04
tf31v8foxc9zhwh7ah9tn79gu2ccgefj	NGY4YTczMWU1NjQ5YTgwYjJlYjU0MGYxOGE5YWNjYzk1ZDMzMWEzMTp7Il9hdXRoX3VzZXJfaWQiOiIzNTQiLCJmYWNlYm9va19zdGF0ZSI6ImdEcU9JZldYNkRGM1ZVODlrbDNyaFF4T09EVEc5RVlRIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2hhc2giOiJiYWE2Zjk0ODNmMzMzNzk0MDVhNDU2ZjU3OWI5YTFjZmRmMjYwMmY0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2016-12-17 20:41:47.084652-04
v0vml5ru7y2a7y59taqc93p9nlqz0a4x	MzM4YmUxMTI1OGRmZjQ2Nzk2OTQ3MzdhZGYzZDJjNGVmZWQzNjA2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk1MDNkNmZlNDI1YjUzZjU0OTc0Mjc0ZTY0MTdhMjgxYTAzNTIyNDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzNTUifQ==	2016-12-20 18:50:40.845796-04
pc83ep9cvygsabzd3hkaoxn1olrjqzwc	YmVhMmMxODU2M2UwODllNzE3ZDViNGQwMDFjNWZmOWQxNjhhZjMzMTp7ImZhY2Vib29rX3N0YXRlIjoiM2gwYmF6QjdJQmFZTDU0TEl0ekhpS3Myc1ZEdDU3NloiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-12-24 05:32:01.308097-04
uvcgot8q7a8iw0hsuhivi1lz6q19ebo4	ZTg1NGNhNTRjMDcwYWVhYjU2MzI5ZjFjZDM4YjNhOGZiNThiNTNlYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyIsImZhY2Vib29rX3N0YXRlIjoiaVQ2dFdqWEpEZGNxRmU0NDhSUWxSVXJrQm8yMThucFciLCJfYXV0aF91c2VyX2lkIjoiNzgiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-12-28 13:40:40.981471-04
dq3jtz61w6t0m0oie25nesc97ckl7w2b	YjYyNjA4N2JmYTllMGQyNWYwNGQ2OTA2YWVjNGEyZDkwMzAyZTI4Njp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiI0TlREN3pSN3FJaWdVMUJJeDA0VHdZTWRnVThMVVhFTSJ9	2017-01-01 07:26:21.12909-04
1hc8cvf0d5vlpifkbefgl7597q6f7pxa	Yjg0ZmJlYmZiZWY2ZDY3YmE2NTRkZmFjZWQzZjBhMzE2MjJkODYwNjp7ImZhY2Vib29rX3N0YXRlIjoiam1XRmxxdE9melE4TTl1TDBvS1hCY0xZampoSWxlMnoiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-12-09 14:05:52.236866-04
z09s9rl6l91vpaywkya28x1olks3b5qr	MWE5MTExYWVlNmY0NDY0M2UzZjYzMzMzZTA4N2UyM2EzYWFhYjEwYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjFhZDUyOWFkNWUzMTQyZmVlNDlhMzIzZDEwNDg3Nzc0NzkzMWM5ZTYiLCJmYWNlYm9va19zdGF0ZSI6Imgxc0lYMUNQb2JrZHFZMk5SOTlTWGhmOEk1d21jdFowIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMTQxIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8ifQ==	2016-12-09 14:09:43.69104-04
7dm5wkb2b79utirruzgytayk1r5yv7to	ODE3YjM4MGE1ZjY4YjBjZDEwZmVjMTMzMDAxZDQ1MWFmMjBmMDY4NTp7ImZhY2Vib29rX3N0YXRlIjoiVHZ5dGRnMkNpc0htSE1tUlJSejFYQTJpcWdRUE5lU0MiLCJfYXV0aF91c2VyX2hhc2giOiIwNzY3ZjQwNWRmOTQwMjA0YmFhZmM0MjdhNDIxNTJjMjdjYjljMzhjIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2siLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsIl9hdXRoX3VzZXJfaWQiOiIxNDAifQ==	2016-12-09 18:32:24.381738-04
tzap1wvqdtcvdfs3ji5bzp1ss7mfu6la	OTA1OWJkZDdlMjYxY2Y0YzhmMGQ5MzllOGRjNjRhZjg1YmZlZjk3ZTp7Il9hdXRoX3VzZXJfaWQiOiIzOSIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NTg5NWU4YjBiYjFiOTU4ZmFkNmM5ZjYxMmM2YzQ4NGY5MDYzOGNiIiwiZmFjZWJvb2tfc3RhdGUiOiJoSWhsazd3dVZpNVlxakZ2Q1RCRVpvT0p4UGMxWWZLSiJ9	2016-12-10 23:32:05.889324-04
29v7x86ybl4h5iylwvymjk07imfxmg4s	ZmY1NmQ4NDU0NDgyNDM2ZWVhOTA4NThiNzAyYTY5ZjA4YzE5ZDliYTp7Il9hdXRoX3VzZXJfaWQiOiIxNDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFhZDUyOWFkNWUzMTQyZmVlNDlhMzIzZDEwNDg3Nzc0NzkzMWM5ZTYifQ==	2017-01-02 18:27:11.76225-04
f45y20j5j0uxckfq55udcgirx4id18j6	MmZhZGJmZjFkOTljOWE3ZWRmNzEwODY4MGJhN2U0ZmZiMmRiMWYzZjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJDakdKamROWmFoUlNVR2hPM1Q0TUZCVjZCOEFQU0c1TCJ9	2017-01-03 03:08:36.242161-04
ac0g4ad2mupns381gyo8neh979iw2e32	M2EwZjU0MmY1Y2FiZThjMzBlNjQ3MzFlODc5MTY4NWFlYjhjOGM4OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjIyMDczNzdkZjE0YmZiOTQ2Y2UyZjAxMDMxNzM0ZTBhZjc1NTM0MzkiLCJfYXV0aF91c2VyX2lkIjoiMzUxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2016-12-14 19:10:24.163367-04
l287zhcl3myrcy8kdl9ypcqg01zp9xhr	MDI0Y2MzNTYzNzViMzI1OWM4OTQ4NDllOWUyYzIzNWM0ZTE4MDhmNDp7Il9hdXRoX3VzZXJfaWQiOiIzOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjU4OTVlOGIwYmIxYjk1OGZhZDZjOWY2MTJjNmM0ODRmOTA2MzhjYiJ9	2017-01-06 20:08:28.978915-04
3pv3bs9vtn4x5rflxvguyhphstkzw8rd	NzY3MGI0NDk0YzA5YjdiZjY2NGIxNjhjNGYyYjEyY2Y1YTkwMzNlNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjM0MDFhYzkxZmE0ZjkwNDMyMzg2NTcxZGE3MDFkODUzOTUzYzk4ZWEiLCJfYXV0aF91c2VyX2lkIjoiMzUyIiwiZmFjZWJvb2tfc3RhdGUiOiJqYVN4eUZYYnZnYmUxbWhnSEJsVU9pcVB2STVpQzNiUiIsIm5leHQiOiIvcmVkaXJlY3QvIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2siLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIifQ==	2016-12-14 19:30:49.440396-04
of1m98gml0ez1frb6no78u6fhkql0hhh	NzI5MTc4ZmZjODJkODY3NzQ2ZWM3ZDJkMmZhZjg5MWJmZmJhNTVlMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2NjliMzBlYTZiMGQwYzkzMTViZWIyZWUxYmM5NmZlYmQxMGU1OGEiLCJmYWNlYm9va19zdGF0ZSI6IkkyUUY5dmpHREdFMmw0M0pTSWRvZERWQm5KSE9KV1Z2IiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfaWQiOiIzNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIifQ==	2017-01-10 17:28:19.787641-04
yuk0dqggnuix3ceymg6vznb0tx87c18t	MWIzNjk4NmNlMGVmZDUyMTBiOGUyZGYyMGJhMjY3MzU5YWEyMWZjZTp7ImZhY2Vib29rX3N0YXRlIjoiaWpBNEpIMXd3Ym4yMks2bExtR1pBeE5YTk52SEdia1kiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-01-16 16:05:00.238483-04
6m85bdh2glcg59cls1mrh3b54lf1kwj7	MDAxNGUwZWEyNzE2Yjc2Yzg0NTI1NzBiNzYwZGRjOWY4OWYzYzllMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM2MiIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9oYXNoIjoiODhhYTcwZjY5ZmY1YmFiMzg0YzQ0ZDk5NTYwZDZjMWFjODIyZjk1NyIsImZhY2Vib29rX3N0YXRlIjoiODRERldpS2lIRFFZdGJhR1kzS2lFVVI5OER0eDFlWGoifQ==	2017-01-18 13:14:06.773734-04
jtked1780socf29yg5i3eyc66f08kiog	ZDFmYzNhNzA1MzE2NjUwMjVhMjRkYmRiOGFhNDBjNjBmZDZhYTQyNzp7Il9hdXRoX3VzZXJfaWQiOiIzNjQiLCJfYXV0aF91c2VyX2hhc2giOiIzYjZiNjNlZTQ2NzUzNGY3ZmIwZDk0MzE0MGE5YjljYmU4MDAxZjA2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-01-22 12:49:39.499554-04
to3bfrn93rzm3f1r3gcxyx9hkdpe8jbs	MTk1Mzk1YWFlMDY0ODZkMzBiNmY5ZTczNDQ2Y2VmYmExZjU2NDVjMTp7Il9hdXRoX3VzZXJfaWQiOiI3OCIsIl9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2017-01-24 12:16:31.846485-04
hhsi8xz7us1elae40l8hc9q7p12ef168	YTlhMTU3NjRhZjA4MmYxNzA1OTk0YzZhYjQ2MTJhN2EyODE3YzYyZDp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJuNkhBTm5LV1g2ZVdVOXY2M3hoQWZtV3kyQ3pKN1ZTTCJ9	2017-01-30 21:43:48.031836-04
uduaawhbfqnpjis5r6t8c83xoj45iluz	YTZiM2IwZWQ1YjZjZDNhY2YwYjFlODIwN2E2NTQ0NTQ1MWEzNzM3MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGVkMjY3ZTRmZmQ0ZDRmMjUwM2E4NzM5ZjY1NzIxYjczMGFkOWQ2YyIsIl9hdXRoX3VzZXJfaWQiOiIzNjUifQ==	2017-02-01 10:13:00.812839-04
7n85ol7owzn8q0lqnzy3gnx137zn51x8	ZDMwMDA4YzUzOTE2YzYwMmMzMThmNTFkNjM4YWY2YjU5NDlhODdhNDp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMzczIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGI1NTU4NDUyODI3YTVlMTQ4ZGMyZTMxYTljMTc1MDFiYWFjMDE0YyIsImZhY2Vib29rX3N0YXRlIjoicGhJM3dBdzZ3cnprVm5NbGZtWmVmMDZKYmhkZ05xNEsifQ==	2017-02-07 19:35:19.911413-04
olu3oukahsh4po5ocyj3u8m1czlhteai	ZDZmMWFjYzU0ODM2YmRmMDZjMWVjMjFlZDBhM2I2MjRkMWMyYTZjZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaWQiOiIzNzQiLCJfYXV0aF91c2VyX2hhc2giOiJhMTM5Mzc4MjcwNTczM2RjNTMxYWViNDc3MGUzYmVhOGUzODMwZjc1IiwiZmFjZWJvb2tfc3RhdGUiOiJibmZFRXJ0YWx5TzA3YUg4bGFMZFFVNjg4c0Z0dmRGaiIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8ifQ==	2017-02-09 15:45:36.379228-04
1truq2cnnlaaxyau7x30y7tscprnsab8	M2QzMWI1ZmQ1NGQxMzFmYWJjZDg2YjkyNjU0Mjk4ZmZjNzc3MjkxODp7Il9hdXRoX3VzZXJfaWQiOiI3OCIsImZhY2Vib29rX3N0YXRlIjoickdKQTlvT1U4bXFvS1BTd0RsdkVUWXJkNTQ3alJvdXUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2017-02-20 15:05:21.436887-04
yki4v1fenbhfc7s59siyc6sn0r6kt2w0	MjVmNGM5MjFiMTBiYzhkNDAwYjBhMDA4NzQzZDE1MTgxZDM1OGQ5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIiLCJfYXV0aF91c2VyX2lkIjoiMzc2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-02-10 09:11:28.694789-04
7ad8dlukkf7y0zko33n3foiq3fzoqzbb	MzAzNDM4ZWEwOTEyMDIyNWQ4NTFiODY5NTE1YjA5ZWU5ZjdmYzU1Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM2OSIsIl9hdXRoX3VzZXJfaGFzaCI6IjA5ZGQwODI3NzJlYzVlMTYwNzBkNGQ5YWVkOTk0YWJiNjIyMWMyOWMifQ==	2017-02-17 19:10:45.826981-04
f93kme9p4sjhfszna1pgz7ydaklfex2b	MzllYWY0YWYyNmI5OTE0YTVjNzA1MGUxZjQ5ZTI0Y2ZiMmQ5MzJlMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIifQ==	2017-02-10 11:31:05.195709-04
4cjd34bfoe0w49a9nygxa10fvdjv44oh	MGU2NTIyMjk4YzYxMTExMDZlODQxYjhkN2M1NzkxM2Q4NGM2NjQ0YTp7InNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJmYWNlYm9va19zdGF0ZSI6Img2N1lBOVNpdjFRUXlvbE5ud3VzR2dVU2NyYzNISHlwIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzJhNzdmMDA0ZTU3YTYzOWMzYzdmYzYyMThkMjk4YjJhNmNiZDZkOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaWQiOiIzNzcifQ==	2017-02-12 12:48:00.256909-04
b6huvq499h5pftaint5n1nl64z8zy4gy	ZmUxMTgxNzY4ZTRjMzgyMzNmZDJjN2Q2YmFlYzk0YjAzOWRlNTI3Mjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiI1UkZleVBaNHQ5enNvNVdKTGh5U2Q3OVBUV0w0VXFMVCJ9	2017-02-12 14:27:54.563661-04
tzshgz44xl1fw74vo11ci9z2s1xv6ctd	NzdiYTZiOTgwOGY2NGQ3ZmUxNDQxZTQzMzJkYzc0OGIyYmVjNDA3ZTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJpS2t3RlpycXFSYWdnenppR3lPcktXazhic2RKZ0tkTSJ9	2017-02-14 08:57:40.761361-04
qw0bnowdxe21m6taheyqn4hos7yfv6uy	YzczOWM3NDM5OTU1ZDcxNWRkMWRmM2VlNjE2ZTljMjhiMzM1Yzk4NTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiI5R2tWcjBRZ1ZOSEdoOHFGQWRYWXlLb2c2dU5yTm9vaiJ9	2017-02-14 21:38:10.990598-04
vpsibuoux0rrvcyo4k815rh7r5q41bma	ZjQ1YWM1ZjFlZTU5Y2ViOTI2MDBlZDM3OTE3YTQ0NzExOGM1ZTk5Mjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJiS3JGc3RSQXJjMW5vOTdQNGROUG94cDZXOHFTZzlVSCJ9	2017-02-14 22:00:15.752071-04
87mhd7nndzsweofbgis5ij7wwvumu0kl	Mjc0NzZkZDcxMTg3ZjRlZTA3MmE3ZWM3NmZlZjIyN2NiMjlmMWY2OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjczNzhhNzhmNWFjZTczODE4YmEyN2ExYjczYjQ5YmZjZDZjYmY1OGQiLCJmYWNlYm9va19zdGF0ZSI6IldwRUN0UDB4SnhRNklBQWxvUmZaTlJ5Wkx0RU9qUXZHIiwiX2F1dGhfdXNlcl9pZCI6IjM3OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwibmV4dCI6Ii9yZWRpcmVjdC8ifQ==	2017-02-14 23:10:40.974495-04
l8ah7xgk9gebwcr0qofewbxbjrfw3vcd	ZGYyMGU5NjRjNWNmODc0ZTE2MDc0NmQ3MWMwOWYxNmQ0ZGY0OTNhNjp7InNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIiwiZmFjZWJvb2tfc3RhdGUiOiIxUTZOQkxnY093Ykk2WTFDRExyMWFXaXFFSFpBbUFIMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImMzMzIwZWNkZjJkZGZhOTMyMjRjYjdjOTQxMTRlYjRkMGQ4NzhkOWYiLCJfYXV0aF91c2VyX2lkIjoiMzgwIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8ifQ==	2017-02-15 08:04:48.29454-04
z5yyqdz9skxag6gw085vvacb4srzmuwa	OGEzMjUzNTI4YjNmY2QzZTIyNDE2NTNjYmUwZjQ3ZTRlNTU1NGM0Yzp7Il9hdXRoX3VzZXJfaWQiOiI3NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2UyNDQwZGRiZWFkODg3NGQwNzE4M2FlYTg2YjNhZTU1YzZiMTgzYSJ9	2017-02-20 10:07:28.124655-04
750d54agn85jhwi88hffiiub207l8fqn	NTI4OGRlMDU0MmE5OTE0YmY2NzgxMTE5MDdlNGFkMDkwNDM0NDdmZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjcxNTdjODA0ZTkzYzAyZWFkZmEyZTU1ZDE2MzY3ZjBiMDAxYmNhYWIiLCJfYXV0aF91c2VyX2lkIjoiMzUzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-02-20 20:05:51.974247-04
16rh44p8h0k0lxz99603kf8r3v1jqcvz	ZDIzMzQ1MjA5ZDhlM2ZjNjNkYjU4ZTE5NmVjMWRiZDg4ZjA3NDU5Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjFhZDUyOWFkNWUzMTQyZmVlNDlhMzIzZDEwNDg3Nzc0NzkzMWM5ZTYiLCJfYXV0aF91c2VyX2lkIjoiMTQxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-02-20 21:02:09.554211-04
xheiig7k9jk4rsmevb6k00dpgfxm46af	ZWM2NDJkN2NhMmI1NTMwMmM0Y2JkNmY3MGE4ZDRkY2QyOGY5ZjEyMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjkzMDAzNmI1MTA5NTc2NzkxNjExZGQ2ZDYwZTExOTI3ZGVjZGU5YmUifQ==	2017-02-21 02:16:25.332743-04
8cvpgyo8s54txopvqfqxu0483f8jf5ir	MDU5NTdjMjk5ODQ1MjAwY2I5ZDgwYjg0Y2M0OWRiNGFiZGVmZDc2MTp7Il9hdXRoX3VzZXJfaWQiOiIzNzUiLCJfYXV0aF91c2VyX2hhc2giOiI5MzAwMzZiNTEwOTU3Njc5MTYxMWRkNmQ2MGUxMTkyN2RlY2RlOWJlIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-02-21 15:02:51.998341-04
k17agxez1taom3msv2g9q4wkywgiijzp	ZWM2NDJkN2NhMmI1NTMwMmM0Y2JkNmY3MGE4ZDRkY2QyOGY5ZjEyMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjkzMDAzNmI1MTA5NTc2NzkxNjExZGQ2ZDYwZTExOTI3ZGVjZGU5YmUifQ==	2017-02-22 05:38:54.112279-04
ez7hjye5bsf68k8pyr6mrroz2a8hvunt	ZWM2NDJkN2NhMmI1NTMwMmM0Y2JkNmY3MGE4ZDRkY2QyOGY5ZjEyMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjkzMDAzNmI1MTA5NTc2NzkxNjExZGQ2ZDYwZTExOTI3ZGVjZGU5YmUifQ==	2017-03-08 05:15:49.200753-04
um23xahykunjg829n65ximrbpjyoraxt	ZWM2NDJkN2NhMmI1NTMwMmM0Y2JkNmY3MGE4ZDRkY2QyOGY5ZjEyMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjkzMDAzNmI1MTA5NTc2NzkxNjExZGQ2ZDYwZTExOTI3ZGVjZGU5YmUifQ==	2017-03-08 12:26:00.318912-04
33ythfs41jmjiyxuxvfte4mb8il92n9t	MzllYWY0YWYyNmI5OTE0YTVjNzA1MGUxZjQ5ZTI0Y2ZiMmQ5MzJlMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIifQ==	2017-03-09 19:35:35.561052-04
cyvbp8en2rkcsh0pmiorpxq6u4hqxbze	ZWM2NDJkN2NhMmI1NTMwMmM0Y2JkNmY3MGE4ZDRkY2QyOGY5ZjEyMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjkzMDAzNmI1MTA5NTc2NzkxNjExZGQ2ZDYwZTExOTI3ZGVjZGU5YmUifQ==	2017-02-27 15:15:39.062133-04
zplls0rcnjclkbm9xk2jsopuywatetwg	MzllYWY0YWYyNmI5OTE0YTVjNzA1MGUxZjQ5ZTI0Y2ZiMmQ5MzJlMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIifQ==	2017-03-09 03:33:12.167794-04
wh9f21voy6414vk2enegcb3ejkxay7be	MzllYWY0YWYyNmI5OTE0YTVjNzA1MGUxZjQ5ZTI0Y2ZiMmQ5MzJlMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIifQ==	2017-03-10 00:38:28.269815-04
vy9dns4rygi8yhmhlpnrj0jto7ovmwda	MTM3ZDc2YjQ3NTliZmY3ZTQxNjk5NWQyNWU1YjhmZTMxNDBjZWQ3Yjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJvT3FLdzUxWW00bDI3ZkFJallnM0N1Yk4yOGpSWUtwbyJ9	2017-03-02 05:06:23.199177-04
mfpj95xf6e2bzfut0200hsh1m2fysrdo	ZWM2NDJkN2NhMmI1NTMwMmM0Y2JkNmY3MGE4ZDRkY2QyOGY5ZjEyMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjkzMDAzNmI1MTA5NTc2NzkxNjExZGQ2ZDYwZTExOTI3ZGVjZGU5YmUifQ==	2017-03-03 20:17:28.776978-04
9f0hlonzdcsyigthfkfaeigxkkkirx2o	ZWM2NDJkN2NhMmI1NTMwMmM0Y2JkNmY3MGE4ZDRkY2QyOGY5ZjEyMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjkzMDAzNmI1MTA5NTc2NzkxNjExZGQ2ZDYwZTExOTI3ZGVjZGU5YmUifQ==	2017-05-02 02:17:41.637395-04
86qk136ooorz688t80ehskj1r4cpe045	MzllYWY0YWYyNmI5OTE0YTVjNzA1MGUxZjQ5ZTI0Y2ZiMmQ5MzJlMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIifQ==	2017-04-05 23:20:58.012561-04
nrxbxukbnq33o9a24gkibhhvmw70df6j	ODYzOGZkZWNiMTc5NmU4MTYxNWY1NGVjZjlkMGFmY2VlZTE4YmM2Zjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJlV3dlWnd1MlZkd0hrVVk0bDlXVFlTM21UN2dIUzJJTiJ9	2017-04-03 20:28:11.491514-04
0er7z7q2flla2ui1ez72s6dpf2diu9i8	MzllYWY0YWYyNmI5OTE0YTVjNzA1MGUxZjQ5ZTI0Y2ZiMmQ5MzJlMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIifQ==	2017-03-10 01:14:51.209097-04
1d6chaq0n6qm3cd5gnv947fir4aensxj	ZWM2NDJkN2NhMmI1NTMwMmM0Y2JkNmY3MGE4ZDRkY2QyOGY5ZjEyMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjkzMDAzNmI1MTA5NTc2NzkxNjExZGQ2ZDYwZTExOTI3ZGVjZGU5YmUifQ==	2017-04-13 17:07:19.734197-04
v78enwdu26tfjkca84kkarsei003qrxh	MzllYWY0YWYyNmI5OTE0YTVjNzA1MGUxZjQ5ZTI0Y2ZiMmQ5MzJlMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIifQ==	2017-03-11 15:08:10.515894-04
qpdsgw1zlmzln3z0155epshue9t7qxn2	YTI1Mzc1NDQzOTcxOWM2MWE1YWE1MDUyYWVmMjgwYjQ1YjNmODZlZTp7Il9hdXRoX3VzZXJfaWQiOiIzODciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjdkZjIwNGNiNDYzMzcxMzE1YjM2M2YxNTUxMjNhMjI4NWJkZDNkMmIifQ==	2017-04-10 21:41:24.1851-04
xkj4vy4twlt0t77vmwb77sj1khhgkq2k	Y2QyZDcxZTY3ZDg1MTk0NTU0NmNiZTFkYWQxN2QyOTc1NTFjM2M1ZTp7Il9hdXRoX3VzZXJfaWQiOiIzOTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjBhNTBhMWM4MjY2MzFiY2Q4M2NkMjJlMTkzZDJkOGMyNjZjYTVlZGYifQ==	2017-04-17 17:54:38.101131-04
qwzmocu5sngqfb9d52g49vuk1swxyqm3	ZWM2NDJkN2NhMmI1NTMwMmM0Y2JkNmY3MGE4ZDRkY2QyOGY5ZjEyMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjkzMDAzNmI1MTA5NTc2NzkxNjExZGQ2ZDYwZTExOTI3ZGVjZGU5YmUifQ==	2017-03-23 15:01:48.131275-04
elea3hf52ne0uduh8wvhc78hi2iditb8	MzllYWY0YWYyNmI5OTE0YTVjNzA1MGUxZjQ5ZTI0Y2ZiMmQ5MzJlMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIifQ==	2017-03-24 18:32:01.46861-04
ojchjmvlga8s689zea89rct6ou0dekat	YTNmZWE2N2E0ODllYWFiODk0NDllZDkzNTZhNmNkMjA4ODdiNDNkNzp7Il9hdXRoX3VzZXJfaWQiOiIzODEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkZmI4MzgyOTY5OTk3ZDQ5YTcwZDQ4MjcxYTllNjczYWRiM2UxZWEifQ==	2017-03-30 23:05:59.83917-04
stu1pc44jisynt37n04hld02lae3gi89	NWExNGQxNWM2ZWRhNTc0ODBiYTkxMjUwYTAwNzk4ZmY5MzgwODUzNjp7Il9hdXRoX3VzZXJfaWQiOiIzODMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImI1ZmRjYWU2M2M5YzliNTY5OTQ0ODlmNTE1NjA2ODYzZTBiYTZmZTAifQ==	2017-03-21 15:57:36.921719-04
vfpydo7sek51lviedzt0y111rctbzphr	ZmIzZWZhZjZiNTIxYzNlY2Q1YmI0MmVlMzVmMWQ1OTY2ZDAxYmZjZDp7Il9hdXRoX3VzZXJfaWQiOiIzODgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImVlODM5MDhjMjVmMWZkMjRkN2RiNDU1Zjk5MTAzYjI3NzAzMTdkNDkifQ==	2017-04-10 20:57:13.791081-04
fe2ngl8at33rpxnoytl4jxveyay1g71z	MzllYWY0YWYyNmI5OTE0YTVjNzA1MGUxZjQ5ZTI0Y2ZiMmQ5MzJlMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIifQ==	2017-03-21 17:35:21.489471-04
l1jznmtr5zwxa33s30fu3w0ywq8x0grm	ZWM2NDJkN2NhMmI1NTMwMmM0Y2JkNmY3MGE4ZDRkY2QyOGY5ZjEyMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjkzMDAzNmI1MTA5NTc2NzkxNjExZGQ2ZDYwZTExOTI3ZGVjZGU5YmUifQ==	2017-03-17 05:18:23.881941-04
ygkd5ck99u1g1leo6ymc6oba5699s973	ZWM2NDJkN2NhMmI1NTMwMmM0Y2JkNmY3MGE4ZDRkY2QyOGY5ZjEyMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjkzMDAzNmI1MTA5NTc2NzkxNjExZGQ2ZDYwZTExOTI3ZGVjZGU5YmUifQ==	2017-03-17 18:56:25.272541-04
\.


--
-- TOC entry 2786 (class 0 OID 16587)
-- Dependencies: 252
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_site (id, domain, name) FROM stdin;
1	indicoapp.com	indico
\.


--
-- TOC entry 2897 (class 0 OID 0)
-- Dependencies: 253
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- TOC entry 2788 (class 0 OID 16592)
-- Dependencies: 254
-- Data for Name: oauth2_provider_accesstoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY oauth2_provider_accesstoken (id, token, expires, scope, application_id, user_id) FROM stdin;
\.


--
-- TOC entry 2898 (class 0 OID 0)
-- Dependencies: 255
-- Name: oauth2_provider_accesstoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('oauth2_provider_accesstoken_id_seq', 1, false);


--
-- TOC entry 2790 (class 0 OID 16600)
-- Dependencies: 256
-- Data for Name: oauth2_provider_application; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY oauth2_provider_application (id, client_id, redirect_uris, client_type, authorization_grant_type, client_secret, name, user_id, skip_authorization) FROM stdin;
\.


--
-- TOC entry 2899 (class 0 OID 0)
-- Dependencies: 257
-- Name: oauth2_provider_application_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('oauth2_provider_application_id_seq', 1, false);


--
-- TOC entry 2792 (class 0 OID 16608)
-- Dependencies: 258
-- Data for Name: oauth2_provider_grant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY oauth2_provider_grant (id, code, expires, redirect_uri, scope, application_id, user_id) FROM stdin;
\.


--
-- TOC entry 2900 (class 0 OID 0)
-- Dependencies: 259
-- Name: oauth2_provider_grant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('oauth2_provider_grant_id_seq', 1, false);


--
-- TOC entry 2794 (class 0 OID 16616)
-- Dependencies: 260
-- Data for Name: oauth2_provider_refreshtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY oauth2_provider_refreshtoken (id, token, access_token_id, application_id, user_id) FROM stdin;
\.


--
-- TOC entry 2901 (class 0 OID 0)
-- Dependencies: 261
-- Name: oauth2_provider_refreshtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('oauth2_provider_refreshtoken_id_seq', 1, false);


--
-- TOC entry 2902 (class 0 OID 0)
-- Dependencies: 274
-- Name: sec-core_indicouser_week_availability; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"sec-core_indicouser_week_availability"', 1, false);


--
-- TOC entry 2903 (class 0 OID 0)
-- Dependencies: 276
-- Name: sec_core_workzone_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sec_core_workzone_id', 63, true);


--
-- TOC entry 2904 (class 0 OID 0)
-- Dependencies: 278
-- Name: seq_core_indicouser_workzone_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('seq_core_indicouser_workzone_id', 7, true);


--
-- TOC entry 2807 (class 0 OID 65602)
-- Dependencies: 273
-- Data for Name: server_acmechallenge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY server_acmechallenge (id, challenge, response) FROM stdin;
\.


--
-- TOC entry 2905 (class 0 OID 0)
-- Dependencies: 272
-- Name: server_acmechallenge_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('server_acmechallenge_id_seq', 1, false);


--
-- TOC entry 2796 (class 0 OID 16621)
-- Dependencies: 262
-- Data for Name: social_auth_association; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY social_auth_association (id, server_url, handle, secret, issued, lifetime, assoc_type) FROM stdin;
\.


--
-- TOC entry 2906 (class 0 OID 0)
-- Dependencies: 263
-- Name: social_auth_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('social_auth_association_id_seq', 1, false);


--
-- TOC entry 2798 (class 0 OID 16629)
-- Dependencies: 264
-- Data for Name: social_auth_code; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY social_auth_code (id, email, code, verified) FROM stdin;
\.


--
-- TOC entry 2907 (class 0 OID 0)
-- Dependencies: 265
-- Name: social_auth_code_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('social_auth_code_id_seq', 1, false);


--
-- TOC entry 2800 (class 0 OID 16634)
-- Dependencies: 266
-- Data for Name: social_auth_nonce; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY social_auth_nonce (id, server_url, "timestamp", salt) FROM stdin;
\.


--
-- TOC entry 2908 (class 0 OID 0)
-- Dependencies: 267
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('social_auth_nonce_id_seq', 1, false);


--
-- TOC entry 2802 (class 0 OID 16639)
-- Dependencies: 268
-- Data for Name: social_auth_usersocialauth; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY social_auth_usersocialauth (id, provider, uid, extra_data, user_id) FROM stdin;
21	facebook	1901527816740916	{"id": "1901527816740916", "access_token": "EAAPCx8oZBoxoBAGayS2ZAXu5dZBQrzDFwIUdgQTuvzuJpbcDnfYOV7RAEXg0YbeVTy2YcIVnNZAGuKPlM0cFyg5Y3UeQPaX20860LwxJh9Mm5ypXbG6nDLydVBahmugz56l1msfezolXVlfhqJ3v0y1x8qm3ukPA8R27W5hLxAZDZD", "expires": null}	59
70	facebook	10208399771465379	{"id": "10208399771465379", "expires": null, "access_token": "EAAPCx8oZBoxoBAKbnXKZCqZCztpmZCghTJ18wr6qK77jHaXy4pjS6KRZANoOUMkrdQe52CjvGJ0A8wutyS9w9R9VtheXytkzixS9QbP9xpUJT2MyH3XBeCWGLILhmePamQVylfZBKWoWyj3O5zxd4aqibem2EvSTYZD"}	191
19	facebook	10204756253385426	{"expires": null, "access_token": "EAAPCx8oZBoxoBALIb4AuJMo7c3yDVxOLDAp2PH0dCuSpyvRVfipkA5ZBW2SZCrNOQXZC9xZByVakKlvOSVOkJE718qrwMMJgnqds4HEGwBODy2Cwe2UqwhNZArxLKPPPNDqCczGUo5ErAxXuN49vk0fZCUpIBHaFocZD", "id": "10204756253385426"}	53
11	facebook	10153708797851239	{"access_token": "EAAPCx8oZBoxoBAOg75UZBkrQJL8O0dQM7Ki35zvbFHdhfvsZAECGzvwFECpdJ6d0EqScj5lTqivptHGHZC5CCLczwFV4njyyLDx1P5rd5umKZAPlKNaRGUhNtKQn62TcJzSR1jqSAK2Pb4nKwNetyP8pUG0DOQUoZD", "id": "10153708797851239", "expires": null}	26
13	facebook	1191358567581238	{"expires": null, "id": "1191358567581238", "access_token": "EAAPCx8oZBoxoBADJwgiAXRhr4ClZCUDQ9YKXC4Kr8rF7vzotfpCsiYCyzy4H5YXuVCBjhUE77mdODgUGQUmktCAtJktUzcywO8NQCzz208uyfLJ95z9krEygyIZC0rKaQMQComlj8IfGZA85u0QUYS9uixHNAGNMesjmQIhucQZDZD"}	28
29	facebook	1113688825369392	{"expires": null, "id": "1113688825369392", "access_token": "EAAPCx8oZBoxoBAOIDVyhVOywKxMxzL2ylPPZB69ZChIdZCSmszHihZBKivcIxxaENAblhEBqsuyXzSMUVZAnDPMARzO3aj4aiZAqUPGvfFahZBft5OT8ZC3E0ZCz15MVsVR5zyZB67fZAfiOCzp0aBdclFFDkRald7QChuytEG8HxV5uOORCN8rJfudl"}	95
6	facebook	10204309310127514	{"id": "10204309310127514", "expires": null, "access_token": "EAAPCx8oZBoxoBAEu6ZC0VIgDMNXWaWkuDNtkdNmfTkTUK1YZAAlJmF7rq6arlepMZC9LU2My9T5EZCv1vNv4m2uLzil6bjNjNAAtf7cd8TRejLoqm5xoZBSaXVCdIKjx1t3Oak2qH66RVP24gZAZAPrVXsen6YX8n7NluAMv4edcDyZBEq3AdxGyl"}	13
7	facebook	1097288133650243	{"id": "1097288133650243", "expires": null, "access_token": "EAAPCx8oZBoxoBAFSXKkGWwZBGudZB21pK2sndNk9UyirdYQaReDnH7gDr0dI6Bw5DRQCllAZArkETQJTK9laMQyZB41acpZB7LeaGMVjJ8axjZCtRJdB5MAUIicfrwC4YROwj67ZAWufQRRNZCQN1D2FHKE4k0K7mhFoZD"}	15
22	facebook	1045784395505808	{"id": "1045784395505808", "access_token": "EAAPCx8oZBoxoBANDRRV0fRMfQEnq1hWuMtUzr84U553pmd7PRKqCZAk8TM0kZBKO1fBbvT9qZBm3K08ZAAg4ZBKiUQZA6oWRgprhyVeTKUAb0IMtEPHw8f8UMG5oORZA0jyJBhI2SFqunAGbWyukZBzNq0ZCKEZBM9XTZBYLgXW5NkCN6AZDZD", "expires": null}	61
20	facebook	946152412171117	{"id": "946152412171117", "expires": null, "access_token": "EAAPCx8oZBoxoBACyWP4VmQ0CR9PFFDq1VVRpyYkkChM4pMeHXA1QxyKyEONdeeUMLiWjBTTHG5XPCWpNovHrpTVXLocixzKDq1bW4UXmfXI9ZBvoON1fbv1ZBWkvz0KsorvjpEVXn5pCkXZCCxO7ZB34wR5BPiNubLM1kHu1O9QZDZD"}	56
14	facebook	10210162995379651	{"id": "10210162995379651", "expires": null, "access_token": "EAAPCx8oZBoxoBAGnnB3v9j0HBqu07yP8wh8np7ZAmHVV7ftIZBLPXsENJSZCNQMOfXMK1j9snjIzEruDBPwFq7Q5Gql4NZAlB3L5jduOoUB4alx6jwvOi1DR8aCROectbMZBr9czkYzQMZB2m4c8EZALUurP9wztFGcZD"}	31
32	facebook	1284003761617659	{"expires": null, "access_token": "EAAPCx8oZBoxoBAJ9g0GkSUOH4uZCuEWzoE5qvolN66J5OAQeOu8ZAizttvzz3mRCrs9H9PybM5LmiBpIzTipxYSSdmb8mWriuMtHZAcae7DIpx1VLKjZCuCZCEln0K7leDtv1vSWpNZAnGuRiiH1ndKNttxD9y6XIgZD", "id": "1284003761617659"}	99
17	facebook	836930283079468	{"access_token": "EAAPCx8oZBoxoBAAL4Ujms5q1iIcg8mwOngvbOyYfuo9O2O48sHxYXfF8MpdIB5CCvMjtYYwvubLEQOAVZADFeHcEUQl8Awn7sDletlF7ZCkmWsoQLAd3vqixFRKEX5DFBoZBAZC3qaQQHJCwWsZAZCLAuoVyf7UPj0KjHaL30zZAswZDZD", "id": "836930283079468", "expires": null}	51
76	facebook	1243362905674011	{"expires": null, "access_token": "EAAPCx8oZBoxoBADSZBmWm8SiWQHzofpKAgKHeDtcLs06xm2dqmC4KJmZAjjfl6kpZCJeyYetsuJrhZA09VuWkAZBhZCcyvxjSDewZCpaCLmIezbRoPPw1XX5I9ISOm1WHuZCR6XcOnI0zZAL6c71o1OFU5ZAt0Rrgtsp4UZD", "id": "1243362905674011"}	210
16	facebook	1182406601823727	{"id": "1182406601823727", "expires": null, "access_token": "EAAPCx8oZBoxoBAJSPUbud0RNsHsAeZCktGlWEL8n9Gv2HmPyx6aPm7IRy9oPiFHo4SRb43DNhZBZAVn52WhQKZB5RubRQCo7bnR8YgXzxUa9pohrPNfVtk7Pv6Rpu5ZAt0xx2RCD0BqXC26ZBE3I4fwA6dOA7vn5ty5rtyqAonEQQZDZD"}	40
18	facebook	10207589389307494	{"expires": null, "access_token": "EAAPCx8oZBoxoBALBjxfYI0IR6j9DD3gEgDN0PDbss8AdXXAH3CAiKZA2UU0jUSXNfUZCY4BaMy2NlZCoyWl2wITcSEJdyOSr7tDbCX0CYwEBwm2rIYI1eE5HVuH5emeswAnle7R7lhE1UneZCLkZC3hEW3PDb1g1SjsId9ZAZCl90hNabfxMO39T", "id": "10207589389307494"}	52
23	facebook	10154269977454817	{"expires": null, "id": "10154269977454817", "access_token": "EAAPCx8oZBoxoBAPUXCgKJG9Lrj5IBQvz8WvIEKCWb41DXG21aIvT1LZC6XGn6PnvnkzdxvoFrfVjC7Ej62eZALYbp9LujteVpWDrfMLU3KMA7BHCddqG5mR2ACYOT2qVYRnZCSfqHhGIOsMYWDJZBISzMoZCfAbBAZD"}	63
27	facebook	10201864080759959	{"expires": null, "id": "10201864080759959", "access_token": "EAAPCx8oZBoxoBAJFZBrJJ0S1kNYwIvJ4jN0A8KdbZAbCRVjZBjxssPkeN5uvBHhgUpj38N7vf51Uv4IrKY9plVnMk5smW8JVP5PX6gZBCPvgnBAudiDyZBfZBmlQcocJ5GmWCzZBZAqgP9xL16bIRfcRI0F3zse9jIjAZD"}	88
30	facebook	1139997526063356	{"expires": null, "id": "1139997526063356", "access_token": "EAAPCx8oZBoxoBADiPfE2hnOYLZB24VqHlXvMQdU3yrOEzFs2GVF1ki784buf9CZCXDjZCawdOMTnZA5NW59Dd9T38Gyyzg6RZCqUwnQvFfps0OqdOvhMOYZCmZAAmQXC9sf7HR6IktZB4oNZBU9FyBgzuIOZAdLEm146dQZD"}	97
31	facebook	10207976031253375	{"expires": null, "id": "10207976031253375", "access_token": "EAAPCx8oZBoxoBAOeBHykFovYob9i69P7Y9up6KPqWTMHCEMRprXnzjP11y8DYexfSzusxElsGiSzZAqo6igkTuCywgDxR7J4Q1ZC338BY5VweOaeliiAUSHoEMfrKckIoFY9zEm1x4dM98Vk4bAXFlwgRGe5gEZD"}	98
33	facebook	10208378651442354	{"id": "10208378651442354", "access_token": "EAAPCx8oZBoxoBADcb5dKGbmpvgJth2OGE9oVs3LTc3fW3hnuy5DTJcDEqUkZCbLTCRLdrjjKVH7ZBe8ZAGxXYqrcy9gEaXQ7eZBRTsZAZCqn3jH1Y1oycXowbtfZCWMWJZAGhdKCntWZA43GKz60kgXDdhoybGDZBQkL2QZD", "expires": null}	110
36	facebook	124887874607011	{"id": "124887874607011", "access_token": "EAAPCx8oZBoxoBAJmr4eFeyueeSrTTLdRfvsm3vu47vgoyBAaEgtSI4zfVCabiRcrZBogWUb3vkUvuJYTqnAcEmDyEUiJ4caSRw9q2NQZCDqXjZBUQhV7Q2dBdtSYcbusUOQsNwbgsjLRArWER1iDT8lWI2z4QrZAHPJQ5ZALSQyQZDZD", "expires": null}	78
93	facebook	989120967877266	{"id": "989120967877266", "expires": null, "access_token": "EAAPCx8oZBoxoBAJhMzxXLrwNqtMhF6Vvmo9TyKz4uDxMpjzd3LyWCc80vq0ZCJFJpLNySmNybK0uZCtZB5nEeNDqKyVsnbcu7Kb22ZC63S3PoP6h2UVMUNpNkwWvuSrt1MdBc9kTtdTu56NywqZBBZCnJNDxT7Di4aHXJevwTtGhwZDZD"}	318
81	facebook	10206685761640752	{"access_token": "EAAPCx8oZBoxoBAIYnqhak6v6YsaTXj7Gw6i1iDfuXzWi4Kl1Yh6pO1gBOz6XNx3NaNMTH4GSZC3GPpaltvoM7b9V1tIQLym1rqgh1aWyaCknXT09tB1VycdhZAt5oCP3lp4wOZBrIuqGynrPROGELvve9SRHQGcZD", "expires": null, "id": "10206685761640752"}	241
12	facebook	1160023740706413	{"expires": null, "access_token": "EAAPCx8oZBoxoBAKRrd1OnJCbEcDW2GIcY5wBlZA75b9PGSfAU4mn1wOTCTz5zr9c0uhyQm0cGrnhwQPc6DcwQfIBv8HPED2dtsUgZC1pGoju5ATZCojdlnTv8JvZCtzy4wl4hyli7DZCmEcM9qjqYNGrJz24QwNqUZD", "id": "1160023740706413"}	27
82	facebook	1090996744326730	{"access_token": "EAAPCx8oZBoxoBAOON4jTzpeajXG2Kh4EOtdZBwlnPMqOKJvc1yTUlTeNCNrX8OfBHazIcY3nuARvQZAh15QFhPVv838pNXxC6fkcFAYvMWkklmbJLcvRoD48s3XMtLVBbZC4TIZCYPs6DPT6EDkYzxkRLbbZBZBVZCbeAx8INebc5QZDZD", "expires": null, "id": "1090996744326730"}	242
83	facebook	281304608914375	{"expires": null, "id": "281304608914375", "access_token": "EAAPCx8oZBoxoBAHue0nQ0h4cnLOkIDfyPTTxK72VdujQHFRpu0Eu9pPW01J1wdgkpIYH3pC3uXbzYfaGhs99EzYu1RaBgi2Tpc4XHfXqNEDkh7bcr3VYNdI4jlQY4VVi6dqgOuxoUquHvZB4MToqTlHi3NIHlTvXPirbawIQZDZD"}	244
74	facebook	1065491676866724	{"access_token": "EAAPCx8oZBoxoBANZBHd2xf3GOhmXjfjFlTFSZBYaI6yWTuRPYx1etQ5KYhsXeNfSAXRxTNXe1oh78Ihj8FubzPRyhZBsllIXOe2X0VAzZBsXwDYKAl1FXk2dPH3NJDxnSykuUqMxbZAoT8Abk54yIDslZA7PBxeLfQZD", "id": "1065491676866724", "expires": null}	201
73	facebook	829165733883942	{"access_token": "EAAPCx8oZBoxoBABlZBoBFBy33gXmWoLLnlXI8FgtqIRQcgpHzdsVc7ZABQ1piA9VfuxtfrYrjZAFSNBQJYwmUoBZAbtvrxYT5irRiWJJ89T53SyujmH05Gbzy9yYA6ma0ziscEjyiAwILOKTmeZA0luRmUVBJ4bfMIV8unHvaQuwZDZD", "id": "829165733883942", "expires": null}	198
75	facebook	165949487157025	{"expires": null, "id": "165949487157025", "access_token": "EAAPCx8oZBoxoBACc79RgYHgYpcxnMW7p4gOfIEI7cynXJmwvJgZBhHaZCUE1Y1VwFCM5KHLZA7qEqGU4rlRPUAt2mJpL3ZCD10PFRKUyWWbQXj80qkq5SYFQq3PZAxlAObH1ONl7Bc4sNGKvJW0IWWz7PTCZAJM6H4yGv53oTYSigZDZD"}	206
84	facebook	1136695099756247	{"id": "1136695099756247", "access_token": "EAAPCx8oZBoxoBAMwrdqBZCCFgEHWc3s1GYgiaU6aZC4v9Uht7kmnHAaVoZBcA3IJbBbukB3I7Yqy9jWMCGhe93RmNMya0ePnhRKN7P7i7dHZCslHvgbToGNgENWU9aZAiFeFS56W9ZBmotxb3iGcWbHD6LckYqExPhFu1imfiRXkQZDZD", "expires": null}	252
88	facebook	10205275541682596	{"access_token": "EAAPCx8oZBoxoBACNFfezHgtjlUmBqPm0wYmQzDxrHTFKlwZBMnbynEPcQhsN7Y8cJ8pjCPui3sf8gE82deyOQe9e7eCotHQLMVy67AYL87shk0WwljsuTTWm0sKtoTSwdFFD0ZCZAHzqZC6QmwJRv2KgD2grRGcMZD", "id": "10205275541682596", "expires": null}	280
77	facebook	1260592280647744	{"access_token": "EAAPCx8oZBoxoBAAtWZCyn5ePdRq3XqlwZASTxqZBowHv98bZBh8U0ULJDOM7A1H4fmi5MU7mAWpbZA2Wa6T2IyWnN9MeOgZB568nd7lDqaVfhkriLpHm4eHB4NQTCk37HY6AsW7SxgUZCMyY8lC3NkhvCICp38yFmvFZCe0Gw2UkflQZDZD", "expires": null, "id": "1260592280647744"}	222
78	facebook	1134723923257439	{"id": "1134723923257439", "expires": null, "access_token": "EAAPCx8oZBoxoBANmOVi9nLBEEi04aCEMtg6mG2nesQp1J0HN3xtrbeNYYpWeCFEZA8WgO70qDEuD9EQVAiKKhKduTmW6eyQvZB8tMT7RQLuwZA0SpuUBqUY3gpSjcxoxpnQgu74pbWMZA9QwZBQpvZC14U9UL3UCeoZD"}	229
80	facebook	1006373386124698	{"id": "1006373386124698", "expires": null, "access_token": "EAAPCx8oZBoxoBAEOUxzBmzGGbxZCTRQp0xD1k9nofkPDteK5daBTuZAPJ58euz72684u3iFcYibPNyXxmBLKIOOVntZB3ncQ5IotkJbBjDkMXLyaZBWaCDon8FKwsMbfPDDK0ceZCM8cvaDResfOmAd0Wp589cdYHwLKHT27W9YgZDZD"}	235
43	facebook	878041928930941	{"access_token": "EAAPCx8oZBoxoBAOZClZCm3YCaJmm1Dgdg1fDC0XK8Cbu4CJDvpgdkc5hKl7GvI7mutiq7o6eltgbMBZCOhfcZBtj9vfytNMPpAfq00N15pShktvphfXTfEwBAHarMwTPcrr80TzTKt8i1dg4kGi75kdwtNP39POUZD", "expires": null, "id": "878041928930941"}	134
86	facebook	10205196138502490	{"access_token": "EAAPCx8oZBoxoBABzqb1wDdFwBD3JUKklCfr6tbbeKzmu6IHvpZBw7ZCnBlcbVLrmRLxwdC2rkFzIF6ZBo1Ty2G4mK9mjdGOzXBD5atyW8nxJNEOjeuUBPwebuFpZBLgZCRdw4ztGZBoTtOcR7MAgXhinQnZCKZAh7ZCZBcZD", "expires": null, "id": "10205196138502490"}	256
89	facebook	1151647524872088	{"id": "1151647524872088", "access_token": "EAAPCx8oZBoxoBADxCbLc1EJATpmtQB9PkUsRHjPziSfedgI2bMo749GTGgB8ZBvMqMO4S3Ssxa3uo4EugZABpArfa70tKiM2ipBg0oj7c4qavYOY4MX8IqxhR9w7VknFZBRZAdr7uGvGinpZCYpNceBSFJeMrIRgQZD", "expires": null}	305
90	facebook	10153976811819506	{"id": "10153976811819506", "access_token": "EAAPCx8oZBoxoBAAzu4hog7fv1ZAwUSb5Syvz9iuc6YYAsGmNyeZClXIcXQlRvt3mqGCUffhKvgoLGGJdhuIUAlZC8D5HQ9Qvfpjg6aZCytkY0J7I3Ac8ZAx8z2zAuBKBDo8BVM2hydzOzJHZAW3AFQXbKZCGh1NKdXYZD", "expires": null}	306
91	facebook	1237368472993450	{"expires": null, "access_token": "EAAPCx8oZBoxoBAAzHhOfrurpHOhZAXg74eJMef1qYevuIXzimNF5WTNqYWz8RoFdALfZCDPbvJgN6dF4OPAsRm79FvMxqeHp03lfro0p0czvcOu8eJkkQsDLIDDbBSUjmkEUEbNDOOcc2yz5aFFYkrQZCRWaJXoUpMJv5AVRWQZDZD", "id": "1237368472993450"}	310
92	facebook	10154633527594430	{"expires": null, "id": "10154633527594430", "access_token": "EAAPCx8oZBoxoBADFojnA746oQ8BHPzyFuzUO6yE2fWAlFulIA5h69x87Y7BZBUUzDrlOoI9JudHmOTmMNeXGYAtoi0wPoHelHoVi6ZBfiY2fk7ejCZAQ6stBQt5JhsN12gdJaVsPLF1FgVgcchrb1DUVGPY2hbUZD"}	311
39	facebook	580260168832363	{"expires": null, "id": "580260168832363", "access_token": "EAAPCx8oZBoxoBALqp8oIlpkymbzXgwRYswtYHiT8Mx7LYd81Wt0l0MS4K0nIdlLMZBPBmZBS0Ic6ER1pA9hPj9vRnJ9YujWZBmpiHWazQfBZBoSV1C9PVlZBLVHBR9xe2sl5hOzM99ki58MMJLnu4SomZCs2fTWMBIZD"}	126
95	facebook	1112016668834689	{"id": "1112016668834689", "expires": null, "access_token": "EAAPCx8oZBoxoBAA0Ny6H5M68CaJ6o7yT1NNSs4X6iZBV7CyVgwClBjV00d6g2qVXa4T3G3ywi4zl4lp9OFc2IZCTSc63LiQhzT826ifHRfALNnxK55ZCSlwJYIt98wSVNJ8QOoHRfHUPa8jZCNYpa8RXu70Kf5fgZD"}	324
94	facebook	1551912471492211	{"access_token": "EAAPCx8oZBoxoBAGxxiLktJjmFklpmQPBLIdZA12DrEHZCpOAKZAKZCRxRd85KYwktoZCklltV8rTWU8sxVAUyNM3nPEA59WZAnZCVZAslJm5KmdLU6cdoJB9l2hbG72MLoOOfNBZCKdvHAbJLRzz44zc3goQePJds3cNGmuNdnoyB7rQZDZD", "id": "1551912471492211", "expires": null}	323
96	facebook	10205739776332674	{"id": "10205739776332674", "expires": null, "access_token": "EAAPCx8oZBoxoBAKd59kQuNGx6knUG35YbZBhFHJ4ApP3epBBZCVziUdJYYkxZC0p57CrudGD1Q1dUe9StL0xgzHlCmvjxXYe1wEhVKJRUBYogLmn3708c4aKjZCLRVGEPFZBM2wVmwZAVnO4LIq7zOMqKbJGjkIEcuEgZAD2140RkAZDZD"}	327
85	facebook	1149991271739694	{"id": "1149991271739694", "access_token": "EAAPCx8oZBoxoBAB11f4U8nLEgZCj6DqcivbgOCfHecnmf7jSM3UnxgBgwLM7cE4ZBw4nYmywwOvBVnpIBBV5JFTALtXERzkYqXKC82CWO6T4NMZASTgoNTp8E77pdBKVodqqNh3sU8E1ZCn80goqyJtmqx9FZCZCLsZD", "expires": null}	253
97	facebook	1774983726123286	{"id": "1774983726123286", "access_token": "EAAPCx8oZBoxoBAIlvYIigbt2G5dJ4JNFCESSrm0FCfI0W07rJOuL0Df5uZAm7dW3CHT1ZCUkudL27ff5UHdCU31c5MZCXcgGXwoZB6csRHaQFY8vQRkdNPZCzLYN6tKZCGKRyGadZCrJ04hqbbl2uk3p6J926wmaEXIZD", "expires": null}	332
79	facebook	10209719125317521	{"id": "10209719125317521", "access_token": "EAAPCx8oZBoxoBAIzwptN4WZAdWDINOuZCNSSOF4hPqYw31pI7ukwExyzhy5RjH5RcmNJnOlduHZB6Jt4Q5aBjrCuM1ltYwrZBSmPsamxz54uExGDUiKROwzgCMBkLBFwBriBwJtihnFXtZAOI5ZBvX8JiIeEtY7QuMZD", "expires": null}	234
28	facebook	1144082712308478	{"id": "1144082712308478", "access_token": "EAAPCx8oZBoxoBAOcQMIhPFKvZBdT4FZCUBINBW1LoiihlxnU5Tb5MXAEUxrGvEDb9ZCSQjSf1QEpm5ZAi48l7bLN6nF3BZCTMthgwH6etglLcOSdZCmkCjMpoYyNpCsoSlZAnrHozd0PZCnOkKaDzKkKZAcSQEgg9NORcZD", "expires": null}	78
1	facebook	1353452071385211	{"access_token": "EAAPCx8oZBoxoBADAPnU89iVELqMsivQyJQOXZC3rZC0QKzMZCZCR5aTR9YQzDUVZBmxYQ3QjTnLTOHDixY5zMKHZBSGHpDZCxSiM1ZBDeE97ok7gOMo6NV4u7SXWUZCEXe7Am6qcJVR1zWRZCvw0vjIZBG83KSkVgGnX5DoZD", "expires": null, "id": "1353452071385211"}	2
2	facebook	1466014640080963	{"access_token": "EAAPCx8oZBoxoBANQo2wrMV2I1laAZAzSWkE3XiN9OPrqzuEBlWgKqlp8ZBtgFIVJAEItcjnRzMxdKjzPWol5gBQtsKIivxBVZALMWlSldnV4ocncE2bphNXzEOgLMajq38EHddvavGwz9eHaRV0nHnTmUo8wRvr0AagkumYYZCk1U5ZB5ej59y", "expires": null, "id": "1466014640080963"}	6
3	facebook	343748905971703	{"access_token": "EAAPCx8oZBoxoBABAmmBc0hrvD57ZCINyxjWe6CIsAf4U6IcYeRoQ6wavBkErrOCXEsX0ZBhi10gL0PBUsO0330dqTD65EhSV1BQ6lwe1aGpNfe5ZBQfhdOdYtZBxxOJfZAGxh6zd3yewo2ZArtZASHTSceHMKqnheBUZD", "expires": null, "id": "343748905971703"}	8
103	facebook	1456280187733172	{"expires": null, "access_token": "EAAPCx8oZBoxoBAMl80t06ZBcw3KwP5RNrUqTWeOBmjVDDmPRDZCSAHeod6ItpCA6J2GElPFsnotD7myguLjZCy3azPZCb4onu6ZBmCwbIY4ZCaDE7DPVP6aTZBWnrKSsOZCD5oZAlXNqB5WtIQdIjyKtxKleiK0PN4VgMZD", "id": "1456280187733172"}	352
4	facebook	1264276990306483	{"id": "1264276990306483", "access_token": "EAAPCx8oZBoxoBAMbjVWsUlZCaYvoHGeHkqWWShHcvtMLFKhuSHsUGoU1hCabKv07cL1ji2yALjTHBQXHwZBrD5ppS7GtTs91ZAZCjQZA176f31jPZACIEwMtjyiQsr579vTla748ZBtVGZCVk6tVk9Xh1dTZB940T8mVw6bCd2saJ10gZDZD", "expires": null}	12
5	facebook	1251075208256347	{"expires": null, "access_token": "EAAPCx8oZBoxoBAAtTZAXaZBqmG5ZA9tfzu6VB8xpaM3CWsv8MxZAxng62gjyI3nCpuys3lYyquy5mZByzX3oGNqtNhgNIbUnSNHQBmva2BLQX9BQvQja2WJZAu5Ck0zsKRTEH9WlxMxfpKCJKUzi5oXfnFks9qCFakdaB7IGzXABQZDZD", "id": "1251075208256347"}	16
8	facebook	1803719949878407	{"access_token": "EAAPCx8oZBoxoBAEz96y3bRfvPDwRFPoyu0XHTRexQXdPuBofwy8ojDlWZBQb2dkvHMHGdsZA3WoYb3tW1Y8UkWc4Gn4nt8qANhl08URvwAN4CUZBYJDN8zC6T8hX1rvFiBJzmZBetgpQHpOgTTnD8HNG64P6v854ZD", "id": "1803719949878407", "expires": null}	35
25	facebook	10207068720506061	{"access_token": "EAAPCx8oZBoxoBAApwNcHog1XFskeRjOHnymbIyzCcwVqa5WZBM4jafDRLWgJWq3ZCPlsrFS5dluyxBTK7NqyHKiOS5v9bnMidWaSHjOBvX1eBJQbRc7aqbY4HNZBG6Nzo99a3fz41RH1evU6bhCNxkeUAYEZCar8ZD", "expires": null, "id": "10207068720506061"}	140
102	facebook	1201765189861167	{"access_token": "EAAPCx8oZBoxoBAEFzZBIUESAN3YkTmPVjpGL1WBGmNfZBEn2SYWb1ZBQgkNZBpA9SH981mfgWbXhbxe5O8F9AazVuZAPkWUbixvFwFup3FoE369IsnsohLn7rnO29qdqWTqRFhcuDSSenfoJXS3y8HZAnwugaDaOaMZD", "id": "1201765189861167", "expires": null}	350
9	facebook	913419472125228	{"access_token": "EAAPCx8oZBoxoBAMDw23vYmIdTgW3FtnDtiVrwzJRBBeCiuT99TZAkZB7c5N6fU0ZAkaCeLJMPvZBmdVPV4eCrooBvCv20k7TwL1nGt9LHjvHkpDeFbtm1FkZA9vDfBOFRZBvxGHAYHinbTsyRCbcOex7ObJZBgPR88wZD", "id": "913419472125228", "expires": null}	36
10	facebook	1131378896969020	{"id": "1131378896969020", "expires": null, "access_token": "EAAPCx8oZBoxoBAIpOYWJTxuXB9jTH8pxCJuZA6CBJuwhKpWDQ4rZAKT0SZAY73PzMk3ZBMFPKQPV4YHcuh5lArS51dJwfRESa4zBBarJlZC9TLZC8N3gHPNp4t6IDiFthGpYZB4PNJYiwxR5qsCvzdh59bBjrAaQNbHXE08jAoSiVAZDZD"}	42
99	facebook	1175375935883510	{"access_token": "EAAPCx8oZBoxoBAE8G9FW5DZCcu01AkS9NkjIwysZCvsVufXibfVY34ahCSWxjEP8Koir6VHdZAHeJpZCZBKYgPWXYOdwPe7L6aBDtDjZAhufH0TgZBxQybvX3sjPOjJ2MC6h3LEBOZCvLoh9GJokSblyPHtALIW8LulsZD", "expires": null, "id": "1175375935883510"}	347
34	facebook	1101912819880758	{"id": "1101912819880758", "access_token": "EAAPCx8oZBoxoBADMlHTZAkxqnNDBOWlK4i3YvZAp7tbtKOAZA6tzdpJSR6RjQAyoS3ZB3vHUJGef7WwvdsrPmXV3fQKQmT4CCbaxR3oF2DCS7AiWfRhTMgkZB7FyJJpZALJqxc344A1jOPRbxbZBZCZAnmn3JTYMSEmpYZD", "expires": null}	335
100	facebook	1142665782435177	{"id": "1142665782435177", "access_token": "EAAPCx8oZBoxoBANg5gxMFortpHFESOzc2h1WhOecIapqbrJiQBFIzGLgQ4yduzqDT7pqbC0wvLSKZBd8t5aoptR58PyVgGZAqLKEAzfp7MfgdYV8rdguAfx7y8g1K2oj1qZBZBS8DesrtU3DgpjMZBeJLSyiKMSuIZD", "expires": null}	348
107	facebook	624711637715583	{"access_token": "EAAPCx8oZBoxoBALxTTKV2ZCx0S4XRwTm5iEP7exArbu6aSOeV5lkzZCUmeSNbgZBoI2Ef9XtrWCuGQbxTO4bvJzWJo7ROPODVNhKS7Xm8VcOuOCZADRhSoKIXy6J9Ogm1s11sd0fc8bnHZBoKWr64B83mE5B9s0VoZD", "expires": null, "id": "624711637715583"}	377
105	facebook	1327111284030044	{"expires": null, "access_token": "EAAPCx8oZBoxoBAKXLWWpNSnKr4NyI8hR04AhwQvKoc687iwrk77wKywb2fARDZBZB5jtOzLmZBhzwYBGf7ZAbosqbqglWr6vupjgg8ZADlhvQOHoH8gIzPUMRKmzsehSIn75Nz5PeMjK4HwXYhjEuUX7U0D08WMP81P05EhHUhmwZDZD", "id": "1327111284030044"}	359
35	facebook	1240530822684421	{"expires": null, "access_token": "EAAPCx8oZBoxoBANscJXPgdeE87oWrHowwCJzYc0XFhWotVXxO8gpd6L1dwdXzFXL2JvOgyBXQTBMq1lZC62zhZB5CDHhTP47rkPqU9pv6UZA01kuZCAZCuzDFLShBq58S99Oa1eTnjZBor3SiYwPEbB8rhbZCCiyqj7szbZBC1SOUIQZDZD", "id": "1240530822684421"}	336
104	facebook	10209754042922126	{"access_token": "EAAPCx8oZBoxoBABPz4ZB5DOF4k4TiSepfxB1D6nU6O7LFNwYxHsL7o7sYnEZAxuFMuo0AZBaEj0JKGdQfH0cUsZAlDzfMPauNO1UbB90JM9k5aWEcdKxiZCnzmcdRMIF1SCo6BY82goqSTA8mi4a74jM4ZCPPqZAeVEZD", "expires": null, "id": "10209754042922126"}	357
101	facebook	985651848214123	{"access_token": "EAAPCx8oZBoxoBAKQLd7lJqi1ND6cypZA4ZCir3ZCp2N5vCGEzQ9QPDbG2G2yHXcb8n4OZBRzhf43zXzP8ZAScBb6h1WQVtMK9OJmxJuCUre4HFDgWLZCM1axRMIw6ijt4yyZAgZCKkEcheNshoN6XHDhZBry30FIgOzpmUafgTFX8NywZDZD", "expires": null, "id": "985651848214123"}	349
108	facebook	1598483603500750	{"id": "1598483603500750", "access_token": "EAAPCx8oZBoxoBAO5ZC1ibnCzpoChu0yBwY5P5csI4qoDg29MGymH8Sk8ZAOaTEE7CgE1oLHVLXl5yQZCWwzn0ZC1hZAZC7yeNvdYxdmqhfTjXsSTmNQ3b8l2czM7X0gxl5PDV5bGRtvLzbWY6rFPwrAPM52lyC8xngZD", "expires": null}	380
106	facebook	10206289310791656	{"id": "10206289310791656", "expires": null, "access_token": "EAAPCx8oZBoxoBAEPKvBk8NbYUtJe2SH6ZBuzLqGY7Eb3XRZANNXu3ZBCkK5un1p3UCChSWBR8HVqwsM71TXpM0ql6AKPORNZCAL5gojntxYz6EWBjnUKcY2jGwZA8ZBJ1gtTkvnrwBdFXZCzZA6P9TBApR2VFrs7BhYsZD"}	374
109	facebook	136448916868667	{"access_token": "EAAPCx8oZBoxoBAOoXcxrLFx05dOIZBxkDKxXAuekAaPlZCdCnvSMjhPM7UXE2o8s6g9OrKEnYZA5YL4ZA7KcoMcBChXkwkeIZCBzZAUFC066kknYZA1Dk9HkBBNAw9EkTDgeM5521rFsRzW4mXb6FJAAyZBfn11ESKG2oNkg3Ul7nZAgZDZD", "id": "136448916868667", "expires": null}	141
\.


--
-- TOC entry 2909 (class 0 OID 0)
-- Dependencies: 269
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('social_auth_usersocialauth_id_seq', 109, true);


--
-- TOC entry 2341 (class 2606 OID 16690)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2347 (class 2606 OID 16692)
-- Name: auth_group_permissions auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2349 (class 2606 OID 16694)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2343 (class 2606 OID 16696)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2352 (class 2606 OID 16698)
-- Name: auth_permission auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2354 (class 2606 OID 16700)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2358 (class 2606 OID 16702)
-- Name: core_clickstoshowmore core_clickstoshowmore_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_clickstoshowmore
    ADD CONSTRAINT core_clickstoshowmore_pkey PRIMARY KEY (id);


--
-- TOC entry 2362 (class 2606 OID 16704)
-- Name: core_endorsment core_endorsment_hirer_id_a6fd45fa_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_endorsment
    ADD CONSTRAINT core_endorsment_hirer_id_a6fd45fa_uniq UNIQUE (hirer_id, worker_id);


--
-- TOC entry 2364 (class 2606 OID 16706)
-- Name: core_endorsment core_endorsment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_endorsment
    ADD CONSTRAINT core_endorsment_pkey PRIMARY KEY (id);


--
-- TOC entry 2367 (class 2606 OID 16708)
-- Name: core_evaluationparameter core_evaluationparameter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_evaluationparameter
    ADD CONSTRAINT core_evaluationparameter_pkey PRIMARY KEY (id);


--
-- TOC entry 2369 (class 2606 OID 16710)
-- Name: core_evaluationtemplate core_evaluationtemplate_category_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_evaluationtemplate
    ADD CONSTRAINT core_evaluationtemplate_category_id_key UNIQUE (category_id);


--
-- TOC entry 2372 (class 2606 OID 16712)
-- Name: core_evaluationtemplate core_evaluationtemplate_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_evaluationtemplate
    ADD CONSTRAINT core_evaluationtemplate_name_key UNIQUE (name);


--
-- TOC entry 2374 (class 2606 OID 16714)
-- Name: core_evaluationtemplate core_evaluationtemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_evaluationtemplate
    ADD CONSTRAINT core_evaluationtemplate_pkey PRIMARY KEY (id);


--
-- TOC entry 2377 (class 2606 OID 16716)
-- Name: core_evaluationtemplateitem core_evaluationtemplateitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_evaluationtemplateitem
    ADD CONSTRAINT core_evaluationtemplateitem_pkey PRIMARY KEY (id);


--
-- TOC entry 2379 (class 2606 OID 16718)
-- Name: core_groupservicecategory core_groupservicecategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_groupservicecategory
    ADD CONSTRAINT core_groupservicecategory_pkey PRIMARY KEY (id);


--
-- TOC entry 2390 (class 2606 OID 16720)
-- Name: core_indicouser_categories core_indicouser_categories_indicouser_id_99b54b7e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_categories
    ADD CONSTRAINT core_indicouser_categories_indicouser_id_99b54b7e_uniq UNIQUE (indicouser_id, servicecategory_id);


--
-- TOC entry 2392 (class 2606 OID 16722)
-- Name: core_indicouser_categories core_indicouser_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_categories
    ADD CONSTRAINT core_indicouser_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 2381 (class 2606 OID 16724)
-- Name: core_indicouser core_indicouser_documents_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser
    ADD CONSTRAINT core_indicouser_documents_id_key UNIQUE (documents_id);


--
-- TOC entry 2384 (class 2606 OID 16726)
-- Name: core_indicouser core_indicouser_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser
    ADD CONSTRAINT core_indicouser_email_key UNIQUE (email);


--
-- TOC entry 2396 (class 2606 OID 16728)
-- Name: core_indicouser_groups core_indicouser_groups_indicouser_id_712f5a70_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_groups
    ADD CONSTRAINT core_indicouser_groups_indicouser_id_712f5a70_uniq UNIQUE (indicouser_id, group_id);


--
-- TOC entry 2398 (class 2606 OID 16730)
-- Name: core_indicouser_groups core_indicouser_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_groups
    ADD CONSTRAINT core_indicouser_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2386 (class 2606 OID 16732)
-- Name: core_indicouser core_indicouser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser
    ADD CONSTRAINT core_indicouser_pkey PRIMARY KEY (id);


--
-- TOC entry 2402 (class 2606 OID 16734)
-- Name: core_indicouser_skills core_indicouser_skills_indicouser_id_cbb70f6a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_skills
    ADD CONSTRAINT core_indicouser_skills_indicouser_id_cbb70f6a_uniq UNIQUE (indicouser_id, skill_id);


--
-- TOC entry 2404 (class 2606 OID 16736)
-- Name: core_indicouser_skills core_indicouser_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_skills
    ADD CONSTRAINT core_indicouser_skills_pkey PRIMARY KEY (id);


--
-- TOC entry 2408 (class 2606 OID 16738)
-- Name: core_indicouser_user_permissions core_indicouser_user_permissions_indicouser_id_6eb0b9b1_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_user_permissions
    ADD CONSTRAINT core_indicouser_user_permissions_indicouser_id_6eb0b9b1_uniq UNIQUE (indicouser_id, permission_id);


--
-- TOC entry 2410 (class 2606 OID 16740)
-- Name: core_indicouser_user_permissions core_indicouser_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_user_permissions
    ADD CONSTRAINT core_indicouser_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2546 (class 2606 OID 73851)
-- Name: core_indicouser_work_zones core_indicouser_work_zones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_work_zones
    ADD CONSTRAINT core_indicouser_work_zones_pkey PRIMARY KEY (id);


--
-- TOC entry 2413 (class 2606 OID 16742)
-- Name: core_notification core_notification_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_notification
    ADD CONSTRAINT core_notification_pkey PRIMARY KEY (id);


--
-- TOC entry 2416 (class 2606 OID 16744)
-- Name: core_place core_place_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_place
    ADD CONSTRAINT core_place_pkey PRIMARY KEY (id);


--
-- TOC entry 2419 (class 2606 OID 16746)
-- Name: core_reference core_reference_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_reference
    ADD CONSTRAINT core_reference_pkey PRIMARY KEY (id);


--
-- TOC entry 2426 (class 2606 OID 16748)
-- Name: core_relationship_friends core_relationship_friends_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_relationship_friends
    ADD CONSTRAINT core_relationship_friends_pkey PRIMARY KEY (id);


--
-- TOC entry 2428 (class 2606 OID 16750)
-- Name: core_relationship_friends core_relationship_friends_relationship_id_9cb01e48_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_relationship_friends
    ADD CONSTRAINT core_relationship_friends_relationship_id_9cb01e48_uniq UNIQUE (relationship_id, indicouser_id);


--
-- TOC entry 2422 (class 2606 OID 16752)
-- Name: core_relationship core_relationship_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_relationship
    ADD CONSTRAINT core_relationship_pkey PRIMARY KEY (id);


--
-- TOC entry 2431 (class 2606 OID 16754)
-- Name: core_servicecategory core_servicecategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicecategory
    ADD CONSTRAINT core_servicecategory_pkey PRIMARY KEY (id);


--
-- TOC entry 2434 (class 2606 OID 16756)
-- Name: core_servicediscount core_servicediscount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicediscount
    ADD CONSTRAINT core_servicediscount_pkey PRIMARY KEY (id);


--
-- TOC entry 2439 (class 2606 OID 16758)
-- Name: core_servicemessage core_servicemessage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicemessage
    ADD CONSTRAINT core_servicemessage_pkey PRIMARY KEY (id);


--
-- TOC entry 2443 (class 2606 OID 16760)
-- Name: core_serviceprovided core_serviceprovided_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_serviceprovided
    ADD CONSTRAINT core_serviceprovided_pkey PRIMARY KEY (id);


--
-- TOC entry 2448 (class 2606 OID 16762)
-- Name: core_servicerequest core_servicerequest_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicerequest
    ADD CONSTRAINT core_servicerequest_pkey PRIMARY KEY (id);


--
-- TOC entry 2451 (class 2606 OID 16764)
-- Name: core_servicetype core_servicetype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicetype
    ADD CONSTRAINT core_servicetype_pkey PRIMARY KEY (id);


--
-- TOC entry 2454 (class 2606 OID 16766)
-- Name: core_skill core_skill_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_skill
    ADD CONSTRAINT core_skill_pkey PRIMARY KEY (id);


--
-- TOC entry 2456 (class 2606 OID 16768)
-- Name: core_subscription core_subscription_candidate_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_subscription
    ADD CONSTRAINT core_subscription_candidate_id_key UNIQUE (candidate_id);


--
-- TOC entry 2458 (class 2606 OID 16770)
-- Name: core_subscription core_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_subscription
    ADD CONSTRAINT core_subscription_pkey PRIMARY KEY (id);


--
-- TOC entry 2460 (class 2606 OID 16772)
-- Name: core_userdocuments core_userdocuments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_userdocuments
    ADD CONSTRAINT core_userdocuments_pkey PRIMARY KEY (id);


--
-- TOC entry 2464 (class 2606 OID 16774)
-- Name: core_workerevaluation core_workerevaluation_hirer_id_73a9847b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_workerevaluation
    ADD CONSTRAINT core_workerevaluation_hirer_id_73a9847b_uniq UNIQUE (hirer_id, worker_id);


--
-- TOC entry 2466 (class 2606 OID 16776)
-- Name: core_workerevaluation core_workerevaluation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_workerevaluation
    ADD CONSTRAINT core_workerevaluation_pkey PRIMARY KEY (id);


--
-- TOC entry 2469 (class 2606 OID 16778)
-- Name: core_workerevaluationitem core_workerevaluationitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_workerevaluationitem
    ADD CONSTRAINT core_workerevaluationitem_pkey PRIMARY KEY (id);


--
-- TOC entry 2471 (class 2606 OID 16780)
-- Name: core_workerevaluationitem core_workerevaluationitem_workerEvaluation_id_6b79d8ea_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_workerevaluationitem
    ADD CONSTRAINT "core_workerevaluationitem_workerEvaluation_id_6b79d8ea_uniq" UNIQUE ("workerEvaluation_id", item);


--
-- TOC entry 2544 (class 2606 OID 73844)
-- Name: core_workzone core_workzone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_workzone
    ADD CONSTRAINT core_workzone_pkey PRIMARY KEY (id);


--
-- TOC entry 2475 (class 2606 OID 16782)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2477 (class 2606 OID 16784)
-- Name: django_content_type django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2479 (class 2606 OID 16786)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2481 (class 2606 OID 16788)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2484 (class 2606 OID 16790)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2488 (class 2606 OID 16792)
-- Name: django_site django_site_domain_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_domain_key UNIQUE (domain);


--
-- TOC entry 2490 (class 2606 OID 16794)
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- TOC entry 2495 (class 2606 OID 16796)
-- Name: oauth2_provider_accesstoken oauth2_provider_accesstoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_pkey PRIMARY KEY (id);


--
-- TOC entry 2500 (class 2606 OID 16798)
-- Name: oauth2_provider_application oauth2_provider_application_client_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_client_id_key UNIQUE (client_id);


--
-- TOC entry 2504 (class 2606 OID 16800)
-- Name: oauth2_provider_application oauth2_provider_application_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_pkey PRIMARY KEY (id);


--
-- TOC entry 2510 (class 2606 OID 16802)
-- Name: oauth2_provider_grant oauth2_provider_grant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_pkey PRIMARY KEY (id);


--
-- TOC entry 2514 (class 2606 OID 16804)
-- Name: oauth2_provider_refreshtoken oauth2_provider_refreshtoken_access_token_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_access_token_id_key UNIQUE (access_token_id);


--
-- TOC entry 2517 (class 2606 OID 16806)
-- Name: oauth2_provider_refreshtoken oauth2_provider_refreshtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_pkey PRIMARY KEY (id);


--
-- TOC entry 2537 (class 2606 OID 41013)
-- Name: core_phonenumber pk_core_indicouser_phone_number; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_phonenumber
    ADD CONSTRAINT pk_core_indicouser_phone_number PRIMARY KEY (id);


--
-- TOC entry 2540 (class 2606 OID 65612)
-- Name: server_acmechallenge server_acmechallenge_challenge_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY server_acmechallenge
    ADD CONSTRAINT server_acmechallenge_challenge_key UNIQUE (challenge);


--
-- TOC entry 2542 (class 2606 OID 65610)
-- Name: server_acmechallenge server_acmechallenge_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY server_acmechallenge
    ADD CONSTRAINT server_acmechallenge_pkey PRIMARY KEY (id);


--
-- TOC entry 2520 (class 2606 OID 16808)
-- Name: social_auth_association social_auth_association_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY social_auth_association
    ADD CONSTRAINT social_auth_association_pkey PRIMARY KEY (id);


--
-- TOC entry 2524 (class 2606 OID 16810)
-- Name: social_auth_code social_auth_code_email_801b2d02_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY social_auth_code
    ADD CONSTRAINT social_auth_code_email_801b2d02_uniq UNIQUE (email, code);


--
-- TOC entry 2526 (class 2606 OID 16812)
-- Name: social_auth_code social_auth_code_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY social_auth_code
    ADD CONSTRAINT social_auth_code_pkey PRIMARY KEY (id);


--
-- TOC entry 2528 (class 2606 OID 16814)
-- Name: social_auth_nonce social_auth_nonce_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_pkey PRIMARY KEY (id);


--
-- TOC entry 2530 (class 2606 OID 16816)
-- Name: social_auth_nonce social_auth_nonce_server_url_f6284463_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_server_url_f6284463_uniq UNIQUE (server_url, "timestamp", salt);


--
-- TOC entry 2533 (class 2606 OID 16818)
-- Name: social_auth_usersocialauth social_auth_usersocialauth_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_pkey PRIMARY KEY (id);


--
-- TOC entry 2535 (class 2606 OID 16820)
-- Name: social_auth_usersocialauth social_auth_usersocialauth_provider_e6b5e668_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_provider_e6b5e668_uniq UNIQUE (provider, uid);


--
-- TOC entry 2339 (class 1259 OID 16821)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2344 (class 1259 OID 16822)
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- TOC entry 2345 (class 1259 OID 16823)
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2350 (class 1259 OID 16824)
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- TOC entry 2355 (class 1259 OID 16825)
-- Name: core_clickstoshowmore_ce77e6ef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_clickstoshowmore_ce77e6ef ON core_clickstoshowmore USING btree (worker_id);


--
-- TOC entry 2356 (class 1259 OID 16826)
-- Name: core_clickstoshowmore_e49e0596; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_clickstoshowmore_e49e0596 ON core_clickstoshowmore USING btree (hirer_id);


--
-- TOC entry 2359 (class 1259 OID 16827)
-- Name: core_endorsment_ce77e6ef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_endorsment_ce77e6ef ON core_endorsment USING btree (worker_id);


--
-- TOC entry 2360 (class 1259 OID 16828)
-- Name: core_endorsment_e49e0596; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_endorsment_e49e0596 ON core_endorsment USING btree (hirer_id);


--
-- TOC entry 2365 (class 1259 OID 16829)
-- Name: core_evaluationparameter_b0dc1e29; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_evaluationparameter_b0dc1e29 ON core_evaluationparameter USING btree (service_id);


--
-- TOC entry 2370 (class 1259 OID 16830)
-- Name: core_evaluationtemplate_name_d5f28d26_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_evaluationtemplate_name_d5f28d26_like ON core_evaluationtemplate USING btree (name varchar_pattern_ops);


--
-- TOC entry 2375 (class 1259 OID 16831)
-- Name: core_evaluationtemplateitem_bc7b74e7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_evaluationtemplateitem_bc7b74e7 ON core_evaluationtemplateitem USING btree (evaluation_template_id);


--
-- TOC entry 2387 (class 1259 OID 16832)
-- Name: core_indicouser_categories_033f6804; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_indicouser_categories_033f6804 ON core_indicouser_categories USING btree (servicecategory_id);


--
-- TOC entry 2388 (class 1259 OID 16833)
-- Name: core_indicouser_categories_48624afe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_indicouser_categories_48624afe ON core_indicouser_categories USING btree (indicouser_id);


--
-- TOC entry 2382 (class 1259 OID 16834)
-- Name: core_indicouser_email_0537edef_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_indicouser_email_0537edef_like ON core_indicouser USING btree (email varchar_pattern_ops);


--
-- TOC entry 2393 (class 1259 OID 16835)
-- Name: core_indicouser_groups_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_indicouser_groups_0e939a4f ON core_indicouser_groups USING btree (group_id);


--
-- TOC entry 2394 (class 1259 OID 16836)
-- Name: core_indicouser_groups_48624afe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_indicouser_groups_48624afe ON core_indicouser_groups USING btree (indicouser_id);


--
-- TOC entry 2399 (class 1259 OID 16837)
-- Name: core_indicouser_skills_48624afe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_indicouser_skills_48624afe ON core_indicouser_skills USING btree (indicouser_id);


--
-- TOC entry 2400 (class 1259 OID 16838)
-- Name: core_indicouser_skills_d38d4c39; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_indicouser_skills_d38d4c39 ON core_indicouser_skills USING btree (skill_id);


--
-- TOC entry 2405 (class 1259 OID 16839)
-- Name: core_indicouser_user_permissions_48624afe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_indicouser_user_permissions_48624afe ON core_indicouser_user_permissions USING btree (indicouser_id);


--
-- TOC entry 2406 (class 1259 OID 16840)
-- Name: core_indicouser_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_indicouser_user_permissions_8373b171 ON core_indicouser_user_permissions USING btree (permission_id);


--
-- TOC entry 2411 (class 1259 OID 16841)
-- Name: core_notification_f4b39993; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_notification_f4b39993 ON core_notification USING btree (to_id);


--
-- TOC entry 2414 (class 1259 OID 16842)
-- Name: core_place_5e7b1936; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_place_5e7b1936 ON core_place USING btree (owner_id);


--
-- TOC entry 2417 (class 1259 OID 16843)
-- Name: core_reference_ef42673f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_reference_ef42673f ON core_reference USING btree (subscription_id);


--
-- TOC entry 2420 (class 1259 OID 16844)
-- Name: core_relationship_905979e3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_relationship_905979e3 ON core_relationship USING btree (user_one_id);


--
-- TOC entry 2423 (class 1259 OID 16845)
-- Name: core_relationship_friends_48624afe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_relationship_friends_48624afe ON core_relationship_friends USING btree (indicouser_id);


--
-- TOC entry 2424 (class 1259 OID 16846)
-- Name: core_relationship_friends_fad43076; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_relationship_friends_fad43076 ON core_relationship_friends USING btree (relationship_id);


--
-- TOC entry 2429 (class 1259 OID 16847)
-- Name: core_servicecategory_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_servicecategory_0e939a4f ON core_servicecategory USING btree (group_id);


--
-- TOC entry 2432 (class 1259 OID 16848)
-- Name: core_servicediscount_1c39d0e3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_servicediscount_1c39d0e3 ON core_servicediscount USING btree (service_provided_id);


--
-- TOC entry 2435 (class 1259 OID 16849)
-- Name: core_servicemessage_924b1846; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_servicemessage_924b1846 ON core_servicemessage USING btree (sender_id);


--
-- TOC entry 2436 (class 1259 OID 16850)
-- Name: core_servicemessage_af4c5c15; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_servicemessage_af4c5c15 ON core_servicemessage USING btree (destinatary_id);


--
-- TOC entry 2437 (class 1259 OID 16851)
-- Name: core_servicemessage_b0dc1e29; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_servicemessage_b0dc1e29 ON core_servicemessage USING btree (service_id);


--
-- TOC entry 2440 (class 1259 OID 16852)
-- Name: core_serviceprovided_8f1d2d79; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_serviceprovided_8f1d2d79 ON core_serviceprovided USING btree (service_type_id);


--
-- TOC entry 2441 (class 1259 OID 16853)
-- Name: core_serviceprovided_ce77e6ef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_serviceprovided_ce77e6ef ON core_serviceprovided USING btree (worker_id);


--
-- TOC entry 2444 (class 1259 OID 16854)
-- Name: core_servicerequest_1c39d0e3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_servicerequest_1c39d0e3 ON core_servicerequest USING btree (service_provided_id);


--
-- TOC entry 2445 (class 1259 OID 16855)
-- Name: core_servicerequest_5e7b1936; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_servicerequest_5e7b1936 ON core_servicerequest USING btree (owner_id);


--
-- TOC entry 2446 (class 1259 OID 16856)
-- Name: core_servicerequest_ea8e5d12; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_servicerequest_ea8e5d12 ON core_servicerequest USING btree (address_id);


--
-- TOC entry 2449 (class 1259 OID 16857)
-- Name: core_servicetype_87a4bca1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_servicetype_87a4bca1 ON core_servicetype USING btree (service_category_id);


--
-- TOC entry 2452 (class 1259 OID 16858)
-- Name: core_skill_b583a629; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_skill_b583a629 ON core_skill USING btree (category_id);


--
-- TOC entry 2461 (class 1259 OID 16859)
-- Name: core_workerevaluation_ce77e6ef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_workerevaluation_ce77e6ef ON core_workerevaluation USING btree (worker_id);


--
-- TOC entry 2462 (class 1259 OID 16860)
-- Name: core_workerevaluation_e49e0596; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_workerevaluation_e49e0596 ON core_workerevaluation USING btree (hirer_id);


--
-- TOC entry 2467 (class 1259 OID 16861)
-- Name: core_workerevaluationitem_74282563; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_workerevaluationitem_74282563 ON core_workerevaluationitem USING btree ("workerEvaluation_id");


--
-- TOC entry 2472 (class 1259 OID 16862)
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- TOC entry 2473 (class 1259 OID 16863)
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- TOC entry 2482 (class 1259 OID 16864)
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- TOC entry 2485 (class 1259 OID 16865)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2486 (class 1259 OID 16866)
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_site_domain_a2e37b91_like ON django_site USING btree (domain varchar_pattern_ops);


--
-- TOC entry 2491 (class 1259 OID 16867)
-- Name: oauth2_provider_accesstoken_6bc0a4eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_accesstoken_6bc0a4eb ON oauth2_provider_accesstoken USING btree (application_id);


--
-- TOC entry 2492 (class 1259 OID 16868)
-- Name: oauth2_provider_accesstoken_94a08da1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_accesstoken_94a08da1 ON oauth2_provider_accesstoken USING btree (token);


--
-- TOC entry 2493 (class 1259 OID 16869)
-- Name: oauth2_provider_accesstoken_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_accesstoken_e8701ad4 ON oauth2_provider_accesstoken USING btree (user_id);


--
-- TOC entry 2496 (class 1259 OID 16870)
-- Name: oauth2_provider_accesstoken_token_8af090f8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_accesstoken_token_8af090f8_like ON oauth2_provider_accesstoken USING btree (token varchar_pattern_ops);


--
-- TOC entry 2497 (class 1259 OID 16871)
-- Name: oauth2_provider_application_9d667c2b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_application_9d667c2b ON oauth2_provider_application USING btree (client_secret);


--
-- TOC entry 2498 (class 1259 OID 16872)
-- Name: oauth2_provider_application_client_id_03f0cc84_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_application_client_id_03f0cc84_like ON oauth2_provider_application USING btree (client_id varchar_pattern_ops);


--
-- TOC entry 2501 (class 1259 OID 16873)
-- Name: oauth2_provider_application_client_secret_53133678_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_application_client_secret_53133678_like ON oauth2_provider_application USING btree (client_secret varchar_pattern_ops);


--
-- TOC entry 2502 (class 1259 OID 16874)
-- Name: oauth2_provider_application_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_application_e8701ad4 ON oauth2_provider_application USING btree (user_id);


--
-- TOC entry 2505 (class 1259 OID 16875)
-- Name: oauth2_provider_grant_6bc0a4eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_grant_6bc0a4eb ON oauth2_provider_grant USING btree (application_id);


--
-- TOC entry 2506 (class 1259 OID 16876)
-- Name: oauth2_provider_grant_c1336794; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_grant_c1336794 ON oauth2_provider_grant USING btree (code);


--
-- TOC entry 2507 (class 1259 OID 16877)
-- Name: oauth2_provider_grant_code_49ab4ddf_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_grant_code_49ab4ddf_like ON oauth2_provider_grant USING btree (code varchar_pattern_ops);


--
-- TOC entry 2508 (class 1259 OID 16878)
-- Name: oauth2_provider_grant_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_grant_e8701ad4 ON oauth2_provider_grant USING btree (user_id);


--
-- TOC entry 2511 (class 1259 OID 16879)
-- Name: oauth2_provider_refreshtoken_6bc0a4eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_refreshtoken_6bc0a4eb ON oauth2_provider_refreshtoken USING btree (application_id);


--
-- TOC entry 2512 (class 1259 OID 16880)
-- Name: oauth2_provider_refreshtoken_94a08da1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_refreshtoken_94a08da1 ON oauth2_provider_refreshtoken USING btree (token);


--
-- TOC entry 2515 (class 1259 OID 16881)
-- Name: oauth2_provider_refreshtoken_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_refreshtoken_e8701ad4 ON oauth2_provider_refreshtoken USING btree (user_id);


--
-- TOC entry 2518 (class 1259 OID 16882)
-- Name: oauth2_provider_refreshtoken_token_d090daa4_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth2_provider_refreshtoken_token_d090daa4_like ON oauth2_provider_refreshtoken USING btree (token varchar_pattern_ops);


--
-- TOC entry 2538 (class 1259 OID 65613)
-- Name: server_acmechallenge_challenge_0f8d0917_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX server_acmechallenge_challenge_0f8d0917_like ON server_acmechallenge USING btree (challenge varchar_pattern_ops);


--
-- TOC entry 2521 (class 1259 OID 16883)
-- Name: social_auth_code_c1336794; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_auth_code_c1336794 ON social_auth_code USING btree (code);


--
-- TOC entry 2522 (class 1259 OID 16884)
-- Name: social_auth_code_code_a2393167_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_auth_code_code_a2393167_like ON social_auth_code USING btree (code varchar_pattern_ops);


--
-- TOC entry 2531 (class 1259 OID 16885)
-- Name: social_auth_usersocialauth_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_auth_usersocialauth_e8701ad4 ON social_auth_usersocialauth USING btree (user_id);


--
-- TOC entry 2547 (class 2606 OID 16886)
-- Name: auth_group_permissions auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2548 (class 2606 OID 16891)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2549 (class 2606 OID 16896)
-- Name: auth_permission auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2556 (class 2606 OID 16901)
-- Name: core_evaluationtemplateitem c_evaluation_template_id_2c27651e_fk_core_evaluationtemplate_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_evaluationtemplateitem
    ADD CONSTRAINT c_evaluation_template_id_2c27651e_fk_core_evaluationtemplate_id FOREIGN KEY (evaluation_template_id) REFERENCES core_evaluationtemplate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2550 (class 2606 OID 16906)
-- Name: core_clickstoshowmore core_clickstoshowmore_hirer_id_dc9c5152_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_clickstoshowmore
    ADD CONSTRAINT core_clickstoshowmore_hirer_id_dc9c5152_fk_core_indicouser_id FOREIGN KEY (hirer_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2551 (class 2606 OID 16911)
-- Name: core_clickstoshowmore core_clickstoshowmore_worker_id_fbe0ed0b_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_clickstoshowmore
    ADD CONSTRAINT core_clickstoshowmore_worker_id_fbe0ed0b_fk_core_indicouser_id FOREIGN KEY (worker_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2552 (class 2606 OID 16916)
-- Name: core_endorsment core_endorsment_hirer_id_e6340758_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_endorsment
    ADD CONSTRAINT core_endorsment_hirer_id_e6340758_fk_core_indicouser_id FOREIGN KEY (hirer_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2553 (class 2606 OID 16921)
-- Name: core_endorsment core_endorsment_worker_id_d5d8a5d5_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_endorsment
    ADD CONSTRAINT core_endorsment_worker_id_d5d8a5d5_fk_core_indicouser_id FOREIGN KEY (worker_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2555 (class 2606 OID 16926)
-- Name: core_evaluationtemplate core_evaluation_category_id_1d60b0ff_fk_core_servicecategory_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_evaluationtemplate
    ADD CONSTRAINT core_evaluation_category_id_1d60b0ff_fk_core_servicecategory_id FOREIGN KEY (category_id) REFERENCES core_servicecategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2554 (class 2606 OID 16931)
-- Name: core_evaluationparameter core_evaluationpa_service_id_6b6e08f0_fk_core_servicerequest_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_evaluationparameter
    ADD CONSTRAINT core_evaluationpa_service_id_6b6e08f0_fk_core_servicerequest_id FOREIGN KEY (service_id) REFERENCES core_servicerequest(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2558 (class 2606 OID 16936)
-- Name: core_indicouser_categories core_ind_servicecategory_id_9c48e87a_fk_core_servicecategory_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_categories
    ADD CONSTRAINT core_ind_servicecategory_id_9c48e87a_fk_core_servicecategory_id FOREIGN KEY (servicecategory_id) REFERENCES core_servicecategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2559 (class 2606 OID 16941)
-- Name: core_indicouser_categories core_indicouser_ca_indicouser_id_15f854d4_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_categories
    ADD CONSTRAINT core_indicouser_ca_indicouser_id_15f854d4_fk_core_indicouser_id FOREIGN KEY (indicouser_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2557 (class 2606 OID 16946)
-- Name: core_indicouser core_indicouser_documents_id_46ab98ac_fk_core_userdocuments_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser
    ADD CONSTRAINT core_indicouser_documents_id_46ab98ac_fk_core_userdocuments_id FOREIGN KEY (documents_id) REFERENCES core_userdocuments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2560 (class 2606 OID 16951)
-- Name: core_indicouser_groups core_indicouser_gr_indicouser_id_c8e8f951_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_groups
    ADD CONSTRAINT core_indicouser_gr_indicouser_id_c8e8f951_fk_core_indicouser_id FOREIGN KEY (indicouser_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2561 (class 2606 OID 16956)
-- Name: core_indicouser_groups core_indicouser_groups_group_id_31223a59_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_groups
    ADD CONSTRAINT core_indicouser_groups_group_id_31223a59_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2562 (class 2606 OID 16961)
-- Name: core_indicouser_skills core_indicouser_sk_indicouser_id_91fb7410_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_skills
    ADD CONSTRAINT core_indicouser_sk_indicouser_id_91fb7410_fk_core_indicouser_id FOREIGN KEY (indicouser_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2563 (class 2606 OID 16966)
-- Name: core_indicouser_skills core_indicouser_skills_skill_id_04b0af21_fk_core_skill_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_skills
    ADD CONSTRAINT core_indicouser_skills_skill_id_04b0af21_fk_core_skill_id FOREIGN KEY (skill_id) REFERENCES core_skill(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2564 (class 2606 OID 16971)
-- Name: core_indicouser_user_permissions core_indicouser_us_indicouser_id_b1383048_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_user_permissions
    ADD CONSTRAINT core_indicouser_us_indicouser_id_b1383048_fk_core_indicouser_id FOREIGN KEY (indicouser_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2565 (class 2606 OID 16976)
-- Name: core_indicouser_user_permissions core_indicouser_us_permission_id_624aeb40_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_user_permissions
    ADD CONSTRAINT core_indicouser_us_permission_id_624aeb40_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2566 (class 2606 OID 16981)
-- Name: core_notification core_notification_to_id_fa81cd94_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_notification
    ADD CONSTRAINT core_notification_to_id_fa81cd94_fk_core_indicouser_id FOREIGN KEY (to_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2567 (class 2606 OID 16986)
-- Name: core_place core_place_owner_id_57b3f9dc_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_place
    ADD CONSTRAINT core_place_owner_id_57b3f9dc_fk_core_indicouser_id FOREIGN KEY (owner_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2568 (class 2606 OID 16991)
-- Name: core_reference core_reference_subscription_id_d7138822_fk_core_subscription_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_reference
    ADD CONSTRAINT core_reference_subscription_id_d7138822_fk_core_subscription_id FOREIGN KEY (subscription_id) REFERENCES core_subscription(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2570 (class 2606 OID 16996)
-- Name: core_relationship_friends core_relations_relationship_id_b014531a_fk_core_relationship_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_relationship_friends
    ADD CONSTRAINT core_relations_relationship_id_b014531a_fk_core_relationship_id FOREIGN KEY (relationship_id) REFERENCES core_relationship(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2571 (class 2606 OID 17001)
-- Name: core_relationship_friends core_relationship__indicouser_id_1a7df2d5_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_relationship_friends
    ADD CONSTRAINT core_relationship__indicouser_id_1a7df2d5_fk_core_indicouser_id FOREIGN KEY (indicouser_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2569 (class 2606 OID 17006)
-- Name: core_relationship core_relationship_user_one_id_599ab42a_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_relationship
    ADD CONSTRAINT core_relationship_user_one_id_599ab42a_fk_core_indicouser_id FOREIGN KEY (user_one_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2582 (class 2606 OID 17011)
-- Name: core_servicetype core_se_service_category_id_74ed46cb_fk_core_servicecategory_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicetype
    ADD CONSTRAINT core_se_service_category_id_74ed46cb_fk_core_servicecategory_id FOREIGN KEY (service_category_id) REFERENCES core_servicecategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2573 (class 2606 OID 17016)
-- Name: core_servicediscount core_se_service_provided_id_d1a06f86_fk_core_serviceprovided_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicediscount
    ADD CONSTRAINT core_se_service_provided_id_d1a06f86_fk_core_serviceprovided_id FOREIGN KEY (service_provided_id) REFERENCES core_serviceprovided(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2579 (class 2606 OID 17021)
-- Name: core_servicerequest core_se_service_provided_id_d1c0ae6a_fk_core_serviceprovided_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicerequest
    ADD CONSTRAINT core_se_service_provided_id_d1c0ae6a_fk_core_serviceprovided_id FOREIGN KEY (service_provided_id) REFERENCES core_serviceprovided(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2572 (class 2606 OID 17026)
-- Name: core_servicecategory core_servicec_group_id_1f80d593_fk_core_groupservicecategory_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicecategory
    ADD CONSTRAINT core_servicec_group_id_1f80d593_fk_core_groupservicecategory_id FOREIGN KEY (group_id) REFERENCES core_groupservicecategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2574 (class 2606 OID 17031)
-- Name: core_servicemessage core_servicemessa_destinatary_id_0aa21470_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicemessage
    ADD CONSTRAINT core_servicemessa_destinatary_id_0aa21470_fk_core_indicouser_id FOREIGN KEY (destinatary_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2575 (class 2606 OID 17036)
-- Name: core_servicemessage core_servicemessa_service_id_93f33637_fk_core_servicerequest_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicemessage
    ADD CONSTRAINT core_servicemessa_service_id_93f33637_fk_core_servicerequest_id FOREIGN KEY (service_id) REFERENCES core_servicerequest(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2576 (class 2606 OID 17041)
-- Name: core_servicemessage core_servicemessage_sender_id_72f60a61_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicemessage
    ADD CONSTRAINT core_servicemessage_sender_id_72f60a61_fk_core_indicouser_id FOREIGN KEY (sender_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2577 (class 2606 OID 17046)
-- Name: core_serviceprovided core_servicepro_service_type_id_6c208207_fk_core_servicetype_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_serviceprovided
    ADD CONSTRAINT core_servicepro_service_type_id_6c208207_fk_core_servicetype_id FOREIGN KEY (service_type_id) REFERENCES core_servicetype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2578 (class 2606 OID 17051)
-- Name: core_serviceprovided core_serviceprovided_worker_id_bec11d96_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_serviceprovided
    ADD CONSTRAINT core_serviceprovided_worker_id_bec11d96_fk_core_indicouser_id FOREIGN KEY (worker_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2580 (class 2606 OID 17056)
-- Name: core_servicerequest core_servicerequest_address_id_b6501df0_fk_core_place_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicerequest
    ADD CONSTRAINT core_servicerequest_address_id_b6501df0_fk_core_place_id FOREIGN KEY (address_id) REFERENCES core_place(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2581 (class 2606 OID 17061)
-- Name: core_servicerequest core_servicerequest_owner_id_179de36b_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_servicerequest
    ADD CONSTRAINT core_servicerequest_owner_id_179de36b_fk_core_indicouser_id FOREIGN KEY (owner_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2583 (class 2606 OID 17066)
-- Name: core_skill core_skill_category_id_e2b959f5_fk_core_servicecategory_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_skill
    ADD CONSTRAINT core_skill_category_id_e2b959f5_fk_core_servicecategory_id FOREIGN KEY (category_id) REFERENCES core_servicecategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2584 (class 2606 OID 17071)
-- Name: core_subscription core_subscription_candidate_id_a6cba19f_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_subscription
    ADD CONSTRAINT core_subscription_candidate_id_a6cba19f_fk_core_indicouser_id FOREIGN KEY (candidate_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2587 (class 2606 OID 17076)
-- Name: core_workerevaluationitem core_w_workerEvaluation_id_acf5f6b4_fk_core_workerevaluation_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_workerevaluationitem
    ADD CONSTRAINT "core_w_workerEvaluation_id_acf5f6b4_fk_core_workerevaluation_id" FOREIGN KEY ("workerEvaluation_id") REFERENCES core_workerevaluation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2585 (class 2606 OID 17081)
-- Name: core_workerevaluation core_workerevaluation_hirer_id_acdf9b67_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_workerevaluation
    ADD CONSTRAINT core_workerevaluation_hirer_id_acdf9b67_fk_core_indicouser_id FOREIGN KEY (hirer_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2586 (class 2606 OID 17086)
-- Name: core_workerevaluation core_workerevaluation_worker_id_8d17b186_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_workerevaluation
    ADD CONSTRAINT core_workerevaluation_worker_id_8d17b186_fk_core_indicouser_id FOREIGN KEY (worker_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2588 (class 2606 OID 17091)
-- Name: django_admin_log django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2589 (class 2606 OID 17096)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_core_indicouser_id FOREIGN KEY (user_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2599 (class 2606 OID 41014)
-- Name: core_phonenumber fk_indico_user_to_core_indicouser_phone_number; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_phonenumber
    ADD CONSTRAINT fk_indico_user_to_core_indicouser_phone_number FOREIGN KEY (indico_user_id) REFERENCES core_indicouser(id);


--
-- TOC entry 2600 (class 2606 OID 73852)
-- Name: core_indicouser_work_zones fk_indicouser_id_workzones; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_work_zones
    ADD CONSTRAINT fk_indicouser_id_workzones FOREIGN KEY (indicouser_id) REFERENCES core_indicouser(id);


--
-- TOC entry 2601 (class 2606 OID 73857)
-- Name: core_indicouser_work_zones fk_workzone_id_workzones; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_indicouser_work_zones
    ADD CONSTRAINT fk_workzone_id_workzones FOREIGN KEY (workzone_id) REFERENCES core_workzone(id);


--
-- TOC entry 2595 (class 2606 OID 17101)
-- Name: oauth2_provider_refreshtoken oaut_access_token_id_775e84e8_fk_oauth2_provider_accesstoken_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oaut_access_token_id_775e84e8_fk_oauth2_provider_accesstoken_id FOREIGN KEY (access_token_id) REFERENCES oauth2_provider_accesstoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2590 (class 2606 OID 17106)
-- Name: oauth2_provider_accesstoken oauth2_provider_accessto_user_id_6e4c9a65_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accessto_user_id_6e4c9a65_fk_core_indicouser_id FOREIGN KEY (user_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2592 (class 2606 OID 17111)
-- Name: oauth2_provider_application oauth2_provider_applicat_user_id_79829054_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_applicat_user_id_79829054_fk_core_indicouser_id FOREIGN KEY (user_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2593 (class 2606 OID 17116)
-- Name: oauth2_provider_grant oauth2_provider_grant_user_id_e8f62af8_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_user_id_e8f62af8_fk_core_indicouser_id FOREIGN KEY (user_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2596 (class 2606 OID 17121)
-- Name: oauth2_provider_refreshtoken oauth2_provider_refresht_user_id_da837fce_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refresht_user_id_da837fce_fk_core_indicouser_id FOREIGN KEY (user_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2597 (class 2606 OID 17126)
-- Name: oauth2_provider_refreshtoken oauth_application_id_2d1c311b_fk_oauth2_provider_application_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth_application_id_2d1c311b_fk_oauth2_provider_application_id FOREIGN KEY (application_id) REFERENCES oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2594 (class 2606 OID 17131)
-- Name: oauth2_provider_grant oauth_application_id_81923564_fk_oauth2_provider_application_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauth2_provider_grant
    ADD CONSTRAINT oauth_application_id_81923564_fk_oauth2_provider_application_id FOREIGN KEY (application_id) REFERENCES oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2591 (class 2606 OID 17136)
-- Name: oauth2_provider_accesstoken oauth_application_id_b22886e1_fk_oauth2_provider_application_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauth2_provider_accesstoken
    ADD CONSTRAINT oauth_application_id_b22886e1_fk_oauth2_provider_application_id FOREIGN KEY (application_id) REFERENCES oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2598 (class 2606 OID 17141)
-- Name: social_auth_usersocialauth social_auth_usersocialau_user_id_17d28448_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialau_user_id_17d28448_fk_core_indicouser_id FOREIGN KEY (user_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2017-04-19 17:19:53

--
-- PostgreSQL database dump complete
--

