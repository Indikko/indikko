--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.5
-- Dumped by pg_dump version 9.6.1

-- Started on 2017-04-19 17:20:46

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 13249)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3669 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 188 (class 1259 OID 1297025)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO tbzewllzbqfmem;

--
-- TOC entry 187 (class 1259 OID 1297023)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3670 (class 0 OID 0)
-- Dependencies: 187
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 190 (class 1259 OID 1297035)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO tbzewllzbqfmem;

--
-- TOC entry 189 (class 1259 OID 1297033)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3671 (class 0 OID 0)
-- Dependencies: 189
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- TOC entry 186 (class 1259 OID 1297017)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO tbzewllzbqfmem;

--
-- TOC entry 185 (class 1259 OID 1297015)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3672 (class 0 OID 0)
-- Dependencies: 185
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- TOC entry 194 (class 1259 OID 1297079)
-- Name: core_clickstoshowmore; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_clickstoshowmore (
    id integer NOT NULL,
    clicked timestamp with time zone NOT NULL,
    hirer_id integer NOT NULL,
    worker_id integer NOT NULL
);


ALTER TABLE core_clickstoshowmore OWNER TO tbzewllzbqfmem;

--
-- TOC entry 193 (class 1259 OID 1297077)
-- Name: core_clickstoshowmore_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_clickstoshowmore_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_clickstoshowmore_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3673 (class 0 OID 0)
-- Dependencies: 193
-- Name: core_clickstoshowmore_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_clickstoshowmore_id_seq OWNED BY core_clickstoshowmore.id;


--
-- TOC entry 196 (class 1259 OID 1297087)
-- Name: core_endorsment; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_endorsment (
    id integer NOT NULL,
    hirer_id integer NOT NULL,
    worker_id integer NOT NULL
);


ALTER TABLE core_endorsment OWNER TO tbzewllzbqfmem;

--
-- TOC entry 195 (class 1259 OID 1297085)
-- Name: core_endorsment_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_endorsment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_endorsment_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3674 (class 0 OID 0)
-- Dependencies: 195
-- Name: core_endorsment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_endorsment_id_seq OWNED BY core_endorsment.id;


--
-- TOC entry 198 (class 1259 OID 1297095)
-- Name: core_evaluationparameter; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_evaluationparameter (
    id integer NOT NULL,
    description character varying(30) NOT NULL,
    value integer NOT NULL,
    service_id integer NOT NULL
);


ALTER TABLE core_evaluationparameter OWNER TO tbzewllzbqfmem;

--
-- TOC entry 197 (class 1259 OID 1297093)
-- Name: core_evaluationparameter_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_evaluationparameter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_evaluationparameter_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3675 (class 0 OID 0)
-- Dependencies: 197
-- Name: core_evaluationparameter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_evaluationparameter_id_seq OWNED BY core_evaluationparameter.id;


--
-- TOC entry 200 (class 1259 OID 1297103)
-- Name: core_evaluationtemplate; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_evaluationtemplate (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    category_id integer
);


ALTER TABLE core_evaluationtemplate OWNER TO tbzewllzbqfmem;

--
-- TOC entry 199 (class 1259 OID 1297101)
-- Name: core_evaluationtemplate_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_evaluationtemplate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_evaluationtemplate_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3676 (class 0 OID 0)
-- Dependencies: 199
-- Name: core_evaluationtemplate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_evaluationtemplate_id_seq OWNED BY core_evaluationtemplate.id;


--
-- TOC entry 202 (class 1259 OID 1297113)
-- Name: core_evaluationtemplateitem; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_evaluationtemplateitem (
    id integer NOT NULL,
    description character varying(30) NOT NULL,
    min_value integer NOT NULL,
    max_value integer NOT NULL,
    evaluation_template_id integer NOT NULL
);


ALTER TABLE core_evaluationtemplateitem OWNER TO tbzewllzbqfmem;

--
-- TOC entry 201 (class 1259 OID 1297111)
-- Name: core_evaluationtemplateitem_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_evaluationtemplateitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_evaluationtemplateitem_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3677 (class 0 OID 0)
-- Dependencies: 201
-- Name: core_evaluationtemplateitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_evaluationtemplateitem_id_seq OWNED BY core_evaluationtemplateitem.id;


--
-- TOC entry 204 (class 1259 OID 1297121)
-- Name: core_groupservicecategory; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_groupservicecategory (
    id integer NOT NULL,
    description character varying(255) NOT NULL
);


ALTER TABLE core_groupservicecategory OWNER TO tbzewllzbqfmem;

--
-- TOC entry 203 (class 1259 OID 1297119)
-- Name: core_groupservicecategory_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_groupservicecategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_groupservicecategory_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3678 (class 0 OID 0)
-- Dependencies: 203
-- Name: core_groupservicecategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_groupservicecategory_id_seq OWNED BY core_groupservicecategory.id;


--
-- TOC entry 192 (class 1259 OID 1297066)
-- Name: core_indicouser; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
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
    place_to_work character varying(200),
    week_availability text
);


ALTER TABLE core_indicouser OWNER TO tbzewllzbqfmem;

--
-- TOC entry 238 (class 1259 OID 1297267)
-- Name: core_indicouser_categories; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_indicouser_categories (
    id integer NOT NULL,
    indicouser_id integer NOT NULL,
    servicecategory_id integer NOT NULL
);


ALTER TABLE core_indicouser_categories OWNER TO tbzewllzbqfmem;

--
-- TOC entry 237 (class 1259 OID 1297265)
-- Name: core_indicouser_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_indicouser_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_indicouser_categories_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3679 (class 0 OID 0)
-- Dependencies: 237
-- Name: core_indicouser_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_indicouser_categories_id_seq OWNED BY core_indicouser_categories.id;


--
-- TOC entry 240 (class 1259 OID 1297277)
-- Name: core_indicouser_groups; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_indicouser_groups (
    id integer NOT NULL,
    indicouser_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE core_indicouser_groups OWNER TO tbzewllzbqfmem;

--
-- TOC entry 239 (class 1259 OID 1297275)
-- Name: core_indicouser_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_indicouser_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_indicouser_groups_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3680 (class 0 OID 0)
-- Dependencies: 239
-- Name: core_indicouser_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_indicouser_groups_id_seq OWNED BY core_indicouser_groups.id;


--
-- TOC entry 191 (class 1259 OID 1297064)
-- Name: core_indicouser_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_indicouser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_indicouser_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3681 (class 0 OID 0)
-- Dependencies: 191
-- Name: core_indicouser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_indicouser_id_seq OWNED BY core_indicouser.id;


--
-- TOC entry 242 (class 1259 OID 1297285)
-- Name: core_indicouser_skills; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_indicouser_skills (
    id integer NOT NULL,
    indicouser_id integer NOT NULL,
    skill_id integer NOT NULL
);


ALTER TABLE core_indicouser_skills OWNER TO tbzewllzbqfmem;

--
-- TOC entry 241 (class 1259 OID 1297283)
-- Name: core_indicouser_skills_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_indicouser_skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_indicouser_skills_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3682 (class 0 OID 0)
-- Dependencies: 241
-- Name: core_indicouser_skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_indicouser_skills_id_seq OWNED BY core_indicouser_skills.id;


--
-- TOC entry 244 (class 1259 OID 1297293)
-- Name: core_indicouser_user_permissions; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_indicouser_user_permissions (
    id integer NOT NULL,
    indicouser_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE core_indicouser_user_permissions OWNER TO tbzewllzbqfmem;

--
-- TOC entry 243 (class 1259 OID 1297291)
-- Name: core_indicouser_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_indicouser_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_indicouser_user_permissions_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3683 (class 0 OID 0)
-- Dependencies: 243
-- Name: core_indicouser_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_indicouser_user_permissions_id_seq OWNED BY core_indicouser_user_permissions.id;


--
-- TOC entry 270 (class 1259 OID 5319342)
-- Name: core_indicouser_workzones_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_indicouser_workzones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_indicouser_workzones_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 269 (class 1259 OID 5319327)
-- Name: core_indicouser_work_zones; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_indicouser_work_zones (
    id integer DEFAULT nextval('core_indicouser_workzones_id_seq'::regclass) NOT NULL,
    indicouser_id integer,
    workzone_id integer
);


ALTER TABLE core_indicouser_work_zones OWNER TO tbzewllzbqfmem;

--
-- TOC entry 206 (class 1259 OID 1297129)
-- Name: core_notification; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_notification (
    id integer NOT NULL,
    message character varying(255) NOT NULL,
    is_read boolean NOT NULL,
    level integer NOT NULL,
    to_id integer NOT NULL
);


ALTER TABLE core_notification OWNER TO tbzewllzbqfmem;

--
-- TOC entry 205 (class 1259 OID 1297127)
-- Name: core_notification_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_notification_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3684 (class 0 OID 0)
-- Dependencies: 205
-- Name: core_notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_notification_id_seq OWNED BY core_notification.id;


--
-- TOC entry 267 (class 1259 OID 4897084)
-- Name: core_phonenumber_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_phonenumber_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_phonenumber_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 266 (class 1259 OID 4897068)
-- Name: core_phonenumber; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_phonenumber (
    id integer DEFAULT nextval('core_phonenumber_id_seq'::regclass) NOT NULL,
    number text,
    indico_user_id integer NOT NULL
);


ALTER TABLE core_phonenumber OWNER TO tbzewllzbqfmem;

--
-- TOC entry 208 (class 1259 OID 1297137)
-- Name: core_place; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
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


ALTER TABLE core_place OWNER TO tbzewllzbqfmem;

--
-- TOC entry 207 (class 1259 OID 1297135)
-- Name: core_place_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_place_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_place_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3685 (class 0 OID 0)
-- Dependencies: 207
-- Name: core_place_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_place_id_seq OWNED BY core_place.id;


--
-- TOC entry 210 (class 1259 OID 1297148)
-- Name: core_reference; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_reference (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    phone_number character varying(20) NOT NULL,
    subscription_id integer NOT NULL
);


ALTER TABLE core_reference OWNER TO tbzewllzbqfmem;

--
-- TOC entry 209 (class 1259 OID 1297146)
-- Name: core_reference_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_reference_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_reference_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3686 (class 0 OID 0)
-- Dependencies: 209
-- Name: core_reference_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_reference_id_seq OWNED BY core_reference.id;


--
-- TOC entry 212 (class 1259 OID 1297156)
-- Name: core_relationship; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_relationship (
    id integer NOT NULL,
    social_network integer NOT NULL,
    user_one_id integer NOT NULL
);


ALTER TABLE core_relationship OWNER TO tbzewllzbqfmem;

--
-- TOC entry 214 (class 1259 OID 1297164)
-- Name: core_relationship_friends; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_relationship_friends (
    id integer NOT NULL,
    relationship_id integer NOT NULL,
    indicouser_id integer NOT NULL
);


ALTER TABLE core_relationship_friends OWNER TO tbzewllzbqfmem;

--
-- TOC entry 213 (class 1259 OID 1297162)
-- Name: core_relationship_friends_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_relationship_friends_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_relationship_friends_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3687 (class 0 OID 0)
-- Dependencies: 213
-- Name: core_relationship_friends_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_relationship_friends_id_seq OWNED BY core_relationship_friends.id;


--
-- TOC entry 211 (class 1259 OID 1297154)
-- Name: core_relationship_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_relationship_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_relationship_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3688 (class 0 OID 0)
-- Dependencies: 211
-- Name: core_relationship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_relationship_id_seq OWNED BY core_relationship.id;


--
-- TOC entry 216 (class 1259 OID 1297172)
-- Name: core_servicecategory; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_servicecategory (
    id integer NOT NULL,
    description character varying(100) NOT NULL,
    image character varying(100),
    is_active boolean NOT NULL,
    group_id integer
);


ALTER TABLE core_servicecategory OWNER TO tbzewllzbqfmem;

--
-- TOC entry 215 (class 1259 OID 1297170)
-- Name: core_servicecategory_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_servicecategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_servicecategory_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3689 (class 0 OID 0)
-- Dependencies: 215
-- Name: core_servicecategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_servicecategory_id_seq OWNED BY core_servicecategory.id;


--
-- TOC entry 218 (class 1259 OID 1297180)
-- Name: core_servicediscount; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_servicediscount (
    id integer NOT NULL,
    discount_date date NOT NULL,
    price numeric(6,2) NOT NULL,
    service_provided_id integer NOT NULL
);


ALTER TABLE core_servicediscount OWNER TO tbzewllzbqfmem;

--
-- TOC entry 217 (class 1259 OID 1297178)
-- Name: core_servicediscount_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_servicediscount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_servicediscount_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3690 (class 0 OID 0)
-- Dependencies: 217
-- Name: core_servicediscount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_servicediscount_id_seq OWNED BY core_servicediscount.id;


--
-- TOC entry 220 (class 1259 OID 1297188)
-- Name: core_servicemessage; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
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


ALTER TABLE core_servicemessage OWNER TO tbzewllzbqfmem;

--
-- TOC entry 219 (class 1259 OID 1297186)
-- Name: core_servicemessage_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_servicemessage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_servicemessage_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3691 (class 0 OID 0)
-- Dependencies: 219
-- Name: core_servicemessage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_servicemessage_id_seq OWNED BY core_servicemessage.id;


--
-- TOC entry 222 (class 1259 OID 1297196)
-- Name: core_serviceprovided; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_serviceprovided (
    id integer NOT NULL,
    duration integer NOT NULL,
    price numeric(6,2) NOT NULL,
    service_type_id integer NOT NULL,
    worker_id integer NOT NULL,
    fixed_price boolean
);


ALTER TABLE core_serviceprovided OWNER TO tbzewllzbqfmem;

--
-- TOC entry 221 (class 1259 OID 1297194)
-- Name: core_serviceprovided_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_serviceprovided_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_serviceprovided_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3692 (class 0 OID 0)
-- Dependencies: 221
-- Name: core_serviceprovided_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_serviceprovided_id_seq OWNED BY core_serviceprovided.id;


--
-- TOC entry 224 (class 1259 OID 1297204)
-- Name: core_servicerequest; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
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
    service_provided_id integer
);


ALTER TABLE core_servicerequest OWNER TO tbzewllzbqfmem;

--
-- TOC entry 223 (class 1259 OID 1297202)
-- Name: core_servicerequest_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_servicerequest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_servicerequest_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3693 (class 0 OID 0)
-- Dependencies: 223
-- Name: core_servicerequest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_servicerequest_id_seq OWNED BY core_servicerequest.id;


--
-- TOC entry 226 (class 1259 OID 1297215)
-- Name: core_servicetype; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_servicetype (
    id integer NOT NULL,
    description character varying(255) NOT NULL,
    service_category_id integer NOT NULL
);


ALTER TABLE core_servicetype OWNER TO tbzewllzbqfmem;

--
-- TOC entry 225 (class 1259 OID 1297213)
-- Name: core_servicetype_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_servicetype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_servicetype_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3694 (class 0 OID 0)
-- Dependencies: 225
-- Name: core_servicetype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_servicetype_id_seq OWNED BY core_servicetype.id;


--
-- TOC entry 228 (class 1259 OID 1297223)
-- Name: core_skill; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_skill (
    id integer NOT NULL,
    description character varying(100) NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE core_skill OWNER TO tbzewllzbqfmem;

--
-- TOC entry 227 (class 1259 OID 1297221)
-- Name: core_skill_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_skill_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_skill_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3695 (class 0 OID 0)
-- Dependencies: 227
-- Name: core_skill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_skill_id_seq OWNED BY core_skill.id;


--
-- TOC entry 230 (class 1259 OID 1297231)
-- Name: core_subscription; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_subscription (
    id integer NOT NULL,
    candidate_id integer NOT NULL
);


ALTER TABLE core_subscription OWNER TO tbzewllzbqfmem;

--
-- TOC entry 229 (class 1259 OID 1297229)
-- Name: core_subscription_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_subscription_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3696 (class 0 OID 0)
-- Dependencies: 229
-- Name: core_subscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_subscription_id_seq OWNED BY core_subscription.id;


--
-- TOC entry 232 (class 1259 OID 1297241)
-- Name: core_userdocuments; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_userdocuments (
    id integer NOT NULL,
    person_id character varying(100),
    residence_proof character varying(100),
    cpf character varying(100)
);


ALTER TABLE core_userdocuments OWNER TO tbzewllzbqfmem;

--
-- TOC entry 231 (class 1259 OID 1297239)
-- Name: core_userdocuments_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_userdocuments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_userdocuments_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3697 (class 0 OID 0)
-- Dependencies: 231
-- Name: core_userdocuments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_userdocuments_id_seq OWNED BY core_userdocuments.id;


--
-- TOC entry 271 (class 1259 OID 5319344)
-- Name: core_work_zone_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_work_zone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_work_zone_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 234 (class 1259 OID 1297249)
-- Name: core_workerevaluation; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
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
    status character(1) DEFAULT 'P'::bpchar
);


ALTER TABLE core_workerevaluation OWNER TO tbzewllzbqfmem;

--
-- TOC entry 233 (class 1259 OID 1297247)
-- Name: core_workerevaluation_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_workerevaluation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_workerevaluation_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3698 (class 0 OID 0)
-- Dependencies: 233
-- Name: core_workerevaluation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_workerevaluation_id_seq OWNED BY core_workerevaluation.id;


--
-- TOC entry 236 (class 1259 OID 1297257)
-- Name: core_workerevaluationitem; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_workerevaluationitem (
    id integer NOT NULL,
    item integer NOT NULL,
    value integer NOT NULL,
    "workerEvaluation_id" integer NOT NULL
);


ALTER TABLE core_workerevaluationitem OWNER TO tbzewllzbqfmem;

--
-- TOC entry 235 (class 1259 OID 1297255)
-- Name: core_workerevaluationitem_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE core_workerevaluationitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_workerevaluationitem_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3699 (class 0 OID 0)
-- Dependencies: 235
-- Name: core_workerevaluationitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE core_workerevaluationitem_id_seq OWNED BY core_workerevaluationitem.id;


--
-- TOC entry 268 (class 1259 OID 5319316)
-- Name: core_workzone; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE core_workzone (
    id integer DEFAULT nextval('core_work_zone_id_seq'::regclass) NOT NULL,
    zone text,
    neighborhood text,
    state text,
    city text
);


ALTER TABLE core_workzone OWNER TO tbzewllzbqfmem;

--
-- TOC entry 246 (class 1259 OID 1297544)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
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


ALTER TABLE django_admin_log OWNER TO tbzewllzbqfmem;

--
-- TOC entry 245 (class 1259 OID 1297542)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3700 (class 0 OID 0)
-- Dependencies: 245
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- TOC entry 184 (class 1259 OID 1297007)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO tbzewllzbqfmem;

--
-- TOC entry 183 (class 1259 OID 1297005)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3701 (class 0 OID 0)
-- Dependencies: 183
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- TOC entry 182 (class 1259 OID 1296996)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO tbzewllzbqfmem;

--
-- TOC entry 181 (class 1259 OID 1296994)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3702 (class 0 OID 0)
-- Dependencies: 181
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- TOC entry 263 (class 1259 OID 1297750)
-- Name: django_session; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO tbzewllzbqfmem;

--
-- TOC entry 265 (class 1259 OID 1297762)
-- Name: django_site; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE django_site OWNER TO tbzewllzbqfmem;

--
-- TOC entry 264 (class 1259 OID 1297760)
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_site_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3703 (class 0 OID 0)
-- Dependencies: 264
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- TOC entry 258 (class 1259 OID 1297641)
-- Name: oauth2_provider_accesstoken; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE oauth2_provider_accesstoken (
    id integer NOT NULL,
    token character varying(255) NOT NULL,
    expires timestamp with time zone NOT NULL,
    scope text NOT NULL,
    application_id integer NOT NULL,
    user_id integer
);


ALTER TABLE oauth2_provider_accesstoken OWNER TO tbzewllzbqfmem;

--
-- TOC entry 257 (class 1259 OID 1297639)
-- Name: oauth2_provider_accesstoken_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE oauth2_provider_accesstoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE oauth2_provider_accesstoken_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3704 (class 0 OID 0)
-- Dependencies: 257
-- Name: oauth2_provider_accesstoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE oauth2_provider_accesstoken_id_seq OWNED BY oauth2_provider_accesstoken.id;


--
-- TOC entry 256 (class 1259 OID 1297628)
-- Name: oauth2_provider_application; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
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


ALTER TABLE oauth2_provider_application OWNER TO tbzewllzbqfmem;

--
-- TOC entry 255 (class 1259 OID 1297626)
-- Name: oauth2_provider_application_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE oauth2_provider_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE oauth2_provider_application_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3705 (class 0 OID 0)
-- Dependencies: 255
-- Name: oauth2_provider_application_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE oauth2_provider_application_id_seq OWNED BY oauth2_provider_application.id;


--
-- TOC entry 260 (class 1259 OID 1297652)
-- Name: oauth2_provider_grant; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
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


ALTER TABLE oauth2_provider_grant OWNER TO tbzewllzbqfmem;

--
-- TOC entry 259 (class 1259 OID 1297650)
-- Name: oauth2_provider_grant_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE oauth2_provider_grant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE oauth2_provider_grant_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3706 (class 0 OID 0)
-- Dependencies: 259
-- Name: oauth2_provider_grant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE oauth2_provider_grant_id_seq OWNED BY oauth2_provider_grant.id;


--
-- TOC entry 262 (class 1259 OID 1297663)
-- Name: oauth2_provider_refreshtoken; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE oauth2_provider_refreshtoken (
    id integer NOT NULL,
    token character varying(255) NOT NULL,
    access_token_id integer NOT NULL,
    application_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE oauth2_provider_refreshtoken OWNER TO tbzewllzbqfmem;

--
-- TOC entry 261 (class 1259 OID 1297661)
-- Name: oauth2_provider_refreshtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE oauth2_provider_refreshtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE oauth2_provider_refreshtoken_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3707 (class 0 OID 0)
-- Dependencies: 261
-- Name: oauth2_provider_refreshtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE oauth2_provider_refreshtoken_id_seq OWNED BY oauth2_provider_refreshtoken.id;


--
-- TOC entry 248 (class 1259 OID 1297569)
-- Name: social_auth_association; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
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


ALTER TABLE social_auth_association OWNER TO tbzewllzbqfmem;

--
-- TOC entry 247 (class 1259 OID 1297567)
-- Name: social_auth_association_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE social_auth_association_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE social_auth_association_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3708 (class 0 OID 0)
-- Dependencies: 247
-- Name: social_auth_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE social_auth_association_id_seq OWNED BY social_auth_association.id;


--
-- TOC entry 250 (class 1259 OID 1297580)
-- Name: social_auth_code; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE social_auth_code (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    code character varying(32) NOT NULL,
    verified boolean NOT NULL
);


ALTER TABLE social_auth_code OWNER TO tbzewllzbqfmem;

--
-- TOC entry 249 (class 1259 OID 1297578)
-- Name: social_auth_code_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE social_auth_code_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE social_auth_code_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3709 (class 0 OID 0)
-- Dependencies: 249
-- Name: social_auth_code_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE social_auth_code_id_seq OWNED BY social_auth_code.id;


--
-- TOC entry 252 (class 1259 OID 1297588)
-- Name: social_auth_nonce; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE social_auth_nonce (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    "timestamp" integer NOT NULL,
    salt character varying(65) NOT NULL
);


ALTER TABLE social_auth_nonce OWNER TO tbzewllzbqfmem;

--
-- TOC entry 251 (class 1259 OID 1297586)
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE social_auth_nonce_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE social_auth_nonce_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3710 (class 0 OID 0)
-- Dependencies: 251
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE social_auth_nonce_id_seq OWNED BY social_auth_nonce.id;


--
-- TOC entry 254 (class 1259 OID 1297596)
-- Name: social_auth_usersocialauth; Type: TABLE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE TABLE social_auth_usersocialauth (
    id integer NOT NULL,
    provider character varying(32) NOT NULL,
    uid character varying(255) NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE social_auth_usersocialauth OWNER TO tbzewllzbqfmem;

--
-- TOC entry 253 (class 1259 OID 1297594)
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE; Schema: public; Owner: tbzewllzbqfmem
--

CREATE SEQUENCE social_auth_usersocialauth_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE social_auth_usersocialauth_id_seq OWNER TO tbzewllzbqfmem;

--
-- TOC entry 3711 (class 0 OID 0)
-- Dependencies: 253
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tbzewllzbqfmem
--

ALTER SEQUENCE social_auth_usersocialauth_id_seq OWNED BY social_auth_usersocialauth.id;


--
-- TOC entry 3157 (class 2604 OID 1297028)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- TOC entry 3158 (class 2604 OID 1297038)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3156 (class 2604 OID 1297020)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- TOC entry 3160 (class 2604 OID 1297082)
-- Name: core_clickstoshowmore id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_clickstoshowmore ALTER COLUMN id SET DEFAULT nextval('core_clickstoshowmore_id_seq'::regclass);


--
-- TOC entry 3161 (class 2604 OID 1297090)
-- Name: core_endorsment id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_endorsment ALTER COLUMN id SET DEFAULT nextval('core_endorsment_id_seq'::regclass);


--
-- TOC entry 3162 (class 2604 OID 1297098)
-- Name: core_evaluationparameter id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_evaluationparameter ALTER COLUMN id SET DEFAULT nextval('core_evaluationparameter_id_seq'::regclass);


--
-- TOC entry 3163 (class 2604 OID 1297106)
-- Name: core_evaluationtemplate id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_evaluationtemplate ALTER COLUMN id SET DEFAULT nextval('core_evaluationtemplate_id_seq'::regclass);


--
-- TOC entry 3164 (class 2604 OID 1297116)
-- Name: core_evaluationtemplateitem id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_evaluationtemplateitem ALTER COLUMN id SET DEFAULT nextval('core_evaluationtemplateitem_id_seq'::regclass);


--
-- TOC entry 3165 (class 2604 OID 1297124)
-- Name: core_groupservicecategory id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_groupservicecategory ALTER COLUMN id SET DEFAULT nextval('core_groupservicecategory_id_seq'::regclass);


--
-- TOC entry 3159 (class 2604 OID 1297069)
-- Name: core_indicouser id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser ALTER COLUMN id SET DEFAULT nextval('core_indicouser_id_seq'::regclass);


--
-- TOC entry 3183 (class 2604 OID 1297270)
-- Name: core_indicouser_categories id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_categories ALTER COLUMN id SET DEFAULT nextval('core_indicouser_categories_id_seq'::regclass);


--
-- TOC entry 3184 (class 2604 OID 1297280)
-- Name: core_indicouser_groups id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_groups ALTER COLUMN id SET DEFAULT nextval('core_indicouser_groups_id_seq'::regclass);


--
-- TOC entry 3185 (class 2604 OID 1297288)
-- Name: core_indicouser_skills id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_skills ALTER COLUMN id SET DEFAULT nextval('core_indicouser_skills_id_seq'::regclass);


--
-- TOC entry 3186 (class 2604 OID 1297296)
-- Name: core_indicouser_user_permissions id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_user_permissions ALTER COLUMN id SET DEFAULT nextval('core_indicouser_user_permissions_id_seq'::regclass);


--
-- TOC entry 3166 (class 2604 OID 1297132)
-- Name: core_notification id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_notification ALTER COLUMN id SET DEFAULT nextval('core_notification_id_seq'::regclass);


--
-- TOC entry 3167 (class 2604 OID 1297140)
-- Name: core_place id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_place ALTER COLUMN id SET DEFAULT nextval('core_place_id_seq'::regclass);


--
-- TOC entry 3168 (class 2604 OID 1297151)
-- Name: core_reference id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_reference ALTER COLUMN id SET DEFAULT nextval('core_reference_id_seq'::regclass);


--
-- TOC entry 3169 (class 2604 OID 1297159)
-- Name: core_relationship id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_relationship ALTER COLUMN id SET DEFAULT nextval('core_relationship_id_seq'::regclass);


--
-- TOC entry 3170 (class 2604 OID 1297167)
-- Name: core_relationship_friends id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_relationship_friends ALTER COLUMN id SET DEFAULT nextval('core_relationship_friends_id_seq'::regclass);


--
-- TOC entry 3171 (class 2604 OID 1297175)
-- Name: core_servicecategory id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicecategory ALTER COLUMN id SET DEFAULT nextval('core_servicecategory_id_seq'::regclass);


--
-- TOC entry 3172 (class 2604 OID 1297183)
-- Name: core_servicediscount id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicediscount ALTER COLUMN id SET DEFAULT nextval('core_servicediscount_id_seq'::regclass);


--
-- TOC entry 3173 (class 2604 OID 1297191)
-- Name: core_servicemessage id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicemessage ALTER COLUMN id SET DEFAULT nextval('core_servicemessage_id_seq'::regclass);


--
-- TOC entry 3174 (class 2604 OID 1297199)
-- Name: core_serviceprovided id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_serviceprovided ALTER COLUMN id SET DEFAULT nextval('core_serviceprovided_id_seq'::regclass);


--
-- TOC entry 3175 (class 2604 OID 1297207)
-- Name: core_servicerequest id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicerequest ALTER COLUMN id SET DEFAULT nextval('core_servicerequest_id_seq'::regclass);


--
-- TOC entry 3176 (class 2604 OID 1297218)
-- Name: core_servicetype id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicetype ALTER COLUMN id SET DEFAULT nextval('core_servicetype_id_seq'::regclass);


--
-- TOC entry 3177 (class 2604 OID 1297226)
-- Name: core_skill id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_skill ALTER COLUMN id SET DEFAULT nextval('core_skill_id_seq'::regclass);


--
-- TOC entry 3178 (class 2604 OID 1297234)
-- Name: core_subscription id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_subscription ALTER COLUMN id SET DEFAULT nextval('core_subscription_id_seq'::regclass);


--
-- TOC entry 3179 (class 2604 OID 1297244)
-- Name: core_userdocuments id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_userdocuments ALTER COLUMN id SET DEFAULT nextval('core_userdocuments_id_seq'::regclass);


--
-- TOC entry 3180 (class 2604 OID 1297252)
-- Name: core_workerevaluation id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_workerevaluation ALTER COLUMN id SET DEFAULT nextval('core_workerevaluation_id_seq'::regclass);


--
-- TOC entry 3182 (class 2604 OID 1297260)
-- Name: core_workerevaluationitem id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_workerevaluationitem ALTER COLUMN id SET DEFAULT nextval('core_workerevaluationitem_id_seq'::regclass);


--
-- TOC entry 3187 (class 2604 OID 1297547)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- TOC entry 3155 (class 2604 OID 1297010)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- TOC entry 3154 (class 2604 OID 1296999)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- TOC entry 3197 (class 2604 OID 1297765)
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- TOC entry 3194 (class 2604 OID 1297644)
-- Name: oauth2_provider_accesstoken id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY oauth2_provider_accesstoken ALTER COLUMN id SET DEFAULT nextval('oauth2_provider_accesstoken_id_seq'::regclass);


--
-- TOC entry 3193 (class 2604 OID 1297631)
-- Name: oauth2_provider_application id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY oauth2_provider_application ALTER COLUMN id SET DEFAULT nextval('oauth2_provider_application_id_seq'::regclass);


--
-- TOC entry 3195 (class 2604 OID 1297655)
-- Name: oauth2_provider_grant id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY oauth2_provider_grant ALTER COLUMN id SET DEFAULT nextval('oauth2_provider_grant_id_seq'::regclass);


--
-- TOC entry 3196 (class 2604 OID 1297666)
-- Name: oauth2_provider_refreshtoken id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY oauth2_provider_refreshtoken ALTER COLUMN id SET DEFAULT nextval('oauth2_provider_refreshtoken_id_seq'::regclass);


--
-- TOC entry 3189 (class 2604 OID 1297572)
-- Name: social_auth_association id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY social_auth_association ALTER COLUMN id SET DEFAULT nextval('social_auth_association_id_seq'::regclass);


--
-- TOC entry 3190 (class 2604 OID 1297583)
-- Name: social_auth_code id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY social_auth_code ALTER COLUMN id SET DEFAULT nextval('social_auth_code_id_seq'::regclass);


--
-- TOC entry 3191 (class 2604 OID 1297591)
-- Name: social_auth_nonce id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY social_auth_nonce ALTER COLUMN id SET DEFAULT nextval('social_auth_nonce_id_seq'::regclass);


--
-- TOC entry 3192 (class 2604 OID 1297599)
-- Name: social_auth_usersocialauth id; Type: DEFAULT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY social_auth_usersocialauth ALTER COLUMN id SET DEFAULT nextval('social_auth_usersocialauth_id_seq'::regclass);


--
-- TOC entry 3580 (class 0 OID 1297025)
-- Dependencies: 188
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3712 (class 0 OID 0)
-- Dependencies: 187
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- TOC entry 3582 (class 0 OID 1297035)
-- Dependencies: 190
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3713 (class 0 OID 0)
-- Dependencies: 189
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3578 (class 0 OID 1297017)
-- Dependencies: 186
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
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
\.


--
-- TOC entry 3714 (class 0 OID 0)
-- Dependencies: 185
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('auth_permission_id_seq', 110, true);


--
-- TOC entry 3586 (class 0 OID 1297079)
-- Dependencies: 194
-- Data for Name: core_clickstoshowmore; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_clickstoshowmore (id, clicked, hirer_id, worker_id) FROM stdin;
1	2016-10-18 01:38:49.94474+00	39	322
2	2016-10-18 17:42:59.473173+00	5	322
3	2016-10-18 17:43:01.500582+00	5	322
13	2016-12-29 15:00:45.560961+00	357	338
21	2017-03-24 20:49:21.985287+00	375	375
22	2017-03-24 21:00:18.900988+00	375	375
23	2017-03-25 14:26:33.535252+00	78	375
24	2017-03-25 14:26:36.479498+00	78	375
28	2017-03-27 01:47:59.793582+00	375	375
29	2017-03-28 04:00:27.273967+00	397	322
30	2017-03-28 20:39:55.606313+00	375	400
31	2017-03-29 05:41:18.344892+00	397	322
32	2017-03-31 21:42:34.078261+00	78	420
33	2017-04-01 18:20:05.598842+00	416	416
34	2017-04-07 18:08:29.41211+00	397	400
35	2017-04-07 18:09:37.356544+00	78	400
36	2017-04-12 18:38:31.741813+00	404	404
\.


--
-- TOC entry 3715 (class 0 OID 0)
-- Dependencies: 193
-- Name: core_clickstoshowmore_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_clickstoshowmore_id_seq', 36, true);


--
-- TOC entry 3588 (class 0 OID 1297087)
-- Dependencies: 196
-- Data for Name: core_endorsment; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_endorsment (id, hirer_id, worker_id) FROM stdin;
\.


--
-- TOC entry 3716 (class 0 OID 0)
-- Dependencies: 195
-- Name: core_endorsment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_endorsment_id_seq', 4, true);


--
-- TOC entry 3590 (class 0 OID 1297095)
-- Dependencies: 198
-- Data for Name: core_evaluationparameter; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_evaluationparameter (id, description, value, service_id) FROM stdin;
\.


--
-- TOC entry 3717 (class 0 OID 0)
-- Dependencies: 197
-- Name: core_evaluationparameter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_evaluationparameter_id_seq', 1, false);


--
-- TOC entry 3592 (class 0 OID 1297103)
-- Dependencies: 200
-- Data for Name: core_evaluationtemplate; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_evaluationtemplate (id, name, created, updated, category_id) FROM stdin;
3	Diarista 2	2016-06-28 19:05:56.583288+00	2016-06-28 19:12:51.621772+00	\N
5	Limpador de Ar Condicionado e Fancoil	2016-06-28 20:21:38.588051+00	2016-06-28 20:47:05.406158+00	35
9	Faz-tudo	2016-06-30 13:00:57.473244+00	2016-06-30 13:00:57.473305+00	62
10	DiaristaTeste	2016-06-30 18:21:31.945245+00	2016-06-30 18:22:19.01722+00	\N
12	Maquiador	2016-07-18 15:33:45.010651+00	2016-07-18 15:33:45.010715+00	22
13	Manicure	2016-07-18 17:39:34.823164+00	2016-07-18 17:39:34.823228+00	23
15	Sobrancelha	2016-07-23 21:15:06.130419+00	2016-07-23 21:15:06.130457+00	25
11	Cabeleireiro	2016-07-02 16:11:48.323018+00	2017-01-27 16:36:02.73614+00	21
\.


--
-- TOC entry 3718 (class 0 OID 0)
-- Dependencies: 199
-- Name: core_evaluationtemplate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_evaluationtemplate_id_seq', 19, true);


--
-- TOC entry 3594 (class 0 OID 1297113)
-- Dependencies: 202
-- Data for Name: core_evaluationtemplateitem; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_evaluationtemplateitem (id, description, min_value, max_value, evaluation_template_id) FROM stdin;
4	Salas	0	10	3
5	Cozinha	0	10	3
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
63	Design	0	1	15
64	Definitiva fio a fio	0	1	15
95	Pessoas a ser atendidas	1	50	11
\.


--
-- TOC entry 3719 (class 0 OID 0)
-- Dependencies: 201
-- Name: core_evaluationtemplateitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_evaluationtemplateitem_id_seq', 95, true);


--
-- TOC entry 3596 (class 0 OID 1297121)
-- Dependencies: 204
-- Data for Name: core_groupservicecategory; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_groupservicecategory (id, description) FROM stdin;
\.


--
-- TOC entry 3720 (class 0 OID 0)
-- Dependencies: 203
-- Name: core_groupservicecategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_groupservicecategory_id_seq', 1, false);


--
-- TOC entry 3584 (class 0 OID 1297066)
-- Dependencies: 192
-- Data for Name: core_indicouser; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_indicouser (id, password, last_login, is_superuser, email, date_joined, is_staff, is_active, is_admin, attendance_in_domicile, first_name, last_name, date_of_birth, profile_picture, photo, facebook_id, account_type, account_state, is_terms_accepted, resume, rate, endorsements, phone_number, price, is_application_form_filled, documents_id, costumer_service, place_to_work, week_availability) FROM stdin;
460	pbkdf2_sha256$24000$io1Kue91IVsv$o7+krBw2EokhiRJAvDfloA4pvIDd72ZI2pWxXM/hM1w=	2017-04-11 10:50:23.035335+00	f	yanbrandaotest	2017-04-11 09:52:13.68654+00	f	t	f	t	Yan	Tester	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f		
338	pbkdf2_sha256$24000$eJvFR7onVZZq$BKYnv3gX9K4dEBsRhrldcgiYDLknQeal63TeKuVudts=	2016-11-23 19:17:40+00	f	davicmonteiro29@gmail.com	2016-11-23 19:17:40+00	f	t	f	t	Davi	Monteiro	\N			\N	1	2	t	Corto cabelo.	2.60000000000000009	0	92999994444	0.00	t	3	f	\N	\N
387	pbkdf2_sha256$24000$EqVGoWMbePsz$wtRTWvGq2UqII+04IzPIMMlr2gjLkBgtTeG0n5Iu+Qw=	2017-03-29 11:48:06.37487+00	f	marcelalago@gmail.com	2017-03-18 11:37:26.984067+00	f	t	f	t	Marcela	Lago	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
402	pbkdf2_sha256$24000$p7T9Cy8Rl9bC$P8M5qYgnLBFyymp+BrsaJlmhRgDb3WYUWqQY/Luqp4Y=	2017-03-28 20:45:38+00	f	dc3388267@gmail.com	2017-03-28 20:45:38+00	f	t	f	f	Diego	Correa	\N			\N	1	2	f		0	0		0.00	f	\N	t	\N	\N
375	pbkdf2_sha256$24000$MhRbEYiamsPK$9oALek/zGU7OASkEywGn1RJokXRxeXJ93ZrKX3HuSHw=	2017-04-18 18:32:40.886167+00	t	ybrandao.d@gmail.com	2017-01-27 06:46:57+00	t	t	f	t	Yan	B. Diniz	\N	https://graph.facebook.com/1479094422103038/picture	profile/2017/04/08/img-Yan.jpg	\N	2	2	t	Ofereço cortes de cabelo para ambos os sexos, 4 anos de experiência no mercado, tecnólogo em Estética e Cosmética (2013-2016), conhecimentos em Terapias Capilares, Estética Corporal, Estética Facial.	0	0	9898981323	0.00	t	\N	t		\N
423	pbkdf2_sha256$24000$fg8gAjBbKxRG$PkUeikhR416xfkHX8lLLjBZZ7sOykCAUldxRpR7xc/0=	2017-03-31 21:55:56.209158+00	f	aureasampaio97@gmail.com	2017-03-31 21:52:02+00	f	t	f	f	Áurea de Fátima	Sampaio	\N			\N	2	2	f		0	0		0.00	f	\N	t	\N	\N
426	pbkdf2_sha256$24000$wTObptjpTKLg$27QLIdXCjA7At9UGFOdSLfbYEfE/CZsXPOB4OeYNnLg=	2017-03-31 22:23:48.769773+00	f	ivalopes	2017-03-31 22:22:25+00	f	t	f	f	Renée	Pantoja	\N	https://graph.facebook.com/10202587635889935/picture	profile/2017/04/01/profile_426.jpg	\N	1	2	f		0	0		0.00	f	\N	t	\N	\N
427	!KGU1eqb9wsBwLOYSYJE9miQVRWdNUVOTBzBydDY1	2017-03-31 22:38:24+00	f	BrunoMacedo	2017-03-31 22:37:53+00	f	t	f	t	Bruno	Macedo	\N	https://graph.facebook.com/199236873905864/picture	profile/2017/03/31/profile_427.jpg	\N	1	0	f		0	0		0.00	f	\N	f	\N	\N
388	pbkdf2_sha256$24000$so1sGN6uZgYP$Jru3Z/6Cgrno75Wqey2O9fv4/ctmga8cY6x3+HE/vjw=	2017-03-23 01:46:54.965367+00	f	abg@icomp.ufam.edu.br	2017-03-23 01:46:54.8684+00	f	t	f	t	Alan	Gil	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
441	pbkdf2_sha256$24000$RmASG5WTsmsN$1JaApyexlqowDtxqIWrdw/UsWlb2BxLgDspaisYAyHM=	2017-04-17 22:30:43.316538+00	f	hanna.campos11@gmail.com	2017-04-06 14:38:33+00	f	t	f	t	Hanna	Campos	\N		profile/2017/04/08/logo.jpg	\N	2	2	f		0	0		0.00	f	\N	f		||||||||||7:00 AM|11:30 PM|2:00 PM|9:00 PM
403	pbkdf2_sha256$24000$2qJBn6V0mW1V$YcITVtbcrdaXTD0W1H4C8wE43VX9q5Ie4iRJ431HZkk=	2017-03-28 22:28:30+00	f	jehbentes@gmail.com	2017-03-28 22:20:22+00	f	t	f	t	Jessica	Bentes	\N		profile/2017/03/28/20170309_231851.jpg	\N	2	2	f		0	0		0.00	f	\N	f	\N	\N
424	pbkdf2_sha256$24000$YqlqkrR8VmwV$Nf//62dJahdp9iCWANOK6eNYGPB2qSIj6A6ymDnHEpc=	2017-03-31 22:04:50.823317+00	f	dircilane@outlook.com	2017-03-31 22:03:41+00	f	t	f	f	Dircilane	Figueiredo	\N			\N	2	2	f		0	0		0.00	f	\N	t	\N	\N
428	!KmYoLXSELHR7LkDCDjel74XAZcUGKriZ7UZTMKM6	2017-03-31 22:40:10+00	f	ArinetePaiva	2017-03-31 22:40:10+00	f	t	f	f	Arinete	Paiva	\N	https://graph.facebook.com/1164387867020151/picture	profile/2017/03/31/profile_428.jpg	\N	2	2	f		0	0		0.00	f	\N	t	\N	\N
425	!dQgcPAkNfUsQyhZs13slgeZ0jNB6br9V0xbGdDS6	2017-03-31 22:14:27+00	f	ElieneLopes	2017-03-31 22:14:26+00	f	t	f	f	Eliene	Lopes	\N	https://graph.facebook.com/408200776224634/picture	profile/2017/03/31/profile_425.jpg	\N	2	2	f		0	0		0.00	f	\N	t	\N	\N
442	!gBctEEjLucGFgoWQLcOfRXzPn4UUH70Xv4y3RieA	2017-04-06 16:10:37+00	f	thejubsmg@hotmail.com	2017-04-06 16:10:37+00	f	t	f	t	Juliana	Gomes	\N	https://graph.facebook.com/10206619239558637/picture	profile/2017/04/06/galaxy.jpg	\N	2	2	f		0	0		0.00	f	\N	f	\N	\N
462	pbkdf2_sha256$24000$3aMGTSXBuJzq$J56ZsSuZFjvZScMnkZh3106lVu6AXW2xZYGYUrVs6QU=	2017-04-11 23:26:03.616422+00	f	novosalao	2017-04-11 23:26:03.540554+00	f	t	f	t	Novo	Salão	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f		
404	pbkdf2_sha256$24000$5eYha60ttix6$jUwVW6ikEADgj23CzHuVrx+3A03hh6BgblTzpXOiqnI=	2017-04-12 18:36:55.079075+00	f	stephanyrengifo@hotmail.com.br	2017-03-29 14:56:12+00	f	t	f	t	Stefannie	Rengifo	\N		profile/2017/04/12/image.jpeg	\N	2	2	t		0	0	92981006194	0.00	t	47	f	\N	\N
78	pbkdf2_sha256$24000$n5kSEypE2g6z$+rKuEErplyZ+BFYw+SnrjMCXuskux7DX2/SNPFuA2Us=	2017-04-13 01:01:42.970941+00	t	master@indicoapp.com.br	2016-06-28 09:33:41+00	t	t	f	t	Davi	Monteiro	\N	https://graph.facebook.com/1144082712308478/picture	profile/2017/04/18/profile_78.jpg	\N	1	0	t		0	0	92982652715	100.00	t	14	f	\N	\N
15	!sqaF7wshuifN41fDNwbQuDmaQ1j7y1dQD9EJ8wVW	2016-06-15 17:02:38.589888+00	f	georjeanne@hotmail.com	2016-06-15 17:02:38.368867+00	f	t	f	t	Georjeanne	De Gussem	\N	https://graph.facebook.com/1097288133650243/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
95	!1EefRd5MgvVNla6IZAv1ji4q4B2GyRrvBs1BVmIb	2016-06-28 23:38:43.072086+00	f	barbaranogueira@gmail.com	2016-06-28 23:38:42.266273+00	f	t	f	t	Bárbara	Nogueira	\N	https://graph.facebook.com/1113688825369392/picture	profile/2016/06/28/profile_95.jpg	\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
192	pbkdf2_sha256$24000$rT10ks07G3pX$pGLodJCMv/P7BpS7OxWvYxepTKrYPngjr78w+TkhV8o=	2016-07-02 23:45:39.780843+00	f	biotecsaudeambiental@bol.com.br	2016-07-02 23:45:39.493114+00	f	t	f	t	Suelen	Garrido	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
195	pbkdf2_sha256$24000$kiKOVXzf6gRS$botS2VORjZDW2FlPzy6X4iWSfedNKsKWVd4Bx6gArFI=	2016-07-10 19:11:27.008019+00	f	frank.souza@yahoo.com.br	2016-07-10 19:11:26.224871+00	f	t	f	t	Frank	Souza	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
19	pbkdf2_sha256$24000$Pchzvo5wJM3I$SJYUI4Jrse5rKsPJSZLMht7LNOMR4FAshFFw/3YZ0qk=	2016-06-15 21:25:41+00	f	tatazinha_deedee@hotmail.com	2016-06-15 21:25:40+00	f	t	f	t	Taianna	Castro	\N			\N	1	0	f		0	0		\N	f	\N	f	\N	\N
40	!KQtf0yXKxdJgqEl3VuPpHvBh8RZGrlsAOXRFSNm7	2016-06-21 14:59:15.255599+00	f	erick.sarkis@hotmail.com	2016-06-21 14:59:15.058573+00	f	t	f	t	Erick	Sarkis	\N	https://graph.facebook.com/1182406601823727/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
24	pbkdf2_sha256$24000$7aQglh7k6fmW$pRPhe/NApBaIgYXZ4m79t08Tcys9CMU6bJOOSumokBE=	2016-06-16 03:41:01.33708+00	f	judith@local.com	2016-06-16 03:41:01.220885+00	f	t	f	t	judith	frazão	\N			\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
29	pbkdf2_sha256$24000$iUKvaJKarWg3$fEQoenfRC44i8Q8hFeRI/TkU0uFZbEObVLFAMVuXNjY=	2016-06-19 18:57:44.788958+00	f	sidiaambrosio@yahoo.com.br	2016-06-19 18:57:44.436828+00	f	t	f	t	Sídia	Ambrosio	\N			\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
26	!YIV8zQUbfs7t1rvDVqBH4ImdZaRaH6tFgqbg9o1R	2016-06-17 23:11:32.277034+00	f	teeago@hotmail.com	2016-06-17 23:11:32.058333+00	f	t	f	t	Tiago	Oliveira Lopes	\N	https://graph.facebook.com/10153708797851239/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
106	pbkdf2_sha256$24000$BkhYBb9kifw6$sx7459hOZFj80q1XlisjN0/Z83/EPyVv1UcRrw24PwQ=	2016-06-29 14:19:21.234005+00	f	raphaelmb_adv@hotmail.com	2016-06-29 14:19:20.520136+00	f	t	f	t	Raphael	Martins	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
198	!zkvVPyDLzOIQAmVdV9i1muWl5t1ylrHu0KtJPdYl	2016-07-13 18:23:17.714278+00	f	jammesfotografia@gmail.com	2016-07-13 12:54:51.541012+00	f	t	f	t	Jammes	Aguiar	\N	https://graph.facebook.com/829165733883942/picture	profile/2016/07/13/profile_198.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
53	!AE2V1aWooKfljwlJSfBH7FUciJ9Lsxs8SqjadYyL	2016-06-23 10:49:56.314315+00	f	gutemberg21@hotmail.com	2016-06-23 10:49:56.06818+00	f	t	f	t	Heitor	Augusto	\N	https://graph.facebook.com/10204756253385426/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
41	pbkdf2_sha256$24000$wc50LqJGuF3k$+qpMlTrt4nRlxebAJ/wUfMy67yAjqySx9rp51xtqixU=	2016-06-21 23:42:58.163102+00	f	devaninha@hotmail.com	2016-06-21 23:42:57.900971+00	f	t	f	t	Devane	Batista Costa	\N			\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
168	pbkdf2_sha256$24000$6W472PCNNRVe$AbnZhiWyyBlVpJRNHbeHpC6DTHnIpfJ/pDYnQgfx+K8=	2016-06-30 16:34:08.382019+00	f	trabalhador2@indicoapp.com	2016-06-30 16:34:07.223814+00	f	t	f	t	Trabalhador	Dois	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
51	!tqTF8PHDqNvtmSzLWKCYpWyeuwc7lHvezv56ETdS	2016-06-23 08:17:00.056845+00	f	mi_saray@hotmail.com	2016-06-23 08:16:59.894277+00	f	t	f	t	Michele	Bonfim	\N	https://graph.facebook.com/836930283079468/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
52	!lJWe9PTzzMhBj74WJDug4ZBxEj5QWRQDrVumsyso	2016-06-23 10:40:31.100462+00	f	hsantos29@hotmail.com	2016-06-23 10:40:30.778861+00	f	t	f	t	Helio	Santos	\N	https://graph.facebook.com/10207589389307494/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
54	pbkdf2_sha256$24000$nvDRvnXAmzcL$JNCUNZoDSJ7mx6jaeMfhDF7HCMj7ye7+VWpmUx5Akss=	2016-06-23 13:04:35.805754+00	f	raissarabelo2@gmail.com	2016-06-23 13:04:35.592839+00	f	t	f	t	Raissa	Borges	\N			\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
56	!jWzIeY9suaW4nXgeO48e36hKsczNOgY9bPPkuovw	2016-06-23 18:42:59.291443+00	f	lulafreitas@hotmail.com	2016-06-23 18:42:59.205339+00	f	t	f	t	Luiz	Carlos Marques Freitas	\N	https://graph.facebook.com/946152412171117/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
429	pbkdf2_sha256$24000$Hh4zjLoVnXNm$IcxFNgOXJaJAe0wdIm9l8VuEbv46/oIX/H/IfW7dQOs=	2017-04-01 18:01:12+00	f	LanaVirginia	2017-04-01 17:52:31+00	f	t	f	f	Lana	Virginia	\N		profile/2017/04/01/res_1483467041845.jpg	\N	2	2	f		0	0		0.00	f	\N	t	\N	\N
443	!ZCLnHIONbhAyFQPd9jNPGhu00H8takDVo3Gbqn3F	2017-04-06 18:09:48+00	f	JaquelineLeal	2017-04-06 18:09:47+00	f	t	f	f	Jaqueline	Leal	\N	https://graph.facebook.com/794870100660672/picture	profile/2017/04/06/profile_443.jpg	\N	2	2	f		0	0		0.00	f	\N	t	\N	\N
268	pbkdf2_sha256$24000$dEACCLaKgLs1$eQXqWDHCpL0JO4nNcsOK9p7rNBGV6B1wjRteM9un+m4=	2016-07-29 02:39:52.141608+00	f	paula.vfviana@gmail.com	2016-07-29 02:39:52.036365+00	f	t	f	t	Paula	Ferreira	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
96	pbkdf2_sha256$24000$ZqWTYcwIz45W$MFGeVS5FRMR1hWUDyAMibLXjeJlF0FK2Z5uJKfcXpYg=	2016-06-29 01:18:30.703544+00	f	comercial@renanpessoa.com.br	2016-06-29 01:18:30.601933+00	f	t	f	t	Renan	Pessoa	\N			\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
57	pbkdf2_sha256$24000$G1NOmHBLEmKp$e85tXh5Ce38wJfzJXo9Zb+4dqWNs2tuVamkXpuiuWUs=	2016-06-25 22:56:01.263856+00	f	campos.matheus@yahoo.com.br	2016-06-23 20:14:35.273205+00	f	t	f	t	Matheus	Campos	\N			\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
335	!0aT37EAfmEE6cOFuw1xh7BUxao50vbkR2Ja03jC1	2016-11-22 03:53:57.971273+00	f	eltonsrc@gmail.com	2016-11-22 03:53:25.062524+00	f	t	f	t	Elton	Ribeiro	\N	https://graph.facebook.com/1101912819880758/picture	profile/2016/11/22/profile_335.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
60	pbkdf2_sha256$24000$nxgWlhk6XWwy$Mn1Xji57Pgsumk907REjRb/ZtusXvv6nIOvLq17GLEE=	2016-06-26 13:09:26.663109+00	f	niceaarie@gmail.com	2016-06-26 13:09:26.424187+00	f	t	f	t	Nicéa	Nakagawa Arie	\N			\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
463	pbkdf2_sha256$24000$2lY07yH6w2zg$zqimzWRBR4tDsomFcmuSZnzbN/NggBBd4s8+EDRJ9ro=	2017-04-12 00:38:37+00	f	salaoclaudetemanaus@hotmail.com	2017-04-12 00:38:37+00	f	t	f	t	CLAUDETE	HAIRSTYLIST	\N			\N	2	2	f		0	0		0.00	f	\N	f		
61	!95kth0k6onhUmmqBLN6iWVwin3ugvrurEul5PSgg	2016-07-08 17:34:39.729547+00	f	cashmeyre@hotmail.com	2016-06-26 17:09:42.001079+00	f	t	f	t	Gecimeire	Medeiros M	\N	https://graph.facebook.com/1045784395505808/picture	profile/2016/07/08/profile_61.jpg	\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
59	!rQUGfIHtSyhAqBAfUK9PYaL9wxEWHTdLthAf6OTK	2016-06-25 06:05:35.740655+00	f	linecker.scarpelli@gmail.com	2016-06-25 06:05:35.472926+00	f	t	f	t	Linecker	Scarpelli Corretor	\N	https://graph.facebook.com/1901527816740916/picture	profile/2016/07/07/profile_59.jpg	\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
126	!4hSYQXBmJPj7HZ9RoDny4Enk1oouUAZttdj36lfC	2016-09-27 13:48:18.244081+00	f	tomas.medeiros@gmail.com	2016-06-29 20:48:41.712197+00	f	t	f	t	Tomás	J M Lima	\N	https://graph.facebook.com/580260168832363/picture	profile/2016/09/27/profile_126.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
194	pbkdf2_sha256$24000$BgM7tXo7hhfK$yFGp8o9ZTUVw0TE4W5SfUXifeAXi469NKnvPtRax618=	2016-07-08 18:21:09.55524+00	f	joao.toledano@outlook.com	2016-07-08 18:21:09.433042+00	f	t	f	t	João de Deus	Toledano	\N		profile/2016/07/08/image.jpeg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
318	!5L9fNRI7lR5Y6LOEDte0kSBQPtifok9M8LAqnJ80	2016-10-05 21:32:49.118839+00	f	ideiasfera@gmail.com	2016-10-05 21:32:48.006771+00	f	t	f	t	Bruno	Seabra Carneiro	\N	https://graph.facebook.com/989120967877266/picture	profile/2016/10/05/profile_318.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
27	!sN9yAxtyfcBmjnKityJGFfkp7cxfbC0yTeTafUoH	2017-03-28 17:47:00.080707+00	f	marissa_sarkis@hotmail.com	2016-06-19 12:16:50.082413+00	f	t	f	t	Marissa	Sarkis	\N	https://graph.facebook.com/1160023740706413/picture	profile/2017/03/28/profile_27.jpg	\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
216	pbkdf2_sha256$24000$gQUBKQ8zkyAu$vbC/2z1CQON0aBbRiNNJdctAGEmS048GNGmun5MIgDE=	2016-07-21 18:58:24.201689+00	f	juliana_farias@hotmail.com	2016-07-21 18:58:24.082534+00	f	t	f	t	Juliana	Farias	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
110	!KAuXhWkdgV3YmXGyil2d5iymDIoh8NTxtzRWxRjY	2016-06-29 15:26:02.47739+00	f	pallomythagomes@gmail.com	2016-06-29 15:26:01.924708+00	f	t	f	t	Paloma	Gomes	\N	https://graph.facebook.com/10208378651442354/picture	profile/2016/06/29/profile_110.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
127	pbkdf2_sha256$24000$Lyeg77ynSqf6$+mf6QYIeOzNrS4W2pHuGMUTfRAKompx1fC2AzgMjtSE=	2016-06-29 22:28:12.563243+00	f	santosdiegoferreira975@gmail.com	2016-06-29 22:28:12.188013+00	f	t	f	t	Diego ferreira	santos	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
135	pbkdf2_sha256$24000$XRmkQ4dIV5DQ$jf71yYo7MiTSRzg8nmBXY+qkdu5pWkW1Hlk1pzV39JM=	2016-06-30 11:18:38.051215+00	f	fredbarretolima@yahoo.com.br	2016-06-30 11:14:54.011174+00	f	t	f	t	Fred	Barreto Lima	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
128	pbkdf2_sha256$24000$20V9C6FISamk$MYqddGdhj2e1nL1zSFTHwUtSwz8lh69FCAKhU+TgoQ4=	2016-06-29 22:37:17.54153+00	f	santosdiegoferreira075@gmail.com	2016-06-29 22:37:16.426541+00	f	t	f	t	Diego ferreira	santos	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
139	pbkdf2_sha256$24000$2ZbHRLeCOucC$B1NpWVM6EQFcp3jMFzFkO9BswU/pNIl3cbxPc4wW63Y=	2016-06-30 12:55:22.788442+00	f	fabiopavesi22@hotmail.com	2016-06-30 12:55:22.654916+00	f	t	f	t	Fabio	Pavesi	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
229	!TIJpVMLpnMeX0QQybAmmDiMsbits6XNVNA9rF19g	2016-07-22 03:06:37.595007+00	f	thaisfeerreeira@gmail.com	2016-07-22 03:06:36.813473+00	f	t	f	t	Thaís	Ferreira	\N	https://graph.facebook.com/1134723923257439/picture	profile/2016/07/22/profile_229.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
230	pbkdf2_sha256$24000$EWsrXBtECrug$pSo/Krai37X610/Sm3A39JiunVbuvLimXR/F/DBuyQI=	2016-07-22 04:00:08.942297+00	f	jamillerodrigues@live.com	2016-07-22 04:00:08.752404+00	f	t	f	t	Jamille	Rodrigues	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
231	pbkdf2_sha256$24000$905XnTpuexBB$i2ybXH2mWCF7ruzoZXYhotVjVY/3yYhffXFaF465ZFA=	2016-07-22 04:06:58.131447+00	f	silviocosth2@gmail.com	2016-07-22 04:06:57.907627+00	f	t	f	t	Silvio	Costh	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
232	pbkdf2_sha256$24000$owqmKUuUPCNV$xO6EZWVLBV7Varu0TCpOZN8VakHiHrAhzOcsoKsixEA=	2016-07-22 04:34:50.783819+00	f	thais.spires@hotmail.com	2016-07-22 04:34:50.223069+00	f	t	f	t	Thais	Pires	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
233	pbkdf2_sha256$24000$jcLAq7WEqMYo$jYZbJKpKfLY2C4IOzlqE87l+EFtRfSZTC83mLIXUXQ8=	2016-07-22 04:37:07.894749+00	f	sac@pizza2go.com.br	2016-07-22 04:37:07.724539+00	f	t	f	t	Pizza2Go	Pires	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
250	pbkdf2_sha256$24000$IDs41Rio2jqU$x3ZGRVwqm7MaucoPFnvHOkrYuwLCKpz4yw2CMHSOK88=	2016-07-23 22:44:35.602988+00	f	sangiobotelho88@gmail.com	2016-07-23 22:44:35.31155+00	f	t	f	t	Sangio	Botelho	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
433	!9d6nSWsv7qOcnjux5Mz38eaqBPE57KzpkbAKwj9d	2017-04-04 14:46:59+00	f	nayara_c_monteiro@hotmail.com	2017-04-04 14:46:59+00	f	t	f	t	Nayara	Monteiro	\N	https://graph.facebook.com/1331575496908620/picture	profile/2017/04/12/profile_433.jpg	\N	2	2	f		0	0		0.00	f	\N	f	\N	\N
258	pbkdf2_sha256$24000$cbrSd8KTXHR7$g3Yb01YyoAxDXgrrAvJPyoddTn0Bye9sB6mJ9QCs6gE=	2016-07-28 01:42:36.712523+00	f	chilli69@gmail.com	2016-07-28 01:42:36.388686+00	f	t	f	t	Leandro	Barbosa	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
319	pbkdf2_sha256$24000$80ehR1s593hO$P4JyVlKm9V6UoL/GziTEwGwl1i1JIUsB7hxrmZlz6p0=	2016-10-06 01:56:35.532365+00	f	laira.lmartins@hotmail.com	2016-10-06 01:56:35.365302+00	f	t	f	t	Laura	Martins	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
260	pbkdf2_sha256$24000$0NZ8xWX5wXJf$we2Pw6oG73c/ILlDuSceSyssWrtTkUXlugjuvT9ty6M=	2016-07-28 01:48:38.184268+00	f	lcbarbosa@hotmail.com	2016-07-28 01:48:37.768033+00	f	t	f	t	Leandro	Barbosa	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
264	pbkdf2_sha256$24000$t0sVKUIFVXnZ$IW8gA+mw7HE5wEpyGpES5CUjFtjmAgtWQyohDiEkbXU=	2016-07-28 02:59:36.021662+00	f	niltonvitor74@gmail.com	2016-07-28 02:59:35.868555+00	f	t	f	t	ligia	costa	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
444	!U8Wr6MKR07pMre3fDDiG4jcmYv3pKycvjslRFWWh	2017-04-06 19:20:04+00	f	felipe_alip@hotmail.com	2017-04-06 19:20:04+00	f	t	f	t	Phelipe	Markos Cantanhede	\N	https://graph.facebook.com/1409191902476060/picture	profile/2017/04/06/profile_444.jpg	\N	2	2	f		0	0		0.00	f	\N	t	\N	\N
430	pbkdf2_sha256$24000$J5PT08qvBTCn$9ulheFJsqrp15R9gBcQo8BGOTTJPC7gZwUjmg34lfJQ=	2017-04-01 18:23:51+00	f	SabrinaRodrigues	2017-04-01 18:23:51+00	f	t	f	f	Sabrina	Rodrigues de Almeida	\N		profile/2017/04/01/Sabrina_Almeida.jpg	\N	2	2	f		0	0		0.00	f	\N	t	\N	\N
272	pbkdf2_sha256$24000$CaIPfRiCQspJ$lRHGOTqXsLmJtXJ+C4Dv9vFAw++O65B3hGMK/GEHk5A=	2016-08-02 00:49:22.378263+00	f	marketing.eleven@gmail.com	2016-08-02 00:47:26.471917+00	f	t	f	t	Eleven	Soluções Criativas	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
252	!0Lwb5HGos9etKvQsrWeiRnqB0uyz9sOmsEP01jzH	2016-07-24 21:10:41.823328+00	f	medeiros_andrea@hotmail.com	2016-07-24 21:10:41.020474+00	f	t	f	t	Andrea	Medeiros	\N	https://graph.facebook.com/1136695099756247/picture	profile/2016/07/24/profile_252.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
323	!rliIDZPqN59BmUW8L5uPmVAkHZHtMyt7GQgxkryi	2016-10-07 10:32:50.613877+00	f	echo_a_m@yahoo.com.br	2016-10-07 10:32:49.798704+00	f	t	f	t	Marcello	Victor Soares Braga	\N	https://graph.facebook.com/1551912471492211/picture	profile/2016/10/08/profile_323.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
234	!IKvOOc2GfT67YwnowaX3lNTQTK4Adss65Uq1JSi1	2016-10-24 02:49:00.477081+00	f	mica_santos@hotmail.com	2016-07-22 04:38:08.08785+00	f	t	f	t	Michelle	Santos	\N	https://graph.facebook.com/10209719125317521/picture	profile/2016/10/24/profile_234.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
160	!epZUOCmYJGR6LfDnxtsR1N8JrdGFgCB9jg6u38Ea	2016-11-21 14:37:56.634876+00	f	ramayana1970@gmail.com	2016-11-21 14:37:56.634876+00	f	t	f	t	Ramayana	Menezes	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
326	pbkdf2_sha256$24000$Thuv4eQHZIEQ$qbcZwzZH2jJS2h3FawBoy1zB20u2XiX5KXBj6fn3cvI=	2016-10-09 15:22:40.105024+00	f	alessandramagalhaes@outlook.com	2016-10-09 15:22:39.983059+00	f	t	f	t	elivandro	souza de lima	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
330	pbkdf2_sha256$24000$XtYMTj9GW2F8$lK4lepzu+jCdG7nPlc0Iz5JkJlB4txHWPqv6KaBkurI=	2016-10-10 19:08:57.192154+00	f	julianasouza956@gmail.com	2016-10-10 19:08:57.027911+00	f	t	f	t	Juliana	Souza	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
301	pbkdf2_sha256$24000$Htu9fJ6Fltb7$pbqSqjqAxg9PjBhx9K8UcB31xZTz5aqeCTjHMnMRD5g=	2016-08-22 01:19:59.545633+00	f	barbsena.cn@gmail.com	2016-08-22 01:19:59.359726+00	f	t	f	t	Bárbara	Sena	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
235	!lETzAqYqQ6iR2IlIGCgRxIPcXCTdIhwa93tw4ogX	2016-07-22 05:27:49.197947+00	f	tatazinha_xp_angel@hotmail.com	2016-07-22 05:27:48.633508+00	f	t	f	t	Tata	Albuquerque	\N	https://graph.facebook.com/1006373386124698/picture	profile/2016/07/22/profile_235.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
238	pbkdf2_sha256$24000$8Hmv5al5Hnj5$+pS0IGRyZp0W9+7jhIVf5ukuZ09V5n6MU+BuVhmOAPc=	2016-07-22 11:24:41.179396+00	f	beto@amandabeautycenter.com.br	2016-07-22 11:24:41.016163+00	f	t	f	t	Luiz Alberto	Pontes	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
239	pbkdf2_sha256$24000$bjoUIKlrzWx7$2op/QnniNbI5Xpi4yDgExlaxDdJU0aRd7twhlZUszh0=	2016-07-22 11:53:13.043564+00	f	julianacplima@gmail.com	2016-07-22 11:53:13.043564+00	f	t	f	t	JULIANA	PINHEIRO	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
310	!KiE0BCIUg6v2qP0SJ9pLWLBrazPTMHYq0Gmba9Mt	2016-09-12 17:35:56.706498+00	f	thaisspetry@gmail.com	2016-09-12 17:35:55.875383+00	f	t	f	t	Thaís	Stahlschmidt Petry	\N	https://graph.facebook.com/1237368472993450/picture	profile/2016/09/12/profile_310.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
265	pbkdf2_sha256$24000$6zWgrnAuQUDS$m5sh4I5OJk8yOXVRtuXqGRSwtoZToNwbUtuHnEiXinM=	2016-07-28 03:22:00.231439+00	f	lelefmontero@hotmail.com	2016-07-28 03:22:00.131071+00	f	t	f	t	Leandra	Montero	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
241	!MEamETp9djkymOcCUaiNnammfraJfyl76pYXVxiK	2016-07-22 11:53:53.500988+00	f	monicamonteiro92@gmail.com	2016-07-22 11:53:52.612482+00	f	t	f	t	Monica	Monteiro	\N	https://graph.facebook.com/10206685761640752/picture	profile/2016/07/22/profile_241.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
269	pbkdf2_sha256$24000$nyi8chhlJtCI$kscLsrqYO33SAgc/DOdn3p4VBTiKTQcGJq34jq2BC7E=	2016-07-29 16:22:44.824808+00	f	sofiakimak@hotmail.com	2016-07-29 16:22:44.492672+00	f	t	f	t	Sofia	Kimak	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
271	pbkdf2_sha256$24000$Pgb7CORJ5dI6$kUBwDkasZmgC0RyUJ5WYGxUIq0LF6/jNOIb5ovesgSg=	2016-08-01 22:27:51.557297+00	f	isaias@live.com	2016-08-01 22:27:51.232414+00	f	t	f	t	Isaias	Miguel	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
305	!IT82kimb8UpgU6gk2U6mXBfUxS1iFZZ8FM7hecLp	2016-08-31 03:00:55.509255+00	f	fredaobracher@hotmail.com	2016-08-31 03:00:54.955549+00	f	t	f	t	Frederico	Bracher	\N	https://graph.facebook.com/1151647524872088/picture	profile/2016/08/31/profile_305.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
274	pbkdf2_sha256$24000$Cj3adxD6HfGC$haXWQAgVU5Oi7WGbAwPzcpvzB/7Bk8v0+1kuxftM2II=	2016-08-05 04:51:44.941644+00	f	viaegidecorretora@gmail.com	2016-08-05 04:51:44.703186+00	f	t	f	t	Joélia	Medeiros	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
311	!qHWfdt0TDmNdVYP0Qg3cjmK3FNBG3AgxdQnc7iHm	2016-09-15 16:20:13.581495+00	f	jtolledano@hotmail.com	2016-09-15 16:20:12.752837+00	f	t	f	t	Joao	Toledano	\N	https://graph.facebook.com/10154633527594430/picture	profile/2016/09/15/profile_311.jpg	\N	1	0	t	Trabalho com vendas de cosméticos, consultor contábil.	0	0	92993529370	0.00	t	33	f	\N	\N
306	!a3u1y9mjr2x40OOtWyERk9eWz2LBa4jfohu9xUl6	2016-09-01 14:45:20.296159+00	f	marcio1234@hotmail.com	2016-09-01 14:45:19.444785+00	f	t	f	t	Marcio	Assis de Castro	\N	https://graph.facebook.com/10153976811819506/picture	profile/2016/09/01/profile_306.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
322	pbkdf2_sha256$24000$4hBQpENyhK1I$C13M2KryXLGodGhsTQBlxQr/k6mo7Zw0FI2bBzrStew=	2016-10-07 03:07:23.979783+00	f	erikajovanka@hotmail.com	2016-10-06 17:22:38.693444+00	f	t	f	t	Érika Jovanka	Santos da Silva	\N			\N	1	0	t	Sou maquiadora especializada em noivas, peles manchadas e em peles maduras. Aplico técnicas de visagismo.\r\nAtendo em qualquer lugar que for preciso!	0	0	92996145997	0.00	t	35	f	\N	\N
445	!jKjwZsWs5SKUvCzm3QJuETMoDUtxK4l34IGA7E6p	2017-04-09 18:12:57+00	f	RhaelMarcosCarmim	2017-04-06 19:23:52+00	f	t	f	f	Marcos	Makehair	\N	https://graph.facebook.com/791671407650589/picture	profile/2017/04/09/C360_2017-03-08-10-39-58-334.jpg	\N	2	2	f		0	0		0.00	f	\N	t		\N
389	pbkdf2_sha256$24000$eBOz16c5iqrQ$3lWDmZ9itQGAQsJ2hFV/HrD96YxyHVZ03SMJtMyNciM=	2017-03-24 19:59:55.069603+00	f	pryhrebeloo@gmail.com	2017-03-24 19:59:54.928454+00	f	t	f	t	Priscilla	Rebelo	\N		profile/2017/03/24/IMG_0456.JPG	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
431	!41YQ82VfE442e7D4E5lGQKoZyOxHqzJzMX2ZNPP6	2017-04-02 16:35:04.37567+00	f	breno.maciel@hotmail.com	2017-04-02 16:35:03.864665+00	f	t	f	t	Breno	Maciel	\N	https://graph.facebook.com/10154729216462982/picture	profile/2017/04/02/profile_431.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
4	pbkdf2_sha256$24000$wmpzJsni7aTu$rDumCXBdWBkv+O1ZJ2t3u01nUuD2onl9xEoqFk2IgiA=	2016-10-17 18:51:00.369813+00	f	josemiguel@bol.com.br	2016-10-17 18:50:58.632849+00	f	t	f	t	Joselito	Miguel	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
5	pbkdf2_sha256$24000$SOT2ugKEJYhk$9G/QiwWBuVgnaoGGqdc1Hz320IR3S9IvkoWTT0Dkvzc=	2016-10-18 14:04:24.040974+00	f	celio20001@bol.com	2016-10-18 14:04:23.878887+00	f	t	f	t	Celio	Almeida	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
337	!1Qjh4KHpMQZVWH9initap6L4xftpq6kxvjiZD8XU	2016-11-23 17:52:58.482087+00	f	souandrefernandes@gmail.com	2016-11-23 17:52:57.959409+00	f	t	f	t	André	Fernandes	\N	https://graph.facebook.com/1147127615342217/picture	profile/2016/11/23/profile_337.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
320	pbkdf2_sha256$24000$8UkQjagFrFfw$4JSDdfyQ1A6A4vINIi+oS3i7dgpTi5bGMEbyXJx5ne4=	2016-10-06 11:16:37.426847+00	f	valente.maia@hotmail.com	2016-10-06 11:16:37.062537+00	f	t	f	t	Clinica	Mais Longevidade	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
327	pbkdf2_sha256$24000$EHPbG9iBT24e$MEAm36v1i7GC4gCnqEZCbV8pkuFh7ewYF11jJarOsPY=	2016-10-10 02:21:22+00	f	thaisrochaeuevc@hotmail.com	2016-10-10 02:16:39+00	f	t	f	t	Thaís	R. Figueira De Oliveira	\N	https://graph.facebook.com/10205739776332674/picture	profile/2016/10/09/profile_327.jpg	\N	1	0	f		0	0		0.00	f	\N	f	\N	\N
336	!ITb0TzhrT8kCVZGmOpQgB26nQRmBHplhvuwliwHg	2016-11-22 18:37:33.384746+00	f	drica_dada@yahoo.com.br	2016-11-22 18:37:32.572366+00	f	t	f	t	Adriana	Dada	\N	https://graph.facebook.com/1240530822684421/picture	profile/2016/11/23/profile_336.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
242	!ybqYrYuipYI6ZyyM1kDw5ALj8k8MWkCIWZYkrdJa	2016-07-22 12:03:41.487047+00	f	fernanda.4breu@hotmail.com	2016-07-22 12:03:40.718712+00	f	t	f	t	Fernanda	Abreu	\N	https://graph.facebook.com/1090996744326730/picture	profile/2016/07/22/profile_242.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
270	pbkdf2_sha256$24000$Y5oQklviH8On$D4s8zi5iUcz4Gc8se6jLaulfgluzmUD6vAW0K23esJ4=	2016-07-29 19:04:52.605077+00	f	leslaynegomez@hotmail.com	2016-07-29 19:04:52.434874+00	f	t	f	t	LESLAYNE	GOMEZ	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
302	pbkdf2_sha256$24000$k8214SZgVxIG$8CTQ6Cl3lsh+D54qm7kfPzuzIR2Oo2Ar8xHEC+JpRjs=	2016-08-22 12:42:53.945724+00	f	marina.bbeling@gmail.com	2016-08-22 12:42:53.799628+00	f	t	f	t	marina	Benites	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
347	!T3HT7JN5qBhN3365M4yShUzV369Vl6A7S2toIWNu	2016-11-25 18:19:00.900345+00	f	thiagoalexandres@gmail.com	2016-11-25 18:19:00.091633+00	f	t	f	t	Thiago	Santiago	\N	https://graph.facebook.com/1175375935883510/picture	profile/2016/11/25/profile_347.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
350	!sBn6NkUk7vXuc0brX2lEjw8VMTIH5KkcTzQZ97vq	2016-11-30 18:59:51.778596+00	f	veloso.larissabraga@gmail.com	2016-11-30 18:59:51.23797+00	f	t	f	t	Larissa	Braga Veloso	\N	https://graph.facebook.com/1201765189861167/picture	profile/2016/12/07/profile_350.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
307	pbkdf2_sha256$24000$ct676ZAlOrDp$LJoREKuPfF36mVCyF29XS1hIVcbPtTpQJjfWjYXNKPw=	2016-09-01 22:53:30.939494+00	f	fernando.ian@hotmail.com	2016-09-01 22:53:30.84967+00	f	t	f	t	fg instalaçoes e	seviços	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
280	!J1wCuoFnTPqbmLF89vebK4vYYX6s5g4sOJJqTsJv	2016-09-18 20:52:33.200196+00	f	dpf_fisio@hotmail.com	2016-08-10 01:22:35.034742+00	f	t	f	t	Deane	P. F. Guedes	\N	https://graph.facebook.com/10205275541682596/picture	profile/2016/09/18/profile_280.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
332	!mhZTfMw1ouGpkcoIubNhJlTmL1yjEH0WP30tPm50	2016-10-11 17:22:19.249701+00	f	honorio.nobrega@outlook.com	2016-10-11 09:52:13.663965+00	f	t	f	t	Honorio	Nobrega Junior	\N	https://graph.facebook.com/1774983726123286/picture	profile/2016/10/11/profile_332.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
256	!4cNjzDGKpTYh6aOTSBnYkxoald23bl38BZhfi9sV	2016-07-27 05:16:18.995661+00	f	joelia.medeiros@hotmail.com	2016-07-27 05:16:17.114518+00	f	t	f	t	Joelia	Thomas Medeiros	\N	https://graph.facebook.com/10205196138502490/picture	profile/2016/07/27/profile_256.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
288	pbkdf2_sha256$24000$61H2FhRDyYEq$mBUcV73GvVviTQLWMTAcMoCfCylgNYvWkp7EnPj4q/o=	2016-08-17 03:19:40.543235+00	f	celio2001@hotmail.com	2016-08-17 03:19:40.348642+00	f	t	f	t	Celio	Araujo	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
266	pbkdf2_sha256$24000$EZHcxxJ8wahi$dc/ISqcuOIAVZqSgBPXNCComyi+u0BsctX6bdgenF0s=	2016-07-28 16:48:03.39444+00	f	contato@estudioncfotografia.com	2016-07-28 16:48:03.29498+00	f	t	f	t	Nathalia	Carvalho	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
292	pbkdf2_sha256$24000$xxcEVa84VNes$mIiF/WbrMWsbtGAuuJfeBU2io1VQRz8DiKUoVKr9fEQ=	2016-08-18 16:31:29.271134+00	f	maysacorreia_@hotmail.com	2016-08-18 16:31:29.090029+00	f	t	f	t	Maysa	Correia	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
294	pbkdf2_sha256$24000$TqUStWduzBFY$otMqHwtz8cY2GjuumxvjtfJmnyl+9sUb0u6l+NQgDak=	2016-08-19 00:17:04.464242+00	f	fabianadejesus25@icloud.com	2016-08-19 00:17:04.273409+00	f	t	f	t	Fabiana	De Jesus Oliveira	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
390	pbkdf2_sha256$24000$xXHxzbKSTYra$Uq/ImAyhk9niCc4YCcPemqmlC2kPeNfNnf5mqFPE+yE=	2017-03-29 12:50:32.440162+00	f	inaiara024@gmail.com	2017-03-26 21:59:33.839312+00	f	t	f	t	Iana Naiara	Santos	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
432	!gd8yUDxUQaMYj0va6VfNMi1NocvzzplPqXCWYyPM	2017-04-04 03:23:31.779441+00	f	tisunami95@hotmail.com	2017-04-04 03:23:31.294943+00	f	t	f	t	Alan	Gil	\N	https://graph.facebook.com/1267170786712866/picture	profile/2017/04/04/profile_432.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
218	pbkdf2_sha256$24000$K5giahBK3U5w$pa4ZoxjpHor4g/THXZnJwvIxegyeR5lTkIzva6tGX6w=	2016-07-21 19:27:50.121495+00	f	suanefernandessilva@gmail.com	2016-07-21 19:27:49.948416+00	f	t	f	t	Suane	Fernandes	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
222	!T6aB7PsFYQBHkKWuU8hzkJqQrcYyZciUQRCh1z4I	2016-07-21 20:35:58.487726+00	f	valsarquis@hotmail.com	2016-07-21 20:35:57.422199+00	f	t	f	t	Val	Celestino	\N	https://graph.facebook.com/1260592280647744/picture	profile/2016/07/21/profile_222.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
447	pbkdf2_sha256$24000$XPiIpo6zyJ7E$jW05/ZPATsVuCjSmmn/dWxMuJSP+a6WMATnl32NZ9nQ=	2017-04-06 20:00:07+00	f	Nenel666@gmail.com	2017-04-06 20:00:07+00	f	t	f	t	Manoel	Aguiar	\N			\N	2	2	f		0	0		0.00	f	\N	t	\N	\N
203	pbkdf2_sha256$24000$FQAAI1FQT95r$33J9VLjuOVHWOTkGxynq5eCWpR9jFe3BkD0n+2+EIGY=	2016-07-18 16:45:36.452055+00	f	natalialima@hotmail.com.br	2016-07-18 16:30:42.762705+00	f	t	f	t	Natalia	Lima	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
175	pbkdf2_sha256$24000$M75WDHV1t6CO$P+WMbfwpQ9jQL7Q8tjilwQCt7LG5Limwb9anImVvT3M=	2016-07-28 12:46:58.147503+00	f	taianna.castro@gmail.com	2016-06-30 18:53:20.543346+00	f	t	f	t	Taianna	Castro	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
210	!4txxqobsSObX9YwVkpaOyE0MaHEQJjk4OmQ3vAhE	2016-07-20 17:41:54.582852+00	f	sabrinagesta@gmail.com	2016-07-20 17:41:53.943603+00	f	t	f	t	Sabrina	Gesta	\N	https://graph.facebook.com/1243362905674011/picture	profile/2016/07/20/profile_210.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
219	pbkdf2_sha256$24000$Sc0Bzh8CPdj3$78n+DNL+ikQBKPD2etDP4aZaI7wP1cT+RbVL4nrTymg=	2016-10-07 02:55:02.992755+00	f	emanoel.lima@icloud.com	2016-07-21 19:33:10.30882+00	f	t	f	t	Emanoel	Lima	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
213	pbkdf2_sha256$24000$elXwunJd2F4G$sawZiArF45XDvP2o6eZNRXO0AjGpoAaKvUC988C18V8=	2016-07-21 18:13:56.880258+00	f	sigrid.ms@hotmail.com	2016-07-21 18:13:56.785196+00	f	t	f	t	sigrid	Moreira de Souza	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
220	pbkdf2_sha256$24000$QkmfKt4MpCyf$7cn5De5DxWFgAkCWLVXzEHQPT0s87sEC49eR4Khz0cA=	2016-07-21 19:54:02.657717+00	f	nayla_monteiro@hotmail.com	2016-07-21 19:54:02.566149+00	f	t	f	t	Nayla	Nagawo	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
225	pbkdf2_sha256$24000$lCp5bfn8X8g6$s54me+WMV77BA0kYlGurLNiA61vLMvzRvk7GjNPjLas=	2016-07-21 21:43:17.261447+00	f	valdacfranca@gmail.com	2016-07-21 21:43:17.091808+00	f	t	f	t	Valda	Cavalcante	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
221	pbkdf2_sha256$24000$mT90mdOeTTsW$UH25ZRPuwkXYyJJ9tmf8R5qrTcf9lkS7i9EauXXtx+o=	2016-07-21 20:25:12.450746+00	f	pri_cobain1@hotmail.com	2016-07-21 20:25:12.335131+00	f	t	f	t	Priscila	Albuquerque	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
223	pbkdf2_sha256$24000$IeEO47RbFiZn$ve47O64QJ2d9hUU90m/v4cPX6DLv94e/s93twchHfQY=	2016-07-21 20:40:46.893922+00	f	angelita_amaz@hotmail.com	2016-07-21 20:40:46.711711+00	f	t	f	t	Angelita	Albuquerque	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
446	!uLqtl7jqWneqi0zQ9cdxIRsYdntjxcrkUMBY8Xhv	2017-04-06 19:59:55+00	f	DionnesPinheiro	2017-04-06 19:59:54+00	f	t	f	t	Dionnes	Pinheiro	\N	https://graph.facebook.com/733430510164824/picture	profile/2017/04/06/IMG-20170212-WA0115.jpg	\N	2	2	f		0	0		0.00	f	\N	t	\N	\N
112	pbkdf2_sha256$24000$dqiN1V1P2gmg$oNVaB6i+DzkWP4VDXoNmW3UYKTpGN0ky3PiyRHN5JRo=	2016-11-09 12:55:12.425027+00	f	sbellezalucy@gmail.com	2016-11-09 12:55:12.313601+00	f	t	f	t	Luciana	Santos	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
101	pbkdf2_sha256$24000$6MIsuDQJS0Nh$WqEnwn2TYkQIrhX4bBK9tyOk5RRvoPiO9GohFSLMwjI=	2016-11-05 15:37:58.444589+00	f	marlianesantarem30@gmail.com	2016-11-05 15:32:44.599687+00	f	t	f	t	marliane	santarem	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
303	pbkdf2_sha256$24000$t9FDLmqcXzKr$wVnpphrmzl4kvS4vmieJtFY5tn5tP0STLUatHUmgWoM=	2016-08-22 15:36:39.948579+00	f	mrn.belini@gmail.com	2016-08-22 13:17:36.440205+00	f	t	f	t	Mariana	Belini	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
448	pbkdf2_sha256$24000$LDKUbbs67dCb$P/hknbfKf25yuYDBKRzkXurZx3zmgRNE3Nn29xNBaHo=	2017-04-06 20:37:22+00	f	Sobella_@hotmail.com	2017-04-06 20:37:22+00	f	t	f	f	Sô	Bella	\N		profile/2017/04/06/Grupo_Salão_SôBella_20161210_221020.jpg	\N	2	2	f		0	0		0.00	f	\N	t	\N	\N
409	!k0Q14NggwqvFs5gHPhmPncfYsLIdgwsB04MSUNds	2017-03-30 12:12:24.542812+00	f	charlesuchoa@gmail.com	2017-03-30 12:12:24.13139+00	f	t	f	t	Charles	Uchôa	\N	https://graph.facebook.com/1674458255904202/picture	profile/2017/03/30/profile_409.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
31	!hNYr8NoDYi8W8DJlxlPQFTIvzBe2BXS0BKJrSMQd	2016-06-20 00:24:05.78697+00	f	andreluiz@me.com	2016-06-20 00:24:05.653209+00	f	t	f	t	Andre	Luiz Albuquerque Lima	\N	https://graph.facebook.com/10210162995379651/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
88	!sdCYr0frDJUCmguEAQYovvj5JMkn5pHRT4LVAowt	2016-06-28 19:55:13.881475+00	f	danyzinha_18@hotmail.com	2016-06-28 19:55:13.08646+00	f	t	f	t	Daniela	Seixas Pereira	\N	https://graph.facebook.com/10201864080759959/picture	profile/2016/06/28/profile_88.jpg	\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
434	!oOnXYEN4gOllUhbeviKlC1GFvlYlz1JduVoOzVZb	2017-04-04 21:01:28+00	f	isabely.pinheiro1@gmail.com	2017-04-04 21:01:27+00	f	t	f	t	Isabelly	Farias	\N	https://graph.facebook.com/1943658869213972/picture	profile/2017/04/04/profile_434.jpg	\N	2	2	f		0	0		0.00	f	\N	f	\N	\N
201	!GjZBZHFkg7jyEB1opCW8QpyGokyz3HuadQf4JrOj	2016-07-13 17:43:12.298632+00	f	amandaa-limaa1@hotmail.com	2016-07-13 17:43:11.387024+00	f	t	f	t	Amanda	Chaves	\N	https://graph.facebook.com/1065491676866724/picture	profile/2016/07/13/profile_201.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
63	!dLmao3c8JqlMyYGD03RWKG5fSusOaS6vgXoBNhRv	2016-06-27 21:18:36.039873+00	f	renatojleite@gmail.com	2016-06-27 21:18:35.815729+00	f	t	f	t	Renato	J L Nóbrega	\N	https://graph.facebook.com/10154269977454817/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
207	pbkdf2_sha256$24000$O9Oc2wBclXMU$VwcLQP1RdQKFQIHfFHvwhUCIoyHzwyZkq0w6WWQaplc=	2016-07-20 01:20:33.436228+00	f	bruna.viana.cabral@gmail.com	2016-07-20 01:20:33.351704+00	f	t	f	t	Bruna	Cabral	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
97	!Uu4Soe91CW0taGVVMR7MNLA7Fl5WU7yo5fCAvOF9	2016-06-29 01:24:23.683259+00	f	palestrante@renanpessoa.com.br	2016-06-29 01:24:23.282421+00	f	t	f	t	Renan	Pessoa	\N	https://graph.facebook.com/1139997526063356/picture	profile/2016/06/28/profile_97.jpg	\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
325	pbkdf2_sha256$24000$UrSjzmlkKSiM$UPFfDkisjyxppmw4XsoLjM7qFiG99uGqBbb2bTYo8Xo=	2016-10-08 16:25:14.988445+00	f	carinaramosmk2016@gmail.com	2016-10-08 16:25:14.821894+00	f	t	f	t	Carina	Ramos	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
209	pbkdf2_sha256$24000$y93TcRzVgXIh$g9gOlLDEVUF3E97MCMbZsmTIcO7XNCyAAZZzTjBb7l8=	2016-07-21 13:56:15.299173+00	f	caisantiago@gmail.com	2016-07-20 13:01:02.492631+00	f	t	f	t	Caroline	Affonso	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
211	pbkdf2_sha256$24000$qYzvOO2r4LKg$AQtP20Ar5XPMDZwBC/WOeVSH4HgyYoHWh3kEVkt9Cy8=	2016-07-21 17:58:42.774466+00	f	faby2008_bia@hotmail.com	2016-07-21 17:58:42.646784+00	f	t	f	t	Fabiane	Andrade	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
214	pbkdf2_sha256$24000$Mnw0OD2xcaF0$jhBnUZ/99X6WmdiUnC5jo6hnczbWQOA3Dy9KtQ7+OlE=	2016-07-21 18:42:37.525455+00	f	paulo.melosb@gmail.com	2016-07-21 18:42:37.321384+00	f	t	f	t	Paulo	Rodrigo	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
100	pbkdf2_sha256$24000$NaC7j1p9gWYZ$hiv5u9FXAOELqg8Dic1dFoHkPu6oh/TOynTj/aVezVw=	2016-06-29 02:50:12.579012+00	f	miguelmoura@hotmail.com	2016-06-29 02:50:12.47471+00	f	t	f	t	Miguel	Moura	\N		profile/2016/06/29/image.jpeg	\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
94	pbkdf2_sha256$24000$2mGBxyiqaOl4$4Q/gPkGhzwut2w60OJ+n3JQ7tzgyeGla+2+sr1pk+SI=	2016-06-28 22:17:46.106195+00	f	contato@guerreirolisboa.com.br	2016-06-28 22:17:45.907825+00	f	t	f	t	Malu	Lisboa	\N		profile/2016/06/28/image.png	\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
450	pbkdf2_sha256$24000$gCXr1NLuMy6h$Bp0hS8ARdG9wlZOY+A9BCJolt5cduv0ilrktA4c8ovc=	2017-04-06 23:23:54+00	f	espaco_diva@hormail.com	2017-04-06 23:23:54+00	f	t	f	t	Ida	Verissimo	\N	https://graph.facebook.com/1498528600207112/picture	profile/2017/04/06/IMG_7866.JPG	\N	2	2	f		0	0		0.00	f	\N	t	\N	\N
412	!gUQ7w7aEgIyWRIOUzL9zhyEhpP7OWi23ORX4tdcn	2017-03-30 22:24:03.892904+00	f	davidisimoes@gmail.com	2017-03-30 22:24:03.408541+00	f	t	f	t	David	Seiffert	\N	https://graph.facebook.com/1354627287891214/picture	profile/2017/03/30/profile_412.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
413	!ZUMMCJhRvV6L3H2zQvhCeLoPRvjyWy2p8oXmeSDU	2017-03-30 22:25:12.033512+00	f	giapponezza@gmail.com	2017-03-30 22:25:10.389092+00	f	t	f	t	Érica	Lima	\N	https://graph.facebook.com/10155176343770127/picture	profile/2017/03/30/profile_413.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
435	!fGzIvibznFCQKeGSIqSj7JLwl0kRIx4LjTF5Snxq	2017-04-05 22:21:16+00	f	savana.mf@hotmail.com	2017-04-05 22:21:16+00	f	t	f	t	Savana	Martins	\N	https://graph.facebook.com/1676786935665133/picture	profile/2017/04/08/profile_435.jpg	\N	2	2	f		0	0		0.00	f	\N	f		\N
411	!qPyfjru7zhCxVmTduCGG4CrCLMiTopmRUk8IyeKI	2017-03-30 22:23:32.937114+00	f	rlima_1974@hotmail.com	2017-03-30 22:23:32.531629+00	f	t	f	t	Nonato	Lima	\N	https://graph.facebook.com/1297608273663952/picture	profile/2017/03/31/profile_411.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
244	!T988WTf4SgjmPwOXjtWUTOoQhPAlYYwZJ6SlhEtM	2016-07-22 18:19:06.145264+00	f	gabxfelix@gmail.com	2016-07-22 18:19:05.301554+00	f	t	f	t	Gabriella	Félix	\N	https://graph.facebook.com/281304608914375/picture	profile/2016/07/22/profile_244.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
253	!nbFYeofJrUKJSiLAQ7x1ecGax8U4ZT75vWEUSES6	2016-10-10 14:14:47.242501+00	f	taynapereiramendes@hotmail.com	2016-07-26 15:29:43.307498+00	f	t	f	t	Tayná	Mendes	\N	https://graph.facebook.com/1149991271739694/picture	profile/2016/10/10/profile_253.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
245	pbkdf2_sha256$24000$1Stw5I4Jy2cW$UFgDe0XIAvTCM2cf/+RnXzg55wCppaJHqlzutYOz3+g=	2016-07-22 19:37:48.734166+00	f	gildenice.alves@gmail.com	2016-07-22 19:33:34.223245+00	f	t	f	t	Gildenice	Alves	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
246	pbkdf2_sha256$24000$kTQg4cXmF2iv$1IDZygB/WhK7D3CZMLfsa62oWRJA+V3+8eIKFfzN3oM=	2016-07-23 00:27:39.752275+00	f	angelcastro.rc@gmail.com	2016-07-23 00:27:39.65244+00	f	t	f	t	Rosangela	Castro	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
247	pbkdf2_sha256$24000$I4YtaYmQkISF$2YogJjDB1n4vvt8pKKFRwFXybbP0lSJzE/JuDW7osWk=	2016-07-23 15:24:34.617647+00	f	azedo.maria@hotmail.com	2016-07-23 15:24:34.417064+00	f	t	f	t	Maria	Azedo	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
248	pbkdf2_sha256$24000$dhfoDGOJUvN9$kyAE6Apo6mtvqoUVlYGXBfxocscAoe5gF3DyeCMfr78=	2016-07-23 16:14:43.845689+00	f	danielsantos-1986@hotmail.com	2016-07-23 16:14:43.65812+00	f	t	f	t	daniel	santos	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
257	pbkdf2_sha256$24000$MHcisvqK9uHr$lqTWL3AwBTkVNZDgJmyzYAb/jhJ7/DgD4A6L/HtKlP4=	2016-07-27 20:51:03.985072+00	f	thays.lira01@gmail.com	2016-07-27 20:51:03.569449+00	f	t	f	t	thays	lira	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
267	pbkdf2_sha256$24000$DNnCgb4AfH3L$iqr8VUEtlC4WngJeDyhJsY7Y3elyR+lbz5kak2lHlDE=	2016-07-28 20:50:58.369969+00	f	bio_froes@hotmail.com	2016-07-28 20:50:58.150979+00	f	t	f	t	Fabricio	Froes	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
317	pbkdf2_sha256$24000$T8oKDxNqnyjn$fKmQbaTF2j6Wy1qWqedsS0cYhK+YD9OnbJ0HMOD5yaE=	2016-10-05 19:43:54.511942+00	f	amgesta@yahoo.com.br	2016-10-05 19:43:54.370946+00	f	t	f	t	André	Marinho Gesta de Melo	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
273	pbkdf2_sha256$24000$DhCZzGoNDNI7$JPruovTqMAgd+BG9zju2zgWQt/QQYHl0cBLsunwoC/o=	2016-08-02 16:44:02.675309+00	f	diegosprnascimento@hotmail.com	2016-08-02 16:44:02.158835+00	f	t	f	t	Diego	Nascimento	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
329	pbkdf2_sha256$24000$qcRS4aIZ86g6$nQhdkNEzenQQZhRcTVktICz51l1Bn0IIInY6DPxU14k=	2016-10-10 14:26:52.526666+00	f	santapellemanaus@gmail.com	2016-10-10 14:26:52.095898+00	f	t	f	t	Tayná	Mendes	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
324	!e6uWBPwiy9fSB6T2XXmliowH2BeuNrFXdqn9blCY	2016-10-08 10:34:48.219901+00	f	mayaraneves18@hotmail.com	2016-10-08 10:34:47.614253+00	f	t	f	t	Mayara	Neves	\N	https://graph.facebook.com/1112016668834689/picture	profile/2016/10/08/profile_324.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
308	pbkdf2_sha256$24000$FwG9AR4F1QZi$2n/IQfqYxYtJiLwhD+O3rXyhofnMBSyvWgw0L6r4puo=	2016-10-21 13:26:09.871836+00	f	marcia.calderaro@hotmail.com	2016-09-03 00:30:53.908803+00	f	t	f	t	Marcia	Calderaro	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
2	!DyZYEUOi9yjTDhLOEwOCusKmSuDHdnFmQplsfkDX	2016-10-17 06:08:54.651344+00	f	pqpayla@hotmail.com	2016-10-17 06:02:52.138003+00	f	t	f	t	Ayla	Souza	\N	https://graph.facebook.com/1353452071385211/picture	profile/2016/10/17/profile_2.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
6	!sN37RtlKoHVvyOAb3woZkVrBZv8AtbbCzDrNClCq	2016-10-19 02:24:21.98052+00	f	dsazulay@gmail.com	2016-10-19 02:24:20.720423+00	f	t	f	t	Diego	Azulay	\N	https://graph.facebook.com/1466014640080963/picture	profile/2016/10/19/profile_6.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
7	pbkdf2_sha256$24000$4SqKzQuaeYaW$u7oZ3ULpCzuTHxZH6a6EXjiGI1xRFO+BS0OCVKeF79I=	2016-10-20 23:14:06.195878+00	f	dsazulay@hotmail.com	2016-10-20 22:41:54.535262+00	f	t	f	t	Diego	Azulay	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
8	!VNXnw3WZhewWLGQiWQLHndMPnMSZVTV4JzHVxXN7	2016-10-20 23:16:13.406254+00	f	wallacemedeiros740@gmail.com	2016-10-20 23:16:12.433753+00	f	t	f	t	Wallace	Medeiros	\N	https://graph.facebook.com/343748905971703/picture	profile/2016/10/20/profile_8.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
348	!WlADZdxj3k81O5MWJ3jBAGXCi1HXPAsYf1Unn9vu	2016-11-28 17:39:04.066987+00	f	lulobaum@gmail.com	2016-11-28 17:39:03.334372+00	f	t	f	t	Luana	Lobão	\N	https://graph.facebook.com/1142665782435177/picture	profile/2016/11/28/profile_348.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
21	pbkdf2_sha256$24000$DVJyfqrO3a2x$Y7wSZ10uHQSsPEcCLiW00M7+y7PC/fVX/3Pg1i1mfTI=	2016-10-24 00:27:53.77151+00	f	lisiane271@hotmail.com	2016-10-24 00:27:53.608619+00	f	t	f	t	Lisi	Chiroque	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
10	pbkdf2_sha256$24000$5KAFLDzr48SG$ZXkj7FnlWz+jCsaMVUCeTfccDFsPutIiBxWpVzmI6Pg=	2016-10-21 23:51:41.831819+00	f	mar.rosiane@hotmail.com	2016-10-21 23:51:41.683202+00	f	t	f	t	Rosiane	Mar	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
451	pbkdf2_sha256$24000$88h8ly7o12c3$IT3IFm9bbCMDDr4szw/C/qu4W9buvWuEbK8QzjmCgXs=	2017-04-07 19:57:27+00	f	danilo_2021@hotmail.com	2017-04-07 19:57:27+00	f	t	f	f	Gracieth	Hill	\N			\N	2	2	f		0	0		0.00	f	\N	t	Gracieth Hills	
321	pbkdf2_sha256$24000$4J59UkkH8wqj$7Uw2eoAEZVlKFqMU0XydKmyWmXF1cKkTjrAf1EsLSSY=	2017-03-31 20:39:20.51168+00	f	renee_pantoja@hotmail.com	2016-10-06 13:27:33+00	f	t	f	f	Hares House	Serviços Estéticos	\N			\N	2	2	f		0	0		0.00	f	\N	t	\N	\N
397	!tLj5uQkM1OJNq12oQYNXNm9E7hmS95JRYTSWfO1u	2017-04-13 21:34:50.300289+00	t	camila.falabella@gmail.com	2017-03-28 01:13:43+00	t	t	f	t	Camila	Falabella de Castro	\N	https://graph.facebook.com/1229029703847682/picture	profile/2017/04/13/profile_397.jpg	\N	1	0	f		0	0		0.00	f	\N	f	\N	\N
439	!UopjBC3Ofl18SVcr7rfM0zDTSWM4OWzezS8ScXdo	2017-04-06 00:13:23+00	f	danniexm@hotmail.com	2017-04-06 00:13:22+00	f	t	f	t	Dannie	Ximenes	\N	https://graph.facebook.com/1128645050511711/picture	profile/2017/04/05/profile_439.jpg	\N	2	2	f		0	0		0.00	f	\N	f	\N	\N
351	pbkdf2_sha256$24000$Mjfr5NYm8n7N$xpPStGrKZ6NP+oW1aJjM9wEOSLsFUsWeHLkKid7ldM8=	2016-11-30 23:10:23.263725+00	f	lisborgesmakeup@gmai.com	2016-11-30 23:10:23.147565+00	f	t	f	t	Lisiane	Borges Makeup	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
356	pbkdf2_sha256$24000$wIG8uE5cus8H$IH5CkSXbgWmBZ93mmaIyNlpwNR7r1T+AdjJM/GuLcao=	2016-12-09 14:27:02.38716+00	f	reinaldokalisto@hotmail.com	2016-12-09 14:27:02.142211+00	f	t	f	t	Michele	Guedes	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
30	pbkdf2_sha256$24000$s6U6w7ghiptP$Tl8duyWsjXdWn5gJqhVGJhb6Vil8w18kJ6FBkxl1udI=	2016-10-27 03:26:52.480961+00	f	dennysantony@gmail.com	2016-10-27 03:26:51.512009+00	f	t	f	t	Dennys	Antony dos Santos	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
22	pbkdf2_sha256$24000$3uKmundXDNmv$llTsCv7airVJPXca3O9WSi94vd2lWRk9LIOeuJOqPd4=	2016-10-24 02:43:04.823673+00	f	paulo.sucesso@gmail.com	2016-10-24 02:43:04.70879+00	f	t	f	t	PAULO	FILHO	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
16	!YTvujwakrBZ87fp4mCx5iWW4OFKYiG6exHxPgKWZ	2016-10-23 20:43:07.754609+00	f	palomatavares@gmail.com	2016-10-23 20:43:06.665162+00	f	t	f	t	Paloma	Tavares	\N	https://graph.facebook.com/1251075208256347/picture	profile/2016/10/23/profile_16.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
354	pbkdf2_sha256$24000$pU6SGsmMy0I2$vBOl4weyC+eiFWTBW7dKaUgzwx7y3VlAE9V6gyyDYyg=	2016-12-04 00:41:46.320901+00	f	sandra.sr.807@gmail.com.br	2016-12-04 00:41:46.22362+00	f	t	f	t	Sandra Regina de oliveira	Oliveira	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
23	!cw02elJlM6urYeqrSP1HQf8x7FFMq6wG8HnJkhDy	2016-10-24 03:21:11.327449+00	f	claudia2cartorio@hotmail.com	2016-10-24 03:21:10.655361+00	f	t	f	t	Claudia	Ribeiro	\N	https://graph.facebook.com/508174255973784/picture	profile/2016/10/24/profile_23.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
33	!A0cDE1FFxtjBPvePIAaOWarRlEAvFfSXFWyFTHId	2016-10-27 19:11:26.762338+00	f	lili.potter6@gmail.com	2016-10-27 19:11:26.762338+00	f	t	f	t	Aline	Vasconcelos	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
25	pbkdf2_sha256$24000$4DhocqEyGiiX$16q4YrJTdJEXCnZ1Q6DF27v6SbX28zHzMct87Ir6RjE=	2016-10-24 03:24:31.764634+00	f	crcastroribeiro@gmail.com	2016-10-24 03:24:31.685066+00	f	t	f	t	Claudia	Ribeiro	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
360	pbkdf2_sha256$24000$JJ7NGRTRzN5Q$KIrNel3vPxYJLJ6GbHJ7K1kP4e8X3GWbBlOIal/uF48=	2016-12-31 14:54:21.846813+00	f	contato@acertecertificadora.com.br	2016-12-31 14:54:21.715099+00	f	t	f	t	Acerte certificadora	Certificado digital	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
77	pbkdf2_sha256$24000$xsvN7kjcZy58$Aosz9b3ycFU6zvkKuGgNWUkvyhJyWMaKDJzqIsQqIrM=	2017-02-06 14:07:28.081725+00	f	felipe_gutobc@hotmail.com	2016-11-01 22:13:18.896624+00	f	t	f	t	ANDRE	SANTORO	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
35	!7EgytGKNYR9AirnR4NUZjUKKyuKjQKK3zcwSDmKY	2016-10-29 00:02:32.818389+00	f	estevescaricaturas@gmail.com	2016-10-29 00:02:32.818389+00	f	t	f	t	Esteves	Caricaturas	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
36	!7sA3XO2Lh4ft5rp7Y4yexVuDJgcag1GFGk7kZHvi	2016-10-30 12:16:08.635076+00	f	wendellenrycco2322@gmail.com	2016-10-30 12:16:08.635076+00	f	t	f	t	Wendell	Queiroz	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
37	pbkdf2_sha256$24000$1fyZEgRB42t6$6sLsBXlhdNxYvWf6H6aMjGB9NWhqhuD6yMafN/pNDs0=	2016-10-30 12:43:39.938851+00	f	assiswendelll@gmail.com	2016-10-30 12:43:39.818498+00	f	t	f	t	Wendell	Queiroz	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
38	pbkdf2_sha256$24000$40VaD6JQWigZ$+JcRHG4R6jOZSNkdGvZv3+yxLX1YiJyflONxsRu8UUA=	2016-10-30 22:19:47.297534+00	f	soarescarlet@gmail.com	2016-10-30 22:19:47.11482+00	f	t	f	t	Bárbara	Scarlet	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
42	!LtuWpNzrCgCVRF45HIYz9yFyZaSPiNPzHgFiIUh5	2016-10-31 19:55:08.093921+00	f	adrianofreitas5@hotmail.com	2016-10-31 19:55:08.093921+00	f	t	f	t	Adriano	Freitas	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
43	pbkdf2_sha256$24000$FgNQQ6Th7fm6$d6PIIeROlTyUJv4ybweF9L/n+HkjcyEB4sUtVZNK0P8=	2016-11-01 18:09:00.466267+00	f	woneivital@hotmail.com	2016-11-01 18:09:00.272851+00	f	t	f	t	Wonei	Vital	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
81	!fCr1ou2oN5mmb5dabVcOJnrXT0CMWLJAsI9owxJ3	2016-11-02 16:26:34.925149+00	f	ingra_castelo@hotmail.com	2016-11-02 16:26:34.925149+00	f	t	f	t	Ingra	Castelo Branco	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
76	pbkdf2_sha256$24000$MZtfHz6GpmCW$CqRGZz+1WMPYVnKpYU/1yrFHpovux06er0frEL2S3HY=	2016-11-01 22:12:33.426435+00	f	mic.bell81@gmail.com	2016-11-01 22:12:32.50432+00	f	t	f	t	Michelle	Lima	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
79	pbkdf2_sha256$24000$wtZvVNOnBQUd$vff6ligxtEOjWCANx4GLDGXc0dOeBOklfG0HnQ03hTA=	2016-11-02 12:40:39.928095+00	f	andrezafernanda_soares@hotmail.com	2016-11-02 12:40:39.240112+00	f	t	f	t	Andreza	Soares	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
85	!x9rcUIF8kQNFkfrddRC2GoxyOOtdhStdLiSTJRJQ	2016-11-03 03:16:35.295232+00	f	ingridcblima@gmail.com	2016-11-03 03:16:35.295232+00	f	t	f	t	Ingrid	Cristina Lima	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
93	pbkdf2_sha256$24000$xqrFiuQ1O5Ul$QoyYSqh09FIw6orBZRcEZzSNL8zQlqYKZ8O3ipkU2tE=	2016-11-05 01:15:43.172352+00	f	chris_manaus@hotmail.com	2016-11-05 01:15:42.96757+00	f	t	f	t	Christianny	Sena	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
113	pbkdf2_sha256$24000$3XhLYIhYYFbK$md7P4t543onbRLd+iKxVJ/hgN6bzpxHbCGsSvX+Ynb0=	2016-11-09 13:56:14.963774+00	f	esenna170285@gmail.com	2016-11-09 13:56:14.788336+00	f	t	f	t	eliane	sena	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
102	!T8RJjvV68CCD63lKZz0rTKpPmkX4RESERmxHdMhQ	2016-11-05 19:38:46.551705+00	f	map_035@hotmail.com	2016-11-05 19:38:45.556521+00	f	t	f	t	Marcio	Alves	\N	https://graph.facebook.com/1136971626371499/picture	profile/2016/11/05/profile_102.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
398	!r1Oa0b9B4LqBIhb3StgkDKMMhkyC18uImEFt0eaU	2017-03-28 04:39:39.942421+00	f	hick.candellariun.xp@hotmail.com	2017-03-28 04:39:39.563913+00	f	t	f	t	Henrique	Souza	\N	https://graph.facebook.com/1199866566777594/picture	profile/2017/03/28/profile_398.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
119	!HdjmrnZoEI83PKsEq7O6miotxfKzbHCmCW2ohyH4	2016-11-16 16:55:18.73238+00	f	marluceassimen@gmail.com	2016-11-16 16:55:17.908588+00	f	t	f	t	Marluce	Assimen	\N	https://graph.facebook.com/1261887047215660/picture	profile/2016/11/16/profile_119.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
104	pbkdf2_sha256$24000$1dBGDLaL4n4r$BdaZLIO6NiJ3C/n22KooNGeoWdmJVuKyY6QOjuiLVcg=	2016-11-05 20:03:57.306961+00	f	jurimarmaiajr@hotmail.com	2016-11-05 20:03:57.204062+00	f	t	f	t	Jurimar	Maia	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
114	!JZpd8qRlA7FN3eRMSXXh7IctN5MTP2DnKq0QYuax	2016-11-10 14:16:12.891114+00	f	santiagomarcilene@gmail.com	2016-11-10 14:16:12.064577+00	f	t	f	t	Marcilene	Santiago	\N	https://graph.facebook.com/1034114506696925/picture	profile/2016/11/10/profile_114.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
105	!syrLSqLHHFUQqXoONPx7cp3hoULAueITHxP2aj2j	2016-11-05 21:05:25.925891+00	f	joyce_dannay@hotmail.com	2016-11-05 21:05:25.357311+00	f	t	f	t	Joyce	Dannay	\N	https://graph.facebook.com/10205876962442947/picture	profile/2016/11/05/profile_105.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
107	pbkdf2_sha256$24000$RY9nOUg48sKp$qbfR7+jz5HpgCNV50YJx3J1H/wyUm1vhSqeGH9WwFj8=	2016-11-06 00:31:28.458131+00	f	hudsandrakat@hotmail.com	2016-11-06 00:31:28.36753+00	f	t	f	t	Hudsandra	Teixeira	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
352	!5lqdXlmFeOOZu2T29JPQDjpJHQGCOXejMHs5bIg6	2016-11-30 23:30:49.435389+00	f	lisianelcborges@gmail.com	2016-11-30 23:21:37.950242+00	f	t	f	t	Lisiane	Borges	\N	https://graph.facebook.com/1456280187733172/picture	profile/2016/11/30/profile_352.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
109	pbkdf2_sha256$24000$EnQtmMCXEWeS$kMP55q5ZJCAVXhA0PHEfaXdKcyqnV3R+eZzQ/znM1To=	2016-11-07 13:53:55.591327+00	f	jessyca_cesar@outlook.com	2016-11-07 13:53:55.472518+00	f	t	f	t	Jéssyca	César	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
103	pbkdf2_sha256$24000$ZiB90MyoSKFC$94PdciEXDcp41NX1GqU7wfu138bcSAL61lxsEmpTBGw=	2016-11-08 13:48:44.083086+00	f	clinfisiomao@gmail.com	2016-11-05 19:40:45.21369+00	f	t	f	t	Clinfisio	Clínica de Fisioterapia	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
111	pbkdf2_sha256$24000$obl23vzXHWPt$GJGCCMzaxl/5tVScXhPjAOw9vznqvbntq1rNIW8PSic=	2016-11-08 15:58:36.851184+00	f	ferrarezimae@gmail.com	2016-11-08 15:58:36.705106+00	f	t	f	t	Bruno	Ferrarezi	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
116	!m1MuKqScNcRCE0i73uwVSaysIeyCY5OPkSsIggma	2016-11-11 10:12:30.316334+00	f	luizroberto.pereira16@gmail.com	2016-11-11 10:12:29.637386+00	f	t	f	t	Luiz	Roberto	\N	https://graph.facebook.com/1675645566080189/picture	profile/2016/11/11/profile_116.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
117	pbkdf2_sha256$24000$CqKiCqjrSnkd$O7GZF5S6Skb7Pk8HxsNUaVFuzozC6zt8bEfPT7E8Wos=	2016-11-14 13:27:48.161786+00	f	uchoaart@gmail.com	2016-11-14 13:23:27.900287+00	f	t	f	t	SÉRGIO	UCHÔA	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
359	!YAzeu4bFzV1j8LSbsjW4pOop1cTEjpqk4Qp0eSJn	2016-12-27 21:28:19.783011+00	f	geraldofarias92@gmail.com	2016-12-27 21:28:19.340907+00	f	t	f	t	Geraldo	Augusto Farias	\N	https://graph.facebook.com/1327111284030044/picture	profile/2016/12/27/profile_359.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
118	pbkdf2_sha256$24000$cXrAjb8L91y5$ZTYIXzokfIZMx/ICha3hMnEdlbRn0yII8R5DwTRduMs=	2016-11-15 00:00:06.611218+00	f	financeiro@cliviva.com.br	2016-11-15 00:00:06.42259+00	f	t	f	t	Clínica Cliviva	Centro Médico da Liberdade	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
355	pbkdf2_sha256$24000$BHNWiCibREc3$HIJeV6NRtRX79z2pYR9KAsbnLHU1CpO2KxfiPX3Wde4=	2016-12-06 22:50:40.840386+00	f	rafaelsilva181@outlook.com	2016-12-06 22:48:01.937891+00	f	t	f	t	Rafael	da Silva Pedroso	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
349	!0qYPGjn8j6xjpxH9XDzN6NO5YZinrNN8RTGJtpda	2016-11-30 13:21:59.038956+00	f	raiinonata@hotmail.com	2016-11-30 13:21:58.03942+00	f	t	f	t	Ray	Silva	\N	https://graph.facebook.com/985651848214123/picture	profile/2016/11/30/profile_349.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
131	pbkdf2_sha256$24000$nVg0dWXpTy1W$Pc0UZXMkoVdtOhlQuKJQty6bcieqmxjyuo4Yj4VVO0Y=	2016-11-19 14:54:21.493648+00	f	breno@vanguardacomunicacao.com.br	2016-11-19 14:22:58.756564+00	f	t	f	t	Breno	Maciel	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
129	pbkdf2_sha256$24000$w2fLFuMtOvzN$TfARPHY1U2Z4kEmy4wHHMeLdGpzfj3gfORJdS/f8GJM=	2016-11-19 01:45:46.167908+00	f	biamorares796@gmail.com	2016-11-19 01:45:46.024653+00	f	t	f	t	Bia	Moraes	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
130	pbkdf2_sha256$24000$X6rTWBgPGTfb$VNofHxOA7WRp0ZyFWzQZ2U+jgtH2QHJkvV6e2Re20qc=	2016-11-19 01:48:50.527546+00	f	mariamoraes796@gmail.com	2016-11-19 01:48:50.442052+00	f	t	f	t	Maria	Moraes	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
140	!SxMajXSJR9HxrlfPobGOn93oH86MFMHEnXEZMi3O	2016-12-19 22:31:44.688311+00	t	rnovellino@gmail.com	2016-11-19 16:26:21+00	t	t	f	t	Raoni	Novellino	\N	https://graph.facebook.com/10207068720506061/picture	profile/2016/12/19/profile_140.jpg	\N	1	0	f		0	0	11991109009	0.00	f	\N	f	\N	\N
39	pbkdf2_sha256$24000$stZPO0M3Xwkp$j3SrIytiHtY5KwBJ1krf283MxGz6B5qapQAKwNbA8oU=	2017-02-24 14:37:14.269202+00	t	elton@hotmail.com	2016-06-21 13:08:53+00	t	t	f	t	Ramayana	Menezes	\N	https://graph.facebook.com/1409594705724802/picture	profile/2016/11/20/profile_39.jpg	\N	1	0	f		0	0	92981191519	\N	f	\N	f	\N	\N
374	!xhkUEsDjQkVZrvbHDl8HtE7lX3OrEhyA815LPV4s	2017-01-26 19:44:45.840745+00	f	mayara_braz@hotmail.com	2017-01-26 19:44:45.635205+00	f	t	f	t	Mayara	Braz	\N	https://graph.facebook.com/10206289310791656/picture	profile/2017/01/26/profile_374.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
420	!KThDXZYRihDBaHKN2ZNYjKYwZ2ME5RXAIN5Yi0J3	2017-03-31 21:30:34+00	f	eidinhamartins@hotmail.com	2017-03-31 21:30:34+00	f	t	f	f	Eidinha	Martins	\N	https://graph.facebook.com/1367401263322886/picture	profile/2017/03/31/profile_420.jpg	\N	2	2	f		0	0	92992659592	0.00	f	\N	t	\N	\N
353	pbkdf2_sha256$24000$sms3zEXzIMtG$YG3O00Aoc1Mr4QLcWiXXUa7kVTEjsRXVndjjgA+Kddc=	2017-02-07 00:05:51.969059+00	t	funk1470@yahoo.com	2016-12-02 14:59:23+00	t	t	f	t	Raoni	Novellino	\N			\N	1	0	f		0	0		0.00	f	\N	f	\N	\N
377	!N6RWBoHzrfMb4ixolE9gWK2B20FHBl8q5lCMa8DW	2017-01-29 16:48:00.250899+00	f	biancaelita97@hotmail.com	2017-01-29 16:47:59.599397+00	f	t	f	t	Bianca	Elita	\N	https://graph.facebook.com/624711637715583/picture	profile/2017/01/29/profile_377.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
363	pbkdf2_sha256$24000$RdtPfS5fqzvc$2+MEvaFkMt7kIIJmYycOc0C8HLLRgeh4OKeS6ME/ySY=	2017-01-08 16:12:33.625003+00	f	clydomarevomel@hotmail.com	2017-01-08 16:12:33.356874+00	f	t	f	t	CLYDOMAR	MATOS	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
364	pbkdf2_sha256$24000$LmyNcBxxIg8D$bdBfjS1wwFWeVcg9BL5cBCubKfAMvEdbBjrkFJh9VgI=	2017-01-08 16:49:38.639828+00	f	aldemirn50@gmail.com	2017-01-08 16:49:38.458409+00	f	t	f	t	Aldemir	Nascimento	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
365	pbkdf2_sha256$24000$0XB4NR3TkWfG$Fv6vtON9ThGYR1T02Gu2EDb/zJzM5AdenTa9RFcWD3Q=	2017-01-18 14:12:59.905738+00	f	souza-samanta@hotmail.com	2017-01-18 14:12:59.752987+00	f	t	f	t	Samanta	Souza	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
382	pbkdf2_sha256$24000$IrrhEAdnKU8C$AAucCG0oh5oVoVTDEEPJMqMAHD3oMfBcRWH09BRR9jM=	2017-02-22 20:34:54.608688+00	f	oi@oi.com	2017-02-22 20:34:54.476292+00	f	t	f	t	Oi	Oi	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
452	pbkdf2_sha256$24000$9b67ilt6xfGE$wzlUpmc0KVG0Wp1CrAV76tH+GJLcfi5xnKyRaxx0h/k=	2017-04-08 16:43:59.402408+00	f	yanbrandao	2017-04-08 16:43:59.326048+00	f	t	f	t	Yan	Diniz	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f		
416	!VBQ2B1X6Bf5SIwIaQJkAXjX59UetgLLNGqhqY7Wm	2017-03-31 19:30:47+00	f	EvelynPereira	2017-03-31 19:30:45+00	f	t	f	t	Evelyn	Pereira	\N	https://graph.facebook.com/1255052631259184/picture	profile/2017/03/31/profile_416.jpg	\N	2	2	f		0	0	92993469711	0.00	f	\N	t	\N	\N
399	pbkdf2_sha256$24000$FoXSRuhOGQdF$IAfhRfv3uArPwfxLrmYXYiRsX1LleN7s8Kx8KWf7ykQ=	2017-03-28 15:50:06.692582+00	f	keinevalle@yahoo.com.br	2017-03-28 15:50:06.616498+00	f	t	f	t	Keine	Valle	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
381	!kMmOjEUFii8no3CqwQSykTumQSVDTGm8A8iJLPBP	2017-02-21 01:19:02.948539+00	f	monicads.dias@gmail.com	2017-02-21 01:19:02.298173+00	f	t	f	t	Mônica	Dias	\N	https://graph.facebook.com/776212035888947/picture	profile/2017/02/20/profile_381.jpg	\N	1	0	f	\N	0	0	99999999999	0.00	f	\N	f	\N	\N
383	!ThuhIIgi76V8ZbiqYNFGjPLE4as9C7htlMZ7wWLC	2017-03-02 04:58:38.780726+00	f	niloalves@gmail.com	2017-03-02 04:58:38.211787+00	f	t	f	f	Nilo	Alves	\N	https://graph.facebook.com/1428562197156235/picture	profile/2017/03/02/profile_383.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
380	!Rxf9eSy0ENGOAhbIMOTGYFDnotLlyAl60JngGlGp	2017-02-01 12:04:48.273965+00	f	patrikrc@hotmail.com	2017-02-01 12:04:47.267793+00	f	t	f	t	Patrik	Ribeiro Costa	\N	https://graph.facebook.com/1598483603500750/picture	profile/2017/02/01/profile_380.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
385	pbkdf2_sha256$24000$7J1Ztaawbn8b$tXDHTKHNpXixKHV1UGdOZ1RPPklg4qVHZJohVMkzprw=	2017-03-07 21:21:42.358075+00	f	fabio.appgames@gmail.com	2017-03-07 01:36:51.189718+00	f	t	f	t	Fabio	Gameapp	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
384	!JsFzo4gxcSVxmglKEQSTFmjgGAc6rjzaNSUtW80Y	2017-03-20 20:31:27.326692+00	f	barbosa.alves@hotmail.com.br	2017-03-07 01:16:32.020705+00	f	t	f	t	Rafael	Alves	\N	https://graph.facebook.com/1005290666270965/picture	profile/2017/03/20/profile_384.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
454	pbkdf2_sha256$24000$PXH5DqWA3C6t$WrsoPoc9kqoKtAfHe/g/7OpyvRn7CoyLIW058efi1nw=	2017-04-08 19:57:12+00	f	janaina.ncosta@gmail.com	2017-04-08 19:57:12+00	f	t	f	f	SEMPRE	BELLA	\N		profile/2017/04/08/MARCA_SEMPRE_BELLA_FINAL_CURVAS.PNG	\N	2	2	f		0	0		0.00	f	\N	t	SEMPRE BELLA CENTRO DE BELEZA - EIRELE	
417	pbkdf2_sha256$24000$0JxqH2hTaSKb$p3b68PZIF8h5AbyIGMw8EUD2Q4eDxvDjL+JhjgL3dqw=	2017-03-31 19:33:27.247703+00	f	asd2	2017-03-31 19:33:27.16834+00	f	t	f	t	asd1	asd2	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
400	pbkdf2_sha256$24000$pinqg7povIrK$xMAJsdF44FSXNUM3hg7nD5PjbU2RrZvHywzyWMsiWTQ=	2017-03-28 20:00:50+00	f	alexfracalima@gmail.com	2017-03-28 20:00:50+00	f	t	f	t	Alex	Franca	\N		profile/2017/03/28/asdasdasdsad.jpg	\N	2	2	f		5	0	993888955	0.00	f	\N	t	\N	\N
455	pbkdf2_sha256$24000$ySASuDpkwdL0$enN+DjpLNTuxAfZgGBQNJD09Knz9UvSp7N6vjQ+8IVs=	2017-04-08 22:46:43+00	f	belladonnavieiralves@gmail.com	2017-04-08 22:46:43+00	f	t	f	f	BELLADONNA	HAIR	\N		profile/2017/04/08/nova_logo.jpg	\N	2	2	f		0	0		0.00	f	\N	t	Belladonna Hair Vieiralves	
137	pbkdf2_sha256$24000$08v8sHx79Tc0$AbVDfpbEpp7I6k5aXLRkULQ35ej5bXmU7fPedgkbT4A=	2016-06-30 11:20:22.231844+00	f	barretolimaf@gmail.com	2016-06-30 11:20:22.112339+00	f	t	f	t	Fred	Barreto Lima	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
138	pbkdf2_sha256$24000$TJG0MFDXEgvL$kbcXrKC704V+Cr2L3RoRLt+60IOjg+/vJv4QuSiMQqE=	2016-06-30 12:51:27.042963+00	f	alex.alves2020@gmail.com	2016-06-30 12:51:26.919942+00	f	t	f	t	Alexandro	Alves	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
134	!VI9kcBGipDOoXIpk3oK8hEjUEIgm56m96pHSFJ0t	2016-06-30 06:59:29.798388+00	f	alessandro.barbosa@gmail.com	2016-06-30 06:59:28.584217+00	f	t	f	t	Alessandro	Barbosa	\N	https://graph.facebook.com/878041928930941/picture	profile/2016/06/30/profile_134.jpg	\N	1	0	t	fasffffffff  fsafafaf	0	0	\N	45.00	t	20	f	\N	\N
75	pbkdf2_sha256$24000$P5XQBdwtrkxP$0FZhur0xxMLGsWz0fwczso5Vxa8/MVrNIj746rMzqcQ=	2016-06-30 14:22:58.589478+00	t	services@indicoapp.com	2016-06-28 08:26:44+00	t	t	f	t			\N			\N	1	0	f		0	0	\N	\N	f	\N	f	\N	\N
206	!wROs8E4VaG03hawNzsKZ6fwiKtQnJz0RPVcY6O7Q	2016-07-19 12:56:41.236723+00	f	maralveslapa@gmail.com	2016-07-19 12:56:40.560281+00	f	t	f	t	AlvesLapa	Corretora	\N	https://graph.facebook.com/165949487157025/picture	profile/2016/07/19/profile_206.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
181	pbkdf2_sha256$24000$CRX9VsZCcxGt$XssBWb5JKN91igWg9qPiKu7kUM1/mjHLN4n3pG2rk/E=	2016-06-30 20:02:57+00	f	almirarochamartins@gmail.com	2016-06-30 20:02:56+00	f	t	f	t	Almira	Martins	\N			\N	1	0	t	Me chamo Mira e trabalho há 3 anos como diarista. Gosto do que faço. Lavo, passo e limpo, só não cozinho. Trabalho em casa com animais.	0	0	\N	80.00	t	30	f	\N	\N
217	pbkdf2_sha256$24000$LCZ6U0cqQXG4$5M8L38jPAeKcAJl2b3M80LYAzvTo2F7YDo4MFMY6iOI=	2016-07-21 19:11:10.055911+00	f	aldvieira1068@gmail.com	2016-07-21 19:11:09.861311+00	f	t	f	t	Ana Lucia	Dutra Vieira	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
249	pbkdf2_sha256$24000$mDujkMDTKW7k$2NcGuh85Pq/kK4p9JVWPPFDM0UpjTRfgLdogDAlxBkM=	2016-07-23 20:56:46.162777+00	f	kelma2016.maia@outlook.com	2016-07-23 20:56:46.048229+00	f	t	f	t	kelma	maia	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
191	!266AyBMwuWr1reWAF65o1SBZlxAdSpWK4aZ6dy7J	2016-07-02 23:39:30.083721+00	f	tofsutille@gmail.com	2016-07-02 23:39:29.288221+00	f	t	f	t	Sutille	Christopher	\N	https://graph.facebook.com/10208399771465379/picture	profile/2016/07/02/profile_191.jpg	\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
182	pbkdf2_sha256$24000$L1mk5W2uGB10$aXuM/NPJTtpuTZJzEpujBSQnhYIj2/gAqrhfVkJ+oAs=	2016-07-01 21:31:16.342239+00	f	renatinhaxp_pinheiro@hotmail.com	2016-07-01 21:31:15.646241+00	f	t	f	t	Renata	Pinheiro	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
208	pbkdf2_sha256$24000$khD0dbllryjW$UYGLNOkbwFsvj9JZNEJfW1sJrVVTKU0dehUUHPddNiQ=	2016-07-20 01:22:25.198424+00	f	trabalho@admin.com	2016-07-20 01:22:25.1073+00	f	t	f	t	Fabio	Serra	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
200	pbkdf2_sha256$24000$yAP39VRzLWmP$CZp3YR+gdfr2+C0niYiLiTaVaMOnHHG0p8G7qdSUxWY=	2016-07-13 14:54:02.618876+00	f	sprissantoa@yahoo.com.br	2016-07-13 14:54:02.531051+00	f	t	f	t	Priscila	Santos	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
202	pbkdf2_sha256$24000$8MaI6vlyrJPG$St8dK4XA76LOptZBneBm9XQV6777SsI6abGgBvD+IAY=	2016-07-15 04:29:17.422857+00	f	tmrmotta@outlook.com	2016-07-15 04:29:17.172397+00	f	t	f	t	Thiago	Ferreira	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
177	pbkdf2_sha256$24000$VCsQnqTgB2ka$7RDmL23EN2iK+TzfIppqUn5BtMRjOw7gXfP1FMIM9bg=	2016-06-30 19:27:05.394104+00	f	crisvidal.designer@gmail.com	2016-06-30 19:27:05.232605+00	f	t	f	t	Cristhiany	Vidal	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
178	pbkdf2_sha256$24000$iTjGPMVDn7M2$CiV3JHBYr04IOcXK0E+ALVxjSK3dYoq1KeW+QuGj/KM=	2016-06-30 19:32:33.650594+00	f	uniformes.perola@gmail.com	2016-06-30 19:32:33.321096+00	f	t	f	t	Pérola	Uniformes	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
456	pbkdf2_sha256$24000$xgSt9cYeXioC$4HK9GNIFJZQIfxtUEuTFvS50vbjY9bjbCMAIRUIqgfU=	2017-04-09 18:29:35+00	f	anick.alves@hotmail.com	2017-04-09 18:29:35+00	f	t	f	t	Anick	Alves	\N		profile/2017/04/09/Anick.jpg	\N	2	2	f		0	0		0.00	f	\N	f		
457	pbkdf2_sha256$24000$sHLwWNovuw8m$O5faffx+gvrJX+qEArBMHcT9Ex0pRHvMY+2pKWvYTVA=	2017-04-09 18:48:16+00	f	lindacarvalh3@gmail.com	2017-04-09 18:48:16+00	f	t	f	t	Itacyara	Alves	\N			\N	2	2	f		0	0		0.00	f	\N	f		
224	pbkdf2_sha256$24000$b0nCSbRoGth7$hwQaLsWG3HPklC5sx7pnfSwkztYrQsgUHLSzIAAvb9M=	2016-07-21 20:56:46.18095+00	f	bio_frors@hotmail.com	2016-07-21 20:56:46.043475+00	f	t	f	t	Fabricio	Froes	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
215	pbkdf2_sha256$24000$GdumNKdWYufB$/x5izGb+9lWIEo7+j5Z5l9wxTRMdiDcO4taghgkZxtI=	2016-07-22 03:23:20.741222+00	f	thalita_castelo@hotmail.com	2016-07-21 18:51:25.259894+00	f	t	f	t	Thalita	Castelo branco	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
458	!gYswrhcFfdaIYLq2X9at0T6Tj67MOZYRnhdiCzoG	2017-04-09 21:16:34+00	f	vanessabteles2@gmail.com	2017-04-09 21:16:33+00	f	t	f	t	Vanessa	Teles	\N	https://graph.facebook.com/683135375206735/picture	profile/2017/04/09/profile_458.jpg	\N	2	2	f		0	0		0.00	f	\N	f		
312	pbkdf2_sha256$24000$lJc3JIJOBX2t$YBFnKa5bcVBwAM5qHl0Fez+0VKCqvpRstPWZVxUq1Qk=	2016-09-20 00:24:05.730693+00	f	mvmconstrucoes.am@gmail.com	2016-09-20 00:20:18.84419+00	f	t	f	t	MVM	Construções	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
278	pbkdf2_sha256$24000$CQceIC2tm4gf$aI19aBr4TSyGT+ErM2Vj5wsfjJ4WKQkNZgymqkgLmQc=	2016-08-10 23:59:13.453731+00	f	ramayana@prodam.am.gov.br	2016-08-05 18:54:46.330276+00	f	t	f	t	Ramayana	Menezes	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
459	pbkdf2_sha256$24000$vhzAbbElBwHQ$x3jQ/6/efatSdl1by/mIBk1L44ciysJ7qD55flCvRFk=	2017-04-11 22:51:35.64609+00	f	hellenalmadamakeup@hotmail.com	2017-04-11 01:14:49+00	f	t	f	t	Lerita	Brito Almada	\N	https://graph.facebook.com/1316240538444615/picture	profile/2017/04/11/16730530_1261857093882960_8417455421049805410_n.jpg	\N	2	2	f		0	0		0.00	f	\N	t	Studio Glow by Lerita Almada	
12	!XsDkaayV2GTSLNlxLjFmkgPE2Qj2Fy8zenlUlcYu	2016-10-23 03:18:55.758171+00	f	dra.mariliaoliveira@gmail.com	2016-10-23 03:18:55.758171+00	f	t	f	t	Marilia	Oliveira	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
87	pbkdf2_sha256$24000$ZwcPsSGZ62Rj$tomBZ5iYUcHFwr7sCDY9b7YxMag4ibHPXm84TNPuWaI=	2016-11-03 18:08:05.801467+00	f	lidianebmelo@hotmail.com	2016-11-03 18:08:05.640745+00	f	t	f	t	Lidiane	Maciel	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
89	!KxyKNVRihXiSySHVpUx82S2aIwTsB16qIkcIVLbF	2016-11-04 17:03:13.284355+00	f	mitto@emci.com.br	2016-11-04 17:03:13.284355+00	f	t	f	t	Mitto	Santos	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
91	!MiS3He0aVSBOHuLBPANPkzdmgLwXNh169efYv0YC	2016-11-04 23:05:31.26895+00	f	mayaragrimm@me.com	2016-11-04 23:05:31.26895+00	f	t	f	t	Mayara	Grimm	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
80	pbkdf2_sha256$24000$zBnYEWpNYaGb$kri561aYvVcSklpKyhur2+1Oj0ZOnLVHpCf+/zNHOmc=	2016-06-28 16:55:51.053422+00	f	victor.lauria@gmail.com	2016-06-28 16:55:50.444417+00	f	t	f	t	Victor	Lauria	\N			\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
98	!cL0pkPtCyLckYRhGKyzCj4xwRiMu7gxxccUdhTVg	2016-06-29 01:28:31.983701+00	f	kamylemedina@hotmail.com	2016-06-29 01:28:31.403217+00	f	t	f	t	Kamyle	Medina Monte Rey	\N	https://graph.facebook.com/10207976031253375/picture	profile/2016/06/28/profile_98.jpg	\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
11	pbkdf2_sha256$24000$PPPaQlWYBxlr$fLgMCOkYHXsR00cUYHEtz0OaZybPVWzC9bF0LL3Fv94=	2016-06-14 16:23:30.593626+00	f	ph_gomes@yahoo.com.br	2016-06-14 16:23:30.442338+00	f	t	f	t	Pedro	Gomes	\N			\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
309	pbkdf2_sha256$24000$JF3nbMqjduo0$OR3F4qhYsrHWT4AHhnVRJMCv7J3M5VDM6f7ocyfwBfw=	2016-09-06 07:39:36.242698+00	f	lilianmds23@hotmail.com	2016-09-06 07:31:03.654608+00	f	t	f	t	Lilian	Moreira	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
32	pbkdf2_sha256$24000$OpluscUvLShS$NZemWcY4I4H0e+HTYpJUN0INa5pIdLNGltqwRfJkiCE=	2016-06-20 21:00:33.506166+00	f	sublimeessencias@gmail.com	2016-06-20 13:29:58.975196+00	f	t	f	t	Sublime	Essências	\N			\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
13	!RzFs0c4HWfTjXTuLKF0mkJlwW4PxKr47H5iAOssM	2016-06-15 15:52:30.096462+00	f	alexandresoria@msn.com	2016-06-15 15:52:29.638474+00	f	t	f	t	Alexandre	Soria	\N	https://graph.facebook.com/10204309310127514/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
14	pbkdf2_sha256$24000$nFLXqaZNzWo6$oGesoZP3z0O9hATZY+lxOlX+xiQ8ysZFexxUuzuFGF4=	2016-06-15 16:32:07.087104+00	f	neves_leo@hotmail.com	2016-06-15 16:32:06.954501+00	f	t	f	t	LEONARDO	RODRIGUES	\N			\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
99	!Gks0P94DikCm0F8BwWrFHzLeqYK4JATMG25anLhm	2016-07-08 02:31:31.102459+00	f	jacobmonteiro@hotmail.com	2016-06-29 01:34:23.131189+00	f	t	f	t	Jacob	Monteiro	\N	https://graph.facebook.com/1284003761617659/picture	profile/2016/07/13/profile_99.jpg	\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
28	!9SdlqLHX3tBs2XzMI8JLlKeaSqLnAjjpOMbMUuWk	2016-06-19 16:55:46.04275+00	f	sandra_sarkis@yahoo.com.br	2016-06-19 16:55:45.867222+00	f	t	f	t	Sandra	Sarkis	\N	https://graph.facebook.com/1191358567581238/picture		\N	1	0	f	\N	0	0	\N	\N	f	\N	f	\N	\N
357	!qwRwFJWDPHCoeS2Y0IyaXcCKEFFHsiD1c035MMyS	2016-12-19 00:42:10.812307+00	f	felipe.carvalho07@gmail.com	2016-12-18 19:08:02.010819+00	f	t	f	t	Felipe	Carvalho	\N	https://graph.facebook.com/10209754042922126/picture	profile/2016/12/29/profile_357.jpg	\N	1	0	f	\N	0	0	92984201817	0.00	f	\N	f	\N	\N
361	pbkdf2_sha256$24000$1gOVcONmqSlc$cmPrbi20bFIvtoaom6U9pMb1rik8b8h1crA+ZtbAvMs=	2017-01-03 13:31:41.054229+00	f	dra.janainafurtado@gmail.com	2017-01-03 13:31:40.803193+00	f	t	f	t	Janaina	Furtado	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
362	pbkdf2_sha256$24000$qY7DeqbMCX83$7DVA/eLl044dBcQg/wCnrsy7AUK0U9zB5mVrqvES2Js=	2017-01-04 17:14:05.806128+00	f	maialarissa216@gmail.com	2017-01-04 17:14:05.642545+00	f	t	f	t	Larissa	Mais	\N			\N	1	0	f	\N	0	0	\N	0.00	f	\N	f	\N	\N
\.


--
-- TOC entry 3630 (class 0 OID 1297267)
-- Dependencies: 238
-- Data for Name: core_indicouser_categories; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_indicouser_categories (id, indicouser_id, servicecategory_id) FROM stdin;
35	311	62
37	322	22
62	338	35
68	400	21
69	403	22
70	404	22
71	321	24
72	321	23
73	420	24
74	423	23
75	424	23
76	425	23
77	426	23
78	428	23
79	429	23
80	416	21
81	430	23
82	433	22
83	434	22
84	439	22
85	442	22
86	443	24
87	445	22
88	447	21
89	444	22
90	444	21
91	446	22
92	448	21
93	448	22
94	448	23
95	448	24
96	450	22
97	450	21
98	451	22
99	451	21
100	451	24
101	451	23
104	435	22
105	441	22
106	441	21
108	454	21
109	454	24
110	454	22
111	454	26
112	454	25
113	454	23
114	455	22
115	455	21
116	455	23
117	455	24
118	456	22
119	459	22
\.


--
-- TOC entry 3721 (class 0 OID 0)
-- Dependencies: 237
-- Name: core_indicouser_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_indicouser_categories_id_seq', 119, true);


--
-- TOC entry 3632 (class 0 OID 1297277)
-- Dependencies: 240
-- Data for Name: core_indicouser_groups; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_indicouser_groups (id, indicouser_id, group_id) FROM stdin;
\.


--
-- TOC entry 3722 (class 0 OID 0)
-- Dependencies: 239
-- Name: core_indicouser_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_indicouser_groups_id_seq', 1, false);


--
-- TOC entry 3723 (class 0 OID 0)
-- Dependencies: 191
-- Name: core_indicouser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_indicouser_id_seq', 463, true);


--
-- TOC entry 3634 (class 0 OID 1297285)
-- Dependencies: 242
-- Data for Name: core_indicouser_skills; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_indicouser_skills (id, indicouser_id, skill_id) FROM stdin;
242	435	253
86	311	244
243	435	254
88	322	81
89	322	87
90	322	245
244	435	255
245	435	245
246	435	252
258	441	255
259	441	87
260	441	245
261	441	80
262	441	77
263	441	78
264	441	79
265	441	247
9	338	77
10	338	78
113	400	77
114	400	78
115	400	79
116	400	247
117	403	87
118	403	245
119	321	248
120	321	88
121	321	89
122	321	90
123	321	249
124	321	86
125	420	82
126	420	248
127	420	88
128	420	89
129	420	90
130	420	249
131	423	250
132	424	250
133	425	250
134	426	250
135	428	250
136	429	250
137	416	80
138	416	78
139	430	250
140	430	86
141	433	81
142	434	87
143	434	245
144	439	81
145	439	87
146	439	245
147	442	254
148	442	87
149	442	245
150	443	248
151	443	88
152	443	89
153	443	90
154	443	91
155	443	249
156	445	254
157	445	82
158	447	80
159	447	78
160	447	79
161	447	247
162	444	81
163	444	87
164	444	245
165	444	252
166	444	80
167	446	87
168	448	77
169	448	78
170	448	247
171	448	253
172	448	254
173	448	255
174	448	82
175	448	252
176	448	250
177	448	251
178	448	83
179	448	84
180	448	86
181	448	248
182	448	88
183	448	89
184	448	90
185	448	91
186	448	249
187	450	81
188	450	87
189	450	245
190	450	80
191	450	77
192	450	78
193	451	253
194	451	254
195	451	255
196	451	82
197	451	252
198	451	77
199	451	247
200	451	248
201	451	89
202	451	90
203	451	91
204	451	250
205	451	251
206	451	84
292	454	250
293	454	251
294	454	84
295	454	86
296	454	89
297	454	91
236	375	252
316	455	248
317	455	250
318	455	251
319	455	82
320	455	83
321	455	84
322	455	86
323	455	88
324	455	89
325	455	90
326	455	91
327	455	249
328	455	77
329	455	78
330	455	247
331	456	255
332	456	87
333	456	245
334	456	252
335	459	253
336	459	254
337	459	255
338	459	81
339	459	87
340	459	252
347	404	87
348	404	245
\.


--
-- TOC entry 3724 (class 0 OID 0)
-- Dependencies: 241
-- Name: core_indicouser_skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_indicouser_skills_id_seq', 348, true);


--
-- TOC entry 3636 (class 0 OID 1297293)
-- Dependencies: 244
-- Data for Name: core_indicouser_user_permissions; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_indicouser_user_permissions (id, indicouser_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3725 (class 0 OID 0)
-- Dependencies: 243
-- Name: core_indicouser_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_indicouser_user_permissions_id_seq', 1, false);


--
-- TOC entry 3661 (class 0 OID 5319327)
-- Dependencies: 269
-- Data for Name: core_indicouser_work_zones; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_indicouser_work_zones (id, indicouser_id, workzone_id) FROM stdin;
3	375	40
4	375	20
\.


--
-- TOC entry 3726 (class 0 OID 0)
-- Dependencies: 270
-- Name: core_indicouser_workzones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_indicouser_workzones_id_seq', 4, true);


--
-- TOC entry 3598 (class 0 OID 1297129)
-- Dependencies: 206
-- Data for Name: core_notification; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_notification (id, message, is_read, level, to_id) FROM stdin;
3	A Solicitação cod. 2 foi aceita pelo profissional.	f	2	75
4	A Solicitação cod. 2 foi iniciada pelo profissional.	f	2	75
5	A Solicitação cod. 2 foi finalizada pelo profissional.	f	2	75
2	A Solicitação cod. 1 foi aceita pelo profissional.	f	2	78
7	Solicitação cod. 2 foi rejeitada pelo profissional.	f	6	140
8	A Solicitação cod. 3 foi aceita pelo profissional.	f	2	140
9	Solicitação cod. 3 foi cancelada pelo profissional.	f	6	140
10	A Solicitação cod. 4 foi aceita pelo profissional.	f	2	140
11	A Solicitação cod. 4 foi iniciada pelo profissional.	f	2	140
12	A Solicitação cod. 4 foi finalizada pelo profissional.	f	2	140
13	A Solicitação cod. 1 foi iniciada pelo profissional.	f	2	78
14	A Solicitação cod. 1 foi finalizada pelo profissional.	f	2	78
81	Nova solicitação de serviço cod. 8	f	5	338
82	A Solicitação cod. 5 foi aceita pelo profissional.	f	2	140
83	A Solicitação cod. 5 foi iniciada pelo profissional.	f	2	140
84	A Solicitação cod. 5 foi finalizada pelo profissional.	f	2	140
86	A Solicitação cod. 9 foi aceita pelo profissional.	f	2	140
87	Solicitação cod. 9 foi cancelada pelo profissional.	f	6	140
88	Nova solicitação de serviço cod. 10	f	5	338
91	A Solicitação cod. 12 foi aceita pelo profissional.	f	2	140
92	A Solicitação cod. 12 foi iniciada pelo profissional.	f	2	140
93	A Solicitação cod. 12 foi finalizada pelo profissional.	f	2	140
96	Solicitação cod. 13 foi rejeitada pelo profissional.	f	6	140
103	A Solicitação cod. 17 foi aceita pelo profissional.	f	2	78
104	A Solicitação cod. 17 foi iniciada pelo profissional.	f	2	78
105	A Solicitação cod. 17 foi finalizada pelo profissional.	f	2	78
108	A Solicitação cod. 19 foi aceita pelo profissional.	f	2	78
109	A Solicitação cod. 19 foi iniciada pelo profissional.	f	2	78
110	A Solicitação cod. 19 foi finalizada pelo profissional.	f	2	78
126	Nova solicitação de serviço cod. 27	f	5	375
128	Nova solicitação de serviço cod. 28	f	5	375
119	A Solicitação cod. 22 foi aceita pelo profissional.	f	2	375
120	A Solicitação cod. 22 foi iniciada pelo profissional.	f	2	375
121	A Solicitação cod. 22 foi finalizada pelo profissional.	f	2	375
124	A Solicitação cod. 25 foi aceita pelo profissional.	f	2	78
125	Nova solicitação de serviço cod. 26	f	5	375
\.


--
-- TOC entry 3727 (class 0 OID 0)
-- Dependencies: 205
-- Name: core_notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_notification_id_seq', 129, true);


--
-- TOC entry 3658 (class 0 OID 4897068)
-- Dependencies: 266
-- Data for Name: core_phonenumber; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_phonenumber (id, number, indico_user_id) FROM stdin;
2	92807931	375
5	982652715	78
7	92993888955	400
8	92992357554	402
10	92981621271	403
11	(92) 99433-0507	321
12	(92) 99265-9592	420
13	(92) 99294-1331	423
14	(92) 99220-8094	424
15	(92) 99526-9683	425
16	(92) 99349-9776	426
19	(92) 99299-2579	428
21	(92) 99268-7023	429
22	(92) 99346-9711	416
23	(92) 99349-9776	430
24	(92) 99141-6142	433
25	(92) 98186-8999	434
26	(92) 98140-4740	375
28	(92) 99346-8024	439
29	(92) 99105-0867	442
30	(92) 99411-0111	445
31	(92) 98161-9431	444
32	(92) 99179-9440	446
33	(92) 99996-3663	448
35	(92) 98240-4050	450
36	(92) 98113-7760	451
38	(92) 99362-0888	435
39	(92) 98413-7486	441
40	(92) 03343-3699	454
41	(92) 99458-0828	455
42	(92) 98128-3002	456
43	(92) 98423-7298	457
51	(92) 98100-6194	404
\.


--
-- TOC entry 3728 (class 0 OID 0)
-- Dependencies: 267
-- Name: core_phonenumber_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_phonenumber_id_seq', 51, true);


--
-- TOC entry 3600 (class 0 OID 1297137)
-- Dependencies: 208
-- Data for Name: core_place; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_place (id, label, street, number, complement, neighborhood, city, state, country, zipcode, latitude, longitude, owner_id, show_on_map) FROM stdin;
2	casa	rua de teste	1	sem complemento	bairro de teste	Manaus	AM	Brasil	6900000	\N	\N	75	\N
3	Minha casa	Av. Efigênio Salles, 2226, Cond. Greenwood Park, casa i-23, Aleixo	i-23		Aleixo	Manaus	AM	Brasil	69060-23	\N	\N	78	\N
5	Ed Vieiralves Business Center	Rua Salvador	120	Consultório 603	Adrianópolis	Manaus	AM	Brasil	69057040	\N	\N	100	\N
21	Casa	E 41ST ST	428		....	Hialeah	AM	Brasil	33013	\N	\N	99	\N
23	Casa	Rua Inconfidência,	11	Rua Inconfidência, 11	nova esperanca	Manaus	AM	Brasil	69037360	\N	\N	234	\N
26	Santa Pelle - Estética&Beleza	Criciúma (Antiga rua 9)	368	Alvorada 2	Alvorada 2	Manaus	AM	Brasil	69042043000	\N	\N	253	\N
27	Trabalho	Criciúma (Antiga rua 9)	368	Rua Entre a drogaria Sto Rémedio e a Igreja Santa Teresinha	Alvorada 2	Manaus	AM	Brasil	69043000	\N	\N	329	\N
60	Sô Bella	Rua Miguel Angelo	36		Adrianópolis	Manaus	AM	Brasil	69057083	\N	\N	448	t
4	Minha casa	Rua Costa Carvalho	351	ap 94a	CoroCoro	Manaus	AM	Brasil	69000000	\N	\N	140	\N
6	Bunita Manauara	Av. Mário Ipiranga Monteiro, loja 54, piso Tucumã	1300	Manauara Shopping	Adrianópolis	Manaus	AM	Brasil	69057023	\N	\N	78	\N
7	Endereço Profissional	Av. Efigênio Salles, casa i-23, cond. Greenwood Park	2226		Aleixo	Manaus	AM	Brasil	69060023	\N	\N	338	\N
29	casa	são jorge	54		santa luzia	manaus	AM	Brasil	69074490	\N	\N	39	\N
32	Casa	Rua Araxá	251	Cj. Duque de Caxias	Flores	Manaus	AM	Brasil	69058-838	\N	\N	375	t
36	Salão de beleza	Avenida Rio Jutaírio Jutaí qd 36	26	Ao lado do partido politico pps	Nossa Senhora das Graças	Manaus	AM	Brasil	69053020	\N	\N	400	t
37	Maria Bonita estúdio de beleza	Avenida Rio Jutaí	26		Nossa Senhora das Graças	Manaus	AM	Brasil	69053020	\N	\N	402	t
38	Casa	Avenida André Araújo	52		Aleixo	Manaus	AM	Brasil	69060000	\N	\N	403	f
39	Hares	Rua Nova Prata	138		Nossa Senhora das Graças	Manaus	AM	Brasil	69053010	\N	\N	321	t
40	Minha casa	Rua Rio Purús		Cond. Lírios	Nossa Senhora das Graças	Manaus	AM	Brasil	69053050	\N	\N	321	f
41	Minha casa	Rua 26	24A		São José Operário	Manaus	AM	Brasil	69086270	\N	\N	420	f
42	Hares	Rua Nova Prata	138		Nossa Senhora das Graças	Manaus	AM	Brasil	69053010	\N	\N	420	t
43	Hares	Rua Nova Prata	181	..., ...	Nossa Senhora das Graças	Manaus	AM	Brasil	69053010	\N	\N	423	t
44	Hares	Rua Nova Prata	181		Nossa Senhora das Graças	Manaus	AM	Brasil	69053010	\N	\N	424	t
45	Hares	Rua Nova Prata	181		Nossa Senhora das Graças	Manaus	AM	Brasil	69053010	\N	\N	425	t
46	Hares	Rua Nova Prata	138		Nossa Senhora das Graças	Manaus	AM	Brasil	69053010	\N	\N	426	t
47	Hares	Rua Nova Prata	138		Nossa Senhora das Graças	Manaus	AM	Brasil	69053010	\N	\N	428	t
48	Hares	Rua Nova Prata	138		Nossa Senhora das Graças	Manaus	AM	Brasil	69053010	\N	\N	429	t
49	Hares	Rua Nova Prata	138		Nossa Senhora das Graças	Manaus	AM	Brasil	69053010	\N	\N	416	t
50	Hares	Rua Nova Prata	138	Rua Nova Prata, Nossa Senhora das Graças	Nossa Senhora das Graças	Manaus	AM	Brasil	69053010	\N	\N	430	t
51	Minha casa	Rua Abdon Gonçalves	322	Conjunto parque das palmeiras	Flores	Manaus	AM	Brasil	69058193	\N	\N	433	t
52	Minha casa	Rua das Águias	437		São Lázaro	Manaus	AM	Brasil	69073140	\N	\N	434	f
53	Casa	Avenida Maneca Marques	900	Apto 802B	Parque 10 de Novembro	Manaus	AM	Brasil	69055021	\N	\N	439	t
54	Minha casa	Rua Zulma de Azevêdo	09	Conjunto Castelo Branco 2	Parque 10 de Novembro	Manaus	AM	Brasil	69055650	\N	\N	442	t
55	Maria Bonita	Avenida Rio Jutaí	26		Nossa Senhora das Graças	Manaus	AM	Brasil	69053020	\N	\N	443	t
56	Sô Bella	Rua Miguel Angelo	36		Adrianópolis	Manaus	AM	Brasil	69057083	\N	\N	445	t
57	Só bella	Rua Guglielmo Marconi	36		Adrianópolis	Manaus	AM	Brasil	69057085	\N	\N	447	t
58	Sô Bella	Rua Guglielmo Marconi	36	Salao SôBella	Adrianópolis	Manaus	AM	Brasil	69057085	\N	\N	444	t
59	Só bella	Rua Miguel Angelo	36		Adrianópolis	Manaus	AM	Brasil	69057083	\N	\N	446	t
69	Trabalho	Rua Rio Iça	205	Vieiralves	Nossa Senhora das Graças	Manaus	AM	Brasil	69053100	\N	\N	459	t
61	Minha casa e trabalho	Rua Papa Paulo VI			São Jorge	Manaus	AM	Brasil	69033685	\N	\N	450	f
62	Gracieth Hills	Avenida Maneca Marques	668		Parque 10 de Novembro	Manaus	AM	Brasil	69055021	\N	\N	451	t
63	Casa	Avenida Djalma Batista	397	Em frente ao Banco do Brasil	Nossa Senhora das Graças	Manaus	AM	Brasil	69053000	\N	\N	435	f
64	Minha Casa	Rua Belo Horizonte	397		Adrianópolis	Manaus	AM	Brasil	69057-060	\N	\N	441	f
65	Salão	Rua Rio Tarauacá	5	Px Churrascaria Búfalo	Nossa Senhora das Graças	Manaus	AM	Brasil	69053580	\N	\N	454	t
66	Belladonna Vieiralves	Avenida Rio Guamá	616		Nossa Senhora das Graças	Manaus	AM	Brasil	69053120	\N	\N	455	t
67	Minha casa	Avenida Joaquim Nabuco		apartamento 101, em frente a funerária Almir neves	Centro	Manaus	AM	Brasil	69020031	\N	\N	456	t
68	Minha casa	Avenida Joaquim Nabuco		Apartamento 101, em frente a funerária Almir neves.	Centro	Manaus	AM	Brasil	69020031	\N	\N	457	t
70	Minha casa	Rua Visconde de Ouro Preto	243	Cond. Anavilhanas	Flores	Manaus	AM	Brasil	69058080	\N	\N	404	t
71	Casa	Avenida Fernão Dias Paes Leme	78		Dom Pedro I	Manaus	AM	Brasil	69042490	\N	\N	397	t
\.


--
-- TOC entry 3729 (class 0 OID 0)
-- Dependencies: 207
-- Name: core_place_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_place_id_seq', 71, true);


--
-- TOC entry 3602 (class 0 OID 1297148)
-- Dependencies: 210
-- Data for Name: core_reference; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_reference (id, name, phone_number, subscription_id) FROM stdin;
22	Claudio Sampaio	55555555555555	17
32	DAVI	92982652715	27
\.


--
-- TOC entry 3730 (class 0 OID 0)
-- Dependencies: 209
-- Name: core_reference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_reference_id_seq', 33, true);


--
-- TOC entry 3604 (class 0 OID 1297156)
-- Dependencies: 212
-- Data for Name: core_relationship; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
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
40	1	110
46	1	126
50	1	134
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
124	1	353
127	1	381
129	1	383
130	1	384
131	1	385
134	1	397
135	1	398
137	1	409
138	1	411
139	1	412
140	1	413
143	1	416
145	1	420
146	1	425
147	1	427
148	1	428
149	1	426
150	1	431
151	1	432
152	1	433
153	1	434
154	1	435
155	1	439
157	1	442
158	1	443
159	1	444
160	1	445
161	1	446
162	1	450
163	1	441
164	1	455
165	1	458
166	1	460
167	1	459
168	1	404
\.


--
-- TOC entry 3606 (class 0 OID 1297164)
-- Dependencies: 214
-- Data for Name: core_relationship_friends; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_relationship_friends (id, relationship_id, indicouser_id) FROM stdin;
\.


--
-- TOC entry 3731 (class 0 OID 0)
-- Dependencies: 213
-- Name: core_relationship_friends_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_relationship_friends_id_seq', 1, false);


--
-- TOC entry 3732 (class 0 OID 0)
-- Dependencies: 211
-- Name: core_relationship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_relationship_id_seq', 168, true);


--
-- TOC entry 3608 (class 0 OID 1297172)
-- Dependencies: 216
-- Data for Name: core_servicecategory; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_servicecategory (id, description, image, is_active, group_id) FROM stdin;
35	Limpador de Ar Condicionado e Fancoil	cat/2016/07/05/Ãcone_limpador_de_ar1.png	f	\N
32	Acupuntura		f	\N
24	Depilação	cat/2017/04/03/photo-depil.png	t	\N
22	Maquiador	cat/2017/03/22/photo-make.png	t	\N
27	Costureira	cat/2016/07/05/Ãcone_costureira1.png	f	\N
28	Sapateiro		f	\N
26	Massagem		f	\N
62	Faz-tudo		f	\N
21	Cabeleireiro	cat/2017/03/22/photo-cabelo.png	t	\N
25	Sobrancelha	cat/2016/10/05/ícone_tamanho_2.3_1.png	f	\N
23	Manicure	cat/2017/03/22/photo-manicure.png	t	\N
\.


--
-- TOC entry 3733 (class 0 OID 0)
-- Dependencies: 215
-- Name: core_servicecategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_servicecategory_id_seq', 63, true);


--
-- TOC entry 3610 (class 0 OID 1297180)
-- Dependencies: 218
-- Data for Name: core_servicediscount; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_servicediscount (id, discount_date, price, service_provided_id) FROM stdin;
\.


--
-- TOC entry 3734 (class 0 OID 0)
-- Dependencies: 217
-- Name: core_servicediscount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_servicediscount_id_seq', 6, true);


--
-- TOC entry 3612 (class 0 OID 1297188)
-- Dependencies: 220
-- Data for Name: core_servicemessage; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_servicemessage (id, message, is_new, created, destinatary_id, sender_id, service_id) FROM stdin;
\.


--
-- TOC entry 3735 (class 0 OID 0)
-- Dependencies: 219
-- Name: core_servicemessage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_servicemessage_id_seq', 1, false);


--
-- TOC entry 3614 (class 0 OID 1297196)
-- Dependencies: 222
-- Data for Name: core_serviceprovided; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_serviceprovided (id, duration, price, service_type_id, worker_id, fixed_price) FROM stdin;
34	20	25.00	22	321	\N
35	20	12.00	23	321	\N
36	20	22.00	24	321	\N
37	5	12.00	25	321	\N
6	10	50.00	2	338	\N
7	30	40.00	3	338	\N
38	10	15.00	26	321	\N
39	10	18.00	27	321	\N
40	20	22.00	28	321	\N
41	20	14.00	29	321	\N
42	30	22.00	30	321	\N
43	30	18.00	31	321	\N
44	10	12.00	32	321	\N
45	10	16.00	33	321	\N
46	10	10.00	34	321	\N
47	10	10.00	35	321	\N
48	20	22.00	36	321	\N
49	20	12.00	36	321	\N
50	15	9.00	37	321	\N
51	10	13.00	38	321	\N
52	10	5.00	39	321	\N
53	15	10.00	40	321	\N
26	60	50.00	1	400	\N
27	60	50.00	2	400	\N
28	45	60.00	4	400	\N
29	60	70.00	16	403	\N
30	40	60.00	14	403	\N
31	60	70.00	15	403	\N
32	10	18.00	19	321	\N
33	5	17.00	21	321	\N
54	30	30.00	42	321	\N
55	30	20.00	43	321	\N
56	10	12.00	44	321	\N
57	15	15.00	45	321	\N
58	30	25.00	46	321	\N
59	30	30.00	47	321	\N
60	15	10.00	48	321	\N
61	10	18.00	49	321	\N
62	15	22.00	50	321	\N
63	20	25.00	51	321	\N
64	15	10.00	52	321	\N
65	20	18.00	53	321	\N
66	20	30.00	54	321	\N
67	30	35.00	55	321	\N
68	15	17.00	20	321	\N
70	10	17.00	21	420	\N
71	40	18.00	56	423	\N
72	40	15.00	64	423	\N
73	40	22.00	58	423	\N
74	1	1.00	61	423	\N
75	30	13.00	63	423	\N
76	40	18.00	56	424	\N
77	40	18.00	57	424	\N
78	40	22.00	58	424	\N
79	20	15.00	64	424	\N
80	5	5.00	60	424	\N
81	1	1.00	61	424	\N
82	1	2.00	62	424	\N
83	20	13.00	63	424	\N
84	40	18.00	56	425	\N
85	40	18.00	57	425	\N
86	40	22.00	58	425	\N
87	20	13.00	63	425	\N
88	20	15.00	64	425	\N
89	1	1.00	61	425	\N
90	1	2.00	62	425	\N
91	5	5.00	60	425	\N
92	40	18.00	56	428	\N
93	40	18.00	57	428	\N
94	5	5.00	60	428	\N
95	40	22.00	58	428	\N
96	20	15.00	64	428	\N
97	20	13.00	63	428	\N
98	1	1.00	61	428	\N
99	1	2.00	62	428	\N
100	40	18.00	56	429	\N
101	40	18.00	57	429	\N
102	40	22.00	59	429	\N
103	5	5.00	60	429	\N
104	20	15.00	64	429	\N
105	20	13.00	63	429	\N
106	1	1.00	61	429	\N
107	1	2.00	62	429	\N
108	15	30.00	2	416	\N
109	20	40.00	3	416	\N
110	30	45.00	4	416	\N
111	40	50.00	5	416	\N
112	60	180.00	10	416	\N
113	150	200.00	9	416	\N
114	60	80.00	6	416	\N
115	60	120.00	11	416	\N
116	240	200.00	12	416	\N
117	40	18.00	56	430	\N
118	40	18.00	57	430	\N
119	40	22.00	59	430	\N
120	20	13.00	63	430	\N
121	20	15.00	64	430	\N
122	5	5.00	60	430	\N
123	1	1.00	61	430	\N
124	1	2.00	62	430	\N
125	30	70.00	7	434	\N
126	50	90.00	14	439	\N
127	50	90.00	15	439	\N
128	60	90.00	16	439	\N
142	90	150.00	66	442	\N
130	150	180.00	17	439	\N
131	90	120.00	65	439	\N
132	20	40.00	67	439	\N
143	30	30.00	49	443	\N
136	60	80.00	67	442	\N
144	90	150.00	65	445	\N
138	60	80.00	14	442	\N
139	60	90.00	65	442	\N
140	60	90.00	15	442	\N
141	60	100.00	16	442	\N
145	30	100.00	67	445	\N
146	60	150.00	16	445	\N
147	60	150.00	15	445	\N
148	40	100.00	14	445	\N
149	30	50.00	3	447	\N
150	30	50.00	2	447	\N
151	30	120.00	8	447	\N
152	40	150.00	14	444	\N
153	40	180.00	16	444	\N
154	15	80.00	2	444	\N
155	30	160.00	11	444	\N
157	30	50.00	1	448	\N
158	30	60.00	2	448	\N
159	30	20.00	56	448	\N
160	40	150.00	16	448	\N
161	40	50.00	4	448	\N
162	30	45.00	3	448	\N
163	40	60.00	5	448	\N
164	30	100.00	15	448	\N
165	30	100.00	14	448	\N
166	30	20.00	34	448	\N
167	45	140.00	11	448	\N
168	180	350.00	12	448	\N
169	15	15.00	25	448	\N
170	15	30.00	27	448	\N
171	15	30.00	21	448	\N
172	10	30.00	43	448	\N
173	40	25.00	59	448	\N
174	5	20.00	35	448	\N
175	30	60.00	41	448	\N
177	10	15.00	44	448	\N
178	10	30.00	45	448	\N
179	20	45.00	53	448	\N
180	20	50.00	54	448	\N
181	30	35.00	50	448	\N
182	40	60.00	51	448	\N
183	30	35.00	49	448	\N
184	5	15.00	48	448	\N
185	60	120.00	47	448	\N
186	30	80.00	46	448	\N
187	40	80.00	7	448	\N
188	40	100.00	8	448	\N
189	10	20.00	38	448	\N
190	30	60.00	60	448	\N
191	60	100.00	14	451	f
192	60	100.00	15	451	t
193	60	100.00	16	451	t
194	60	100.00	15	451	t
195	30	30.00	2	451	t
196	105	120.00	16	435	t
197	210	140.00	65	435	f
198	105	120.00	15	435	t
199	120	300.00	66	435	t
201	60	70.00	16	441	f
202	100	100.00	65	441	f
204	45	50.00	7	441	f
205	90	80.00	8	441	f
206	90	300.00	66	441	f
207	90	200.00	65	455	f
208	40	70.00	67	455	f
209	90	200.00	16	455	f
210	60	80.00	14	455	f
211	40	80.00	2	455	f
212	60	30.00	59	455	t
213	30	20.00	21	455	t
214	60	70.00	14	456	t
215	60	100.00	16	456	t
216	45	70.00	16	459	t
217	45	70.00	15	459	t
218	180	400.00	66	459	t
219	120	200.00	17	459	t
221	50	70.00	65	404	t
222	40	70.00	14	404	t
224	40	70.00	15	404	t
225	40	70.00	16	404	t
226	45	50.00	68	441	f
227	30	30.00	69	441	f
228	120	150.00	70	441	f
\.


--
-- TOC entry 3736 (class 0 OID 0)
-- Dependencies: 221
-- Name: core_serviceprovided_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_serviceprovided_id_seq', 228, true);


--
-- TOC entry 3616 (class 0 OID 1297204)
-- Dependencies: 224
-- Data for Name: core_servicerequest; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_servicerequest (id, date, "time", payment_preference, status, created, price, more_info, updated, address_id, owner_id, service_provided_id) FROM stdin;
8	2016-11-30	00:15:00	2	0	2016-11-24 04:02:57.043323+00	50.00		2016-11-24 04:02:57.043407+00	\N	39	6
10	2016-12-21	12:15:00	1	0	2016-12-17 16:04:10.833324+00	50.00		2016-12-17 16:04:10.833583+00	\N	39	6
\.


--
-- TOC entry 3737 (class 0 OID 0)
-- Dependencies: 223
-- Name: core_servicerequest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_servicerequest_id_seq', 28, true);


--
-- TOC entry 3618 (class 0 OID 1297215)
-- Dependencies: 226
-- Data for Name: core_servicetype; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_servicetype (id, description, service_category_id) FROM stdin;
1	Corte Masculino	21
2	Corte Feminino	21
3	Escova de cabelo liso até os ombros	21
4	Escova de cabelo liso além dos ombros	21
5	Escova de cabelo ondulado até os ombros	21
6	Hidratação	21
7	Penteado simples	21
8	Penteado especial	21
9	Escova progressiva	21
10	Escova marroquina	21
11	Tingimento retoque de raiz	21
12	Tingimento mechas	21
13	Tingimento total	21
14	Maquiagem simples sem cílios	22
15	Maquiagem simples com cílios	22
16	Maquiagem para festa com cílios	22
19	Ânus	24
20	Bigode	24
21	Axila	24
22	Barriga	24
23	1/2 Barriga	24
24	Braços	24
25	Buço (cera)	24
26	Buço (pinça)	24
27	Buço (linha)	24
28	Costas Completas	24
29	1/2 Costas	24
30	Coxas	24
31	Coxas (linha)	24
32	Faixa (qualquer área pequena)	24
33	Faixa na linha (qualquer área pequena)	24
34	Mãos	24
35	Nariz	24
36	Nádegas (faixa)	24
37	Nuca	24
38	Orelhas	24
39	Pés	24
40	Pescoço	24
41	Perna inteira	24
42	Perna inteira	24
43	1/2 Perna	24
44	Queixo	24
45	Queixo (linha)	24
46	Rosto completo	24
47	Rosto completo (linha)	24
48	Seios	24
49	Sobrancelhas (cêra)	24
50	Sobrancelhas (pinça)	24
51	Sobrancelhas (linha)	24
52	Testa	24
53	Virilha contorno	24
54	Virilha cavada	24
55	Barba completa	24
56	Manicure	23
57	Pedicure	23
58	Francesinha	23
59	Francesinha	23
60	Esfoliação	23
61	Spray	23
62	Chinelo	23
63	Pintura simples	23
64	Pintura francesinha	23
65	Maquiagem artística	22
17	Maquiagem para noiva sem prova	22
66	Maquiagem para noiva com prova	22
67	Maquiagem masculina	22
68	Chapinha	21
69	Babyliss	21
70	Alongamento de cílios	22
\.


--
-- TOC entry 3738 (class 0 OID 0)
-- Dependencies: 225
-- Name: core_servicetype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_servicetype_id_seq', 70, true);


--
-- TOC entry 3620 (class 0 OID 1297223)
-- Dependencies: 228
-- Data for Name: core_skill; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_skill (id, description, category_id) FROM stdin;
248	Aceita cartão de débito	24
250	Aceita cartão de débito	23
251	Aceita cartão de crédito	23
253	Estilo romântico	22
254	Estilo versátil	22
255	Estilo marcante	22
81	Atendimento no salão e à domicílio	22
82	Atende apenas em horário comercial	22
87	Atende em qualquer horário com agendamento	22
245	Atendimento à domicílio	22
83	Unhas de porcelana	23
84	Desenhos feitos à mão	23
86	Esterilização em autoclave	23
80	Serviços a domicílio	21
88	Masculina	24
89	Femininia	24
93	Depilação	25
96	Redutora	26
97	Relaxamento	26
98	Pós-cirúrgica	26
99	Drenagem linfática	26
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
122	Manuntenção	35
123	Instalação	35
94	Fio a fio	25
121	Limpeza de ar condicionado split	35
90	Íntima	24
91	Aceita cartão de crédito	24
95	Design de sobrancelhas	25
164	Serviços a domicílio	25
211	Henna	25
212	Definitiva	25
249	Depilação a linha	24
252	Estilo clássico	22
238	Limpeza de Fancoil	35
239	Limpeza de ar condicionado de caixa	35
237	Elaboração de projetos técnicos	35
240	Fabricação de dutos de refrigeração e exaustão	35
241	Desemtupimento de ralos	62
242	Troca de lâmpadas	62
243	Troca de tomadas	62
244	Outros	62
77	Aceita cartão de crédito	21
78	Atende crianças	21
79	Condução própria	21
247	Atende idosos e especiais	21
\.


--
-- TOC entry 3739 (class 0 OID 0)
-- Dependencies: 227
-- Name: core_skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_skill_id_seq', 255, true);


--
-- TOC entry 3622 (class 0 OID 1297231)
-- Dependencies: 230
-- Data for Name: core_subscription; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_subscription (id, candidate_id) FROM stdin;
27	181
30	311
32	322
17	134
3	338
41	375
42	404
\.


--
-- TOC entry 3740 (class 0 OID 0)
-- Dependencies: 229
-- Name: core_subscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_subscription_id_seq', 44, true);


--
-- TOC entry 3624 (class 0 OID 1297241)
-- Dependencies: 232
-- Data for Name: core_userdocuments; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
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
41	doc/2017/01/27/profile_yan.jpg	doc/2017/01/27/traffic.jpg	doc/2017/01/27/traffic.jpg
42	doc/2017/03/07/9-oriental-pattern-bamboo.jpg	doc/2017/03/07/9-oriental-pattern-bamboo.jpg	doc/2017/03/07/9-oriental-pattern-bamboo.jpg
43	doc/2017/03/07/9-oriental-pattern-bamboo.jpg	doc/2017/03/07/9-oriental-pattern-bamboo.jpg	doc/2017/03/07/9-oriental-pattern-bamboo.jpg
45	doc/2017/03/29/image.jpeg	doc/2017/03/29/image.jpeg	doc/2017/03/29/image.jpeg
46	doc/2017/03/29/image.jpeg	doc/2017/03/29/image.jpeg	doc/2017/03/29/image.jpeg
47	doc/2017/03/29/image.jpeg	doc/2017/03/29/image.jpeg	doc/2017/03/29/image.jpeg
48	doc/2017/04/11/img-2017-04-11_202418.878953.jpg	doc/2017/04/11/img-2017-04-11_202418.940938.jpg	doc/2017/04/11/img-2017-04-11_202418.964651.jpg
49	doc/2017/04/11/img-2017-04-11_202504.523620.jpg	doc/2017/04/11/img-2017-04-11_202504.604220.jpg	doc/2017/04/11/img-2017-04-11_202504.676947.jpg
50	doc/2017/04/11/img-2017-04-11_202642.549412.jpg	doc/2017/04/11/img-2017-04-11_202642.612761.jpg	doc/2017/04/11/img-2017-04-11_202642.636600.jpg
\.


--
-- TOC entry 3741 (class 0 OID 0)
-- Dependencies: 231
-- Name: core_userdocuments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_userdocuments_id_seq', 50, true);


--
-- TOC entry 3742 (class 0 OID 0)
-- Dependencies: 271
-- Name: core_work_zone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_work_zone_id_seq', 64, true);


--
-- TOC entry 3626 (class 0 OID 1297249)
-- Dependencies: 234
-- Data for Name: core_workerevaluation; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_workerevaluation (id, created, punctuality, quality, trust, cost_benefit, testimonial, partial_rate, recommend, hirer_id, worker_id, status) FROM stdin;
6	2017-01-31 12:47:39.982563+00	5	1	5	1	Muito bom, mas preço salgado.	2.60000000000000009	f	78	338	P
10	2017-04-07 17:59:24.869887+00	5	5	5	5	Corto com ele há mais de 6 anos. Corte sempre do jeito que eu  quero.	5	t	78	400	A
\.


--
-- TOC entry 3743 (class 0 OID 0)
-- Dependencies: 233
-- Name: core_workerevaluation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_workerevaluation_id_seq', 10, true);


--
-- TOC entry 3628 (class 0 OID 1297257)
-- Dependencies: 236
-- Data for Name: core_workerevaluationitem; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_workerevaluationitem (id, item, value, "workerEvaluation_id") FROM stdin;
\.


--
-- TOC entry 3744 (class 0 OID 0)
-- Dependencies: 235
-- Name: core_workerevaluationitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('core_workerevaluationitem_id_seq', 1, false);


--
-- TOC entry 3660 (class 0 OID 5319316)
-- Dependencies: 268
-- Data for Name: core_workzone; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY core_workzone (id, zone, neighborhood, state, city) FROM stdin;
2	Sul	Centro	AM	Manaus
3	Sul	Nossa Senhora Aparecida	AM	Manaus
4	Sul	Presidente Vargas	AM	Manaus
5	Sul	Praça 14 de Janeiro	AM	Manaus
6	Sul	Cachoeirinha	AM	Manaus
7	Oeste	São Raimundo	AM	Manaus
8	Oeste	Glória	AM	Manaus
9	Oeste	Santo Antônio	AM	Manaus
10	Oeste	Vila da Prata	AM	Manaus
11	Oeste	Compensa	AM	Manaus
12	Oeste	São Jorge	AM	Manaus
13	Oeste	Santo Agostinho	AM	Manaus
14	Oeste	Nova Esperança	AM	Manaus
15	Oeste	Lírio do Vale	AM	Manaus
16	Centro-Oeste	Planalto	AM	Manaus
17	Centro-Oeste	Alvorada	AM	Manaus
18	Centro-Oeste	Redenção	AM	Manaus
19	Centro-Oeste	Da Paz	AM	Manaus
20	Sul	Raiz	AM	Manaus
21	Sul	São Francisco	AM	Manaus
22	Sul	Petrópolis	AM	Manaus
23	Sul	Japiim	AM	Manaus
24	Leste	Coroado	AM	Manaus
25	Sul	Educandos	AM	Manaus
26	Sul	Santa Luzia	AM	Manaus
27	Sul	Morro da Liberdade	AM	Manaus
28	Sul	Betânia	AM	Manaus
29	Sul	Colônia Oliveira Machado	AM	Manaus
30	Sul	São Lázaro	AM	Manaus
31	Sul	Crespo	AM	Manaus
32	Sul	Vila Buriti	AM	Manaus
33	Sul	Distrito Industrial I	AM	Manaus
34	Leste	Distrito Industrial II	AM	Manaus
35	Leste	Mauazinho	AM	Manaus
36	Leste	Colônia Antônio Aleixo	AM	Manaus
37	Leste	Puraquequara	AM	Manaus
38	Centro-Oeste	Dom Pedro	AM	Manaus
39	Centro-Sul	Flores	AM	Manaus
40	Centro-Sul	Parque 10 de Novembro	AM	Manaus
41	Centro-Sul	Aleixo	AM	Manaus
42	Centro-Sul	Adrianópolis	AM	Manaus
43	Centro-Sul	Nossa Senhora das Graças	AM	Manaus
44	Centro-Sul	São Geraldo	AM	Manaus
45	Centro-Sul	Chapada	AM	Manaus
46	Norte	Colônia Santo Antônio	AM	Manaus
47	Norte	Novo Israel	AM	Manaus
48	Norte	Colônia Terra Nova	AM	Manaus
49	Norte	Santa Etelvina	AM	Manaus
50	Norte	Monte das Oliveiras	AM	Manaus
51	Norte	Cidade Nova	AM	Manaus
52	Norte	Novo Aleixo	AM	Manaus
53	Norte	Cidade de Deus	AM	Manaus
54	Norte	Nova Cidade	AM	Manaus
55	Oeste	Ponta Negra	AM	Manaus
56	Oeste	Tarumã	AM	Manaus
57	Oeste	Tarumã-Açu	AM	Manaus
58	Leste	Armando Mendes	AM	Manaus
59	Leste	Zumbi dos Palmares	AM	Manaus
60	Leste	São José Operário	AM	Manaus
61	Leste	Tancredo Neves	AM	Manaus
62	Leste	Jorge Teixeira	AM	Manaus
63	Leste	Gilberto Mestrinho	AM	Manaus
64	Norte	Lago Azul	AM	Manaus
\.


--
-- TOC entry 3638 (class 0 OID 1297544)
-- Dependencies: 246
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2016-10-14 03:54:56.519588+00	255	pryhrebeloo@gmail.com	3		20	39
2	2016-10-14 12:32:55.624925+00	331	teste@testeultimo.com	3		20	78
3	2016-10-14 12:35:48.646463+00	152	contratante1@indicoapp.com	3		20	78
4	2016-10-14 12:35:48.653106+00	316	teste@teste1.com	3		20	78
5	2016-10-14 12:35:48.660323+00	315	teste@teste.com	3		20	78
6	2016-10-14 12:35:48.666013+00	149	trabalhador1@indicoapp.com	3		20	78
7	2016-10-14 12:36:25.642633+00	313	davicmonteiro29@gmail.com	3		20	78
8	2016-10-14 12:54:18.679092+00	1	Solicitação de DAVI MONTEIRO	2	Adicionado reference "Reference object"	31	78
9	2016-10-14 12:55:41.610929+00	1	Documentos de DAVI MONTEIRO	2	Nenhum campo modificado.	19	78
10	2016-10-14 12:55:56.153764+00	1	Solicitação de DAVI MONTEIRO	2	Nenhum campo modificado.	31	78
11	2016-10-14 12:57:56.180145+00	1	davicmonteiro29@gmail.com	2	Modificado account_state.	20	78
12	2016-10-14 13:02:15.012092+00	1	Corte Masculino	1	Adicionado.	17	78
13	2016-10-14 13:03:03.301387+00	1	davicmonteiro29@gmail.com - Corte Masculino	1	Adicionado.	21	78
14	2016-10-14 13:09:32.882496+00	2	Corte Feminino	1	Adicionado.	17	78
15	2016-10-14 13:13:00.67048+00	3	Escova de cabelo liso até os ombros	1	Adicionado.	17	78
16	2016-10-14 13:13:19.317917+00	4	Escova de cabelo liso além dos ombros	1	Adicionado.	17	78
17	2016-10-14 13:13:45.216009+00	5	Escova de cabelo ondulado até os ombros	1	Adicionado.	17	78
18	2016-10-14 13:22:51.288141+00	6	Hidratação	1	Adicionado.	17	78
19	2016-10-14 13:26:17.842122+00	7	Penteado simples	1	Adicionado.	17	78
20	2016-10-14 13:58:20.049664+00	8	Penteado especial	1	Adicionado.	17	78
21	2016-10-14 16:06:09.248418+00	9	Escova progressiva	1	Adicionado.	17	78
22	2016-10-14 16:06:36.561634+00	10	Escova marroquina	1	Adicionado.	17	78
23	2016-10-14 16:08:07.230559+00	11	Tingimento retoque de raiz	1	Adicionado.	17	78
24	2016-10-14 16:08:44.510558+00	12	Tingimento mechas	1	Adicionado.	17	78
25	2016-10-14 16:09:26.1557+00	13	Tingimento total	1	Adicionado.	17	78
26	2016-10-14 17:25:06.511401+00	14	Maquiagem simples sem cílios	1	Adicionado.	17	78
27	2016-10-14 17:25:25.155273+00	15	Maquiagem simples com cílios	1	Adicionado.	17	78
28	2016-10-14 17:26:56.677602+00	16	Maquiagem para festa com cílios	1	Adicionado.	17	78
29	2016-10-14 17:27:53.269512+00	17	Maquiagem para noiva	1	Adicionado.	17	78
30	2016-10-17 14:13:40.047901+00	279	raiinonata@hotmail.com	3		20	78
31	2016-10-17 15:40:28.521256+00	226	rafaelduarte221@gmail.com	3		20	78
32	2016-10-18 17:27:23.411925+00	3	davi@teste.com	3		20	78
33	2016-10-21 18:47:01.596042+00	1	davicmonteiro29@gmail.com	3		20	78
34	2016-11-03 18:26:07.957866+00	21	Cabeleireiro	2	Modificado is_active.	16	78
35	2016-11-03 18:26:23.24174+00	23	Manicure	2	Modificado is_active.	16	78
36	2016-11-03 18:26:37.945136+00	24	Depilação	2	Modificado is_active.	16	78
37	2016-11-03 18:26:52.183306+00	22	Maquiador	2	Modificado is_active.	16	78
38	2016-11-03 18:27:18.276948+00	20	davi@teste.com	3		20	78
39	2016-11-03 18:27:18.280612+00	17	teste@teste.com	3		20	78
40	2016-11-18 00:42:01.383953+00	34	eltonsrc@gmail.com	3		20	39
41	2016-11-19 15:36:32.992621+00	120	eltonsrc@gmail.com	3		20	39
42	2016-11-19 15:46:25.778811+00	136	eltonsrc@gmail.com	3		20	39
43	2016-11-19 16:43:30.98254+00	141	rrrrr@email.com	2	Modificado account_state.	20	78
44	2016-11-19 16:46:44.979642+00	1	Diarista	2	Modificado is_active.	16	78
45	2016-11-19 17:01:51.224759+00	141	rrrrr@email.com	2	Modificado categories.	20	78
46	2016-11-19 17:02:16.88941+00	1	Diarista	2	Modificado is_active.	16	78
47	2016-11-19 17:02:29.743496+00	21	Cabeleireiro	2	Modificado is_active.	16	78
48	2016-11-19 17:10:18.359488+00	2	Solicitação de Raoni Novellino	2	Adicionado reference "Reference object"	31	78
49	2016-11-20 19:03:33.296974+00	196	ramayana1970@gmail.com	3		20	39
50	2016-11-20 20:04:33.059559+00	142	ramayana1970@gmail.com	3		20	39
51	2016-11-20 23:02:23.731615+00	143	eltonsrc@gmail.com	3		20	39
52	2016-11-20 23:06:19.55188+00	145	eltonsrc@gmail.com	3		20	39
53	2016-11-21 14:10:51.116827+00	148	ramayana1970@gmail.com	3		20	39
54	2016-11-22 03:39:00.807584+00	146	eltonsrc@gmail.com	3		20	39
55	2016-11-22 03:50:52.491463+00	164	eltonsrc@gmail.com	3		20	39
56	2016-11-22 14:00:23.503743+00	141	rrrrr@email.com	2	Modificado categories.	20	78
57	2016-11-22 14:00:49.477338+00	141	rrrrr@email.com	2	Nenhum campo modificado.	20	78
58	2016-11-23 13:21:43.579487+00	11	EvaluationTemplate object	2	Deletado evaluation template item "Corte de cabelo feminino". Deletado evaluation template item "Corte de cabelo masculino". Deletado evaluation template item "Tinturaria". Deletado evaluation template item "Marroquina". Deletado evaluation template item "Great Lengths (Mega hair)".	24	78
59	2016-11-23 19:06:51.564227+00	18	Davicmonteiro29@gmail.com	2	Modificado categories, account_state e skills.	20	78
60	2016-11-23 19:07:32.937727+00	18	Davicmonteiro29@gmail.com	3		20	78
61	2016-11-23 19:19:40.686336+00	338	Davicmonteiro29@gmail.com	2	Modificado account_state.	20	78
62	2016-11-23 19:59:20.038027+00	18	Corte Masculino	1	Adicionado.	17	78
63	2016-11-23 20:00:11.344659+00	7	Davicmonteiro29@gmail.com - Escova de cabelo liso até os ombros	1	Adicionado.	21	78
64	2016-12-02 14:47:47.492228+00	140	rnovellino@gmail.com	2	Modificado is_staff.	20	78
65	2016-12-02 14:57:07.978071+00	140	rnovellino@gmail.com	2	Modificado is_superuser.	20	78
66	2016-12-02 15:08:57.049985+00	353	funk1470@yahoo.com	2	Modificado is_staff e is_superuser.	20	78
67	2016-12-04 00:15:53.223763+00	19	EvaluationTemplate object	1	Adicionado. Adicionado evaluation template item "desc"	24	39
68	2016-12-04 00:16:10.557291+00	19	EvaluationTemplate object	3		24	39
69	2017-01-20 13:13:11.458919+00	90	camila.falabella@gmail.com	2	Modificado categories, account_state e is_staff.	20	78
70	2017-01-20 14:10:33.065383+00	90	camila.falabella@gmail.com	2	Modificado account_type e is_superuser.	20	78
71	2017-01-20 14:12:42.068875+00	90	camila.falabella@gmail.com	3		20	78
72	2017-01-20 14:15:24.967075+00	368	camila_falabella@hotmail.com	2	Modificado is_staff.	20	78
73	2017-01-20 14:44:55.840547+00	369	camila.falabella@gmail.com	2	Modificado account_state.	20	78
74	2017-01-24 23:38:32.569651+00	373	teste@teste.com	2	Modificado account_state.	20	78
75	2017-01-24 23:49:38.638016+00	18	Corte Masculino	3		17	78
76	2017-01-27 12:57:34.253006+00	376	ybd@icomp.ufam.edu.br	2	Modificado account_state.	20	78
77	2017-01-27 16:24:08.055476+00	375	ybrandao.d@gmail.com	2	Modificado is_staff e is_superuser.	20	78
78	2017-01-27 16:36:02.740638+00	11	EvaluationTemplate object	2	Adicionado evaluation template item "Pessoas a ser atendidas"	24	375
162	2017-03-31 20:10:11.933534+00	19	Ânus	1	Adicionado.	17	78
163	2017-03-31 20:10:26.106132+00	19	Ânus	2	Nenhum campo modificado.	17	78
79	2017-01-31 12:33:16.640307+00	21	Cabeleireiro	2	Adicionado Diferenciais "Atende idosos e especiais" Modificado description para Diferenciais "Aceita cartão de crédito". Modificado description para Diferenciais "Atende crianças". Modificado description para Diferenciais "Condução própria".	16	78
80	2017-03-07 10:02:15.115902+00	338	Davicmonteiro29@gmail.com	2	Modificado account_state.	20	375
81	2017-03-07 10:04:55.684598+00	376	ybd@icomp.ufam.edu.br	3		20	375
82	2017-03-07 10:06:33.061701+00	386	ybd@icomp.ufam.edu.br	2	Modificado account_state.	20	375
83	2017-03-07 23:46:58.362324+00	375	ybrandao.d@gmail.com	2	Modificado account_state.	20	375
84	2017-03-22 13:03:25.428752+00	21	Cabeleireiro	2	Modificado image.	16	375
85	2017-03-22 13:03:50.69889+00	22	Maquiador	2	Modificado image.	16	375
86	2017-03-22 13:04:45.670293+00	22	Maquiador	2	Modificado is_active.	16	375
87	2017-03-22 13:04:55.387212+00	25	Sobrancelha	2	Modificado is_active.	16	375
88	2017-03-22 13:05:48.288125+00	23	Manicure	2	Modificado image e is_active.	16	375
89	2017-03-22 20:38:48.867257+00	22	Maquiador	2	Modificado image.	16	375
90	2017-03-23 22:15:11.96695+00	373	teste@teste.com	3		20	375
91	2017-03-23 22:16:28.034464+00	369	camila.falabella@gmail.com	2	Modificado categories.	20	375
92	2017-03-23 22:17:05.724434+00	141	rrrrr@email.com	2	Modificado categories.	20	375
93	2017-03-23 22:17:33.458178+00	338	Davicmonteiro29@gmail.com	2	Modificado categories.	20	375
94	2017-03-23 22:18:17.620995+00	386	ybd@icomp.ufam.edu.br	2	Modificado categories.	20	375
95	2017-03-23 22:31:28.449685+00	375	ybrandao.d@gmail.com	2	Modificado categories e resume.	20	375
96	2017-03-23 22:36:08.864812+00	333	cresceeaparece.salao@gmail.com	2	Modificado categories.	20	375
97	2017-03-25 18:01:19.946163+00	2	indikko.com	1	Adicionado.	6	375
98	2017-03-27 18:23:29.987038+00	34	Solicitação de Salão Cresce e Aparece	3		31	78
99	2017-03-27 18:24:13.968168+00	333	cresceeaparece.salao@gmail.com	3		20	78
100	2017-03-27 18:24:43.89575+00	358	felipe@jukx.com.br	3		20	78
101	2017-03-27 18:24:55.468782+00	379	testando@testando.com	3		20	78
102	2017-03-27 23:15:44.284265+00	375	ybrandao.d@gmail.com	2	Modificado categories.	20	375
103	2017-03-28 01:12:47.998205+00	368	camila_falabella@hotmail.com	3		20	375
104	2017-03-28 01:13:17.488621+00	369	camila.falabella@gmail.com	3		20	375
105	2017-03-28 02:42:43.297249+00	375	ybrandao.d@gmail.com	2	Modificado categories.	20	375
106	2017-03-28 14:30:33.914273+00	23	Manicure	2	Deletado Diferenciais "Serviços a domicílio".	16	78
107	2017-03-28 14:32:12.81487+00	24	Depilação	2	Modificado description para Diferenciais "Íntima". Modificado description para Diferenciais "Aceita cartão de crédito". Deletado Diferenciais "Ordem de chegada".	16	78
108	2017-03-28 14:33:38.968865+00	60	Enfermeiro	3		16	78
109	2017-03-28 14:33:38.972119+00	59	Tapeceiro	3		16	78
110	2017-03-28 14:33:38.975115+00	53	Barman	3		16	78
111	2017-03-28 14:33:38.977967+00	44	Nutricionista	3		16	78
112	2017-03-28 14:33:38.980833+00	43	Hospedagem para cães e gatos	3		16	78
113	2017-03-28 14:33:38.983715+00	41	Veterinário	3		16	78
114	2017-03-28 14:33:38.9963+00	37	Chaveiro	3		16	78
115	2017-03-28 14:33:39.000583+00	36	Manutenção de Porta Automática	3		16	78
116	2017-03-28 14:33:39.004422+00	33	Corretor de Seguros e Plano de Saúde	3		16	78
117	2017-03-28 14:33:39.008244+00	20	Decoração de festas	3		16	78
118	2017-03-28 14:33:39.012178+00	19	Fotógrafo	3		16	78
119	2017-03-28 14:33:39.018218+00	18	Food truck, bike e afins	3		16	78
120	2017-03-28 14:33:39.028271+00	17	Cozinheira para eventos	3		16	78
121	2017-03-28 14:33:39.031361+00	16	Buffet	3		16	78
122	2017-03-28 14:33:39.034177+00	15	Aluguel de Sistema de Som e Iluminação	3		16	78
123	2017-03-28 14:33:39.03717+00	14	Bandas e DJ´s	3		16	78
124	2017-03-28 14:33:39.039943+00	13	Animador de festa	3		16	78
125	2017-03-28 14:33:39.04321+00	12	Bolos, Salgados e Docinhos	3		16	78
126	2017-03-28 14:33:39.046516+00	11	Cerimonialista	3		16	78
127	2017-03-28 14:33:39.050851+00	10	Garçom	3		16	78
128	2017-03-28 14:33:39.053626+00	4	Eletricista	3		16	78
129	2017-03-28 14:33:39.057185+00	2	Babá	3		16	78
130	2017-03-28 14:33:39.060343+00	1	Diarista	3		16	78
131	2017-03-28 14:34:12.979607+00	48	Assistência Técnica	3		16	78
132	2017-03-28 14:34:12.982776+00	42	Banho e tosa	3		16	78
133	2017-03-28 14:34:12.985511+00	31	Quiropraxista	3		16	78
134	2017-03-28 14:34:12.988522+00	30	Fisioterapia	3		16	78
135	2017-03-28 14:34:12.991921+00	29	Personal Trainer	3		16	78
136	2017-03-28 15:47:53.467999+00	108	keinevalle@yahoo.com.br	3		20	78
137	2017-03-28 17:37:54.307696+00	375	ybrandao.d@gmail.com	2	Modificado categories.	20	375
138	2017-03-28 18:35:12.502046+00	141	rrrrr@email.com	3		20	78
139	2017-03-28 20:13:36.500912+00	400	alexfracalima@gmail.com	2	Modificado account_type, account_state e phone_number.	20	78
140	2017-03-28 20:20:10.457414+00	391	yan_b-@hotmail.com	3		20	375
141	2017-03-28 20:20:23.681358+00	401	flor_laryssa@hotmail.com	3		20	375
142	2017-03-28 20:24:42.405821+00	400	alexfracalima@gmail.com	2	Nenhum campo modificado.	20	78
143	2017-03-28 20:40:21.731804+00	400	alexfracalima@gmail.com	2	Modificado photo.	20	375
144	2017-03-28 20:46:53.165291+00	402	dc3388267@gmail.com	2	Modificado account_type e account_state.	20	78
145	2017-03-28 22:30:42.578991+00	403	jehbentes@gmail.com	2	Modificado account_type e account_state.	20	78
146	2017-03-29 11:16:02.199363+00	403	jehbentes@gmail.com	2	Nenhum campo modificado.	20	78
147	2017-03-29 12:15:45.635613+00	402	dc3388267@gmail.com	2	Modificado account_type.	20	78
148	2017-03-30 22:22:17.082108+00	121	ybrandao.d@gmail.com	3		7	375
149	2017-03-30 22:22:23.879878+00	119	ybrandao.d@gmail.com	3		7	375
150	2017-03-30 22:22:30.584193+00	118	ybrandao.d@gmail.com	3		7	375
151	2017-03-31 00:22:52.02737+00	414	YanIndikko	3		20	375
152	2017-03-31 00:23:25.141143+00	114	ybrandao.d@gmail.com	3		7	375
153	2017-03-31 17:37:13.351986+00	24	Depilação	2	Modificado is_active.	16	375
154	2017-03-31 17:57:47.084785+00	24	Depilação	2	Modificado image.	16	375
155	2017-03-31 19:34:18.742673+00	126	YanIndikko	3		7	375
156	2017-03-31 19:34:33.902777+00	415	YanIndikko	3		20	375
157	2017-03-31 19:43:48.961344+00	416	EvelynPereira	2	Modificado account_type e account_state.	20	78
158	2017-03-31 19:53:00.95093+00	321	renee_pantoja@hotmail.com	2	Modificado account_type, account_state, attendance_in_domicile e costumer_service.	20	78
159	2017-03-31 20:08:06.604598+00	24	Depilação	2	Adicionado Diferenciais "Aceita cartão de débito"	16	78
160	2017-03-31 20:08:45.779673+00	24	Depilação	2	Adicionado Diferenciais "Depilação a linha"	16	78
161	2017-03-31 20:09:22.752909+00	24	Depilação	2	Nenhum campo modificado.	16	78
164	2017-03-31 20:10:46.547426+00	20	Axila	1	Adicionado.	17	78
171	2017-03-31 20:12:02.406527+00	20	Costas Completas	2	Modificado description.	17	78
172	2017-03-31 20:12:12.403161+00	20	1/2 Costas	2	Modificado description.	17	78
174	2017-03-31 20:12:36.858568+00	20	Coxas (linha)	2	Modificado description.	17	78
175	2017-03-31 20:12:49.036244+00	20	Faixa	2	Modificado description.	17	78
177	2017-03-31 20:15:17.419805+00	20	Faixa na linha (qualquer área pequena)	2	Modificado description.	17	78
178	2017-03-31 20:15:33.437159+00	20	Mãos	2	Modificado description.	17	78
179	2017-03-31 20:15:40.504985+00	20	Nariz	2	Modificado description.	17	78
180	2017-03-31 20:15:50.060002+00	20	Nádegas	2	Modificado description.	17	78
183	2017-03-31 20:16:29.339647+00	20	Orelhas	2	Modificado description.	17	78
184	2017-03-31 20:17:02.158745+00	20	Pés	2	Modificado description.	17	78
187	2017-03-31 20:17:41.420302+00	20	1/2 Perna	2	Modificado description.	17	78
188	2017-03-31 20:17:51.734687+00	20	Queixo	2	Modificado description.	17	78
190	2017-03-31 20:18:01.088783+00	20	Queixo (linha)	2	Modificado description.	17	78
165	2017-03-31 20:10:54.735187+00	20	Barriga	2	Modificado description.	17	78
166	2017-03-31 20:11:07.59469+00	20	1/2 Barriga	2	Modificado description.	17	78
167	2017-03-31 20:11:15.476639+00	20	Braços	2	Modificado description.	17	78
168	2017-03-31 20:11:28.174056+00	20	Buço (cera)	2	Modificado description.	17	78
169	2017-03-31 20:11:39.260423+00	20	Buço (pinça)	2	Modificado description.	17	78
170	2017-03-31 20:11:48.621481+00	20	Buço (linha)	2	Modificado description.	17	78
173	2017-03-31 20:12:20.853314+00	20	Coxas	2	Modificado description.	17	78
176	2017-03-31 20:15:06.471298+00	20	Faixa (qualquer área pequena)	2	Modificado description.	17	78
181	2017-03-31 20:16:03.38914+00	20	Nádegas (faixa)	2	Modificado description.	17	78
182	2017-03-31 20:16:20.888117+00	20	Nuca	2	Modificado description.	17	78
185	2017-03-31 20:17:14.260998+00	20	Pescoço	2	Modificado description.	17	78
186	2017-03-31 20:17:32.732903+00	20	Perna inteira	2	Modificado description.	17	78
189	2017-03-31 20:17:52.354552+00	20	Queixo	2	Nenhum campo modificado.	17	78
191	2017-03-31 20:18:16.23675+00	20	Rosto completo	2	Modificado description.	17	78
192	2017-03-31 20:18:49.554227+00	20	Rosto completo (linha)	2	Modificado description.	17	78
193	2017-03-31 20:19:11.051758+00	20	Seios	2	Modificado description.	17	78
194	2017-03-31 20:19:30.293515+00	20	Sobrancelhas (cêra)	2	Modificado description.	17	78
195	2017-03-31 20:19:39.175405+00	20	Sobrancelhas (pinça)	2	Modificado description.	17	78
196	2017-03-31 20:19:39.837178+00	20	Sobrancelhas (pinça)	2	Nenhum campo modificado.	17	78
197	2017-03-31 20:19:48.167831+00	20	Sobrancelhas (linha)	2	Modificado description.	17	78
198	2017-03-31 20:19:54.130514+00	20	Testa	2	Modificado description.	17	78
199	2017-03-31 20:20:06.972977+00	20	Virilha contorno	2	Modificado description.	17	78
200	2017-03-31 20:20:14.181822+00	20	Virilha cavada	2	Modificado description.	17	78
201	2017-03-31 20:20:34.401679+00	20	Barba completa	2	Modificado description.	17	78
202	2017-03-31 20:26:25.520016+00	20	Bigode	2	Modificado description.	17	78
203	2017-03-31 20:30:21.956648+00	21	Axila	1	Adicionado.	17	78
204	2017-03-31 20:30:35.029368+00	22	Barriga	1	Adicionado.	17	78
205	2017-03-31 20:30:45.778029+00	23	1/2 Barriga	1	Adicionado.	17	78
206	2017-03-31 20:31:00.091709+00	24	Braços	1	Adicionado.	17	78
207	2017-03-31 20:31:13.856053+00	25	Buço (cera)	1	Adicionado.	17	78
208	2017-03-31 20:31:38.032756+00	26	Buço (pinça)	1	Adicionado.	17	78
209	2017-03-31 20:32:00.385083+00	27	Buço (linha)	1	Adicionado.	17	78
210	2017-03-31 20:32:27.051447+00	28	Costas Completas	1	Adicionado.	17	78
211	2017-03-31 20:32:41.158756+00	29	1/2 Costas	1	Adicionado.	17	78
212	2017-03-31 20:32:51.325939+00	30	Coxas	1	Adicionado.	17	78
213	2017-03-31 20:33:07.448922+00	31	Coxas (linha)	1	Adicionado.	17	78
214	2017-03-31 20:33:24.992391+00	32	Faixa (qualquer área pequena)	1	Adicionado.	17	78
215	2017-03-31 20:33:36.410797+00	33	Faixa na linha (qualquer área pequena)	1	Adicionado.	17	78
216	2017-03-31 20:33:45.158954+00	34	Mãos	1	Adicionado.	17	78
217	2017-03-31 20:33:56.921428+00	35	Nariz	1	Adicionado.	17	78
218	2017-03-31 20:34:17.393988+00	36	Nádegas (faixa)	1	Adicionado.	17	78
219	2017-03-31 20:34:27.189244+00	37	Nuca	1	Adicionado.	17	78
220	2017-03-31 20:34:38.128337+00	38	Orelhas	1	Adicionado.	17	78
221	2017-03-31 20:34:48.166735+00	39	Pés	1	Adicionado.	17	78
222	2017-03-31 20:35:01.537226+00	40	Pescoço	1	Adicionado.	17	78
223	2017-03-31 20:35:13.537917+00	41	Perna inteira	1	Adicionado.	17	78
224	2017-03-31 20:35:24.553485+00	42	Perna inteira	1	Adicionado.	17	78
225	2017-03-31 20:35:36.020371+00	43	1/2 Perna	1	Adicionado.	17	78
226	2017-03-31 20:35:46.455197+00	44	Queixo	1	Adicionado.	17	78
227	2017-03-31 20:35:59.78484+00	45	Queixo (linha)	1	Adicionado.	17	78
228	2017-03-31 20:36:09.94058+00	46	Rosto completo	1	Adicionado.	17	78
229	2017-03-31 20:36:21.105664+00	47	Rosto completo (linha)	1	Adicionado.	17	78
230	2017-03-31 20:36:31.774928+00	48	Seios	1	Adicionado.	17	78
231	2017-03-31 20:36:42.77428+00	49	Sobrancelhas (cêra)	1	Adicionado.	17	78
232	2017-03-31 20:36:54.19631+00	50	Sobrancelhas (pinça)	1	Adicionado.	17	78
233	2017-03-31 20:37:03.12161+00	51	Sobrancelhas (linha)	1	Adicionado.	17	78
234	2017-03-31 20:37:13.223843+00	52	Testa	1	Adicionado.	17	78
235	2017-03-31 20:37:24.52104+00	53	Virilha contorno	1	Adicionado.	17	78
236	2017-03-31 20:37:34.994197+00	54	Virilha cavada	1	Adicionado.	17	78
237	2017-03-31 20:37:48.642421+00	55	Barba completa	1	Adicionado.	17	78
238	2017-03-31 21:04:07.185905+00	56	Manicure	1	Adicionado.	17	78
239	2017-03-31 21:04:18.606868+00	57	Pedicure	1	Adicionado.	17	78
240	2017-03-31 21:04:29.352037+00	58	Francesinha	1	Adicionado.	17	78
241	2017-03-31 21:04:48.547404+00	59	Francesinha	1	Adicionado.	17	78
242	2017-03-31 21:05:18.551442+00	60	Esfoliação	1	Adicionado.	17	78
243	2017-03-31 21:05:30.404722+00	61	Spray	1	Adicionado.	17	78
244	2017-03-31 21:05:42.729435+00	62	Chinelo	1	Adicionado.	17	78
245	2017-03-31 21:06:55.445498+00	63	Pintura simples	1	Adicionado.	17	78
246	2017-03-31 21:07:09.850264+00	64	Pintura francesinha	1	Adicionado.	17	78
247	2017-03-31 21:24:52.803458+00	69	EvelynPereira - Escova de cabelo liso até os ombros	1	Adicionado.	21	78
248	2017-03-31 21:26:12.751154+00	416	EvelynPereira	2	Modificado phone_number.	20	78
249	2017-03-31 21:26:20.551217+00	416	EvelynPereira	2	Nenhum campo modificado.	20	78
250	2017-03-31 21:30:55.84521+00	416	EvelynPereira	2	Nenhum campo modificado.	20	78
251	2017-03-31 21:32:28.565798+00	420	eidinhamartins@hotmail.com	2	Modificado account_type, categories, account_state, phone_number e skills.	20	78
252	2017-03-31 21:33:45.134321+00	420	eidinhamartins@hotmail.com	2	Nenhum campo modificado.	20	78
253	2017-03-31 21:53:55.389971+00	423	aureasampaio97@gmail.com	2	Modificado account_type e account_state.	20	78
254	2017-03-31 21:55:35.396065+00	23	Manicure	2	Adicionado Diferenciais "Aceita cartão de débito" Adicionado Diferenciais "Aceita cartão de crédito"	16	78
255	2017-03-31 22:04:24.303242+00	424	dircilane@outlook.com	2	Modificado account_type e account_state.	20	78
256	2017-03-31 22:15:19.97747+00	425	ElieneLopes	2	Modificado account_type e account_state.	20	78
257	2017-03-31 22:23:26.094445+00	426	ivalopes	2	Modificado account_type e account_state.	20	78
258	2017-03-31 22:43:47.956896+00	428	ArinetePaiva	2	Modificado account_type e account_state.	20	78
259	2017-04-01 14:56:37.270796+00	404	stephanyrengifo@hotmail.com.br	2	Modificado account_state.	20	78
260	2017-04-01 17:57:57.788147+00	429	Lanavirginia	2	Modificado account_type e account_state.	20	78
261	2017-04-01 17:59:39.878612+00	429	Lanavirginia	2	Nenhum campo modificado.	20	78
262	2017-04-01 18:25:35.966672+00	430	sabrinarodrigues	2	Modificado account_type e account_state.	20	78
263	2017-04-03 18:59:29.13199+00	24	Depilação	2	Modificado image.	16	375
264	2017-04-03 19:00:16.845594+00	397	camila.falabella@gmail.com	2	Modificado is_staff.	20	375
265	2017-04-03 19:00:34.557946+00	397	camila.falabella@gmail.com	2	Modificado is_superuser.	20	375
266	2017-04-03 21:33:07.080787+00	24	Depilação	2	Modificado image.	16	375
267	2017-04-03 21:34:28.760718+00	24	Depilação	2	Modificado image.	16	375
268	2017-04-04 15:05:36.963352+00	433	nayara_c_monteiro@hotmail.com	2	Modificado account_type e account_state.	20	78
269	2017-04-04 21:03:39.564785+00	434	isabely.pinheiro1@gmail.com	2	Modificado account_type e account_state.	20	78
270	2017-04-06 00:13:12.057437+00	227	danniexm@hotmail.com	3		20	78
271	2017-04-06 00:15:05.093516+00	439	danniexm@hotmail.com	2	Modificado account_type e account_state.	20	78
272	2017-04-06 00:20:12.935325+00	65	Maquiagem artística	1	Adicionado.	17	78
273	2017-04-06 00:24:27.128031+00	17	Maquiagem para noiva sem prova	2	Modificado description.	17	78
274	2017-04-06 00:24:53.454912+00	66	Maquiagem para noiva com prova	1	Adicionado.	17	78
275	2017-04-06 00:32:10.613068+00	67	Maquiagem masculina	1	Adicionado.	17	78
276	2017-04-06 05:12:25.074098+00	300	Sangiobotelho88@gmail.com	3		20	375
277	2017-04-06 05:35:07.319573+00	128	yanindikko	3		7	375
278	2017-04-06 05:35:33.444109+00	418	yanindikko	3		20	375
279	2017-04-06 05:36:08.904133+00	44	Documentos de Yan Indikko	3		19	375
280	2017-04-06 05:39:14.458529+00	428	ArinetePaiva	2	Modificado email.	20	375
281	2017-04-06 05:39:35.370893+00	427	BrunoMacedo	2	Modificado email.	20	375
282	2017-04-06 05:39:54.076347+00	425	ElieneLopes	2	Modificado email.	20	375
283	2017-04-06 05:40:10.138689+00	416	EvelynPereira	2	Modificado email.	20	375
284	2017-04-06 05:40:52.175792+00	429	LanaVirginia	2	Modificado email.	20	375
285	2017-04-06 05:41:50.561035+00	430	SabrinaRodrigues	2	Modificado email.	20	375
286	2017-04-06 05:46:32.613185+00	140	YanIndikko	3		7	375
287	2017-04-06 13:51:35.873262+00	410	rafaellaribeirodesouza@gmail.com	3		20	78
288	2017-04-06 14:01:36.375024+00	22	Maquiador	2	Adicionado Diferenciais "Estilo clássico"	16	78
289	2017-04-06 14:03:25.113027+00	22	Maquiador	2	Adicionado Diferenciais "Estilo romântico" Adicionado Diferenciais "Estilo versátil" Adicionado Diferenciais "Estilo sexy"	16	78
290	2017-04-06 16:15:44.377648+00	435	savana.mf@hotmail.com	2	Modificado account_type e account_state.	20	78
291	2017-04-06 16:37:33.795543+00	442	thejubsmg@hotmail.com	2	Modificado account_type e account_state.	20	78
292	2017-04-06 16:43:24.623692+00	22	Maquiador	2	Modificado description para Diferenciais "Estilo marcante".	16	78
293	2017-04-06 18:10:24.969561+00	443	JaquelineLeal	2	Modificado account_type e account_state.	20	78
294	2017-04-06 19:30:39.690503+00	445	RhaelMarcosCarmim	2	Modificado account_type e account_state.	20	78
295	2017-04-06 20:01:18.885975+00	446	DionnesPinheiro	2	Modificado account_type e account_state.	20	78
296	2017-04-06 20:02:29.272909+00	447	Nenel666@gmail.com	2	Modificado account_type e account_state.	20	78
297	2017-04-06 20:05:44.338912+00	444	felipe_alip@hotmail.com	2	Modificado account_type e account_state.	20	78
298	2017-04-06 20:38:06.958366+00	448	Sobella_@hotmail.com	2	Modificado account_type e account_state.	20	78
299	2017-04-06 21:42:21.868216+00	449	anick.alves@hotmail.com	2	Modificado account_type e account_state.	20	78
300	2017-04-06 22:00:55.964168+00	449	anick.alves@hotmail.com	3		20	78
301	2017-04-06 23:25:55.246023+00	419	pokpokpok	3		20	78
302	2017-04-06 23:25:55.250447+00	440	YanIndikko	3		20	78
303	2017-04-06 23:25:55.2543+00	386	ybd@icomp.ufam.edu.br	3		20	78
304	2017-04-06 23:27:41.434379+00	450	espaco_diva@hormail.com	2	Modificado account_type e account_state.	20	78
305	2017-04-07 19:57:54.452709+00	451	danilo_2021@hotmail.com	2	Modificado account_type e account_state.	20	78
306	2017-04-08 03:09:09.047232+00	375	ybrandao.d@gmail.com	2	Modificado account_type e categories.	20	375
307	2017-04-08 03:11:17.395886+00	375	ybrandao.d@gmail.com	2	Modificado account_type.	20	375
308	2017-04-08 03:20:50.59778+00	375	ybrandao.d@gmail.com	2	Modificado account_type.	20	375
309	2017-04-08 03:21:37.896017+00	375	ybrandao.d@gmail.com	2	Modificado account_type.	20	375
310	2017-04-08 03:44:45.6356+00	375	ybrandao.d@gmail.com	2	Modificado account_type.	20	375
311	2017-04-08 17:53:29.16601+00	441	hanna.campos11@gmail.com	2	Modificado account_type e account_state.	20	78
312	2017-04-08 18:37:11.799027+00	243	claudiapinheiro277@gmail.com	3		20	78
313	2017-04-08 19:56:56.724714+00	453	janaina.ncosta@gmail.com	3		20	78
314	2017-04-08 19:57:28.589064+00	454	janaina.ncosta@gmail.com	2	Modificado account_type e account_state.	20	78
315	2017-04-08 20:08:45.891021+00	68	Chapinha	1	Adicionado.	17	78
316	2017-04-08 20:09:12.539527+00	69	Babyliss	1	Adicionado.	17	78
317	2017-04-08 20:12:02.618262+00	70	Alongamento de cílios	1	Adicionado.	17	78
318	2017-04-08 22:55:36.156391+00	455	belladonnavieiralves@gmail.com	2	Modificado account_type e account_state.	20	78
319	2017-04-09 18:09:20.137048+00	445	RhaelMarcosCarmim	2	Modificado first_name e last_name.	20	78
320	2017-04-09 18:17:40.725496+00	445	RhaelMarcosCarmim	2	Modificado first_name e last_name.	20	78
321	2017-04-09 18:22:58.322201+00	445	RhaelMarcosCarmim	2	Modificado last_name.	20	78
322	2017-04-09 18:29:56.326896+00	456	anick.alves@hotmail.com	2	Modificado account_type e account_state.	20	78
323	2017-04-09 18:55:19.169129+00	457	lindacarvalh3@gmail.com	2	Modificado account_type e account_state.	20	78
324	2017-04-10 16:14:38.419654+00	458	vanessabteles2@gmail.com	2	Modificado account_type e account_state.	20	78
325	2017-04-11 02:59:32.790396+00	185	diogo_ristoff@hotmail.com	3		20	78
326	2017-04-11 22:08:17.35593+00	459	hellenalmadamakeup@hotmail.com	2	Modificado account_type e account_state.	20	78
327	2017-04-11 23:25:42.188474+00	461	novosalão	3		20	375
328	2017-04-12 02:50:21.402081+00	463	salaoclaudetemanaus@hotmail.com	2	Modificado account_type e account_state.	20	78
\.


--
-- TOC entry 3745 (class 0 OID 0)
-- Dependencies: 245
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 328, true);


--
-- TOC entry 3576 (class 0 OID 1297007)
-- Dependencies: 184
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
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
\.


--
-- TOC entry 3746 (class 0 OID 0)
-- Dependencies: 183
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('django_content_type_id_seq', 36, true);


--
-- TOC entry 3574 (class 0 OID 1296996)
-- Dependencies: 182
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2016-10-14 02:35:54.920151+00
2	contenttypes	0002_remove_content_type_name	2016-10-14 02:35:54.936543+00
3	auth	0001_initial	2016-10-14 02:35:55.004132+00
4	auth	0002_alter_permission_name_max_length	2016-10-14 02:35:55.026347+00
5	auth	0003_alter_user_email_max_length	2016-10-14 02:35:55.040016+00
6	auth	0004_alter_user_username_opts	2016-10-14 02:35:55.053841+00
7	auth	0005_alter_user_last_login_null	2016-10-14 02:35:55.065429+00
8	auth	0006_require_contenttypes_0002	2016-10-14 02:35:55.068752+00
9	auth	0007_alter_validators_add_error_messages	2016-10-14 02:35:55.08086+00
10	core	0001_initial	2016-10-14 02:35:56.334488+00
11	admin	0001_initial	2016-10-14 02:35:56.445124+00
12	admin	0002_logentry_remove_auto_add	2016-10-14 02:35:56.533531+00
13	default	0001_initial	2016-10-14 02:35:56.737737+00
14	default	0002_add_related_name	2016-10-14 02:35:56.808387+00
15	default	0003_alter_email_max_length	2016-10-14 02:35:56.8229+00
16	oauth2_provider	0001_initial	2016-10-14 02:35:57.183198+00
17	oauth2_provider	0002_08_updates	2016-10-14 02:35:57.432778+00
18	sessions	0001_initial	2016-10-14 02:35:57.45904+00
19	sites	0001_initial	2016-10-14 02:35:57.488739+00
20	sites	0002_auto_20160528_2022	2016-10-14 02:35:57.509541+00
\.


--
-- TOC entry 3747 (class 0 OID 0)
-- Dependencies: 181
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('django_migrations_id_seq', 20, true);


--
-- TOC entry 3655 (class 0 OID 1297750)
-- Dependencies: 263
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
v4c4ki9gewfx4kr55x6dep7dy3yqjynj	M2I3ODk5ZDdiZjljMjRiNDkzM2NiNjNhZTk1Y2M4OWY5ZDNmYTA2ZTp7ImZhY2Vib29rX3N0YXRlIjoiOVdNUFp3OTJTR241VnhYY0RTUkt4WXFzOWpwb3c3MWIiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-10 15:19:09.311304+00
5zdzibwreq6qz2qknu4vld8pyx2wuywo	ZDBmODc2M2Q2ODY1NWZmYmFhMDZjZDMzMWM2ZDQwMmMzMmZjZjdmMTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJQWExtV1BCRThNOXZ6bkNGTDhIalJSRzFLVWVEY25FViJ9	2016-11-14 01:59:00.170702+00
3f70z8akmsdnw4deqaohcnvac97gdpgy	OThlOGM5MDI4ODQ5ZTQwYzg2ZGRiMmVmMzJhZjA0ZTg2NzgyMTkzNzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJNTm1zQkczcEdLekxVbTFDYWtBYzlyeWZZQjZYWDRzRiJ9	2016-10-30 11:25:57.531067+00
9wvv27zkoiz219y4jcphkf24u62seld2	N2ExZjNmZmEyY2RhNzg3OTg0ODQ0YzRlOTBjYjY1NTM3NGQ0NTQ2MDp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJsVlFKTXJtT0Y0SDNNUERnQ0JIYWRFRVNZQWo2RzFsUCJ9	2016-10-30 11:41:15.365173+00
bzptp1elmk72xv58fuunfj1d8vx0pehm	MDcwMThjNjJhM2Y3NjZjOWE3Yjc0N2FjMzY2MmFjZTkzM2FiMjQwYjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJvQ2ZZZkFidmlOenF3VTNVdERjak5xekllT3NTSmoxQyJ9	2016-10-30 11:43:12.815147+00
ioblnm7ahyjslp1v4k4huv3239ccpzou	ZWZkMGM4ODY1ZTg5MGY5OWY1NjcxNzM2ZmI5YzJhMWJlM2ZkZTkzMTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJ4V2RYekVHQ2NETUE1U3NScUFsT3RFUWg5bG9sZEZIMiIsIl9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGViZjAzNzhkZTAzZDY2Njk3Y2I2Mzg3ZWMxNjk5YTZhM2ExNGE0MCIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIn0=	2016-10-31 06:08:54.659078+00
1beb2m38ic3u6f2p5onpgy9yiq3tdywr	ODBhN2FjYTQyOWRjZWE2YzFjZjZlNzczMzI5ZTFhMzdkYTBiNDI0Njp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYTJiMzFkN2Q2NzViOTBmOWZjZWYwNmE1NjY1M2Y0MmI5NDFjZmM2In0=	2016-10-31 12:48:23.103248+00
uo1jtpp0k1lzzytj2gzkr10fj8u9h2t9	Y2Y4ZjZkMTBmZmU0MTRhMzc1ZmZkOGEwNGU5ZTA3ZmVlZDc0MzQ3ZTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJtMU5ET1RGUHM2SkQ5UXpDczFSNlIzTlVqU0hjN1ZPaiJ9	2016-10-31 17:34:38.674016+00
e0kz0fl50yqza7osopb2v0x86k9ge55y	ZWJmZDljODQ5ZjFiMTk4ZDhmMDZiMzVjMDRlMGRkNTYxYzk2ODIzNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjVhZjNlZjhiYWJiN2MxZjk5YTU0YTk3NzkxNzZkYjdmNzg0YzA2MCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2016-10-31 18:51:01.653892+00
c9anhgg53z0vo64wi5g212iccouz1dtp	YWE2NDdkMGIxNDlkN2VhYzQ4OTVjNTM4YmIzNThmOTc2MjA2ZTM0NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjUiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjdjOTJkNjFhNTUzOTU5YzVjMzVkNGRkN2MzNTc5NTEyN2Q0MjdhIn0=	2016-11-01 14:04:24.826793+00
ucsvbd3wfkc0845rexip8oqdo5o39v6p	OGRjMTBjNzk0MmM4NTZkNjQzOTRhMmJkOGY0NWVhMjI0MWQyNWYwMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijc4IiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2016-11-01 17:27:39.04379+00
tha6sbycaugyzndo4cq380o5ty2nehbj	M2UxMjI4M2VmYzM5N2ZhY2Q3MzI3MGU5NzdmMzQxZGVhY2Y0NGNjZjp7ImZhY2Vib29rX3N0YXRlIjoiVUttR1BYZG55TE9HMEs4d29zVXBZbWZGNFpKenJDdGMiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-01 23:31:36.93897+00
980tfoxpabsbhls7l1h6y8rmn6pawpvc	MjZjMWFjM2Q3Y2Y4ZWNhMmZkZDM5NTExNTQyNjcwNWFiOWNiMjAxMDp7ImZhY2Vib29rX3N0YXRlIjoiZHdPUGdNYUw3aGo3c3dUdE1oRTE1QUhaak5zQzZ6TjgiLCJuZXh0IjoiL3JlZGlyZWN0LyJ9	2016-11-01 23:31:46.50516+00
lw37tkjjjrfqtvbfkb2kyhva9q6ofhae	YzM0MzNkZDgyYzNlYzIwMDMyZmZiZGI2Yzg5MTcyYzgxZDJhZjlkNTp7ImZhY2Vib29rX3N0YXRlIjoiQ2dwVUdTeDlRYjdNR29HME9TdGZCaDI5SFFQV3M5RTYiLCJuZXh0IjoiL3JlZGlyZWN0LyJ9	2016-11-01 23:31:46.974959+00
c4bggsqg88kebtv4ikvu0c2jf56dmtjk	OTY3OWQxNDIyZDI3OWEzYTNiZTk1ZTY4YzFiNzQ5ZTcxODgxNzYxYjp7InNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2hhc2giOiJlM2U2Y2FkNzg0M2E0YzRkM2E3NmI4ZWMzNWVjNDg4OWUyMDE3NzYzIiwiZmFjZWJvb2tfc3RhdGUiOiJmeGxYZ2hzWk42cmI3QzNlT2JueWRqNVJHb0hQR2s0UCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=	2016-11-02 02:24:21.989932+00
8ko4k44yq0nulmd7dqw6jb6pdynhaqw9	MDdkY2RlZDJhMWFmNGM5ZDMzZWVjZGEzMTQ0NDkwNWZiNTBlMTUwMDp7ImZhY2Vib29rX3N0YXRlIjoiSEtqaE5tYkViczVlanRmN0VHd3lKczk4ZFBUODBxYUEiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-02 02:26:19.07051+00
qqpnnhrsu5lzg8bxo8svl0h78g4led1v	Y2ZhOTg1ZDNkOTU4ZjI5ZTViMDE0NzY0MjM5YTA2NWI5MDllNTgwZTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJSNGdjUTJPS1Nyd1Jsbkt2djk2TEhEMTJ1RFdBbEFxQSJ9	2016-11-03 20:37:49.854774+00
xyq5nqs93f4mtiejmt6j6jytg0ttfpe1	NDJlNzI1NWJhYmFlNThhY2QyNDg4Yzc0ODA3NDJhOGJmZTA3MGE5ZDp7ImZhY2Vib29rX3N0YXRlIjoiVWtiR0ZZbVBVd2JwNnExZUlBcTNnMlk1Y3hQdVlxMDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImEyMzllMjZhMTIyODhiOWE4YjRmMGViYTQ3ZTNjNjhlZDM5YjhmZWMiLCJfYXV0aF91c2VyX2lkIjoiNyIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIn0=	2016-11-03 22:41:55.525879+00
axpguesy6q3t3ewj3qipxunz7l08t3um	Mzc3ZTQ0M2E0OTY0Mjk5MjIyNTU0MjAzMDFlZTE1MzVjNjEwMWI5Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTIzOWUyNmExMjI4OGI5YThiNGYwZWJhNDdlM2M2OGVkMzliOGZlYyIsIl9hdXRoX3VzZXJfaWQiOiI3In0=	2016-11-03 23:14:06.199345+00
juocw7aep4m11hkyz1vyiwr0jm70mol4	ZTcwMjVlYTgyNTQ2ZjhkOGNhYmVhMWM5ZmM0YmZkNzZhZmQ1YjkyNTp7ImZhY2Vib29rX3N0YXRlIjoiaEVROWt0TXhJSVNRbE9xdDk1ZHFJcjZGMW9Xa1Bid0YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9oYXNoIjoiZThiNDA2NGM2M2FjMjBiNjY3ZWMwYTI2YmY0NWEwNGVkODBkNWJjNCIsIl9hdXRoX3VzZXJfaWQiOiI4In0=	2016-11-03 23:16:13.422834+00
t9qokx00k57t1b0z0ye7i0ah8nfgl9np	NTM0OWNkNmM4NDc0NGFjYmUzMGQyNjg3NWJmYzFjYjI5ZDAxNTBlNzp7ImZhY2Vib29rX3N0YXRlIjoiM0V6aUV2V2JvTTl6Rjg2SVpuUDJ4cFRvaW8wOXFybmYiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-04 01:58:41.95416+00
iu81dhu8qdn61q4ylwut68k9fjhamtyd	YjdlM2UwZmU0NDZiODNjZjQxZWQ1Y2MwODU4ZDgyMGE3YjI4NzM1Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2lkIjoiMzA4IiwiZmFjZWJvb2tfc3RhdGUiOiJuS3g1WnVHdFdRcDlJZXByUjRBRVNzVHI5QlhYdWVNbSIsIl9hdXRoX3VzZXJfaGFzaCI6ImRhN2E1MmQ4MGI1N2JjMzIzNGMzMjExNGUyOTY1YWFhYTY4NzFkMjYifQ==	2016-11-04 13:26:09.877107+00
5gld8fjtqy28hft9jdwkyyo93snqyk0k	MzQ3MDVlMGVkZTI2MTk0ZjU1MWYyY2E2NzE1Yzk3MWM5MmI4NDgyNDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNhOGFhYzk2OGQ0MGZhYTQzM2Y2NjY2YmQyYTU1MTBiOTgzYTVlMTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2016-11-04 23:51:42.589321+00
kcnvaxkewyijbmkfx0ux84n3dmk1teut	ZTZkZjg3ZDM3ODQ3MmY3ZTQ0ODk4YjcwOTJhMTE4NzMyYzBhMjExNDp7ImZhY2Vib29rX3N0YXRlIjoiOFd6cVFEZVN4R0VrRjJya3RkUUx6OUdGTFl5Q0dLUlEiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-05 00:47:17.936452+00
etklr7yszot0appfmg2bb9uyt2k7eu5d	Nzg0MDE3MmM4ZTRjNDBjNjhiNGJmODQ2Mzg4NzFhM2Y0OTA0MmMzZjp7ImZhY2Vib29rX3N0YXRlIjoic3ludzV3MHQyOHRoeng2ejFYVFNId2k1enVJYzVFUXAiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-05 22:06:43.165524+00
d3ylrzrcqzgl3nkl02fo1azy4cdkxs4a	MmJlODVkZDExNTQ4OTdhNWIxZTg2MWU5NGE3MjhkNDU4ZDcwZmM5Mjp7ImZhY2Vib29rX3N0YXRlIjoic2lvd0xVdnNoMmxvSHFrNGZqNVl2UktZWmllNHlRd0kiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-06 03:20:15.008388+00
p2jdkuqiw0du3tygbq58hhtb2gchc1tz	NGZjOWM1MTQwMzljMDQ2OWNlNGM0MzU5ZmRiNWUxNWMxMTMxNWVmNTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiI1cWpnbDJNbzFETmk5Y0dXSkdvTzdCRkxaUXV6OUcyaiJ9	2017-03-03 00:05:23.347836+00
3cn6hz66cs9p61b7o1qno7boajqf07vb	YzUyMDAyNjNkYThmOGIxYzJkM2Q4OGU1NzYyZDUzYjFiNGRmMjk4ODp7ImZhY2Vib29rX3N0YXRlIjoiTzVTZWhSZDFJSHRmcG8yZm5jeEJsY0FPdWg2d3IzZUIiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-10 19:11:43.852818+00
idwh0ndxf7y5w5a1bgjenbtckdhozlgu	NmZiNzIxZjliNjBlMGU0ZDlhNDEwZmM0NzBlZmRhYWQ1OGViZjk1OTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM4IiwiX2F1dGhfdXNlcl9oYXNoIjoiMjU5MjBjMzNkYzc5NDNjZDJiMjEzZmU2ZDExZjhjZjk2MzhkMmY3OCJ9	2016-11-13 22:19:48.079061+00
vvbcardg8swi8c6ownmj5cjhpbph3a8b	MGVmMTg3YjFkODAxNGQ1ZGIzZTNiYTJlYmM5MzAyYWNkMDYzMTRhNTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJlek9qQXJNZzBBQTNjV0FMY01Zb3MzU0o2VmRxQmdYVCJ9	2016-11-14 13:53:33.9528+00
42ae9fv1ei5z7c0vp8hruyd669u45be0	ZmIyNWEwMTY3YjgwMmM5YTNkNTRmNDkwNTU3ZmQ4NTY1Y2VhZjJiMDp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJMRnU2OXFVdU45dm5ZUVlxdlU1NTJwd1hiNkZjdmlHdyJ9	2016-11-14 13:53:34.089556+00
682efil344tnmot2fvekh3wcj9fmt8ib	NTA4NDliZjdiMDg4YzVjODFiYzhhNjM5YzI0MWY0MzViMDNhNzAzMTp7ImZhY2Vib29rX3N0YXRlIjoia2YybThsT2s4d0dPb3BOb1NmbVY4eHJrTkVrQ3RseXAiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-14 15:58:42.329529+00
cu4btz6kfw2er8wwxaipi1svr5mie1zi	NGYzZmJiNWMyYzgwY2YzMGI5NjVjODBiZDUzOTFmZjcwMjA3NDY0NDp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJ4bnFlYnZqdk10czVHMU5GaElpblZUcHZia3dNSmVoVyJ9	2016-11-15 02:46:11.870456+00
x7epm25rptmwltu63vqb3naqbzv21te6	Yjk2MDExYThiOTU2OTc2NjI5ZjE5ZGM2NDA1ZDQxOWNlOTNmMTI3ODp7ImZhY2Vib29rX3N0YXRlIjoiM01CZEhaRlhXeVFCMHhjWmlYdTN6WmlvRTJvUkJvdGMiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-16 17:47:21.076357+00
labn7875w5lweeh3130112nbpyefrily	YjY1YTE5MDYwOTc0YWNhZWUwNzkzYTY3NTRiODE2NTA4NzdjODQxNTp7ImZhY2Vib29rX3N0YXRlIjoiTVRIcHdVSDFWS1BZOG9RaDRmaEFXUncyRVM5NXdZR1MiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-17 03:16:06.579668+00
p8z0ssxnghcxx95ehj79r9j76h6hrt4n	MTA3MGEwZjcxNjM5NzgyMDA5ZjM0Y2Q4NmY4Y2U0ODI5ZDA4NmZhYTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJlOGY1MDVSc0h2YnNsRkc4R1JqTWNCUTJ4bXhqUTl1aCJ9	2016-11-17 13:14:24.186965+00
fkwg7c9iar2t71ui3efzbeb8n6el2pbk	ZWZlZjNiMDIxNTZiMWY5NmVmNTEyMTIxZjA5Mjg2YTcyY2VhNTcxYzp7Il9hdXRoX3VzZXJfaWQiOiI4NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjk1YWRjOTExY2MwZTE2YTM1ZjRhZTZkM2JmYzY0YTg0ZDdjOTM2ZiJ9	2016-11-17 18:08:06.628109+00
82aysh5g35i5w83r7wwnxg1bm5mdcbjb	NWRhMDZkNzdlYjQ3ZGJhY2JlZjdhODMxNTk2Mjk2ZDk2M2QwZDdmMzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJxaXRHTkxpMmIyRWdYWW5EQlN2cmZXYjJTOFVKam9HRCJ9	2016-11-18 17:02:57.119505+00
5kzbd67o62mhoea8gcfcif3lrb0rvj99	ZmU5MjQxZTkwMDJkNGNlOGMzN2UxZTEwMGUwYjRjOTRhMTc0OTRiMjp7ImZhY2Vib29rX3N0YXRlIjoiQXppbHBDbDltMmF5M3JtUGJZWWNXbEUxNU1MZzdLSUMiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-18 20:42:37.870448+00
mspkl0wfpev3cspbzkzr8xumc960frlu	MTYyNTViMzE1ZWE3NmRlMmI3OGMzOTdhMWU1Nzk4YjY3ODFjYmVlYTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjkwIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGQ0OGMwZWRjMTFjNzQ3ZjIxMTE3OGU0ODZmZTc3Yzk4MTk4OTUyYSJ9	2016-11-18 21:46:48.714502+00
k3chobjp0kzee5niq30f0h9g23pixque	ZmY5ODFmZmU4MGUyOGZjNGYyZWE1NDExNDI4Y2M2NmU0OGE0NGFlNTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmNiOTkxYTM0ZGI5MWMyNDhkYTkzMzRhOGY1MjRjNDA0ZWViMzZmMSIsIl9hdXRoX3VzZXJfaWQiOiIyNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiZmFjZWJvb2tfc3RhdGUiOiJqempxYU5WR25MY3NtcXkzUzZqaThiNGZwQURuaWhBbCJ9	2016-11-18 22:01:18.243269+00
wynvwa5f0iqkzhlkz9gw8s5gla9qaf96	N2YzNjFkOTExNDlhNjRiOGY5MGM2MDc2ZGVhMjk2Y2Q1MWY3M2VlODp7ImZhY2Vib29rX3N0YXRlIjoiV1RQMnNkcm9qYTVIN0dTZkVOZjhIckpJT0lrRno4VUgiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-18 23:08:35.243805+00
rxu1phjr7keikc5x43k78676phipo8d2	MGNjNDAxZjQ2Mjg2OGExM2I4MDU1ZjQ5MDE3OTQxNjM2MmFiNDNlYzp7ImZhY2Vib29rX3N0YXRlIjoiNzM1bzlibmxyc0xBR0xGOUJBQzNoM3V5WXVKWHlPeHgiLCJuZXh0IjoiL3JlZGlyZWN0LyJ9	2016-11-19 02:28:11.875862+00
bi9plu9w77f0o51xwbuyc8t6ryllmo6o	ZGUyMTZiZGQ3M2Y3ZTcyZTcyMGEyNTAxMTY3YTEzNzhkOTcwM2RlNzp7ImZhY2Vib29rX3N0YXRlIjoic2M2Z2FIaFI0bDVlMlRzd2NZb1J6enJ1V2RSU0F1OGciLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-19 19:38:46.541079+00
u0qwe54oyybv8lqlluqus9b9mdowhd3z	ZTVkODFmZTA0Y2MzNzViNDliZTFiNTExOTI3Njc2ODViNThhNzcxZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTZjMmUxNTk5NjU4ODQ4NDhhNmVkMjRiMzlkMGZjMDVhNWI4MDY5ZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDMifQ==	2016-11-19 19:40:46.134246+00
jdub1regr5iltvuekvy27ehv7qra6b7n	ZDA1MTgzMDI5ZmRlMDkxYjRkN2JjZTFhYzViMTVlZWU0ZWM5OWZiMzp7ImZhY2Vib29rX3N0YXRlIjoiOFB6N2hhVURRWERzZnpvV3FEdGNoWnVjcG9qeE82Y3giLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-19 21:05:25.914326+00
jdo4ht9qp7u4vwxjhuwth5cqswm1z9ts	NTVjYjJhMDMyZGY4ZDdmYWZmZTBjOGUzNWQyMWFjY2I2M2EyMDgyODp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJxWWdyb1lSVmpITW00ZUwzVVFPNWwzRkd6bzNUWkFpaSJ9	2016-11-21 05:31:16.796387+00
h5zuarrmxo4hv7qc55g06k64huyoyuqy	ZmQ2ZWFjMTdlZmIxYjc1MzUxMTZhZmZlOWM1MTJjYzAyN2Y2Mzk1Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImE4MDg4OTE4ZWQ3ZWJhNjI5MmFkNzJiNmExMzkyZjQ5YmEyZDJmNDYiLCJfYXV0aF91c2VyX2lkIjoiMTA5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2016-11-21 13:53:56.348157+00
ljhsap5pmyoi7gbi84sjhho7xgyzxgzn	YmNjMjgzMmZkY2E1OTQwOTgzOWQxYjhiYjQwN2U0MTY1ZDhlYWQ2Mzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJnaFdWYXVnVGJvekg2Sk9BbHdmdXNQbWxlSllNT3I1aSJ9	2016-11-21 22:45:23.770484+00
x0v92ykhq9prmpwdkp9ja934lvlcse0d	OWU1Yzg3ZGVhOWU3ZTI3Yjg2ZTJiYjUzOGZhYjMyMzg3MjNkMGU4Njp7ImZhY2Vib29rX3N0YXRlIjoiaG12eUgwTnEwT1RpNEtXMGlKY3pmMmRPNGsyb2wxa20iLCJfYXV0aF91c2VyX2lkIjoiMTAzIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImU2YzJlMTU5OTY1ODg0ODQ4YTZlZDI0YjM5ZDBmYzA1YTViODA2OWQifQ==	2016-11-22 13:48:44.088079+00
4rd5rf4sktosa3h3m3synr1bb2bswxkx	YTNjMGI5NWNmZDhhNzkzMjk3NWFlYzkxYWI4OGU1YWMzNzQxYzYxNjp7Il9hdXRoX3VzZXJfaWQiOiIxMTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImMxYzVhNGZlMGIyZDYxODU0NmJjOWNkZGI4ZjFkZjI1MWZhNTFiYjQifQ==	2016-11-22 15:58:37.6469+00
e5qx2zz9sxniq0mvy6pq1ml37hd9fhcz	Y2E1MDBjYTNjYjIyOGEyZjIyZTc1MGEwZWZkZTBiYzI0YmE5MzVkNzp7Il9hdXRoX3VzZXJfaWQiOiIxMTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjdmNDhhOTAxYjNiNGVmMGJlZTAwOGM1M2UzODhiZDVjZWU0ZDg1ZDQifQ==	2016-11-23 12:55:13.18179+00
twpnvrcdiysu8qfb9uha7ycjl6dqotba	YzQ2NGNmMDE2ZTQ4MTJlOTIxOTllZmZiOWNhYWFjMjMwZTIzMjllYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImRkYTg0ODBlNjI1MDRiODM4OTk0YWUyMzJkODRmOTI4MjZjZGFlZWIiLCJfYXV0aF91c2VyX2lkIjoiMTEzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2016-11-23 13:56:15.740769+00
chqkfdo2ykqxxi5es8b93ea9kdf57gkq	MDNiMzczMDMzYmU2Mzc5Njg5MTBlZTkzOWRmNmVhYWRkMmIzNTQ1NTp7ImZhY2Vib29rX3N0YXRlIjoiTHg1bkxtMExnMlA5VFNXNVlyRUh0R1MxdnlpcFJCR2siLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-24 14:16:12.876701+00
aner26f8qgva7a4z5i5uuunboj8rgcvq	YjcyOWQ4YjNmMWQ0MzVmYmY2NWI1MzMwNTkzMmIyYWZlZDNjODNkYjp7ImZhY2Vib29rX3N0YXRlIjoiQmZGTW9BbW5TNFdENE53RnhwY0dyY245d3Z4aXdFUzkiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-24 14:17:40.849124+00
ey8qbnaekh5vk4tjdcogtgosnuq147p7	NmJmMjdiOTJlMDdjNThkODc2YmJkODc1MDQ4ZjRmODU1YjE0OTE0NTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJldkpSMWoxRkpORjVVYXJ4ZEg2MzRyN1diaUxOYWU3USJ9	2016-11-12 00:01:00.582721+00
5m4bd0b70d3yj15g4ywc9byf98uuig9n	MjdhNmRmNTUxOWU5YThiMGE2MWM2M2EyY2I2YzY2MWMyNWRhNzcwNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImM5Y2FmMGNjODdkOWNlNjM0OGEzZDUyODk1NjhjMTczODQ1ODM5ZmUiLCJmYWNlYm9va19zdGF0ZSI6Imdad1hlb2g1VUVTa3NnU0dkOFNGNjJmWjhoWXg0TXdDIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2siLCJfYXV0aF91c2VyX2lkIjoiMTYiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-06 20:43:07.759017+00
atydhiapxml0hygdq7hga3bbwiq6e1gk	OGE0MmFjYTZhNjZmYTI5ZmMwZThhNGNhN2M1ZWQ1M2M0MmY1N2QwZTp7Im5leHQiOiIvcmVkaXJlY3QvIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJmYWNlYm9va19zdGF0ZSI6IkVMSk5PcTVHSkNRZTZJWENyQ08wWlpkUkJtM2RqMzFTIiwiX2F1dGhfdXNlcl9pZCI6IjM3IiwiX2F1dGhfdXNlcl9oYXNoIjoiYTJhMmRmYTJlNGY2YzA5YjczNzc4Mjc3YjkwMzM2ZGVkYjMyOTkyOSJ9	2016-11-13 12:43:40.71223+00
b8z0979edy5c04rstoemb2wk8lkq46mm	ZTU4ZTcwZTgyOWIyODc2YjdjNzQ3NDlhZGRlMzNmNzU4NWU5ZDRlZTp7ImZhY2Vib29rX3N0YXRlIjoiS2M5bktOQ2VLM0k4ZXVkUHk3MTBNNGdreVV6ZDhQaFQiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-14 00:49:44.659866+00
1z604uej7u5esr899kdgwiglqfom1l1k	OTVjYTI0NDYxZTVjNWRkOWY1ODk2NmRhZTY4MWRkOWJmNTYzYTM4Mzp7ImZhY2Vib29rX3N0YXRlIjoiWFZKMzdWbWR3U0Y5SkZQcU82MFRJd2dmMGk5ajdWYTEiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-14 15:17:58.13748+00
zil3tbo6zin4dsxf8l5s13ptnp8vzv56	MzMxMTcwNTRkNWI0ZDMxNDNhZGFlMjc5NTJjMWQzN2Q2Mjc0YWU5YTp7ImZhY2Vib29rX3N0YXRlIjoid2JxSkd0VUlXNEl0b052b1RON0ZqTzN6WFBxVmgzQzkiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-14 19:49:58.338051+00
t5lvugn8h3r0vvwff4bx8jkh8r6wle4u	NjFiYWUyYjU5NzQzNmUwODQyNWJkYjcxYjU1MDY5ZDI4MzYwN2VlOTp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTNhNzc5MjYwNTI4OTI4NjdhZDcyZDFhYTBmYjFlYzI4MTE1N2E5YyJ9	2016-11-06 22:54:58.545426+00
eicnn8lm8vl6f5m1k3w8gxrevlwzlc0a	OGJlYjU1NzE0OWNhYWU3ODJlOTEyOTUyZWY4MDZkMmU1MDgzZmI0MDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjM1OTFkNjAxOTJlN2RiYzkxMDU4ZDI3YTRmNWMzMzI4MGNlNTE4NiJ9	2016-11-15 18:09:01.236819+00
051ldcy6t7katwii130cxni5jo80ocbi	OTI0Njg5OGVhNDgzMzgxZWExNDMzNmIwNDE0Mzk5NDUxYTFhZDI5ODp7Il9hdXRoX3VzZXJfaWQiOiI3NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTg3MGIxNWIyZTAyOWZhNzYyNTZhODI1NTQ3MjM3NjNmODAwMWU2MCJ9	2016-11-15 22:12:34.311165+00
97ye6mw7qcdynmrlmtxuntxxvkhvlk78	NjZiM2RkZGZhMzc5MTI4ZTkxOTEyNzQwNDEwYmMzZTQ2YTQ4NzU2Mjp7ImZhY2Vib29rX3N0YXRlIjoiSEFLWVlNbE9ZMGE4cVFKRXpGMDJLRUw0YWRiRGlOZ3giLCJfYXV0aF91c2VyX2hhc2giOiIyMGFkNjJmZDUxNmEzNTk5ZGZiN2Q2MTczYmQ4MmI0NjA4MzE3MWY3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMjEiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-07 00:27:54.584174+00
kn50ewuc0zs4ur4268bu5rtdgoabgupz	MTU3MmIzZThlMjdkZDU5NTc1MGE0MGE1MzFmMTY0ODY1MTFjMDc3ZTp7Il9hdXRoX3VzZXJfaWQiOiIyMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ2ZmY2NjFmODBiNjQ2YTJiNzFiNjVlNjc3Yjk5MTBhZjIxY2RmMDUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2016-11-07 02:43:05.580337+00
fm91jx0x2n5ahxy6mr3h2n1xvfs7f0nq	OGEzMjUzNTI4YjNmY2QzZTIyNDE2NTNjYmUwZjQ3ZTRlNTU1NGM0Yzp7Il9hdXRoX3VzZXJfaWQiOiI3NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2UyNDQwZGRiZWFkODg3NGQwNzE4M2FlYTg2YjNhZTU1YzZiMTgzYSJ9	2016-11-15 22:13:20.522931+00
4r7ze2jvi01flt8a8gjpxmfcc4cireij	NTU0NTU3ZTNjODI0MTQ2Y2RiZDZjYTc3MDM4NjhkMGFkNzZmMThiZTp7ImZhY2Vib29rX3N0YXRlIjoiRXFJSmxnZU9BeXoxV0JqRDI3SHRGU3Q3ZEd6N0NJNG4iLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-16 04:15:04.047592+00
1wmnapl5taqrcqk8gzvp8ijn26nzd2np	ODU5MzU1OGE3YmRhOGRkMTAyZGRiOWIwNDhiMzYxZTk3YjBmNTQ5MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2lkIjoiNzkiLCJfYXV0aF91c2VyX2hhc2giOiIxZmEzNWY2ZDI5ZjY5OTIxZTI1Y2ZhNDllNzgyMDAzMGJhYWVkZjg4IiwiZmFjZWJvb2tfc3RhdGUiOiJaNXc3TjU5UlZDSGxveWFNNFNXYzM4WUk0NERZeUJrTiJ9	2016-11-16 12:40:40.797204+00
eubijx27k2hji3d124gjb0gvkgu8ynqa	MDdhMDg3ZjZhNTNiYWMwYWQxYmVhMThiYzE4ZjU5Zjc2Nzg1ZmY3YTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJsYzdwaUZiTkZGbE5STVVrM05aSTVCNEI2WDRoQnhwcyJ9	2016-11-07 03:21:11.316263+00
9055k8u03ww05l7ch6ky8f6uaten9fxb	MTUzMzE0MjE3ZDlkMDBjMThhNGQyYWUxNDZiMjg3ZGM3NjkwY2U1OTp7ImZhY2Vib29rX3N0YXRlIjoiV3FPdEx4b3NudlhZc2tzSkJrWnVpVHFkczljczE5dXYiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-17 02:55:02.717096+00
j8kragf8t5x4h5k4hnzbwkh78xml4ohw	MzIwNWIwNzdkOWE2NzI5ZjQyYjJiZGM0OWY2ODk5NzNmOTlmZDQ3Mjp7ImZhY2Vib29rX3N0YXRlIjoicjVZVXhyakNjY0czVkROSGp3SlRXNzFMNjBYU3FmaHoiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjZjMjNkYWQyYWFkOGQ1NDdmZmY5NTdiNGU1YjBlOWZlYWZiMGZjZDEiLCJfYXV0aF91c2VyX2lkIjoiMjM0Iiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2sifQ==	2016-11-08 01:44:38.937266+00
gmankq26i0qpfjmpoh89gq1zt1rirf6e	NTdjZjU0YzVjNGQyMzMwMDUwYTliZWY3Y2Y2YmU2ZDk1NWE2OWUyZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3OCJ9	2016-11-08 14:57:18.362918+00
ep6j0u6cuu4d6g9wwnzwaio6gveug4j0	NTdjZjU0YzVjNGQyMzMwMDUwYTliZWY3Y2Y2YmU2ZDk1NWE2OWUyZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3OCJ9	2016-11-08 14:58:52.860837+00
8nq3fsvfwsk0bwu9r6nuorgijgg3jd0q	Y2FiYTE0YmUxYjRkZDlkZmQyNGU1OWY4MTRkY2VhNmYzNjNhM2NkOTp7ImZhY2Vib29rX3N0YXRlIjoiMGpCc3duWnpSUlJ1bld1ZmlPVE1WT1FqVjMwTGRUNHMiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-09 15:13:26.51084+00
f2ojl7k9k2wavf8lycjc6zoldhf2tagg	OTk3OWUyNjYyYWQwYzQ5N2RlZjUzNDA2NjlmN2IxNGRmYjc5OWY5Njp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJLall6YXloMGFaUm1sM3RuVW1OVkNUSktSZk9DaGJEQyJ9	2016-11-09 17:54:18.448952+00
i17jud709uaewz2fhpml98io9bizcys2	OGRjMTBjNzk0MmM4NTZkNjQzOTRhMmJkOGY0NWVhMjI0MWQyNWYwMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijc4IiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2016-11-17 12:17:23.066657+00
f1g4sa710u0ppgk22drfie6p72bgndab	YjExMzgyNGUxMTdlYTA0ZTIxYzRjMTMyODdlZmQwODAwYmNkMGZmZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGQzNDlmM2Q3ZjEwOGVjZTJkOGM1MGZiMzBiZmRiNDNhMjM4NmQ1ZSIsIl9hdXRoX3VzZXJfaWQiOiIzMCJ9	2016-11-10 03:26:53.336621+00
0aqzov68z4xwbk4d0gapiv3a9b68z32h	NDQyMDE3MjAwZDU1NTkxYWQ1MGU3M2Q5NDEwNTk0Mzk2OWZiMTU3Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDY4ZGMxY2Q0MjYwNGJlYWM0YjVhMDI1MTdhNTllYWZlN2ZmOGUxMSIsIl9hdXRoX3VzZXJfaWQiOiI5MyJ9	2016-11-19 01:15:44.002866+00
vnyfyiae2eiqy43ewdpaw36f9e854zlg	ZjM3Nzg3NzQyMWVhNjg0OTExZTI3OGVmM2RhOTEzOWUwYWExY2Y1Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDQ3ZmJiMjA2ODBiNjdhZDFkNTA4OTA4MTJmYTJhNzM5MDMxNmYwOCIsIl9hdXRoX3VzZXJfaWQiOiIxMDQifQ==	2016-11-19 20:03:58.066384+00
r7doxxrtcmwszjd6ebldor8emt9upbw6	YWY0YTkyMDk1OGI0YWFmZjgzZDgyZTM1NzUzYmM1OWU0M2U2OTY1Nzp7ImZhY2Vib29rX3N0YXRlIjoiYjhsMEVJVkRRT3V0VXRTelFRb1JOOVZnTXVuWTF6R0QiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-25 10:12:30.30172+00
srt6dit67yfirk8u47r2azatfywfht7v	MTQ3NWMwYzlkZWYyZDAxZWEyYjFiZjUwZjY0Yjc0ZjJhMjIwNmI3Yzp7ImZhY2Vib29rX3N0YXRlIjoiSXpCQlRKYzF0UzVvVzZ4QmhNcnFvczZiQjRoT1pNMDQiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-11-25 14:35:22.687275+00
md7ie2ijfspjin9vvgm8k7l5ayzirp0s	ZmY1MWMwY2IzZmE5MmM3NzcyNjUzNjMwOWIwNjc3NWFhNWZiNDIxYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFiNjEyY2VhNDYzNjNkOWI1MDRmMDQxYWYwYTUxNDQ0YjhmZTYxMWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMzgifQ==	2016-12-07 19:17:41.250693+00
iglpx69lxn7psii7uumo2qyrzsfmrlqd	MTI2MzRlN2U3YjQ4NzllMTY1NTkyZjY0ZTdiMDI3ZjYxOTUyNzRiODp7ImZhY2Vib29rX3N0YXRlIjoiZDduVjlvT2xUbmJVSGZZN1VhOFdwZ0pyREozNTRtb3YiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-03-05 08:38:40.84117+00
4amj8d81ws9gqsguje7gzmnfki2dahd4	YmFkNGNhOWYzYzgwNTViOWMwZjY3ZjdkMjk4ZDU4NmYwYWE5NjZmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTI5MzRhYTFmMzE3NzM4NTQyYmY4YTZhYzQzZDYyODU3MGJhNjRhNCIsIl9hdXRoX3VzZXJfaWQiOiIxMTcifQ==	2016-11-28 13:27:48.172407+00
xsc2q9bjaca50q1b54h0essmqeu8p4ki	YTc0MWJkMGNkMzIyODQwZWZiMzkyYjQ2MTNiZjAwMzc0Nzc0OGQ1Nzp7ImZhY2Vib29rX3N0YXRlIjoiSUx4bE8zWEo2YVlyaW5ZaWpjTXlwVmk0OW12cmZSaDYiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-12-09 00:45:36.797701+00
av4xkuz6ydk7ikot4504tq0xc2j852ph	MzkzMjhkYWM0OGIxZmRjOGI5NGNlMGZmYjA3ODI3MTk1ZWFiODBhMzp7Il9hdXRoX3VzZXJfaWQiOiIxMTgiLCJfYXV0aF91c2VyX2hhc2giOiI2NTJkZWZkMTVkYjkxZjE5OWM0OTY5MDdkOGJmZGYyOTI4MGU5NzYwIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2016-11-29 00:00:09.563464+00
dbz7eo2tr785adjms54p37u379kyo40k	MmE2NjZkYzYwZjMxYjE4YmYzOTAxZjQyYjQ5MjdjYmEwMWU1ZWVkZjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJwZnhJemZVN0lFak9zMnd0TGY2ZHRVd253VUxmVEtIVCJ9	2016-11-29 13:46:44.713649+00
v61ui6q64pb3jynuhjdvf1ysr3nyh6er	MzViYjc3MmI1Yzc2YjYxZTc4OGRkOTdjMTJhOWU4YjA1MmVmMzBhNjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJSeWZsTnl5cVFWOTlPSmZrdU94RERvTVVpVkx0S09ERCJ9	2016-11-30 16:55:18.724119+00
68fxkdml3uc446laoypu6l2sv613oxqz	NzgxODAzYjg3YjM5MDk3ZDliOTY1MjM5YjdkZGI4ZjRmZjljOThjYjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJhSUxPeUdXVE5kTWJhZlB6alRnMUxuRUVOMlJ1U3NvdCJ9	2016-12-01 04:48:37.71979+00
mu6ppnx72e0qap9yqdjifjzd5qcjuunq	Mzc3NTk5MmY3ZjUyYjFlZTEwMDkwNmZlMzNjZjE3NGY1M2IwM2MzOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY1ODk1ZThiMGJiMWI5NThmYWQ2YzlmNjEyYzZjNDg0ZjkwNjM4Y2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImZhY2Vib29rX3N0YXRlIjoiMm55cEM4NUtZTlNuZVNNTDdiSk9QVFlxVzR1ZG5GTVgiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsIl9hdXRoX3VzZXJfaWQiOiIzOSJ9	2016-12-05 02:58:41.446992+00
fotpj00kz9w1eqn87r9prtd6j6b9qxnn	ZTBmNDUxMDI3NzU1NGM4NjFhYjNhYWI2ZTllMjY0YTVmMmRmZDMxODp7Il9hdXRoX3VzZXJfaWQiOiI3OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2016-12-01 12:55:12.791132+00
0smqrn59ijb3035auovfn25jqg69uwff	MjZlNTQ0ZDk2ZjE3MzAzMjI4MDFhNzA1N2I3NjA0NWVhMzEyMWVhNjp7ImZhY2Vib29rX3N0YXRlIjoiMzhuWkhOMVZuR3ZNZTdiUzVzWlQ2Qk1NemRCVjJJRHUiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-12-05 03:24:09.22406+00
ax56ftlt8jsfpv9unaqzqvlbc4nt9g35	ZDE3NDA3MWFiMzg5OWUxZjU1YTFjMWRkZmQ0MWQyN2IyOTdkNzFiODp7Il9hdXRoX3VzZXJfaWQiOiIzNTMiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU3YzgwNGU5M2MwMmVhZGZhMmU1NWQxNjM2N2YwYjAwMWJjYWFiIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2016-12-16 15:01:54.424492+00
wtzpih54po3bs6f0su0pk1tya7cyb15v	NmRmY2Y1MTUzMWRiZTYzMjA5NDU2NmIxNTc1MDEyODQ0NjU4NzYzNjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJocXFoQ01RMkFPVUprTGhxdUVaQ1pDS2hYNUlSdUJPcSJ9	2016-12-06 03:41:35.862622+00
yf18yobslfiutia47lexdf9e65txjnrg	ZTBmNDUxMDI3NzU1NGM4NjFhYjNhYWI2ZTllMjY0YTVmMmRmZDMxODp7Il9hdXRoX3VzZXJfaWQiOiI3OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2016-12-03 16:40:33.241529+00
cjvacyyx7zkf0if2jj9dcrxyedd18jjb	M2U1NjhkYTAwZGEyMzgxNzhhZTZmMWQ5ZGM3NmY3MjE2N2FhNGU4Yjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc4OGQ0OWRmZGIxY2FjZWMzMjRlMWZiNjk1ZDJkZjViZWU4M2M0YzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMzAifQ==	2016-12-03 01:48:51.366154+00
k5ruiq4d9l8pc49yv29vkzsdha5hfbu2	MDA1ZDRmY2M3MDc0ZjgwN2IxNGZiNTQwNzZlNjJkN2EyMGMzMWRiMzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJHTndUY1FsQWJHUjNWeWVtU20wTVprRFBNdDNDNlA3aCJ9	2016-12-03 03:28:44.961423+00
lizm8t141v84sipark5l36y4pe0xi34s	MWIzYzkxZjdhNWQ4ZjJlNzkxOWU3MWM2ODg3NTE4NjVmY2U0NGRhZDp7InNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiX2F1dGhfdXNlcl9pZCI6Ijc4IiwiZmFjZWJvb2tfc3RhdGUiOiJPVXJRQUQyWFJlVnluRlgzWkZBNXowdlE2eTcwT1NDdyIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiJ9	2016-12-06 13:48:12.435523+00
htei7yyyx51qcg4xteqh7mfgj0yp9tup	MTk1Mzk1YWFlMDY0ODZkMzBiNmY5ZTczNDQ2Y2VmYmExZjU2NDVjMTp7Il9hdXRoX3VzZXJfaWQiOiI3OCIsIl9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2016-12-06 13:59:05.299524+00
fyysc2eda86bzrp2eu6dwai2p04jrjed	MDI0Y2MzNTYzNzViMzI1OWM4OTQ4NDllOWUyYzIzNWM0ZTE4MDhmNDp7Il9hdXRoX3VzZXJfaWQiOiIzOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjU4OTVlOGIwYmIxYjk1OGZhZDZjOWY2MTJjNmM0ODRmOTA2MzhjYiJ9	2016-12-03 17:07:23.308557+00
4i5jhd98b7ngklik4zypi43d9y3ef4c4	ZTBmNDUxMDI3NzU1NGM4NjFhYjNhYWI2ZTllMjY0YTVmMmRmZDMxODp7Il9hdXRoX3VzZXJfaWQiOiI3OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2016-12-03 17:11:28.14862+00
taf65iv4pya9xjm046730ul4lin85f5d	NGUxZDljZTJiMDZjMmRiOTJhMDVkNDY0NDljYzQxMWJlNGRiZTliMTp7ImZhY2Vib29rX3N0YXRlIjoiYmtEdTNFNzlOaXgxRTBvM3hBYnJ4OTltZzNESkZFWmEiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-12-04 07:56:52.263534+00
jbx7h159qwo3jkl5rsnv27rlao7dgitc	YjY0ZDczN2VhYmIwZTA4NDY0ZWY0ZWZlNzczYzQ0NzNjY2RjMGI4MTp7ImZhY2Vib29rX3N0YXRlIjoieTBUWnQ1RmFwelN6UmJCbGRWR05KU0dxcTNDZkh1eDQiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-12-04 12:56:05.286654+00
4oo2cwby862fy9x3bwo4kg3snr1myxkb	NTJmYWIwZjg1MTQ4NmEzMGFlMDM4NzQ1NGRlNDhiNDNhN2IxMjAyYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY1ODk1ZThiMGJiMWI5NThmYWQ2YzlmNjEyYzZjNDg0ZjkwNjM4Y2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzOSJ9	2016-12-07 13:44:05.157976+00
mizafdk6a6xxgv0ifwblvtqswd4fh44g	MDVhZGZkNTk5ODllMjNmNzIxOTEwYTY1YjVjZmI3Mzc1MzhmM2Y1Mjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJNMXFWZUtTMjVCMFZXQUZtUm01RTV4aTB2R0JuY0JVYyJ9	2016-12-04 23:07:05.88085+00
oopf8w1w1q941xs0tb6gnd80sdf5xain	MWI1YjZiYTBhYWJmN2U5Y2E3OWM2NjYxMWQxNzQwYTNjODA3YTI4NTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJwZW5wczREUEFuZ2tiYWg1VDczSWJOWDZlTUJ4MkNSNSJ9	2016-12-04 23:24:44.57474+00
zi7dtxkx3rk8zht1wy06vtluw0rvcnch	YTI4YjBmODgyYWM0OWFhM2JmZWVjZDFmYjJkMTRkNzdlYjM3Y2ZiZjp7ImZhY2Vib29rX3N0YXRlIjoiMkZCb0g2Q2U3ekdmc25odFVjRVEwWTZNWElXTVVSRlEiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-12-06 14:45:53.155985+00
3iskywxbuv954vr6z2udp2hakp5udc29	MDI0Y2MzNTYzNzViMzI1OWM4OTQ4NDllOWUyYzIzNWM0ZTE4MDhmNDp7Il9hdXRoX3VzZXJfaWQiOiIzOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjU4OTVlOGIwYmIxYjk1OGZhZDZjOWY2MTJjNmM0ODRmOTA2MzhjYiJ9	2016-12-18 00:09:02.485345+00
pitlsylzj9vnf4ynkvk73guf3w1opybl	N2M0NWU3NTZhMzNiZmVjYTJiMTI2ZTNmZjMwZThkMWFjZTE0NzVmYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJmYWNlYm9va19zdGF0ZSI6IlFGcGZGYTZ5ZXVnVW5jeUhUZTh1azg0OW1VUUl3Z1J5IiwiX2F1dGhfdXNlcl9pZCI6Ijc4IiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayJ9	2017-02-06 17:46:52.915055+00
plhujyb8tc16u5cvwy5jab84ylhumq3u	YjVkYmNhNmUwYTc3ZTUyNWQ1NDA1ZmZlYzcyNWNkOWJkODJjMTQ5YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM1NiIsIl9hdXRoX3VzZXJfaGFzaCI6IjQ1NzYwZWMyZDk4MzE0NzE2MjE1ZjE4OWU0ZGI5YzM2YWZmZDU3NDkifQ==	2016-12-23 14:27:03.196338+00
8vbdmt15y6wfi20pjle33za84r3tu3ls	NGI1MjgyMzk0NzI4NzUyNDEyNmQ4NjI2NmM1MmRiMWU4M2NiMzQwMTp7Il9hdXRoX3VzZXJfaWQiOiIzNjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjA5ZGQwODI3NzJlYzVlMTYwNzBkNGQ5YWVkOTk0YWJiNjIyMWMyOWMifQ==	2017-02-23 14:00:48.686704+00
6dcx0lfdjdmuq0nmes5qzyxedxlkq3pb	Y2RmOTY2ZTY4NzFhZDFiNzNiYjFkNGMyY2M0Yzk4NDkzMzU4Y2EwMzp7ImZhY2Vib29rX3N0YXRlIjoiNHUxcTVPbzZpMHNENnF1SzNvd1FmeG9Jamh6MzRFbDgiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfaWQiOiI3OCIsIl9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-02-07 23:07:49.535124+00
96ie881o8svg6a65ob7kwiovebaxk71d	ZGRjNmEzNzc2M2ViOTkzZTQ3ZjIzOGI2ZTg2YzIyNjFmMGUxMWIxMjp7ImZhY2Vib29rX3N0YXRlIjoidDFtV3BFUjExY2o1T2I4aG9FWmRuR3dqZGF5UkxpRDYiLCJfYXV0aF91c2VyX2lkIjoiNzgiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2016-12-31 15:49:07.219192+00
xc2oyqljthz1dwfjnx5pu1et2gbu9yh2	OGE2NjMxMzYxZTM3ZmE4NjBhMWNmMTYyYWMzODE0M2RmZWYyNWU1ZTp7ImZhY2Vib29rX3N0YXRlIjoiT3V6MEVYOVNNbHZoWTBLNTNXaVRHbFc4QzNBZGk5SXIiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfaWQiOiI3OCIsIl9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-02-07 23:20:31.271334+00
nmj9f1ac2bx2h0rwj97gbmu7iezmuon7	ZTJiNjcwOWFlOGVmMTAzZjBiMDFmY2Q3M2EyOTYyNzg0MWQwN2EwZTp7Il9hdXRoX3VzZXJfaWQiOiIxNDEiLCJfYXV0aF91c2VyX2hhc2giOiIxYWQ1MjlhZDVlMzE0MmZlZTQ5YTMyM2QxMDQ4Nzc3NDc5MzFjOWU2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2016-12-09 23:14:19.996335+00
kwuez0ur9dus1xpmz90pb7aeo18dedmu	ZWIyMzI2OGFjMjU2OTg3NjU1MDY4Yzc0MGUxMjVlYjhhODcwZWU1Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2NzdmZmYxZDMxOThkNmM4ZTM0OTBjNTQyZDQ3ODQyOTQ5MGNmZDEiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9pZCI6IjM0OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsImZhY2Vib29rX3N0YXRlIjoicEg0NkVKTmtsaGtwY1NkczA4bVhoYTEzSkwycEhZcDIifQ==	2016-12-14 13:21:59.044268+00
dt3qumrma6hj56g69agz2t9wbnehfdno	MDI0Y2MzNTYzNzViMzI1OWM4OTQ4NDllOWUyYzIzNWM0ZTE4MDhmNDp7Il9hdXRoX3VzZXJfaWQiOiIzOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjU4OTVlOGIwYmIxYjk1OGZhZDZjOWY2MTJjNmM0ODRmOTA2MzhjYiJ9	2017-01-04 18:52:10.203887+00
5q4kz48wpr0o86ys9mhbbyyccb8f7636	MzQxN2M4NGJlNjIyNGZhZmFjZTA1MGQ2N2IxMWMzYTAxNWViYzI4Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjBlNzAxN2ZlYTUzN2NmYmMxZWY5NzViM2ZjZWIxN2IzMDhlMjljM2EiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9pZCI6IjM1NyIsImZhY2Vib29rX3N0YXRlIjoiZEF3ZG5kbjB6ZlpMWjNLdnRNQTJvTE5MenE0TDNCbmwifQ==	2017-01-12 04:44:52.400212+00
c77v7nq3yj3jsj4vxfs7cxykn6xbirk3	ZWYxYzUwM2I0YWRjMzVkN2NlMmNlMzM0YzM5OWZiYzQzMDlhMDAxOTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzcyNjA3NTc5ZDE2MTE3Y2JlZWMzYjNiMDM0NTY2YjhjZGMwMDJkNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiZmFjZWJvb2tfc3RhdGUiOiJtRXdNODBEbE9GOGdoNE11MzQ2NGthSDJaNWxQZFB1eCIsIl9hdXRoX3VzZXJfaWQiOiIzNjAifQ==	2017-01-14 14:54:22.650663+00
fnkhzb30heaee3tobsqi808xmf16gfsu	NDUwOTM0MmE3MDY2NWVmZGM3MGZiMDhhOWQ3NmJlZjY4NjNlZjM0Zjp7Il9hdXRoX3VzZXJfaWQiOiIzNjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjdlZjA4ZGFlZmNhNzI2MGE2NDE2MGYwYjdjMTE3NTJmZDgxZDNjZTgifQ==	2017-01-17 13:31:41.960441+00
e6hdx1zmpw5zimnwrato947rdpzpwsh0	NjU4ZTY2YjQyNTVmYjAyYTZkNzc5NjFhZmFkYWZhMTZkZGY2NTlmZTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJHNThQbUVXdGIwYk01RFphRFpwWm5hMVVSdVlWU1lGTCJ9	2017-01-20 11:17:55.963639+00
03q1clnqt4rtfb848up9t0ivibtxligj	OTViYzc2NTg1M2U0NWE4YTJiNWY2OGE3ZDZjOWMyYjhmZDkyMGIwNzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJqWldvOWNubGhMaVhsYU9zTXZzVjVCR0xDMzBjcE8wTCJ9	2017-01-23 23:06:22.201486+00
v3h9cmi7ol88po3q1x3n35b622z94vi5	YmVjMWNjY2FhOThhZDg3ZDEyNGMwM2RjYzAxODhiN2E5Zjk0ZDhjZDp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJBeGtzaTRVWVI5WG1jenU5WmhQd3BvN0hlODg3ZGV1ZyJ9	2017-01-25 04:04:07.915173+00
ix2svrtp4zrboq28nrsyhxih38bb8126	MGI3ZGY3YTRjOGExMzZmOTJmYjQ2YjdlMDY3MTdiNDA1ZWMzMjg3Zjp7ImZhY2Vib29rX3N0YXRlIjoiV1F6cmdyWkVSWm9wb09VaFVTa0hUMjFmR3RQbW1TZDAiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-02-01 13:55:08.24132+00
kc9rm6tblefofyqvimrvo49wgvdx4c63	ZDkxZDU4YzgyOWM1YTgzZWU0MmY5NDAxN2YyNGE2YmE2MzU3ODhhYTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJISjZSUDJtMVpJOTV6dVR6Y25UaXF0ZFNXcmlYNU8yMyJ9	2017-02-01 15:28:55.081643+00
xz1etb0xrjfsonhnt8igkvbcsvxudnog	YzQ3Y2Q0YWRhMzkwNDQ5OTA1N2UxM2MzNTk2Yzk3MWU5ZmE3MTAxMzp7ImZhY2Vib29rX3N0YXRlIjoiR3lVMlRiOGlDTk1jaVFseXpsa2xVMEtDa2hEZE9YNlAiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-02-01 21:33:52.458622+00
knjc2mgd03erpjhk56bkooipwyzdpkyn	ZjkzMGNhZDA5Yzg4Y2VmNDNmZTkzNGUwZmRmY2JlOWNhODc4YTAyYTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiIxa1NoZUo4VEpEOXd6T1M1UkdJRFp0cXpEZEYybDI2UCJ9	2017-02-03 06:03:51.18169+00
xqs7k0af8mcn0c9od48rzf3128le7y1b	MzkzZjk4NDUyNjk2ODE5ZjBmOWE3MWQ2MzViYjVkOGQ4ZmIwMmI2ZTp7Il9hdXRoX3VzZXJfaWQiOiIzNzYiLCJfYXV0aF91c2VyX2hhc2giOiJkNTY3YTAxMzQ4MjQyOTIzYTU3YTZiMDRjY2YyNzYzOWE4Yzg5OWUyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-02-14 23:25:13.635241+00
x3jjvlrpn9qh75a3y8gnbr91gq7v7m3l	ZDUyODUzM2MxZTk3YWM4MDJjNjQ1ZDQzNzk1MGQzNDE5NTI1OTY1NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM1MyIsIl9hdXRoX3VzZXJfaGFzaCI6IjcxNTdjODA0ZTkzYzAyZWFkZmEyZTU1ZDE2MzY3ZjBiMDAxYmNhYWIifQ==	2017-02-20 13:04:22.18612+00
aj3mlayqtcdolyc128dwbl1xxswqgjkz	YjdhM2U1ZGZlZjViYzczM2FmMzg5NWZhYTg2YjgwYjMwNTA2MTNlOTp7Il9hdXRoX3VzZXJfaWQiOiIzOSIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1ODk1ZThiMGJiMWI5NThmYWQ2YzlmNjEyYzZjNDg0ZjkwNjM4Y2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2016-12-06 14:49:49.866774+00
5bhuat241w36twvztz32owtka5n6h3fd	MDdiYzBmZGY5NDI3ZjAyMDNhZjM1NWNhYjdlZjVmMjA5NGIzOGNmZDp7ImZhY2Vib29rX3N0YXRlIjoiTVYzaDVWNmFaUWE3SHZTSUQ1REtWeTJNWENJTFhQQ1EiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-03-06 06:53:40.690037+00
mbhokv3v1oi91nt5c78fkufe2vrbzqeg	MzM4YmUxMTI1OGRmZjQ2Nzk2OTQ3MzdhZGYzZDJjNGVmZWQzNjA2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk1MDNkNmZlNDI1YjUzZjU0OTc0Mjc0ZTY0MTdhMjgxYTAzNTIyNDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzNTUifQ==	2016-12-20 22:48:02.877898+00
gss942i6e2x35y1eoczuzwwfpjiiqwba	MGViMTg0NDYwMmM0N2IzYjhmYmFiMjRiNzg5MjFkN2RjMGRlN2E0Mjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9pZCI6IjM1MCIsIl9hdXRoX3VzZXJfaGFzaCI6IjdmZDhiNTM0MjZhYjM0Y2JlMTBmYjE3ZGFkYzYzNjM0YTE0MDk1NjMiLCJmYWNlYm9va19zdGF0ZSI6InE3cTRBTzFvRjRzWjQ1ZXd0UW5RcWgzaGRWS2pqdlRkIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2sifQ==	2016-12-21 14:30:40.28927+00
jatcgta1naebzu906stig981wmy2m9o7	OTA3Y2ZhMjI2YTM0MTlhOTMwNmYyN2I3MmNiNGRlYmUxOGY0OWNlYjp7ImZhY2Vib29rX3N0YXRlIjoiU0UwOGdZT1I0OE1UMTkxeGJrOVVuQndWblFFeU1pcnMiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsIl9hdXRoX3VzZXJfaWQiOiIzOSIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1ODk1ZThiMGJiMWI5NThmYWQ2YzlmNjEyYzZjNDg0ZjkwNjM4Y2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2016-12-06 17:18:34.397767+00
0tgwn1q0j592k28gkp8je2dzs1acgmns	OGQyYmQ1MzE3ODk4Mjc3ZWYyOTBjMjM1MjU0OTQ0YWZlZTA3NDJkOTp7ImZhY2Vib29rX3N0YXRlIjoib0tPR1RMcGRZS21FMFBzcWttSjFOdEt6Y2FMSkdvNXciLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-12-24 09:22:53.986958+00
x6lhbbe98d92sr8578pssa4hn8jg57gk	YTNkZjA0YTY1NTk4NDZhZWFiZWZkNDkwOTg3NTA0NzY2ZGRiNzQxMjp7ImZhY2Vib29rX3N0YXRlIjoiNmR6cWQwNXlnMEdmWHVqMzdvQ3poNXpJOTRHRUZiNHYiLCJuZXh0IjoiL3JlZGlyZWN0LyJ9	2016-12-31 16:24:55.275298+00
gsz1wap6msevw44wjzjgy0gk3p5vm6eb	MTNlZDFjZWRkODFhZTc1N2YxNWZhM2RkNGY4YzY1Yjk3N2FhNDI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ1MTQ1YTI5YTBmODgyZmEyMzI5MjZlNWJmZjE0MmE0OWZmYWQ0OWIiLCJfYXV0aF91c2VyX2lkIjoiMzIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsImZhY2Vib29rX3N0YXRlIjoibUdsckhGWlZ2YnV6Y09wS3dmVm55bldyTmVZU1JTUFAifQ==	2016-12-09 03:54:01.914012+00
8nr47isty8nq1rnpapvtzc7x0wqyo0as	MzIwMThiNTQyNTQ1ZTFhZTcyY2U5NGE4YmZmNGYzN2M3ZGI3NzI2MDp7Il9hdXRoX3VzZXJfaWQiOiIzNDciLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsIl9hdXRoX3VzZXJfaGFzaCI6ImE0NjhiNWEzYmU4YTU2MzM4YTQ2NmY2YjBmMzJkNTUxNDJkMDM1YTAiLCJmYWNlYm9va19zdGF0ZSI6IlpEbXE1Mk1DbGp1cnAxZGs3dzZPUHlvV2owZjRuM0EzIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2siLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIifQ==	2016-12-09 18:19:00.911863+00
a9e8j591pqgddt9hulf8dln1v5j6xypc	ZmQyZWQzNjMyMjY5NWViY2I4OWY1MDRhZjNlMWMyMDI2OWNiMDM1NTp7InNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2hhc2giOiIwNzY3ZjQwNWRmOTQwMjA0YmFhZmM0MjdhNDIxNTJjMjdjYjljMzhjIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIiwiX2F1dGhfdXNlcl9pZCI6IjE0MCIsImZhY2Vib29rX3N0YXRlIjoiOGVQV3I4T3lQSHNFdVhWSlpBVnFRMnhsNHFOTlI4OHEifQ==	2017-01-02 22:31:44.692891+00
jqa5mt31jb81hs23c2p0uhl2ywaerlrz	NzdkZTY0YmJkMWIwZTFkNzZlNTNiZDczYzFhYThjYTdiOTM2MzA4Zjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJ2Wm5iWnp0c2o0NkdZTXB0bWNnYkRBck1pdXJDWU03QSJ9	2017-01-10 09:53:05.588178+00
2rgdaza63nbefd5zgjk8x1v5g2ru5u7p	Yzc0ZjE3ZDYyY2U4NDQ4YjQ0OGIwZWY5MDZmZjk2MzFmYjExYWMzYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyZGFjZWVkZWM2NDIzZTg5YzkzYTNjNThhYmQwZGIwNmIzZjZmYzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJfYXV0aF91c2VyX2lkIjoiMjciLCJuZXh0IjoiL3JlZGlyZWN0LyIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiZmFjZWJvb2tfc3RhdGUiOiJvUGg0MXl1ME5Qd0ZCdE5YYTFWeHBKeDZ3RU5MUUVCWiJ9	2016-12-07 12:33:32.067993+00
7wgw8mtp6d6gpy1a1tbke9jaeu5f3wxk	YzA1Mzc4NzYwZjBkYjI3NmQ0ZjNhZjk0M2YyMmZjZjBiNDI5MDNjZTp7ImZhY2Vib29rX3N0YXRlIjoiQjR1MEIwdGdDcVhpWGpyTkNzcHR0RTNMb3I1dU1kU2siLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-01-15 03:44:22.752453+00
wul23awrckfn9t808hyl63dkiu4xka07	YmEyM2Q4NjE5MGM1OTZmNmY1YTU3NDM2ODkzZTdiYzczOWE1OTMwZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJmYWNlYm9va19zdGF0ZSI6IkFVVWxWSXh0Z1pqTHVkcGh4a0JuSnl6cGlqcWVQWkVyIiwiX2F1dGhfdXNlcl9pZCI6Ijc4IiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiJ9	2016-12-07 13:55:53.438645+00
zto0054ziddp8m17pygji659qkqtkadk	MzUzYTllZmFkZTc4OWYyYmI4YTk2YzYzYjNhYjg3MDlhNjIxMWU5NDp7Il9hdXRoX3VzZXJfaWQiOiIzNjMiLCJfYXV0aF91c2VyX2hhc2giOiJjZWQzYThkYmNkYjMwMDlkN2I3MGEzMmIxMTIzMDljMWI5MzkwZWRlIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-01-22 16:12:34.481222+00
yunuz1fr2q5mamabqjvaoz3z0qavu3wz	ZDMxMWJiNDkwM2E5YzM1MDdiNWFlZDNmOTgwOTZjZTgxOWFlNDk1NTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJxTFhCRmRRNHZEcld2OG5xUHV6Rm5TSHlPVWJBMXVHdyJ9	2017-01-23 23:09:15.054488+00
vr5yjm9ms3ajldabxgw41t2gdevixgr0	OTgxYTQ5ZWYwOWEzN2FlODVhNjEyNWRjNmM3M2RmMjc5MTFlYjQwMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJfYXV0aF91c2VyX2lkIjoiNzgiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiZmFjZWJvb2tfc3RhdGUiOiJvYWhadUxwdWd3bndxamxIUzZLVUZuU2NzQ3BJQlNHaCJ9	2016-12-07 14:16:40.018072+00
so0i8mxsy8pa0f8eazjmkwcsmzmzyhbo	MDRjZjMzNGEzZTQ2ZTljY2VhZjY4NDQ3YTZjZWU2NzQ2OWJlY2Y0ZDp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJRMmxmeXVmZGZTdGZOQm5RY0pYaDFCdUxLdThSUjdtYSJ9	2016-12-07 14:33:05.366223+00
tw5k2qgx1rgs4fg790vhhesyr0zckkz3	ZWM3MWRkZGQ0MmQ5YzM1MTAwZWNmMTM0ZTMxNDY0MjUwYjhlZDkwMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImJiMWNmNWM5NzQzNTM1ODY4NmRhMDllODc3M2NhY2NmYWM3YWM4ZDkiLCJmYWNlYm9va19zdGF0ZSI6IkhSdmo3aENHNTFDbmRHQmQxY0xwOEZWTFM1MU5IaEhnIiwiX2F1dGhfdXNlcl9pZCI6IjMzNiIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2siLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIifQ==	2016-12-07 14:46:12.465599+00
2l4he9eve32zd12fg4szjqr7lwps3vam	NTJmYWIwZjg1MTQ4NmEzMGFlMDM4NzQ1NGRlNDhiNDNhN2IxMjAyYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY1ODk1ZThiMGJiMWI5NThmYWQ2YzlmNjEyYzZjNDg0ZjkwNjM4Y2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzOSJ9	2016-12-07 15:15:42.427487+00
et0nglazswif4a8h6yzv9v5ecqlb44kp	ZDVjNzMyYTlhNzI1MDU2OTZlMTZjNmVmYjA3ZTQ3Mzk0YjJjODExNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjM0MDFhYzkxZmE0ZjkwNDMyMzg2NTcxZGE3MDFkODUzOTUzYzk4ZWEiLCJfYXV0aF91c2VyX2lkIjoiMzUyIiwiZmFjZWJvb2tfc3RhdGUiOiJsT1Ywb3M0SndlcVZ0WVpNZ1Z4TWRqQ2lvbGN1VkRhVyIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2siLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIifQ==	2016-12-14 23:21:38.844665+00
d40j08u22o3xndewrbcuci73f61ifjsx	YTRmMWM3MmQ4MTRiY2UwN2I4NzgwOTg0YzBiNTA3OGY1YzQ1NzZmMzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJFckp2eEttcGJwcXFCTzMwMkxUQ0JnNEdaUEVZRXdvdiJ9	2016-12-07 17:52:58.472631+00
tf31v8foxc9zhwh7ah9tn79gu2ccgefj	NGY4YTczMWU1NjQ5YTgwYjJlYjU0MGYxOGE5YWNjYzk1ZDMzMWEzMTp7Il9hdXRoX3VzZXJfaWQiOiIzNTQiLCJmYWNlYm9va19zdGF0ZSI6ImdEcU9JZldYNkRGM1ZVODlrbDNyaFF4T09EVEc5RVlRIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2hhc2giOiJiYWE2Zjk0ODNmMzMzNzk0MDVhNDU2ZjU3OWI5YTFjZmRmMjYwMmY0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2016-12-18 00:41:47.084652+00
v0vml5ru7y2a7y59taqc93p9nlqz0a4x	MzM4YmUxMTI1OGRmZjQ2Nzk2OTQ3MzdhZGYzZDJjNGVmZWQzNjA2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk1MDNkNmZlNDI1YjUzZjU0OTc0Mjc0ZTY0MTdhMjgxYTAzNTIyNDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzNTUifQ==	2016-12-20 22:50:40.845796+00
pc83ep9cvygsabzd3hkaoxn1olrjqzwc	YmVhMmMxODU2M2UwODllNzE3ZDViNGQwMDFjNWZmOWQxNjhhZjMzMTp7ImZhY2Vib29rX3N0YXRlIjoiM2gwYmF6QjdJQmFZTDU0TEl0ekhpS3Myc1ZEdDU3NloiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-12-24 09:32:01.308097+00
uvcgot8q7a8iw0hsuhivi1lz6q19ebo4	ZTg1NGNhNTRjMDcwYWVhYjU2MzI5ZjFjZDM4YjNhOGZiNThiNTNlYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyIsImZhY2Vib29rX3N0YXRlIjoiaVQ2dFdqWEpEZGNxRmU0NDhSUWxSVXJrQm8yMThucFciLCJfYXV0aF91c2VyX2lkIjoiNzgiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-12-28 17:40:40.981471+00
424pt7b4liu73fsz8xkchszjh2g6v963	NTdjZjU0YzVjNGQyMzMwMDUwYTliZWY3Y2Y2YmU2ZDk1NWE2OWUyZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3OCJ9	2017-03-10 13:07:20.889293+00
dq3jtz61w6t0m0oie25nesc97ckl7w2b	YjYyNjA4N2JmYTllMGQyNWYwNGQ2OTA2YWVjNGEyZDkwMzAyZTI4Njp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiI0TlREN3pSN3FJaWdVMUJJeDA0VHdZTWRnVThMVVhFTSJ9	2017-01-01 11:26:21.12909+00
1hc8cvf0d5vlpifkbefgl7597q6f7pxa	Yjg0ZmJlYmZiZWY2ZDY3YmE2NTRkZmFjZWQzZjBhMzE2MjJkODYwNjp7ImZhY2Vib29rX3N0YXRlIjoiam1XRmxxdE9melE4TTl1TDBvS1hCY0xZampoSWxlMnoiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2016-12-09 18:05:52.236866+00
z09s9rl6l91vpaywkya28x1olks3b5qr	MWE5MTExYWVlNmY0NDY0M2UzZjYzMzMzZTA4N2UyM2EzYWFhYjEwYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjFhZDUyOWFkNWUzMTQyZmVlNDlhMzIzZDEwNDg3Nzc0NzkzMWM5ZTYiLCJmYWNlYm9va19zdGF0ZSI6Imgxc0lYMUNQb2JrZHFZMk5SOTlTWGhmOEk1d21jdFowIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMTQxIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8ifQ==	2016-12-09 18:09:43.69104+00
7dm5wkb2b79utirruzgytayk1r5yv7to	ODE3YjM4MGE1ZjY4YjBjZDEwZmVjMTMzMDAxZDQ1MWFmMjBmMDY4NTp7ImZhY2Vib29rX3N0YXRlIjoiVHZ5dGRnMkNpc0htSE1tUlJSejFYQTJpcWdRUE5lU0MiLCJfYXV0aF91c2VyX2hhc2giOiIwNzY3ZjQwNWRmOTQwMjA0YmFhZmM0MjdhNDIxNTJjMjdjYjljMzhjIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2siLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsIl9hdXRoX3VzZXJfaWQiOiIxNDAifQ==	2016-12-09 22:32:24.381738+00
tzap1wvqdtcvdfs3ji5bzp1ss7mfu6la	OTA1OWJkZDdlMjYxY2Y0YzhmMGQ5MzllOGRjNjRhZjg1YmZlZjk3ZTp7Il9hdXRoX3VzZXJfaWQiOiIzOSIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NTg5NWU4YjBiYjFiOTU4ZmFkNmM5ZjYxMmM2YzQ4NGY5MDYzOGNiIiwiZmFjZWJvb2tfc3RhdGUiOiJoSWhsazd3dVZpNVlxakZ2Q1RCRVpvT0p4UGMxWWZLSiJ9	2016-12-11 03:32:05.889324+00
29v7x86ybl4h5iylwvymjk07imfxmg4s	ZmY1NmQ4NDU0NDgyNDM2ZWVhOTA4NThiNzAyYTY5ZjA4YzE5ZDliYTp7Il9hdXRoX3VzZXJfaWQiOiIxNDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFhZDUyOWFkNWUzMTQyZmVlNDlhMzIzZDEwNDg3Nzc0NzkzMWM5ZTYifQ==	2017-01-02 22:27:11.76225+00
f45y20j5j0uxckfq55udcgirx4id18j6	MmZhZGJmZjFkOTljOWE3ZWRmNzEwODY4MGJhN2U0ZmZiMmRiMWYzZjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJDakdKamROWmFoUlNVR2hPM1Q0TUZCVjZCOEFQU0c1TCJ9	2017-01-03 07:08:36.242161+00
ac0g4ad2mupns381gyo8neh979iw2e32	M2EwZjU0MmY1Y2FiZThjMzBlNjQ3MzFlODc5MTY4NWFlYjhjOGM4OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjIyMDczNzdkZjE0YmZiOTQ2Y2UyZjAxMDMxNzM0ZTBhZjc1NTM0MzkiLCJfYXV0aF91c2VyX2lkIjoiMzUxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2016-12-14 23:10:24.163367+00
l287zhcl3myrcy8kdl9ypcqg01zp9xhr	MDI0Y2MzNTYzNzViMzI1OWM4OTQ4NDllOWUyYzIzNWM0ZTE4MDhmNDp7Il9hdXRoX3VzZXJfaWQiOiIzOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjU4OTVlOGIwYmIxYjk1OGZhZDZjOWY2MTJjNmM0ODRmOTA2MzhjYiJ9	2017-01-07 00:08:28.978915+00
3pv3bs9vtn4x5rflxvguyhphstkzw8rd	NzY3MGI0NDk0YzA5YjdiZjY2NGIxNjhjNGYyYjEyY2Y1YTkwMzNlNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjM0MDFhYzkxZmE0ZjkwNDMyMzg2NTcxZGE3MDFkODUzOTUzYzk4ZWEiLCJfYXV0aF91c2VyX2lkIjoiMzUyIiwiZmFjZWJvb2tfc3RhdGUiOiJqYVN4eUZYYnZnYmUxbWhnSEJsVU9pcVB2STVpQzNiUiIsIm5leHQiOiIvcmVkaXJlY3QvIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2siLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIifQ==	2016-12-14 23:30:49.440396+00
of1m98gml0ez1frb6no78u6fhkql0hhh	NzI5MTc4ZmZjODJkODY3NzQ2ZWM3ZDJkMmZhZjg5MWJmZmJhNTVlMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2NjliMzBlYTZiMGQwYzkzMTViZWIyZWUxYmM5NmZlYmQxMGU1OGEiLCJmYWNlYm9va19zdGF0ZSI6IkkyUUY5dmpHREdFMmw0M0pTSWRvZERWQm5KSE9KV1Z2IiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfaWQiOiIzNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIifQ==	2017-01-10 21:28:19.787641+00
yuk0dqggnuix3ceymg6vznb0tx87c18t	MWIzNjk4NmNlMGVmZDUyMTBiOGUyZGYyMGJhMjY3MzU5YWEyMWZjZTp7ImZhY2Vib29rX3N0YXRlIjoiaWpBNEpIMXd3Ym4yMks2bExtR1pBeE5YTk52SEdia1kiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-01-16 20:05:00.238483+00
6m85bdh2glcg59cls1mrh3b54lf1kwj7	MDAxNGUwZWEyNzE2Yjc2Yzg0NTI1NzBiNzYwZGRjOWY4OWYzYzllMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM2MiIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9oYXNoIjoiODhhYTcwZjY5ZmY1YmFiMzg0YzQ0ZDk5NTYwZDZjMWFjODIyZjk1NyIsImZhY2Vib29rX3N0YXRlIjoiODRERldpS2lIRFFZdGJhR1kzS2lFVVI5OER0eDFlWGoifQ==	2017-01-18 17:14:06.773734+00
jtked1780socf29yg5i3eyc66f08kiog	ZDFmYzNhNzA1MzE2NjUwMjVhMjRkYmRiOGFhNDBjNjBmZDZhYTQyNzp7Il9hdXRoX3VzZXJfaWQiOiIzNjQiLCJfYXV0aF91c2VyX2hhc2giOiIzYjZiNjNlZTQ2NzUzNGY3ZmIwZDk0MzE0MGE5YjljYmU4MDAxZjA2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-01-22 16:49:39.499554+00
to3bfrn93rzm3f1r3gcxyx9hkdpe8jbs	MTk1Mzk1YWFlMDY0ODZkMzBiNmY5ZTczNDQ2Y2VmYmExZjU2NDVjMTp7Il9hdXRoX3VzZXJfaWQiOiI3OCIsIl9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2017-01-24 16:16:31.846485+00
hhsi8xz7us1elae40l8hc9q7p12ef168	YTlhMTU3NjRhZjA4MmYxNzA1OTk0YzZhYjQ2MTJhN2EyODE3YzYyZDp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJuNkhBTm5LV1g2ZVdVOXY2M3hoQWZtV3kyQ3pKN1ZTTCJ9	2017-01-31 01:43:48.031836+00
uduaawhbfqnpjis5r6t8c83xoj45iluz	YTZiM2IwZWQ1YjZjZDNhY2YwYjFlODIwN2E2NTQ0NTQ1MWEzNzM3MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGVkMjY3ZTRmZmQ0ZDRmMjUwM2E4NzM5ZjY1NzIxYjczMGFkOWQ2YyIsIl9hdXRoX3VzZXJfaWQiOiIzNjUifQ==	2017-02-01 14:13:00.812839+00
7n85ol7owzn8q0lqnzy3gnx137zn51x8	ZDMwMDA4YzUzOTE2YzYwMmMzMThmNTFkNjM4YWY2YjU5NDlhODdhNDp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMzczIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGI1NTU4NDUyODI3YTVlMTQ4ZGMyZTMxYTljMTc1MDFiYWFjMDE0YyIsImZhY2Vib29rX3N0YXRlIjoicGhJM3dBdzZ3cnprVm5NbGZtWmVmMDZKYmhkZ05xNEsifQ==	2017-02-07 23:35:19.911413+00
g4vj9lum6m4qyfea48de9n8mxms7i9d8	ZmVmYzQwYzM4YTQ0N2ZjNTU0YmI1ODYyNTM0YjEzOTgxODI1MzcxZDp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiI3a2tUclRyWWpUbUJrbExGdnBZRFU3Q2NYNjIybFliVSJ9	2017-02-24 06:35:03.503541+00
rj3bjhl9wi8onwdgezasudvdsjphe827	N2JlNjNkMWRkNTZmOTg3ZmVmMTkwNjM1ZTNmYjBmMzJiNTNjNzE2ZTp7InNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIiwiX2F1dGhfdXNlcl9pZCI6IjM4MSIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJuT0M4Zms1MFdkMExsSFhRQlZ5N1BvcWI2WDNBOW5wQSIsIl9hdXRoX3VzZXJfaGFzaCI6IjA3NDA1YWVjYTBhOTg4MmZkYTgwMDk3ZjNjMzNmNTU0NzAzNWVhYmYifQ==	2017-03-07 01:19:02.953783+00
olu3oukahsh4po5ocyj3u8m1czlhteai	ZDZmMWFjYzU0ODM2YmRmMDZjMWVjMjFlZDBhM2I2MjRkMWMyYTZjZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaWQiOiIzNzQiLCJfYXV0aF91c2VyX2hhc2giOiJhMTM5Mzc4MjcwNTczM2RjNTMxYWViNDc3MGUzYmVhOGUzODMwZjc1IiwiZmFjZWJvb2tfc3RhdGUiOiJibmZFRXJ0YWx5TzA3YUg4bGFMZFFVNjg4c0Z0dmRGaiIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8ifQ==	2017-02-09 19:45:36.379228+00
1truq2cnnlaaxyau7x30y7tscprnsab8	YTg2MWZlNDMyNDc1OGI2NzljMWQ3ZDU4YjI4ZDJmYWFlMDlhMTFmNTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiX2F1dGhfdXNlcl9pZCI6Ijc4IiwiZmFjZWJvb2tfc3RhdGUiOiJyR0pBOW9PVThtcW9LUFN3RGx2RVRZcmQ1NDdqUm91dSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiJ9	2017-03-07 13:09:25.907749+00
6j35wrid8iqdxxwqk7cb8z2u23zwpzt0	NzAwODIyMjg5NTEyMTg0NzYyOTFiZmZkYjgwOWYwODA0MDRiMTJjMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzYjFmYTA1M2M1ZTdhZWQ0OTAyZjQ4Y2EzNzdiNmM4ZDZiZGI3MDAiLCJfYXV0aF91c2VyX2lkIjoiMzg3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-04-01 11:37:28.017371+00
l9uunz6onkkq6v7vfsqkrtus7lcom2iu	YjNjN2FkNWM3NjFmMGUyNWY5OTEzOGUxZmE5MmNjMDI2Nzc3NThhYzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJCaHNieXNrck5aTzU4aUQ1NlR6RGxzU1Btek5hMkdxSCJ9	2017-04-11 20:55:46.268511+00
vkatecjzfvv8txv4092jumpowhqo0mw0	MDU2OTFiYmMyZWYwNjZkNzRiMGRlMTdiN2E3NmMwMGEzZTlkOTgyMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjdiZDE3NDE3MDIwMDY1YmY0Mzk1NmE1Mzg2NGVlYTMyMTkxNDk4ODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzNjkifQ==	2017-03-10 14:40:24.242774+00
8t3h3ludwyif8f3bioyutwbdstxxzmib	NjBlNzNlMTYzNTI5OGQ0MWQ4MWQ1YzU5M2QwZjg2YTE1MDI4MmFhYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjNkNmRiZmM5YTM0MTdjMWNlZjNkYjM2YzZiMTNiN2ViZjY5ZGUzZjYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzNzUifQ==	2017-05-02 18:32:40.891385+00
wd4vm29mu56wy7kngloy7xdpoq8hsrng	OTZkZTRlMGQwMDVmZTQxYjMzZWEzYmY3ZDQ2OWViYTU0NjRiYTg1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjFkNWVlY2U0Yzg5MzU0ZWQ2YmMwMDhiZmI3MWFjNmM2ZTkzN2E1MjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJEdElQT0ZjelREcmUzbTBrOTF1bFljNTl4SFFobUl4eCIsIl9hdXRoX3VzZXJfaWQiOiIzOTkifQ==	2017-04-11 15:50:07.888101+00
slw2spbxgu7k4j4uvh69aq7ezwc6k3xq	OTUwODBjMGE5ZTlkZjFhYTM3ZDhmOWY1ZjI4ZDdmMjRmYzRiNWMzMzp7Il9hdXRoX3VzZXJfaWQiOiI3OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsImZhY2Vib29rX3N0YXRlIjoidDBkWndKTDBMalBLNm9EeVZsbDRXSElyN0hKWlAxSXIiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2017-05-03 02:21:11.457842+00
82ctgfcgg4tx0l6budfj9cm4tuxxtdhn	MzUzNTU3Y2VkYTdhZDk0NThjYzQxNjkyMmVjMTBlYzE1YzZhYTg5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJmYWNlYm9va19zdGF0ZSI6IllkR2FBY2lpcFUyN3F1MFJQZ2Q2bk85WGhCZzhMYXVPIiwibmV4dCI6Ii9yZWRpcmVjdC8iLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3OCJ9	2017-04-20 18:24:03.455226+00
08h4pi0x91bvgpyefeb1sh9idwlgsom1	ZmNiNWQ5NjhlZmUxZGZlNDNkNzEyYzVhNjZlYmFiMWNlMWZhNWEwNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjRiMzhhMDU4NWJmMGU3MjY1MGEzYmEzMTY2OTVhOGQzNzI0Y2EwMTIiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJicm9DYTRvQjFrbXQwVGpPYUt6TTRyMlBKV0gzbWNwaSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaWQiOiI0NDYifQ==	2017-04-20 19:59:55.354905+00
qucizlxmmloybar7zu7kdug3h6ih3642	NmQxMTFiMTQ4ZWU4NTMyOGUyNmRhZGFjMzZlZjc1MDc5YzlhNTNmZjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiIwYWVEdFNIbFB5b1RLYk9mR2FBVzZxWk5nZXhFUVhxYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg2MzU2ZmQ0NGI1M2Y4NTI0ZjQ3ODE3YzVmMDMyMjg4MzIxNzJlODIiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfaWQiOiI0MjgifQ==	2017-04-14 22:40:10.999547+00
0cvtcni7w92ir22y3j1lnzmqtlbb2zdg	YzlmMTcwNTUxYTM4YTRkZDYwNmIxZjk5MzUyMDVmZTZhYTNjODk0NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjFiODQ1YjM4OTQ1MzIxMWIzNDEwNzkwOGFlMjM2ZjZhYmI4MzY1ZmMiLCJfYXV0aF91c2VyX2lkIjoiNDA0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJmYWNlYm9va19zdGF0ZSI6IkVac3RMNFg1UXlITHFRNHI0Z05KbnVvNkxDMEJRRFQ0IiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8ifQ==	2017-04-12 14:56:12.742359+00
npxmg7sx5p2isv9cnqwm92gu7nv6o465	YmFmYWVlYTFlYmE1ODAxOGJlMGFlY2QwNzhlMWEzMzllZmNkMGM0Yzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJ1VWE2VVdNdmlXQk9HS1NleHYwZ0xQR0wwTkNxOEVzMiJ9	2017-04-16 06:45:47.98961+00
fuys9b1lm5ufsxb8pb2wawie1ui7qaxr	ODdlYTYwM2IzZWFjOGQzMjYyMjg3MzdhODQwODQyMmU3ZmMxYjAwNTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJoSTJ6NExDbWdLa0xTV2w2Zkk3UldBTWVLaWQ2cHFjWSJ9	2017-04-13 03:51:57.565245+00
8uq1l6a8319ju2wuqkr1fmqrfqcnolbu	ZmE1YTIxYmFjNjdjNThkNDJlZWRlNWViYWFmN2JmYjQ1Mzk4ZTY2ODp7Il9hdXRoX3VzZXJfaGFzaCI6IjhmNmRhNDk5ODgxNTEyOGUyMDQxMGQ1NTVkZTI0MzdhZDA5YmFkYTgiLCJfYXV0aF91c2VyX2lkIjoiNDQ3IiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImZhY2Vib29rX3N0YXRlIjoiVEg4M21iN3YwdUFxRmdyZFdRdHNlZ29rd2ZBYmNwQjEifQ==	2017-04-20 20:00:07.519273+00
x32rq2kfu76r1eo0ra0n27o2tvqnpkoy	MTgyYzgzMDUwM2ZiMDIwOTA1YmY3ODQyMWFmM2IwYWI5NDYzMmYxNjp7ImZhY2Vib29rX3N0YXRlIjoiUDlPUTUzdGhwSEpwZFFWdXlTYnhsZHVxV25lNUZYQ0oiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfaGFzaCI6ImYzNDk1NTUzMjJlNTAyMjhmOGU3YjExZWNhNWIxYjhhMjc5MGYwMjIiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaWQiOiI0NDUifQ==	2017-04-23 18:12:57.920002+00
z1kfrwcrte6wpza8iiwnis2mseqwe8ue	ZTYyZGRmOTE2NzNlYjg5YjNhMzhmMjRkZWE3MzQ4NzBhYzMwNzZkMzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJkWVZ6TXpjYnZiempoc0g5NTBGbmZYeEM4M0pjdXF0WiJ9	2017-04-11 21:03:27.533824+00
s7ouo1b1at4xg834rmcj9ebzpzutgxou	MzZkMThiOGY2YTg3MzhlZTZmMzcxNTgxOTUwYTkwODBkOWU2NDdlYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNkNmRiZmM5YTM0MTdjMWNlZjNkYjM2YzZiMTNiN2ViZjY5ZGUzZjYiLCJfYXV0aF91c2VyX2lkIjoiMzc1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-04-05 20:49:57.67083+00
2svx6eqbybbgyggvfzda5hsccjiewru0	MzllYWY0YWYyNmI5OTE0YTVjNzA1MGUxZjQ5ZTI0Y2ZiMmQ5MzJlMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIifQ==	2017-02-10 15:30:52.212872+00
u0l9miap0wypet6g4xfwtm3vro01xcm5	OGRjMTBjNzk0MmM4NTZkNjQzOTRhMmJkOGY0NWVhMjI0MWQyNWYwMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijc4IiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2017-04-14 20:29:52.631424+00
9w0aw8rbs8utyhdaigfd7g7bomno3dks	ZDMwMGQ1YzBhYzhkNDMwYjNkMmVkMmQzMzAxYzdmNjk4NjFiOTE2YTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJub2dQUVVLWHpUMHZsZHZtaEhlQ3o4ek5IRHJZMlRTVSIsIl9hdXRoX3VzZXJfaWQiOiI0MDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjVmNTczYTY4Y2Y2MmRlNTI3ZTI2MzA5ZThlMzk2YTU2Y2QwMzZhNTcifQ==	2017-04-11 22:28:30.08426+00
ab27t6ook7hex1wok0vby284z7y283ds	NGEzY2Y4MTRjNWE5NzM0MjhhMThmYTViOGY4OWFiNGFhMTNkYWUwZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM3NSIsImZhY2Vib29rX3N0YXRlIjoiZFF0aTVoak1yaFhMYUZ0b08wTVNUYnJ0cVRWSGtSdWgiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsIl9hdXRoX3VzZXJfaGFzaCI6IjNkNmRiZmM5YTM0MTdjMWNlZjNkYjM2YzZiMTNiN2ViZjY5ZGUzZjYifQ==	2017-04-06 01:44:43.406898+00
9je47qk3c1nysdbvngs96f62xw68c8bo	YzUxYjdlZjY1MGRmNzJjYTdkMTRiOTgyYzA3ODcxYzk3NTM5MDc5Yjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJWYzFXM0MyRzExejFmR0wxM3NockNkT3g1VGE1N3YwSSJ9	2017-03-14 08:29:21.805881+00
8iqbl7lg6g4eb4gepuyrm2rnddx6kodn	YjYwZGIyOGVlMWUyYWNlN2Y0YmM5NmE1NzJlNzI4OTRiMTY4N2ViMTp7Im5leHQiOiIvcmVkaXJlY3QvIiwiZmFjZWJvb2tfc3RhdGUiOiJFakxFZ0R3MXpSMDJmMzFOVndXd2d1UENDUUJYOTYwWSJ9	2017-04-15 01:00:01.10554+00
7yv8wti0gh9s5xcajzavzhiv1gz0bjd9	YWMwZGE1YzAyNDdlMTJmOTUxOTk5Y2Y2ZWI0ZGJkMjkyODkzYjA0OTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJoY0tESjZXZ3JxSFFMY3VGUzBIQTFURnIzOTJHYXBTSiJ9	2017-04-13 10:21:17.275631+00
0do5nj8p21fzy2mai8dunyq2ioaxixch	NzVmNDU5MjI5ZTg3YzUzZTViYWFmNmVlMjAzMWIwZjMxNDE1ZTZhZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjExMDA4N2UzMDBkNDUwYTFkNmNiNTMyNjUwMjUzMjVmNDFkZjM5YjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzODYifQ==	2017-03-21 19:24:03.380138+00
p6se08lka9pzy35stst8x1yc5cvrty82	NWIxMWU4YTNhZWE2MzMxMzdiNmYwOTgxZTFmYzI3M2RkOTA5NjcxMDp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJ6dkh2SVNqaDl5N0gxVmhEaE9jYXQ2QzZpSGNTYU1wOSIsIl9hdXRoX3VzZXJfaWQiOiI0MzQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfaGFzaCI6IjNmZGVhYTY4ZjA4ZjE4YzdhNGJkZTI1ZjlhZmNlNDIyMzBhMDRiMzAifQ==	2017-04-18 21:01:28.724915+00
1sou3nb5d4yc4s17ocbvnbj98xwy93l2	NGU2NTZjZDg2YThmNmNiZDliYTY0MzU4ZWNkNmVhZDAxMzlmZWNkNDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg3ZDg3Y2MwYTZiMjVhMTgzNjUwNjIwNDc3MTBhMWU4Nzk1MmU3YjMiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiI2RVJLNHplRE1WS0tGOWRLbEh4TkVMbTJHb1VWMXU5eSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaWQiOiI0NDQifQ==	2017-04-20 19:20:04.966687+00
ntlk5umohnmsdploe46hfk8pirdspmka	NjBlNzNlMTYzNTI5OGQ0MWQ4MWQ1YzU5M2QwZjg2YTE1MDI4MmFhYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjNkNmRiZmM5YTM0MTdjMWNlZjNkYjM2YzZiMTNiN2ViZjY5ZGUzZjYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzNzUifQ==	2017-05-02 06:36:48.861369+00
dxzkt39jaq9fda4e5xlhdujp03olnclz	NTI5ZGRmNTU0YTUzNWEwMjJiMTNiZDEzOThhYmIzN2JkNThhNzljZjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJJUThFbE5uTTVaNjVvcWFzSU9RVE1GYVZ2NlRtM0V3UyJ9	2017-04-11 20:39:13.419813+00
cvszu4ei4w3jl0lohpr865jd36a7af20	ZGYwMzQ1NzBiZDY0ZDdiMGFhNjJkYzkwZWVjZjAyZDhmM2JmNGVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzA1MWUwMWIzZDcyZTRjMzNkNDhiYmQ5ZGZkOTFjZjAwYjg3MDNhMCIsIl9hdXRoX3VzZXJfaWQiOiIzNjgifQ==	2017-04-02 03:52:42.042119+00
rhxjzvl33pdb8ivpnop0s5008haf8uis	ODhjYmExNWFjOWI4ZjcxNTEzMDZmNTc5Yzg2OWU4MzM4NGE2NGVlMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDQ5NTQzNGYyMjkzMmZjNjYzMGJlYmI5Yjc0YmNlZjNmMTA5NmQ3MyIsIl9hdXRoX3VzZXJfaWQiOiIzOTAifQ==	2017-04-09 21:59:34.935653+00
6ay47epgbmxnph77xdsf8muduphvb5az	N2FiYWI5OGUxNWY0NmFjMzQwNzVmNzU2NjBlYzJhYmQ5Yzc2MDE5OTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ5Njg2MjdjZDQ0MGFiMzNkNTE4NWEyMGVkMDgzMDJmZDJkMzc2OGIiLCJuZXh0IjoiL3JlZGlyZWN0LyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsImZhY2Vib29rX3N0YXRlIjoiTzU1Q0VUMEVwenp2YUthV1pudzVVbWRmNzV3Q2V2cHoiLCJfYXV0aF91c2VyX2lkIjoiMzg0Iiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2sifQ==	2017-04-03 20:31:27.330266+00
f93kme9p4sjhfszna1pgz7ydaklfex2b	MzllYWY0YWYyNmI5OTE0YTVjNzA1MGUxZjQ5ZTI0Y2ZiMmQ5MzJlMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIifQ==	2017-02-10 15:31:05.195709+00
qh60k42tfgwla7eu5ug6er0j8jouhzfs	MWJhNTIwOGM5OThkZmFiN2RjNGQ3NzAxZGI0MDAyYTk1Nzk2MTdlMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2FlNWRjZDBkNDA0YmFlNDY0NWIwOGZkNTJhODZmOTQxYjMwZWZiYSIsImZhY2Vib29rX3N0YXRlIjoialplTnpKallPSDJwaDM1dlJmbk5CZGU1MzJRWjhZdksiLCJfYXV0aF91c2VyX2lkIjoiNDE4IiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8ifQ==	2017-04-14 19:35:01.24341+00
7inqmqplo6vun361a0xd6th3z6bhsc4r	MTdiYTkwNjY3M2E3MmVjMTQ3MGMwM2FjYThlMzEyODk2NmIzZDQyODp7Il9hdXRoX3VzZXJfaWQiOiI3OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsImZhY2Vib29rX3N0YXRlIjoicnowVkI0bWtSbWZkVG96clZ2cjJ3cDRSVWN6Skc5ZzMiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-04-05 23:12:42.209676+00
ticpe75iay7tat7csfxotnufylu1vfcj	MTMxNmJlMzQzYWViMDBiYTEyZGE2OTgzZWZlNDE0YmIwMWI3ZWRkYjp7Il9hdXRoX3VzZXJfaWQiOiIzNzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjNkNmRiZmM5YTM0MTdjMWNlZjNkYjM2YzZiMTNiN2ViZjY5ZGUzZjYifQ==	2017-04-06 07:01:37.792731+00
lti8wf04xmhlzsa1xxke6gsqlm1x8dvm	MGRkMzkzZTkwZjY2NmZiZmQzNDVjMTgyMjU4NjVhZmRiN2UwNzU1MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzNzYifQ==	2017-03-10 00:37:19.046115+00
tqjgd4ijsxho7jxf6jp56h1dyo433q9i	YjQ3Y2RkZmY4Y2U3NWZhZmMwYTQyYmQ1ZjNjYWI4Mzg5MWE5MWM5NTp7InNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjAxNDNlNDUzOWQ3YTdmZTViZmIzYjhmMDhiZTAxYjFiMzMwMzdjZiIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiI1ZVozd2d4OFBER2VHRTJyQ3hMM2pIajR4ckNkOVZtTyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaWQiOiI0MzEifQ==	2017-04-16 16:35:04.398158+00
4xp116k2wcz4ntwnki1e8nwkprtiys4t	Mzc3MzU1Njk0YWNlNGU0MDJmMmM1NWFlNTVlZjRmMjExZjgyMjZlNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjM5MDhlZDk2ZTAyZGU2MGM4OTY5ZjU2MjEwNmZiZDM1YzAxN2Y1YWMiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsIl9hdXRoX3VzZXJfaWQiOiIzOTciLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsImZhY2Vib29rX3N0YXRlIjoicHNVWDJhT3VVS0dCRHpidUZzSWg2UVRWUkVsYXJGUnUifQ==	2017-04-27 21:34:50.317599+00
p7qeboymzgxid04m47vouxlj8ccgkinx	MzZkMThiOGY2YTg3MzhlZTZmMzcxNTgxOTUwYTkwODBkOWU2NDdlYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNkNmRiZmM5YTM0MTdjMWNlZjNkYjM2YzZiMTNiN2ViZjY5ZGUzZjYiLCJfYXV0aF91c2VyX2lkIjoiMzc1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-04-19 00:32:18.633851+00
hg4g44zeq5z59ojkv9jxdkuby1h76s4q	NjcxOTRiMjUzYjhjZDkxODRhMGM5NTEzYWYyZmY2NjgzYTE0Yjc5ZDp7ImZhY2Vib29rX3N0YXRlIjoiNHlsOTdaZ2hyeWtBRkd4UHE1RTZ6ODBvQnRCOGIzZVUiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-04-12 19:52:22.10394+00
yirb0zjv2hbzqdan30quz0i5pk1tadj0	MTgzZGM1NjNkYmNjNWZhZDBhZWVlODJlOWYyYmQzMDU2MDVkZDViZjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiIwWkpBTGtWQjdBRGg3cUdvT3pCM3BEM0pXWUdjd2x6UiJ9	2017-04-13 22:23:17.394968+00
2pz6t51s1ipfoisme9xbln83z431l9zy	YWFjYzc5NmQwYmE1Y2M2MThjMjZlMjI4ZWUxNWM3ZjAzZGRkM2E3Njp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2Q2ZGJmYzlhMzQxN2MxY2VmM2RiMzZjNmIxM2I3ZWJmNjlkZTNmNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsImZhY2Vib29rX3N0YXRlIjoiODVWMmMwOVR1d3Q2MVhzSGl5V1dnNjdvWVVqUHNmNjMiLCJfYXV0aF91c2VyX2lkIjoiMzc1Iiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2sifQ==	2017-04-11 20:40:55.248284+00
neaao0k5ield4eootuo88whijy3xuezu	YjUxM2RhMjQyN2NmZDA3YWMyMGNhODRkNzUzOGY2MzIyYzQ2OWQ2Nzp7Il9hdXRoX3VzZXJfaGFzaCI6ImJkY2IxMjhiOGI1NTEwYThjZTAxNjExYWIzMzU1MjdlOWI2ZTMzYWYiLCJfYXV0aF91c2VyX2lkIjoiNDQ5IiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImZhY2Vib29rX3N0YXRlIjoiU0FkSk9BRjlHYVZPdlpRbVhGWEx4ODZSRXk5aG1KUHUifQ==	2017-04-20 21:59:09.324709+00
c7w2gfi8z7zdq1qzqsm93dsnfpi4mxdr	MjcwZjE1N2ViODYzOTgyMzZmMThiNTI4MmFkZmNjZTIwZDFlMmU1ZDp7Il9hdXRoX3VzZXJfaWQiOiI3OCIsImZhY2Vib29rX3N0YXRlIjoiOVlVWjhTc0doZUhBaDI0b0JKTHZVM0pnajc4TjVqMlkiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiJ9	2017-04-21 17:57:52.206417+00
v2osl4mxqhxc6k5n61trumd6nxr6j4ww	M2M0ODFkZmFjYTM4NmIxMDI3ZDQxNWNmN2M1OGExNzgxODQ0OWJkNTp7InNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJmYWNlYm9va19zdGF0ZSI6IndQdjgzTjB0Zkw3a0k2Mlo1OXhRck1JR2hyeDVZNW5VIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTYxMjU2Y2E3ODhmOWQ5MWZhYmFmMDI3NDk3YTMxNWU3Mzk2ZjJjOSIsIl9hdXRoX3VzZXJfaWQiOiI0MTEifQ==	2017-04-13 22:23:32.955295+00
r484siygj2yhvb1lm2xmrh5l8sfwd1o8	OTQxNThjNDc2YjEzNWMzOTRmODY0NmEwMGY2ODEzNTU2MjdmMjQ2Yjp7InNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJmYWNlYm9va19zdGF0ZSI6ImJsRlA5ZWZndmg5QkFRclpnTUpHeTZjWUtEaktqNTdtIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmJmZmU1MGNlMmYxMGI0NWJiNWRkYTkwMzkyNjU2NmZhNWZmZjJmNCIsIl9hdXRoX3VzZXJfaWQiOiI0MTIifQ==	2017-04-13 22:24:03.896424+00
oijanhau48om0js4dz741ih8ea18xffj	MDE5ZjkxYWZjZDhkZTQwMmJkNTc3NzFiYTZiMjE3M2IwZjRhMGIwOTp7InNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJmYWNlYm9va19zdGF0ZSI6ImdTeElPd0x4MFVpMmFnWFdKb1pObjBscTRWZWNHRjdWIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzEzZjkyY2FhZjkwOTljOTVmMDAxOGFhZDAxNzMzNDcyMzdkYzZkYiIsIl9hdXRoX3VzZXJfaWQiOiI0MTMifQ==	2017-04-13 22:25:12.043409+00
l09exqpdbc4dl10klcuyfx00c7bcr3qy	YTYyN2IyYjVlMGFjMmYwMmRmMzg0ZTEwN2FkYWE5YTQ2OGZmNTc2NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQ1NyIsIl9hdXRoX3VzZXJfaGFzaCI6IjRmYTYwNTNkOWJjMjFmMmM3NzA0NDQ2MTMyMWI2MTI3ZDYzNDQxMzkifQ==	2017-04-23 18:48:16.698758+00
yppjve1govskyz895a4jxp1jd1f9mbzf	YzgwNzZhNjg2Y2JmYWE0YThkZTEzMTYzMTIzMWQxZTI2ODczMTY0Zjp7ImZhY2Vib29rX3N0YXRlIjoiZGNEYWRzVVl5cDNqSVBWanBzV2RIN3VEUEtiVzQ2Uk4iLCJfYXV0aF91c2VyX2lkIjoiMzgzIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2siLCJfYXV0aF91c2VyX2hhc2giOiI1ZjE1YTgzNjRkZjU5NmJmOWRmODZlYmNkYjVmYjRhZWI4OTRlMzg5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8ifQ==	2017-03-16 04:58:38.786043+00
61n5dzzdoqledtofjx96jog3rr1m754l	MTMyOTQ1YTMxMDAwNWNiYjE3MTgwZTViMmE2NzExYThjZTM1YmY0Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQ0MSIsIl9hdXRoX3VzZXJfaGFzaCI6ImUxM2UyMzZhNmM2NmYzOTBiZWRhYTU0NGQ1YzA0M2Y1OGFlNzhkZmUifQ==	2017-04-20 14:39:47.747623+00
xxulcc2ahgs7ip9nsjf2inqltjg6sn08	OGRjMTBjNzk0MmM4NTZkNjQzOTRhMmJkOGY0NWVhMjI0MWQyNWYwMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijc4IiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2017-04-14 21:03:01.631831+00
ic25bkz2v5h4iotws0m7wz0dhxhqz0kn	ZTM3MzU5ZmM0NmY1MTc0YmI2MjJmZDIyNmNmOTY1MzI3NjIwMDJmODp7Il9hdXRoX3VzZXJfaWQiOiIzODYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjExMDA4N2UzMDBkNDUwYTFkNmNiNTMyNjUwMjUzMjVmNDFkZjM5YjQifQ==	2017-04-05 22:50:17.741468+00
bifmlsyp9j233gmhx087no11upsvaqoj	ZjA0MGEzYTk1ZDJkNTQyMjg1MDUwNDkyZWNmNTA0MmVhNDZmYTJlYzp7Il9hdXRoX3VzZXJfaWQiOiIzODIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY3NWUzZjZmOWEyZTdlN2VmNjljYjUwNTBjNGI4NDQ3Y2E0ZmIzMTQifQ==	2017-03-08 20:34:55.497788+00
4cjd34bfoe0w49a9nygxa10fvdjv44oh	MGU2NTIyMjk4YzYxMTExMDZlODQxYjhkN2M1NzkxM2Q4NGM2NjQ0YTp7InNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJmYWNlYm9va19zdGF0ZSI6Img2N1lBOVNpdjFRUXlvbE5ud3VzR2dVU2NyYzNISHlwIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzJhNzdmMDA0ZTU3YTYzOWMzYzdmYzYyMThkMjk4YjJhNmNiZDZkOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaWQiOiIzNzcifQ==	2017-02-12 16:48:00.256909+00
b6huvq499h5pftaint5n1nl64z8zy4gy	ZmUxMTgxNzY4ZTRjMzgyMzNmZDJjN2Q2YmFlYzk0YjAzOWRlNTI3Mjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiI1UkZleVBaNHQ5enNvNVdKTGh5U2Q3OVBUV0w0VXFMVCJ9	2017-02-12 18:27:54.563661+00
r3uvr1m7vysbn0ablozef02j13zuvqca	MTMxNmJlMzQzYWViMDBiYTEyZGE2OTgzZWZlNDE0YmIwMWI3ZWRkYjp7Il9hdXRoX3VzZXJfaWQiOiIzNzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjNkNmRiZmM5YTM0MTdjMWNlZjNkYjM2YzZiMTNiN2ViZjY5ZGUzZjYifQ==	2017-04-06 08:41:24.812935+00
ja0mha9aj5d9ueylh4cee7ehu5hpleac	MTA1Mjk4MWViMzA4NDQzNjk5NzZlOWYyN2YyZDBjZjRiYmU0NTBkZDp7Il9hdXRoX3VzZXJfaWQiOiIyNyIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIiwiZmFjZWJvb2tfc3RhdGUiOiJiRHJvS1U3TWtkNDhjdjdvVHVRS2hOc3FrUkJxdzFPNyIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDJkYWNlZWRlYzY0MjNlODljOTNhM2M1OGFiZDBkYjA2YjNmNmZjNSJ9	2017-04-11 17:47:00.101518+00
bodaxupyzqaggv5kenw80ey3ick8s0rz	MGRkMzkzZTkwZjY2NmZiZmQzNDVjMTgyMjU4NjVhZmRiN2UwNzU1MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzNzYifQ==	2017-03-10 00:48:54.207309+00
dr97bt2ahfplm3moiwz4m723hs10h6iu	YzdjZWVlM2VmMDE4NjY4MjEzYjA1NGM3NWVmNzE2MjQ1ZDUyZGZiOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM3NSIsIl9hdXRoX3VzZXJfaGFzaCI6IjkzMDAzNmI1MTA5NTc2NzkxNjExZGQ2ZDYwZTExOTI3ZGVjZGU5YmUifQ==	2017-03-28 22:50:24.914117+00
macj1m9h8re9rna85w0b6t16si0paxlp	NTRlMmRlNGU4NDRjOWM1NDUyNzE3ZTBkNzcwNDBkNzNjMDk4M2I4Yjp7Im5leHQiOiIvcmVkaXJlY3QvIiwiZmFjZWJvb2tfc3RhdGUiOiJOTW5GV3Q4S2w2OGZBenF4eWY0Y0tURjFnekd5MlNTWSJ9	2017-04-20 23:05:25.1058+00
8nhttfs83a17675eur713vwvy4yf2fw2	Y2NiZjdiZjEyYmY1ZjE0YmQ4YzIzNmFhZmQ2ODE2NTZlOWJmYTI4ODp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJkUEtkSFBSVGRxcU10MlRLcm42UlI0enpxcXUwbFdvZCJ9	2017-04-28 22:20:40.562905+00
dj81wwys8y95ezgf3b1ibd8wbqf0jt6h	OTA3MjU2NzIwZmM2ODU0YjhmZDhlODI5ZWFlZWI3YmY4ODg2NjRkYjp7Il9hdXRoX3VzZXJfaWQiOiI0NTEiLCJfYXV0aF91c2VyX2hhc2giOiI5MjhlZmJiMzgwM2RiOWVmYTI4NDY1ZmM2YTg0Y2E4YmIwZjFmMjFlIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-04-21 19:57:27.870161+00
xagohqkyw5kl968ll04nzu7sdvvkgiaz	NTQ4MTY1OTdjMWYwNjQxOGY1ZmJmY2JlZWIzNGE1ODAwMGE4YmVkMDp7ImZhY2Vib29rX3N0YXRlIjoiN3lhR1ZYbWJyc1EyS2NhVERaUHU3UUZUcm1sNnRUUTIiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-04-12 18:50:20.584779+00
n9njlxrhau3n04jvvmo7yjtouz9k85jm	MzU2Zjg1MTM2MDI1MmY3YWVjYWFlNmZkMzlkNjBiMmIyY2I3YWU3NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImUxM2UyMzZhNmM2NmYzOTBiZWRhYTU0NGQ1YzA0M2Y1OGFlNzhkZmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0NDEifQ==	2017-05-01 22:30:43.322611+00
0g3gjcx5f0sanc19sei6sxbv5hio7kk1	Mzk0MzJlNjY4ZDNkMTQwYTVlM2FhYWFjYmE5NmYzZjQzZDMwODE3Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzZlZWQ2ODJiMGY5ODdkZDAxN2QxZWJjZmQzZDY4MTE4Y2FiZjYzYiIsIl9hdXRoX3VzZXJfaWQiOiI0MDIiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsImZhY2Vib29rX3N0YXRlIjoidUlmMDQwVWdEeUhheUU0Q25NbjJzWHgwWTZFTEJUOUsifQ==	2017-04-11 20:45:38.630557+00
591ep0dghuh9j9lngh3bnlu6zghrv8yp	ZThiNWM4MDlhN2UwYjhlNzJhZTQwYjNjMjU1NTcwZWFkMDNmYjc4MTp7Il9hdXRoX3VzZXJfaWQiOiI3OCIsImZhY2Vib29rX3N0YXRlIjoiRWo3a3pOUFowVWpqUTRUclZ6ZlZvaGJlV1Y4VVpvM0EiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2017-04-10 01:50:13.070066+00
4ayhmtgout2q4l1qam60gdhp1sahhoox	ZmU4NzdhMDExZjRhNjA4NTRiMDM5NjNmMmM3MjkxZjU4YjgyYTI2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjNkNmRiZmM5YTM0MTdjMWNlZjNkYjM2YzZiMTNiN2ViZjY5ZGUzZjYiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM3NSIsImZhY2Vib29rX3N0YXRlIjoibjZOSGxPQUo0UXhzWTNmVTRDaFVQa21ETmVkTEpkcXoiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayJ9	2017-04-22 04:00:06.567256+00
ex8kwhsepopx51j7dwc2z1o6y26ylsjn	MGYxNzg0MDRiODVjMGFhNWNhNDk5YjNkZThhZjY0YTk1Y2M5MTU4Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaWQiOiI0NTgiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsImZhY2Vib29rX3N0YXRlIjoiRTNJTzVUeDZOSkN2bWRXc2JjQm9iUWttbTdxZldHYzciLCJfYXV0aF91c2VyX2hhc2giOiIyNjVhNzRiZDZlMWI0ZWI3MjQ2ZWY0MjgyY2QxMDYzYmRkYmZjMTU1Iiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2sifQ==	2017-04-23 21:16:34.383022+00
tzshgz44xl1fw74vo11ci9z2s1xv6ctd	NzdiYTZiOTgwOGY2NGQ3ZmUxNDQxZTQzMzJkYzc0OGIyYmVjNDA3ZTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJpS2t3RlpycXFSYWdnenppR3lPcktXazhic2RKZ0tkTSJ9	2017-02-14 12:57:40.761361+00
1so3p3zi4u3spiirefja6760lcsyyjek	NmFhNzUwOWE4ZjkzODY5NGExMmRkMzZhMWFlOTNiM2M3ZWZmMGNiYTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJkeERmZ0RVcXA3TXVSdE5lcHdBTnRTeHF1OFEwYzVOciJ9	2017-04-12 10:25:01.176229+00
v1fb7ecf0lopgkk1irwe6ak5nmwlxozp	NmIxZGRkMGMyNjE0ZjhmODcyOWZjODY1Zjk1ZDMwN2Y3ZDIwMDUzMzp7ImZhY2Vib29rX3N0YXRlIjoic1Jhdm5NT0k0bDV6c2xqUzRFNU4yR2FlMFNSRFRwWTYiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-04-05 23:13:06.363938+00
xcoigo6w1l8n0xi4xplpoz6l8lzxht0r	MWE1MDU3YjYzNjgwODkyNmQzYjEyNDM5M2U1ZWE1ODhiZDhmZDg5ODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaWQiOiI0NDIiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsImZhY2Vib29rX3N0YXRlIjoiNXlualUybGZ0blRDMXFodDRCT3JSZWNkZGdRbFNqSXciLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfaGFzaCI6IjBiNjg2Mzk5M2YzOTcwNGExYjQ0NzI5MDQwZWUzMjFjYjBmYjE5MDQifQ==	2017-04-20 16:10:37.605176+00
3xh5ydifg0v9ekrizvzu74scojoy6sfl	MDAxMzVkM2JmYTZkZDBhY2E3YmVkNzE0NDE0ZGZlMDgwZjM1MDMwMjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiNzgiLCJmYWNlYm9va19zdGF0ZSI6Ikl0YU5zcGhCWkpMMHpVSWd3bWRqdHNJZHVZVlFZUkFyIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2017-04-07 14:06:47.612065+00
ybuahb4vsajhl6xyfz88cp2k56e9tnar	N2UwZGI2OTYxNDFlMmIwNGE4MTEwOGMwNTExNjkwZDk1MDU4NTNiYzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJZYTJ2UGpJWDBVMzI2TEZoZmk5Y3M2UUhwV0Qya295WCJ9	2017-03-08 21:39:28.982421+00
p1stgt2bxh6wgrtrgjs4omwh73bqub4n	MzZkZjdmZTc3YTU3ZDBhMmRiOGU4NGQ1MDA0ZWRmZjIwNDRjMzllYzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJiT0UwclBzajhLM0VSaWRLY3NpODgyOUZ4UE1ZbzdsciIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImZmYWE2Y2I1MGE4MjY4MjlhOWU0YWI2NDAwZGY5NDc4MGZlZTM3YWYiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfaWQiOiI0MjUifQ==	2017-04-14 22:14:27.155026+00
w64p370p4yiwvqcj5o857besrwzv7rxs	YzQ1OTcyN2M4ZGVlY2VjZDA0Y2U3MzQ5NzIxMDE2OTI5N2E3N2JiYzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJaZ0tjcTBOdU5ocmxSZXJaNDVHZWlnUjBtNElyMGtteSJ9	2017-03-22 08:35:39.841974+00
qjrhp0qzsnx1jvgb6u0ji687diyn18rm	MjVmNGM5MjFiMTBiYzhkNDAwYjBhMDA4NzQzZDE1MTgxZDM1OGQ5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIiLCJfYXV0aF91c2VyX2lkIjoiMzc2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-03-10 01:53:18.623174+00
blao62ckckk4jr0ldheu8njaen0qu6k7	NmRlMTNlN2UwOTljZTJhZGJjMzRmMDcyNTI1ZDMzMGJiN2IwMmNjZDp7Im5leHQiOiIvcmVkaXJlY3QvIiwiZmFjZWJvb2tfc3RhdGUiOiJVU29WSU9rcjFGRG1RcDlYb1lzbVI4ekhQMDlEOXlodyJ9	2017-04-20 19:28:58.477021+00
8xljgpuvxzxrdusagmybk5eoftgvqdg3	ZWM2NDJkN2NhMmI1NTMwMmM0Y2JkNmY3MGE4ZDRkY2QyOGY5ZjEyMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjkzMDAzNmI1MTA5NTc2NzkxNjExZGQ2ZDYwZTExOTI3ZGVjZGU5YmUifQ==	2017-03-29 07:29:47.87741+00
e8t1zs87gtudxdv75q7exid27h8vvvox	NTQ2NTQ3YWRmNzAzNzM5MDVhNDIyYzI3Y2FhNmE1ODUwMGU4NTAyZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiZmFjZWJvb2tfc3RhdGUiOiJsR2prNjFjZW1Mand5THdhWW5jdERuOVVuM3JEN3NrNCIsIl9hdXRoX3VzZXJfaWQiOiIzNzUiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsIl9hdXRoX3VzZXJfaGFzaCI6IjNkNmRiZmM5YTM0MTdjMWNlZjNkYjM2YzZiMTNiN2ViZjY5ZGUzZjYifQ==	2017-04-11 20:21:22.765345+00
cwfn05sf6dmxr4vkvm3mqe6kgnfzpph7	MDg5ODlmZTE0N2M0Nzk4NGE4YmI2N2NmOGQzMTY3N2E0MWFjM2NhMzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJOTHdKOVY4OFFrMEJEampMdnBwM25PSU1RMFFqWUFmWCJ9	2017-04-10 21:36:41.547694+00
x7qyqn32zsdppa864iu90cabulyni3q6	ZTdkNGU2MWJlNDljM2UwODg2YmZmNTQ1M2UyYTFjYWY0M2JjOTg3Nzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJCU0RDV1o0aGptU29OWThxRkJCNUhScjNjZWE0ODZZdCJ9	2017-04-13 12:09:44.861494+00
osgm97n69zb4gdiomx531h93uukrtz0i	MDEwNzkyN2M1ODZkYjU4NTc5MmMzYzkxZGJiZmRmZGM5YjgzYmJkNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2YzM2I3MmVmMWEyOGVjNTcwOWRiM2ZmZTRhYTA0Y2MwM2I2N2FhMiIsIl9hdXRoX3VzZXJfaWQiOiI0MjkifQ==	2017-04-15 18:01:12.499247+00
5872q9ea79ve0mqvhvbwudv8yeloltmh	MTMyMzc5NzdkNjE3MGFkM2RlY2E4ZTVjN2ZmZjVkNmExOTU2NzcwYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImRlMDFjZTEwYmFmMjM3ZGFjODUyODc4MDFlZmI5ZDJhYWQ3NGI4YWIiLCJfYXV0aF91c2VyX2lkIjoiNDUwIiwibmV4dCI6Ii9yZWRpcmVjdC8iLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImZhY2Vib29rX3N0YXRlIjoiN1h4MXM4OVlwUkFMbW1DSnlzdEl1cVBCRmtmaHJoRGwifQ==	2017-04-20 23:27:34.471977+00
hxhmj5get7ksaa1xo91lbc6btj908244	OTIyODQwN2JjMmI5MDQyMzNhMmM3NTdmZjEwNzAzNzQ4YWY0NzA5ODp7Il9hdXRoX3VzZXJfaWQiOiI0NTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImZhY2Vib29rX3N0YXRlIjoib1ZNNHVRR0ltSkJPdjBkUzgweTlpZjgxNTRsY2UxcTEiLCJfYXV0aF91c2VyX2hhc2giOiJhOTA0NWYyNzUxNzI4NWVlNjY3ZWFkZDViYWMzNTQ5NzE1Y2JkMTFjIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8ifQ==	2017-04-25 22:51:35.654088+00
l12t5klwpasztb5vebqpsch6fjgg9vyt	OTEzZGUyMzM0ZTg3NzJhYWM5ZTFlOTExOTZjNDk0OWY3NWNlNGZmMjp7Il9hdXRoX3VzZXJfaWQiOiI0MzUiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9oYXNoIjoiMWU2NmI0ZDBlNDM0Y2EzNGZjMDc3NjljZjAyNGRmMzdkOGRmNjg0ZCIsImZhY2Vib29rX3N0YXRlIjoibHA5T0w0VW93TG1tRnJIMG1reHhLNG5PT1U2aEs1MmsifQ==	2017-04-22 14:45:42.554362+00
uqarh7xi801eqa0usf6dbqtxw2bkegs3	ZGE5NmI3YjRiYTRjODkxMTljZTdlZTU5YzIwOTIxYzZiNmM1YjU0OTp7Il9hdXRoX3VzZXJfaWQiOiI3OCIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2hhc2giOiJhYThhMWFiN2ZkMGFkYWYyMzZlMWM4ODMyY2Y2NjNjNTM3Y2IxYjhjIiwiZmFjZWJvb2tfc3RhdGUiOiJ6Rm1CdGR3SlRJeEVSMzdERmNTR2lTbzUxN0t0dXlLViJ9	2017-04-22 18:17:42.551015+00
2rkykhr93fjmqteevw68eb2a2mnra9yt	MWE5MTIwMzEzOWRhZmYyYWY1NGQ1OTBkOWQwN2NlOTA5MDNiZjUyNDp7ImZhY2Vib29rX3N0YXRlIjoiTUFxeFFlc3dVZFJYT0lmUUxpV0pHVmhjT2Rtc3Azc1oiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-05-01 08:21:09.27825+00
h20rnkzzd1r7b2l6c8qvyyle9sfl4n8n	NDkwMWRlOGYyOTQ4YWU0NmQ5OTRmZThhMzM5MDFmNmMxN2ZiZjBjOTp7ImZhY2Vib29rX3N0YXRlIjoiMjRHekQ2TFNhMGJCSU55ZVlHYmZwaEF5VHEzdjd1NXQiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-03-16 17:07:39.696434+00
qw0bnowdxe21m6taheyqn4hos7yfv6uy	YzczOWM3NDM5OTU1ZDcxNWRkMWRmM2VlNjE2ZTljMjhiMzM1Yzk4NTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiI5R2tWcjBRZ1ZOSEdoOHFGQWRYWXlLb2c2dU5yTm9vaiJ9	2017-02-15 01:38:10.990598+00
vpsibuoux0rrvcyo4k815rh7r5q41bma	ZjQ1YWM1ZjFlZTU5Y2ViOTI2MDBlZDM3OTE3YTQ0NzExOGM1ZTk5Mjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJiS3JGc3RSQXJjMW5vOTdQNGROUG94cDZXOHFTZzlVSCJ9	2017-02-15 02:00:15.752071+00
9d96qa8zqgzv4ii0vdmruwvtroixj6g8	YTZlY2U1ZjAzNTFjYjAyNmU0MjA0NzYwMjFlNWIxYmI4NjljOTEyMTp7ImZhY2Vib29rX3N0YXRlIjoiOE1HdEZqd2hqRTR0QXlqU1pPck9ueDBkbGdwSjdHclkiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-04-26 18:29:09.804729+00
g93wvcblt7rnc55p3f0ygsr37olepbxi	ZjllNWNjMjhjMWZhZjc2ZDkyMWNhN2RkYmYwMmVjNTgxOWY1YWFmMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFhOGExYWI3ZmQwYWRhZjIzNmUxYzg4MzJjZjY2M2M1MzdjYjFiOGMiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfaWQiOiI3OCIsImZhY2Vib29rX3N0YXRlIjoicTg3RmVsYXZXVHh0eUgyeXoyTjNtSVhWTzdqVjBoWUgiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiJ9	2017-03-21 01:31:17.536044+00
x2u3sfvvuytk4nu9tzuw9iff19yi5yse	MWM0NWI2YzcxMmNlOGZiZjc3OTY0ZWFhMTk1ZTJjZTFhNzg4MmJkMzp7ImZhY2Vib29rX3N0YXRlIjoieTNEUnpYcXNRRWNPQUR6UDIxN0xBQnI0eW50VDZGT0giLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-03-23 21:01:49.516507+00
u2a5m77k3mxyjxme43pecknu77u8rraw	MmZhNDI5YzkwMmE1OGMyMDZlYWFlNGJhZjNjYjIyY2IzOTNhOGNhMzp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiIxc2VoVUpHeHZrbm1NcFVkSHNrQzc0WmZNNjg4bDJzbSJ9	2017-04-21 04:32:03.305845+00
300ztj2x7q2ezgauih1trxnc4crh6gv1	ZDEwMzQwZGVhOGY4MzM3MzQ1MzVmOWI2ZmQ4YjMwOWUyMjg4MGM3Yzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ5Njg2MjdjZDQ0MGFiMzNkNTE4NWEyMGVkMDgzMDJmZDJkMzc2OGIiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsImZhY2Vib29rX3N0YXRlIjoibThESGlaclhoMGxBSkJta1l4WTJBMUdLV2FvR3FzbnQiLCJfYXV0aF91c2VyX2lkIjoiMzg0IiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8ifQ==	2017-03-29 21:38:14.71637+00
demnws3hvxrej2bujt92chspbnypqpe3	YjFiYmVlYTgxYmVkMjllZTYwNjg3ZDlmMmU4MGQ2OTA2Y2VjZThiMjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiI0TFpHZUFTTU1hd2F0ZkRXRlRUemVBVmlxWE9OWTJOdyJ9	2017-04-05 03:46:44.960252+00
u42lrrql8kdwrps5dwj9dwks60yv7mfw	NzAwODIyMjg5NTEyMTg0NzYyOTFiZmZkYjgwOWYwODA0MDRiMTJjMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzYjFmYTA1M2M1ZTdhZWQ0OTAyZjQ4Y2EzNzdiNmM4ZDZiZGI3MDAiLCJfYXV0aF91c2VyX2lkIjoiMzg3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-04-12 11:48:06.38385+00
tzze51wy8coayf7v4vlmkswyju8mots7	ZjA5ODcyMzk0MWU1ZjdkNzM0NzE1MTIzYjcxMmFjOWI4MTMxMzUzYTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2siLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJmYWNlYm9va19zdGF0ZSI6Inlab0pXeEtteWo2QjVTbnltRFVrWTg3blNPcllnYkdwIiwiX2F1dGhfdXNlcl9pZCI6IjM3OSIsIl9hdXRoX3VzZXJfaGFzaCI6IjczNzhhNzhmNWFjZTczODE4YmEyN2ExYjczYjQ5YmZjZDZjYmY1OGQifQ==	2017-04-07 16:58:57.160853+00
tc8zrve5jl6umelcxssfyxh64n4ljmdw	NWMwMjYyZGM2MzVlNjJjZDk0NDQ4YmRhZmEzNzY2NTdmNDAzM2U5MTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiI3Z1dsWkJnT1ltWTh6dnRTNjdLQVNIMEFPVllGQmxEbiJ9	2017-04-09 00:08:17.978567+00
xbvatuhxy3co31ftfm3f27sfa4hecg70	OWM2NDZkZWJjMzY3M2ZhMGYyZjlmZjRkMjY3M2Q4ZTJlODJhMjExNjp7ImZhY2Vib29rX3N0YXRlIjoiSXdMMzdXbXR6MHhRQUJsWEE3S0dyMEVMeklaS2dyamMiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfaWQiOiIzOTciLCJfYXV0aF91c2VyX2hhc2giOiIzOTA4ZWQ5NmUwMmRlNjBjODk2OWY1NjIxMDZmYmQzNWMwMTdmNWFjIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIifQ==	2017-04-21 23:54:46.881691+00
pv55mksztxgoicnmnkvmofkgx6eovvln	MzBkN2E5NjNkNzk0Mzk0OTZlODhkYzIwOTQwNzEzNWUxZTExOTdiNDp7ImZhY2Vib29rX3N0YXRlIjoiMUNhU01oNkxtZUtUUUZjZEpId1ZZajNxS1VqdGI3QXciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiI2OTcyNTM1MDE1YzY1MWY3MTNmYzMwYzJiOWQyNDFiODE3ZjVmNTExIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJfYXV0aF91c2VyX2lkIjoiNDE1Iiwic29jaWFsX2F1dGhfbGFzdF9sb2dpbl9iYWNrZW5kIjoiZmFjZWJvb2sifQ==	2017-04-14 00:33:04.159944+00
8lrtpq9jsnn9atwupswsasshrn20y5o8	NmEzNTQ1MjhmNmM0ODY1NDVlODU1MWY0NGEyOGMxMGRhN2ZlNzI2NDp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiIyREJOangwc0JYbWdWcGVXM3NMOHpuOHRtZGlzNU9ZeSIsIl9hdXRoX3VzZXJfaWQiOiI0MzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfaGFzaCI6IjA4YWNiZWRiY2Q0Y2IwYzI0NzY2MWViNWY3NzE2NWE2MGE3YTZmNmEifQ==	2017-04-18 03:23:31.784878+00
mpnzhofk98pzsn4d8xkk5kig1l51gcw6	YmM0NDc4N2EwNGU5N2Y5YzVkZmY1NmIwMWNhZWQwYTI2YzE0NmM3MTp7ImZhY2Vib29rX3N0YXRlIjoiNVJUUjF6ZEdmaTBkT2Q3TzJwUFg5OW9Vd3VhdEdRQTYiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-04-20 00:10:30.306567+00
g3wqsuh9n5fbs54lakqrt0o655393aq3	Y2FlZjQ0NTFlZDdmMjU1MDA3MTFmZTM0Y2Q4NDc5NDQxNzdmODMxMzp7ImZhY2Vib29rX3N0YXRlIjoiSGZtWlkwbFJqa0RyeGphcGNWN3NqWjlDbnRIOUQ1dnIiLCJfYXV0aF91c2VyX2lkIjoiNDM5IiwiX2F1dGhfdXNlcl9oYXNoIjoiMzY0YmU0OWMwYjhkNzc2ODQwNTVhZGRlZTcxNGUzNjliNGY2OGUyZCIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8ifQ==	2017-04-20 00:13:23.449368+00
30crjbtc9bx3m0xi23avw3hv2rre8wy9	NjNlYTBkZDgwNjA2MjFmMzUzYWY4MDg4NzY4NGJmNGM5MmY5NGNiOTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiNzgiLCJmYWNlYm9va19zdGF0ZSI6ImhGaEFrc2l2UVJMUXZINzloWVBtR1h3ZUZEd1g5RXNmIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2017-04-23 18:08:48.256148+00
7v5xdpgu38n3wz3ldlikzoybtnqtgnyi	ZTgyM2RlNmEwZjcwMDQxYWEwNjkzNjFhZjZkZWIwODg0MWMxNjBkMTp7Il9hdXRoX3VzZXJfaWQiOiIzNjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjU1YTFhZjRiZjMzNGRlOWE0Mzk3ZmZiMTAyNmVmM2FlY2E0ZGZlYTYifQ==	2017-04-05 23:28:09.637733+00
l8ah7xgk9gebwcr0qofewbxbjrfw3vcd	ZGYyMGU5NjRjNWNmODc0ZTE2MDc0NmQ3MWMwOWYxNmQ0ZGY0OTNhNjp7InNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6ImZhY2Vib29rIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsLmJhY2tlbmRzLmZhY2Vib29rLkZhY2Vib29rT0F1dGgyIiwiZmFjZWJvb2tfc3RhdGUiOiIxUTZOQkxnY093Ykk2WTFDRExyMWFXaXFFSFpBbUFIMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImMzMzIwZWNkZjJkZGZhOTMyMjRjYjdjOTQxMTRlYjRkMGQ4NzhkOWYiLCJfYXV0aF91c2VyX2lkIjoiMzgwIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8ifQ==	2017-02-15 12:04:48.29454+00
9xtkbg9x42fcqsigponenwzns7qumu9h	MmYzNTk3YTA3MmZhODMwMmFhNWE0YjdlMzU2MjI0MDQyOTg4ODA5YTp7Il9hdXRoX3VzZXJfaWQiOiI0MDQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFiODQ1YjM4OTQ1MzIxMWIzNDEwNzkwOGFlMjM2ZjZhYmI4MzY1ZmMifQ==	2017-04-26 18:36:55.083661+00
ygsmnppx50vr3gmpuoxumevl029t99jj	ZTY5ZGNmYTdhMDU0YWU2YTYyNTQzZTI1YTAwYzBmNmM4NzgyOWNhYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyIsIl9hdXRoX3VzZXJfaWQiOiI3OCJ9	2017-04-21 17:03:26.174022+00
euk61zdbdyckpcel3ueyjx4k3pl5mm6j	NDVhMjc2ZTQ3ODQ5ZTgyMzE2MGFiY2RmMzBjYmMzYmQyNjgxZmZhMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ0OTU0MzRmMjI5MzJmYzY2MzBiZWJiOWI3NGJjZWYzZjEwOTZkNzMiLCJfYXV0aF91c2VyX2lkIjoiMzkwIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-04-12 12:50:32.444424+00
o4i8sv0jjwayylejulgqqoaauzmlkexm	YzkzYjUyYjcyMzRiNDFhMTU0MjY3ZWJjMzFjNTU1ZjFkYjUxNmJlMTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJqVWxFUEJzTFl2aU5tNWJwQ0hDMGx2R1RpOVJWVUtqZiIsIl9hdXRoX3VzZXJfaWQiOiIzODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImI1MWVjMDNkYTgwMTY1MDIwYzU1ZTI3NWUwYTc3OTMxMzY5MjNkZjEifQ==	2017-04-07 19:59:56.019324+00
1eugwdxnw9lkxyoz7b3jcwj2upicg0r5	MGMxYzllNmFhZGYzMmE3MzViMmMwNjNmZTJkMzQwZTM5MDQ4OTljMDp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJaOGM5Qzg5ZjFzQ3BkSGZKUXZiTUNWUDF0Um4yYkxQViJ9	2017-05-02 11:46:43.768969+00
w4qzkpol9olpkcp0z2jcuuaugilluntn	NDcwN2Q0MjQ2MTdlMjg4ZTY0NzU4YjkyNWJlMzk3Y2MwYmU4ZTljZjp7Il9hdXRoX3VzZXJfaWQiOiIzNzUiLCJfYXV0aF91c2VyX2hhc2giOiIzZDZkYmZjOWEzNDE3YzFjZWYzZGIzNmM2YjEzYjdlYmY2OWRlM2Y2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-04-09 08:01:26.608271+00
yip9j5cne2midz67e5484ajdelleory9	OWVkMjVmZTRlM2FlYzNiZmJjNDczNWQwNDYyNDVhNjRiZTE3NTZhYjp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJpZG0zaFlNZXpaZUpId0RTdWFiTExnWHhHb0FFa1gyZyJ9	2017-04-21 20:53:37.921562+00
0fms5svt5s30n6br8o888ncg6g2w1y0c	ZjY3NThjZjAyMzAyZGQ1YWI5ZWI2NGFjYzBhMGIyNTMwNTY2OTBjMTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJXNUNtbjRiVTY2VktDYm5jdk9oUHltTG9rcllMOWZsYiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImVlZjczNmRhNDVlM2Y0OTZhY2RjYzVkODY4NGQ3YThlYTI4ZDBiMzciLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfaWQiOiI0MjAifQ==	2017-04-14 21:30:34.501059+00
okq4ra33k3d0x15t5yeqbogzfwzpehd3	ZGQxMjQ2NTIyMTZhNjNjZDBlYzA1MTJlZDk4YzUzN2Q5ZjVjZWJlZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGUwZDhlZDNlNjU5ZjVkYjlkYzk4YzVhYjQ4MzU1YmY2NzI5MzY1MCIsIl9hdXRoX3VzZXJfaWQiOiI0MTAifQ==	2017-04-13 19:23:48.555301+00
w19az4e6m5nk29s1outqwv5inxpvmvuu	MTMxNmJlMzQzYWViMDBiYTEyZGE2OTgzZWZlNDE0YmIwMWI3ZWRkYjp7Il9hdXRoX3VzZXJfaWQiOiIzNzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjNkNmRiZmM5YTM0MTdjMWNlZjNkYjM2YzZiMTNiN2ViZjY5ZGUzZjYifQ==	2017-04-14 21:59:24.405377+00
l70tl9j6jjy2aunfko3bm32ifppb3kmw	MTNkZjM5MzM3YjdiYjhkMWYzYWE4N2M0YTRkNTkxZDY1YThhYzcwYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjkzMDAzNmI1MTA5NTc2NzkxNjExZGQ2ZDYwZTExOTI3ZGVjZGU5YmUiLCJfYXV0aF91c2VyX2lkIjoiMzc1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-03-16 03:41:16.616754+00
s41qshxo346i3o1j1d1i26egleb1tlwn	NGY0ZDNkZDg2NTVlNzVlMTg4Njg3NTMwNTU1NGRhODJiYjFlYjgwNTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQ1NCIsIl9hdXRoX3VzZXJfaGFzaCI6IjA2NTQwM2YwZjU3YzA5NDc1OTM1MDliYTZlYTliOTE5NWY4MThkMzAifQ==	2017-04-22 19:57:12.592816+00
1l39xm5j2j3mrejpu11w54h2h2o44n6u	MmI1YzI4ZDRlMWIzZmJlZThjYjI2ZWM1ZjU1YzliZjVjN2NiNDc2MTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJaUGZheFc2R29Ma0VVOUI4bDNQOUQ5OGdvcnF2VnpQayIsIl9hdXRoX3VzZXJfaWQiOiI0MzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJzb2NpYWwuYmFja2VuZHMuZmFjZWJvb2suRmFjZWJvb2tPQXV0aDIiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfaGFzaCI6IjA5MDU4NGVlMmQ1OGIzMTNlMGMyMjFiZjgzNjZhNmUyZTRhN2Y0NTAifQ==	2017-04-18 14:46:59.999368+00
z5yyqdz9skxag6gw085vvacb4srzmuwa	OGEzMjUzNTI4YjNmY2QzZTIyNDE2NTNjYmUwZjQ3ZTRlNTU1NGM0Yzp7Il9hdXRoX3VzZXJfaWQiOiI3NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2UyNDQwZGRiZWFkODg3NGQwNzE4M2FlYTg2YjNhZTU1YzZiMTgzYSJ9	2017-02-20 14:07:28.124655+00
4ty68xeugrrsf9ynk3vpzinmjq2azz3o	ZTBmNDUxMDI3NzU1NGM4NjFhYjNhYWI2ZTllMjY0YTVmMmRmZDMxODp7Il9hdXRoX3VzZXJfaWQiOiI3OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2017-02-23 14:35:43.801093+00
pno7nyqp9bglzziimaykawt5zcxc9wcy	MDU5NTdjMjk5ODQ1MjAwY2I5ZDgwYjg0Y2M0OWRiNGFiZGVmZDc2MTp7Il9hdXRoX3VzZXJfaWQiOiIzNzUiLCJfYXV0aF91c2VyX2hhc2giOiI5MzAwMzZiNTEwOTU3Njc5MTYxMWRkNmQ2MGUxMTkyN2RlY2RlOWJlIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-02-23 18:34:14.275431+00
byj6rbgj2f1w08p9c1fqnc97humqwffh	OGRjMTBjNzk0MmM4NTZkNjQzOTRhMmJkOGY0NWVhMjI0MWQyNWYwMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Ijc4IiwiX2F1dGhfdXNlcl9oYXNoIjoiYWE4YTFhYjdmZDBhZGFmMjM2ZTFjODgzMmNmNjYzYzUzN2NiMWI4YyJ9	2017-04-14 20:07:12.710076+00
6t4yq0iayu2fmuwn87qhirsi0l38sye2	MGRkMzkzZTkwZjY2NmZiZmQzNDVjMTgyMjU4NjVhZmRiN2UwNzU1MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzNzYifQ==	2017-02-28 21:52:44.449041+00
zs1sgjp7f7ifs4fbc3sjyhkvc3bgzd9f	ZGJkMjBkMmM1NDI4NzZkY2RmZDA0OWU5MTZhY2MzZTM1YWY1NDM0ZTp7Il9hdXRoX3VzZXJfaWQiOiIzOTgiLCJmYWNlYm9va19zdGF0ZSI6ImdLOHA4OFlRTHNqRGFQSWZ2OFBuclZxZTAzWlBPZVNZIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8iLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjRjMzUwNzAxYTYzNmE0MmViZmJhMmQ4MDUwMzlmY2IxMjcyMmM0MzcifQ==	2017-04-11 04:39:39.948114+00
750d54agn85jhwi88hffiiub207l8fqn	NTI4OGRlMDU0MmE5OTE0YmY2NzgxMTE5MDdlNGFkMDkwNDM0NDdmZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjcxNTdjODA0ZTkzYzAyZWFkZmEyZTU1ZDE2MzY3ZjBiMDAxYmNhYWIiLCJfYXV0aF91c2VyX2lkIjoiMzUzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-02-21 00:05:51.974247+00
jaiqw9muxe9w6hkmm0dvze1z2apbny5w	YWMzYzhiMjg0MzVkMjA4MGQ5OTk0NGQ0NDhkYmQ5NjEzNjU5YTkxNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOWZkZDU5Mzc4ZDZhNWE1MGQyYjQ1OTM4ZWE4NTIyNDAyYWRhZjVlMCIsIl9hdXRoX3VzZXJfaWQiOiIzODgiLCJmYWNlYm9va19zdGF0ZSI6IlJ0Y3FLYVFnNHFxcm5rQjFiQmZtTUxkMUtZUmN4aHlNIiwibmV4dCI6Ii9wcm9maWxlL2Nob2ljZS8ifQ==	2017-04-06 01:46:55.812474+00
16rh44p8h0k0lxz99603kf8r3v1jqcvz	ZDIzMzQ1MjA5ZDhlM2ZjNjNkYjU4ZTE5NmVjMWRiZDg4ZjA3NDU5Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjFhZDUyOWFkNWUzMTQyZmVlNDlhMzIzZDEwNDg3Nzc0NzkzMWM5ZTYiLCJfYXV0aF91c2VyX2lkIjoiMTQxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2017-02-21 01:02:09.554211+00
wqoizz58xtzj5rsedgzx9oybozlwimoi	YzI2NjBjMTFkNDc1Y2M5MjUwZWYxOGQ2YWFkYzIxOWFiZDFjNDAzZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZkMWFhZmFiOWNkMDBiNjdhN2JkMWI3MGRkOGUxZmRiYWFjMjU0OTQiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIm5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJJczYzWTFvSnZWRWhlQ2drNlhadm1MTnFQekk5WmFPRCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaWQiOiI0NDMifQ==	2017-04-20 18:09:48.208106+00
4pa9fyh4wza5kotngch3lz01yq37d7a2	MjQwZjZjOGQxODVlYjE0ODBhNGQ3YjIxNmZiMmJhZjRiMzViNDNlZDp7ImZhY2Vib29rX3N0YXRlIjoiN0ZxTzZBalVZcGpJZEc1SVZScnpDYTU0YWcwMnluY2IiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-04-12 14:05:12.881562+00
ws1lurkpnmzm81tsisiprti0o9xcythi	OWRmZGM5MWE1OWFlNTc0ZGRjNjRhYzZiMDljZGFlMWNjNGRkYWQ0Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM3NiIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIifQ==	2017-03-10 05:21:41.705673+00
bzge2lxnkez91gayq3xoc87p0umw2v5s	NTJmYWIwZjg1MTQ4NmEzMGFlMDM4NzQ1NGRlNDhiNDNhN2IxMjAyYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY1ODk1ZThiMGJiMWI5NThmYWQ2YzlmNjEyYzZjNDg0ZjkwNjM4Y2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzOSJ9	2017-03-10 14:37:14.274446+00
2ojpnl8mfimts4109m4gr8ms61hdjj7g	YzM2YjYxNTY2NDkxYjQ0NDcwNjRkNWNmNmQwMzA1N2U2OWJjZGE4MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjkzMDAzNmI1MTA5NTc2NzkxNjExZGQ2ZDYwZTExOTI3ZGVjZGU5YmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzNzUifQ==	2017-03-30 17:16:59.538096+00
ra9vi5c317rypmxo6q59z7xb7rpcq261	MThhMzE0YjdkMGI2MzlmZDI5ZTE5MTVmYjhjNGYxM2EyMGJiZWFlNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQ1NSIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg3NmMxZmUzODA1YTVkZDk3Y2ViNjlkMjYxYTU2NTExODBjYTJjZTAifQ==	2017-04-22 22:46:43.39139+00
cj4xju8ya50lz66zwv3efvekluwfxw7t	MzFmY2U4ZmNmOGQ0NWI1YmMzYjk3NjQ2OGIzNDZmNmI1ZmE2OGUxNzp7ImZhY2Vib29rX3N0YXRlIjoiTmQ5R1ZlOWthbEY3M0U4RkNHbWxGRHFqMmtiRVFTcUMiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-04-09 12:28:10.620665+00
cu1g4t8b09k3x9wjk0n1dy8cgwi7zfb9	ZmEyYTMzMzEyYmE5ZGMyMmE0NTllYjA2YjRlOGJjMTdjNDJlNzViNjp7ImZhY2Vib29rX3N0YXRlIjoieXE0cmNuNllqY1RiaHJIUThVMG5kZmUycHl0MUQxRDQiLCJuZXh0IjoiL3Byb2ZpbGUvY2hvaWNlLyJ9	2017-04-13 21:28:22.005096+00
i2ugosqs3xf264aeiisxyiwsy9td5cc3	MzllYWY0YWYyNmI5OTE0YTVjNzA1MGUxZjQ5ZTI0Y2ZiMmQ5MzJlMjp7Il9hdXRoX3VzZXJfaWQiOiIzNzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ1NjdhMDEzNDgyNDI5MjNhNTdhNmIwNGNjZjI3NjM5YThjODk5ZTIifQ==	2017-02-22 02:06:04.367737+00
bm6eszaoa9beiv9e3xrbdskseh5akru6	NjE5MzZjZGIwZGFiMGIzZDcxZWYxNzUzZmJkMTkzZGUwYmM4ZDc3MTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJFN0VjM0t4cFFHdTlJTWt1VHhpZzFNOXJReklNODAxUyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbC5iYWNrZW5kcy5mYWNlYm9vay5GYWNlYm9va09BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6IjQ2Nzc1ZDdjNzQ5OWE5ZmQ5MDgxMjg3MTNmY2ZlMjQwNTI4NjVjZDciLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJmYWNlYm9vayIsIl9hdXRoX3VzZXJfaWQiOiI0MjcifQ==	2017-04-14 22:38:24.288829+00
lhjliituwpze7mnkrr0h28t867nmjdk2	NDg4NzMzZWRmYWFiNTE1YzBjNTEzNWVlYjI1NTgyNmFkMmU5YTFmNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjU4OTVlOGIwYmIxYjk1OGZhZDZjOWY2MTJjNmM0ODRmOTA2MzhjYiIsIl9hdXRoX3VzZXJfaWQiOiIzOSJ9	2017-02-22 12:32:38.957426+00
uhsg5i8jzh8sizy09nst716h578uyg2d	ZWFiN2U2NjQxNGM2MzgyOThjOWY1YWY0OWE2MzRiYzlkMTFhMmY2Nzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTMwMDM2YjUxMDk1NzY3OTE2MTFkZDZkNjBlMTE5MjdkZWNkZTliZSIsIl9hdXRoX3VzZXJfaWQiOiIzNzUifQ==	2017-02-22 13:14:59.745315+00
raolsjhroe1qc3c96uyfr1184v8x3gtl	NDcyOWZhMmJiNzU4ZGNlNzNiMzQ2MGNkMDI3MTBlODVmZjFjYjY0YTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJROFF3WkNGN2kxV0hpb1ZXeU4zeFRjZHVNODNnMTdqTiJ9	2017-04-14 22:39:33.403886+00
leubp2qod9jeo07ii23p7xs7rgzgdfx9	ZjQ3ZjczNjE5NGE5M2JmOTRjZmMyZWM1YjAyYzkwYjRjMzIyM2Y1MTp7Im5leHQiOiIvcHJvZmlsZS9jaG9pY2UvIiwiZmFjZWJvb2tfc3RhdGUiOiJKeDB4OXlPUXYyRTlpdGwyYU9Pc0Z1ak5HUzIzUW9TdSJ9	2017-04-18 14:57:22.232183+00
rqmayiqqi971p36smcjw0dqt1ke975db	ODk5MGJlZTA2MzllNDVhMzRhMzVmMzgyNzZjMWY2M2Y1NjlmMDNmOTp7Im5leHQiOiIvcmVkaXJlY3QvIiwiZmFjZWJvb2tfc3RhdGUiOiJqaUI2aUlNWHQ4QU9nT2FtanozWVBZc0VwQ1k5dW56YyJ9	2017-04-18 14:57:33.960989+00
\.


--
-- TOC entry 3657 (class 0 OID 1297762)
-- Dependencies: 265
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY django_site (id, domain, name) FROM stdin;
1	indicoapp.com	indico
2	indikko.com	Indikko
\.


--
-- TOC entry 3748 (class 0 OID 0)
-- Dependencies: 264
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('django_site_id_seq', 2, true);


--
-- TOC entry 3650 (class 0 OID 1297641)
-- Dependencies: 258
-- Data for Name: oauth2_provider_accesstoken; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY oauth2_provider_accesstoken (id, token, expires, scope, application_id, user_id) FROM stdin;
\.


--
-- TOC entry 3749 (class 0 OID 0)
-- Dependencies: 257
-- Name: oauth2_provider_accesstoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('oauth2_provider_accesstoken_id_seq', 1, false);


--
-- TOC entry 3648 (class 0 OID 1297628)
-- Dependencies: 256
-- Data for Name: oauth2_provider_application; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY oauth2_provider_application (id, client_id, redirect_uris, client_type, authorization_grant_type, client_secret, name, user_id, skip_authorization) FROM stdin;
\.


--
-- TOC entry 3750 (class 0 OID 0)
-- Dependencies: 255
-- Name: oauth2_provider_application_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('oauth2_provider_application_id_seq', 1, false);


--
-- TOC entry 3652 (class 0 OID 1297652)
-- Dependencies: 260
-- Data for Name: oauth2_provider_grant; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY oauth2_provider_grant (id, code, expires, redirect_uri, scope, application_id, user_id) FROM stdin;
\.


--
-- TOC entry 3751 (class 0 OID 0)
-- Dependencies: 259
-- Name: oauth2_provider_grant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('oauth2_provider_grant_id_seq', 1, false);


--
-- TOC entry 3654 (class 0 OID 1297663)
-- Dependencies: 262
-- Data for Name: oauth2_provider_refreshtoken; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY oauth2_provider_refreshtoken (id, token, access_token_id, application_id, user_id) FROM stdin;
\.


--
-- TOC entry 3752 (class 0 OID 0)
-- Dependencies: 261
-- Name: oauth2_provider_refreshtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('oauth2_provider_refreshtoken_id_seq', 1, false);


--
-- TOC entry 3640 (class 0 OID 1297569)
-- Dependencies: 248
-- Data for Name: social_auth_association; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY social_auth_association (id, server_url, handle, secret, issued, lifetime, assoc_type) FROM stdin;
\.


--
-- TOC entry 3753 (class 0 OID 0)
-- Dependencies: 247
-- Name: social_auth_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('social_auth_association_id_seq', 1, false);


--
-- TOC entry 3642 (class 0 OID 1297580)
-- Dependencies: 250
-- Data for Name: social_auth_code; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY social_auth_code (id, email, code, verified) FROM stdin;
\.


--
-- TOC entry 3754 (class 0 OID 0)
-- Dependencies: 249
-- Name: social_auth_code_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('social_auth_code_id_seq', 1, false);


--
-- TOC entry 3644 (class 0 OID 1297588)
-- Dependencies: 252
-- Data for Name: social_auth_nonce; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
--

COPY social_auth_nonce (id, server_url, "timestamp", salt) FROM stdin;
\.


--
-- TOC entry 3755 (class 0 OID 0)
-- Dependencies: 251
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('social_auth_nonce_id_seq', 1, false);


--
-- TOC entry 3646 (class 0 OID 1297596)
-- Dependencies: 254
-- Data for Name: social_auth_usersocialauth; Type: TABLE DATA; Schema: public; Owner: tbzewllzbqfmem
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
12	facebook	1160023740706413	{"access_token": "EAAPCx8oZBoxoBAAFFziWWuKBIUaTZALNRol0p5wSpVONZBZCTnhYN7iDeLfYZCMkNYq6xw75mgdrKmmDIwe70QQwxaTDN2ZAQGslnPKo6Wlg9903QDgZAG1M7mCl9zlgbyxBrE6UGZBjDF8IzINVjQt1iq0nAAeenBYZD", "expires": null, "id": "1160023740706413"}	27
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
28	facebook	1144082712308478	{"access_token": "EAAPCx8oZBoxoBAHqHCWgSVBSZC4sZAGwZCBsKZC4QD1DE7bJkgQSzu2AwIZCNgUopp9mNqxPuaZBwmtRUuLGHfy9VfcydFiAZBhZBQ9leqnWiy6J2ueZChtnKZBvrCgqbDhkrpBlCojKgfbalm1ziZCtnbQ43o29mgVAdIKURXmFHvMdpwZDZD", "expires": null, "id": "1144082712308478"}	78
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
111	facebook	776212035888947	{"access_token": "EAAPCx8oZBoxoBAOeq8bZCaviB45L6ZBZA3UdZCDZBhHh88PTOfZANgPLCT02eXt3oxw7MRSpDrMkhZB6pidiZBaMVGZCZACooc4jQt8gbP1mmRokB1xTonhcsHEQqa4UFPZBRZCi7rKDkPc0E5l4YfRUlKnevx4b0zEzZA041VEZBj3t4LyegZDZD", "expires": null, "id": "776212035888947"}	381
112	facebook	1428562197156235	{"access_token": "EAAPCx8oZBoxoBALNqcnaTWnlJuywF89wGbou4lyPJAUSb3J9T5nkC2TKgEJKCpSAZApZB1ZAB3KnIyYR7A9FaKSb0JviT186vKUFQZAzaBjdwvdhHwiE4o4h6STIMgLSKXnCdFHgFC2DJ1CZCUYbyMLtODx38JVVIZD", "id": "1428562197156235", "expires": null}	383
122	facebook	1297608273663952	{"id": "1297608273663952", "access_token": "EAAPCx8oZBoxoBADTiCZAr8ud43PiXZAiH513pOPr8ENTHwDw86vS8V4gwLbUSe2aeRZAJOQ5uRTVRJYNUtG8QppWgRtr5pIKvTtYJs4gYDNdZBF9i5tfXw4AtZAwnaGJ4XGr88J6JuRjoSkkrNdHn2M6xqw4ZCFBFTQCEPe9036kwZDZD", "expires": null}	411
113	facebook	1005290666270965	{"access_token": "EAAPCx8oZBoxoBADf9BWzVuDTaSlOqGzyK6cPITIRq68wmD1XpjDQn8ZBixthwLN0nnqpfhMT9ztTwsWZBy25ZCp0ZCjJPvfgVZCnVWCse3PMATguKW0n7yD1gaxBVa5VFrXPzJYdctzGDXuOreY4jfIdWICPI3QHsZD", "expires": null, "id": "1005290666270965"}	384
127	facebook	1255052631259184	{"access_token": "EAAPCx8oZBoxoBAIv1J1scToQfmGFc8pHAjK4jTJP3c1s2FnYSHcoZByoG5Kn1wOFqY026JSdkRlIppiMiE2ZCLoti8QWiR6TV9ZALpejufh1U06mirqJhOjh3Mp6yyaSdEvFE2nh1zLJcEwg5uLV5jMcfhy5LgQZD", "id": "1255052631259184", "expires": null}	416
120	facebook	1674458255904202	{"id": "1674458255904202", "expires": null, "access_token": "EAAPCx8oZBoxoBAH4cjgN1wR5VioTZCIwwdWIeYTSc7C5vUEUEjatBcQ0nRZBxCi00iWgVaaeArvpDXRui7LGV4WTmZBoubpjuplMriBvY2f7EqS1ZAmDaXk3fH76aFhEHRzmx212G8QmMbthxC8YTTecH7bEY3bYZD"}	409
129	facebook	1367401263322886	{"access_token": "EAAPCx8oZBoxoBAEFuWRTyXY2x4JWZAZCaNExMJDlyOVN5sftyRW1zwgkis9NSePrmezFVEInNKGxRKLHHhKkvjFUgiI6Q2b34WnhTrgRMJzyvMBWBO9uYIK76GuZBlTkT3Ug3eDhTBnZCSLPZAMECsJglxT5YUfxANHnid2wUgsQZDZD", "expires": null, "id": "1367401263322886"}	420
116	facebook	1199866566777594	{"expires": null, "id": "1199866566777594", "access_token": "EAAPCx8oZBoxoBAMh4XX2l627mamUiwRgMZA0vQqFjZALu4BfamC5mIlByMhhJlvWHf68G1jiZBO9oBov3n1EZCKOCvFjGvGZAVTjxWZCk1IIzx0XkG5zu7ZB1HeZCLoxXJdiWvhvcVsqCHj2P5B1BmevkZC2mG9FV6v7yX8PO5B31z5QZDZD"}	398
115	facebook	1229029703847682	{"expires": null, "id": "1229029703847682", "access_token": "EAAPCx8oZBoxoBAGzTZBn234Ev3w5OOC4uXg8RTW2i0n3HUZCZBZB4p2mGQMFa3XYuhWiPy8aYKHxsON9nR7kyNYK7NqCPxZA2N9G6GZBOJH9fLDIerxmqfVDcTouXaKkqxkM6U4NOvTbUdQ0jKPfmZBZCie7oq397Iw4ZD"}	397
130	facebook	408200776224634	{"access_token": "EAAPCx8oZBoxoBAKfA82oc0WSk4X6QkXdB25e21Ikic32QbbtGPHWq9yFYAMdzcHgWOFZCoKu9ZBk8kf6rvgH5FAhmhdOvWEi318z7an1TTZAoJJgI7aboLlohCDbs1cNyX6NbAYXjqf9bm8GLb5hKnUyHDRrJkV7uE2G2SMIyAZDZD", "expires": null, "id": "408200776224634"}	425
137	facebook	1943658869213972	{"expires": null, "access_token": "EAAPCx8oZBoxoBAJoE1zvxxlAeY6VrgPLVBgOJRSCZAZBU2u6jSBMUbsz8dvKDHz9pbolKhFgZC6mhnA61roXYNXPZCS8wxERvd9ckno27peccHAhkLFOHeWaZA0kZCJqUA76eCU2yq1aU5ptCIFGbDfzBB8ClgxOukZD", "id": "1943658869213972"}	434
123	facebook	1354627287891214	{"expires": null, "access_token": "EAAPCx8oZBoxoBACMb8HEcVbMsGQZCTtZAple7ZAINhMKcGGUduHxtvOKAjoSMZCNqMxH3Hr7VctJtRDhDOLWHR8j8viWZAjQ5tddZBOeBLy2dnmNZCS7pmibHAxVa0r5IWwwv0DEwuDjt9qjGf5AZAzqvZAZCDK9LzdYGIZD", "id": "1354627287891214"}	412
131	facebook	199236873905864	{"access_token": "EAAPCx8oZBoxoBAMpZBxRHkuvI8BBrKvTAdNMPGVqcNgVqZBuuuBEdoaGE4Le3iuygu9YyvfbgJPOnha2kLCbFe4g1v9UOA6qsTBURMuIc5mRi0UU6qMFkS64sguNy4Cz0f6tZAZC79dRlZAZB3CKUGfT36uPPhYnJbCDZADT0ZCdbrAZDZD", "expires": null, "id": "199236873905864"}	427
124	facebook	10155176343770127	{"expires": null, "access_token": "EAAPCx8oZBoxoBAOdpl7cvcalcNqxuB7sjLe4ZBKclER7WoC04ZCSYcN7KOWfyiFaiuVLBSzoruddI9u2HJZBT8ZAVW69xbEq02wpWZCI6Sd1K7UeZAukB6EIbSdvZBOuNlfK63NQUEmxQnubYZBt0sJR0pFZB5IJZBWPCAZD", "id": "10155176343770127"}	413
141	facebook	104032630142184	{"id": "104032630142184", "access_token": "EAAPCx8oZBoxoBAHUH06EpfMrGZAJMaIWibCUa1lAPyKaX9QklmW3i8V8gJP5SmuNb3ZCUSeUtoKD5kSGIxed6RtG81ZANb4ELZAuAm1FZAc8qcZCMCj2mnV6Ikmte7I68ZBtHlJPUmfsZAJIZAmLGUof9XCZB6SNDK5xSzSKzAHFNb5UAZDZD", "expires": null}	375
132	facebook	1164387867020151	{"access_token": "EAAPCx8oZBoxoBAKb9TRYCZBWa6CgERU4V2omzPx3t1fCL9LsG9kqdvQ7BGabizZCtYIANVoOqhCT0hRgXtv4J6mOySZC41tuskE8BayAWZBbWKEWapZC9Q5p8GoThXNsSZClViQ2R24SeYEKgzhb7012Cg6qr3V7SiVtKtwTnBWdQZDZD", "expires": null, "id": "1164387867020151"}	428
133	facebook	10202587635889935	{"id": "10202587635889935", "access_token": "EAAPCx8oZBoxoBAEmClfsK3ShtUMNNNNz3sL1ZAGrmQXESP0N92h4R6MzSVuAEWPLqgfU17NkNx6CwJRZAi4WpnyYVZAzT3LgjtnQIN9YZBdozRwOjOW91XDXEx3eYg6IEqzi85K5ohue8kV4QinuhofpcrLDeZAZBcZD", "expires": null}	426
134	facebook	10154729216462982	{"access_token": "EAAPCx8oZBoxoBAIIZBQW8ifYhjEs8CzoX6HmYs1NnxZBCXTNjxvXBz2MIAhAEL0jhQN28RAPUkK5AMGeMCO8oCvHjVuVYfZAIu0ykL9pv2Rw4ZBSjrkwPPPxBua4voYtWuwVnYkcxx8Ru3NuqpTfzuyJ9PNtrFsMZD", "expires": null, "id": "10154729216462982"}	431
135	facebook	1267170786712866	{"expires": null, "access_token": "EAAPCx8oZBoxoBALhqMyAXEK4nukAg9NSf9ivi8tWlmmnbZC5p2QFJSJGhkRW4FRZAZBZCc5KfNRDulKAF3ZB1XHBwkGEKu7FZCmZCZBcBxPoFoISsn0xSJbzzMGZCoB8aeir29gniJJbJp4FKKW7KiZBxEsob4ZBmAMb1M0ZD", "id": "1267170786712866"}	432
145	facebook	791671407650589	{"access_token": "EAAPCx8oZBoxoBAOpno9gnYjoOtpW2svYhZCetJywuEzhRAbDvcJ5oZCpSYGGQJ9rdDdlDh8nceR4J7AM3ifsBN47G90u0JCbrJUcxZCDvlURL0cVWSHcbh9OBZCRHUYZASpU8ZB7DnMnm20BhG5bjdBUkgKVMUSiso0L8LG4jZCmlwZDZD", "expires": null, "id": "791671407650589"}	445
139	facebook	1128645050511711	{"id": "1128645050511711", "expires": null, "access_token": "EAAPCx8oZBoxoBAMwBgZB3LZCK55iRkldoIZANWw25l6roZBEyHlEbjFSiNAGEUwnyvDCZCjwN76Ga7yBhvZAEfyTYZAwtXcTgS3HUWYbqrgZBGZADEH1UoQZCFbv0pY9ZAurgkkLJuZBhH3pJrcWgDzdQTV6P0lT29UimMZCMZD"}	439
142	facebook	10206619239558637	{"access_token": "EAAPCx8oZBoxoBAFC7dcZBsdAL1jPWnjPBZBeWJLdbCbeqfrxcVBHRCSUt18047VM95zwuGV1vaK4TOZBDRKQv6TBxNAgayVwx6N0RwUEKeB0TblQL76Yiw1IzmvZCHZC5869g2RMn9rBYG265o3KQxiZBzZBaUst8xEZD", "expires": null, "id": "10206619239558637"}	442
144	facebook	1409191902476060	{"expires": null, "access_token": "EAAPCx8oZBoxoBAC2nUBgZAP7LzMZCWSoNsIJBNFOVC7QiqkEhygHqT6lhNg6JaTOdoDjRome9vWFKJIXZBgYXr5I3Q6PZAG7uQmW9WZCsWys2qO7RvgdRiVorIZBRkIKHmE4zvsnBdJA5GBJcQ8ZAEvZC8cImh3EXM5iwHcREHfTMOgZDZD", "id": "1409191902476060"}	444
143	facebook	794870100660672	{"expires": null, "access_token": "EAAPCx8oZBoxoBAGowfisG5nzm81ZBQcVmg5ivDKAH7nObVhPaZBCQpq3p0aq9i29OZA06yNZCkVwzezRuyj3IH2M7ZCp7zGEPJHbTEV328YJix4HwWdbSx12t2nWTHFpO4lsBuDesVPUauaWTxgN66ma0wynPxB5TNgyDEzmoxVgZDZD", "id": "794870100660672"}	443
136	facebook	1331575496908620	{"expires": null, "id": "1331575496908620", "access_token": "EAAPCx8oZBoxoBAIaJf6YRso3EEnlpQd9BiBSLxc5zY5k3d2yxIZC1QqsBlJUipUXC2gTnqYvwRYJk1hMtKHF2ZCJiKOz7J72kqKUNbAiJZCQqy42Ek9TsILUdUv7focldZATZC1CUZCaVtI6ZBFWKRtrnZADr6ZAsFHwNGeC5uku7clAZDZD"}	433
146	facebook	733430510164824	{"expires": null, "access_token": "EAAPCx8oZBoxoBAIeuvMylZBTqgMy9WUnZCftGNWdjeBZAW6blIaBjh2wRPCVbS25O9mkJXuuSPvVmuLs1K4gxHHUf9vsnWo6EpBKMliRaxiB3HzR9ZAwcxdMaUIU4VoUNwaVSaiqjqXDFC0K5ZBnh2U1p9G643ibcZD", "id": "733430510164824"}	446
138	facebook	1676786935665133	{"access_token": "EAAPCx8oZBoxoBAJgxb9G2AeOWJ2GaflSHfreNFhsdYuQoXFcFG9D5QbEzPlud9iZAyWZB7Rz5t35OQ4Vp0f2OfD5cEsm63sV2CED8zNz4vGFaKj5iTCRX3kxwuquIZAm7zq7EjXZCJBWWZC9vHyvfs6SZCmvDEqlOwZD", "expires": null, "id": "1676786935665133"}	435
147	facebook	1498528600207112	{"expires": null, "access_token": "EAAPCx8oZBoxoBAHH9GzXECjxZC2LDnMSSv5gQVZALPCexoh9pmRL5xPwpYjAJKGE9ybukVCng1yNtMFZCLKiz7UoLhXzINsvXwVV1XQ15j4xIhZAFJiqJBWeFVhGE7UwNj5uovkZAWaq52CYDFEf9klmGTK2EyAgv7RfF16fZCurwZDZD", "id": "1498528600207112"}	450
148	facebook	1479094422103038	{"access_token": "EAAPCx8oZBoxoBALzPZAMnCDAh33gmZCpesYhtyTqh102dT00P8ZANyLBRYtEWYoGjerCf0KfHpRXdvnZAw3VKu1R6ZAGx684tGDWNEzrpySbFK3cU5pytfAB1R0DylWWhCmPIk4nspphkL0v2DGLz4ZA0SKQq8qNPdO3WLPZBxrvZAwZDZD", "expires": null, "id": "1479094422103038"}	375
149	facebook	683135375206735	{"id": "683135375206735", "access_token": "EAAPCx8oZBoxoBAO7R0IzPWE7JLPXAbqxbw9AYWvRdZCqkIjLxCb0XfgPrrnhLtv4sXFZBZAZAP13MawsW7FgwZAjF87MXZAJplRnLuznr1VoyHtwyiQmezvF5sbS8xcM1B7iQ8hX8paUi9YNwoPPuJYbu5kh3jhzmA2HSM2YdcNrwZDZD", "expires": null}	458
150	facebook	1316240538444615	{"id": "1316240538444615", "access_token": "EAAPCx8oZBoxoBAOZCqCtpAKO3fptVTgjc46DArUnj0TNw2za9uL1uC7irePw5ieYehf1rmWHkXVWyjMiLiWtyOubb7Nlgt31xizet7fH6wKyjcOJ3qMU0LIZCcM2LR2Xu9xN9eCkhcvQ6JU9PQXhd7ZCKMV3davIF6UPVbM1QkJmeuxcr3BA", "expires": null}	459
\.


--
-- TOC entry 3756 (class 0 OID 0)
-- Dependencies: 253
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tbzewllzbqfmem
--

SELECT pg_catalog.setval('social_auth_usersocialauth_id_seq', 150, true);


--
-- TOC entry 3214 (class 2606 OID 1297032)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3220 (class 2606 OID 1297061)
-- Name: auth_group_permissions auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3222 (class 2606 OID 1297040)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3216 (class 2606 OID 1297030)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3209 (class 2606 OID 1297047)
-- Name: auth_permission auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3211 (class 2606 OID 1297022)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3233 (class 2606 OID 1297084)
-- Name: core_clickstoshowmore core_clickstoshowmore_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_clickstoshowmore
    ADD CONSTRAINT core_clickstoshowmore_pkey PRIMARY KEY (id);


--
-- TOC entry 3237 (class 2606 OID 1297304)
-- Name: core_endorsment core_endorsment_hirer_id_a6fd45fa_uniq; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_endorsment
    ADD CONSTRAINT core_endorsment_hirer_id_a6fd45fa_uniq UNIQUE (hirer_id, worker_id);


--
-- TOC entry 3239 (class 2606 OID 1297092)
-- Name: core_endorsment core_endorsment_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_endorsment
    ADD CONSTRAINT core_endorsment_pkey PRIMARY KEY (id);


--
-- TOC entry 3242 (class 2606 OID 1297100)
-- Name: core_evaluationparameter core_evaluationparameter_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_evaluationparameter
    ADD CONSTRAINT core_evaluationparameter_pkey PRIMARY KEY (id);


--
-- TOC entry 3244 (class 2606 OID 1297264)
-- Name: core_evaluationtemplate core_evaluationtemplate_category_id_key; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_evaluationtemplate
    ADD CONSTRAINT core_evaluationtemplate_category_id_key UNIQUE (category_id);


--
-- TOC entry 3247 (class 2606 OID 1297110)
-- Name: core_evaluationtemplate core_evaluationtemplate_name_key; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_evaluationtemplate
    ADD CONSTRAINT core_evaluationtemplate_name_key UNIQUE (name);


--
-- TOC entry 3249 (class 2606 OID 1297108)
-- Name: core_evaluationtemplate core_evaluationtemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_evaluationtemplate
    ADD CONSTRAINT core_evaluationtemplate_pkey PRIMARY KEY (id);


--
-- TOC entry 3252 (class 2606 OID 1297118)
-- Name: core_evaluationtemplateitem core_evaluationtemplateitem_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_evaluationtemplateitem
    ADD CONSTRAINT core_evaluationtemplateitem_pkey PRIMARY KEY (id);


--
-- TOC entry 3254 (class 2606 OID 1297126)
-- Name: core_groupservicecategory core_groupservicecategory_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_groupservicecategory
    ADD CONSTRAINT core_groupservicecategory_pkey PRIMARY KEY (id);


--
-- TOC entry 3319 (class 2606 OID 1297492)
-- Name: core_indicouser_categories core_indicouser_categories_indicouser_id_99b54b7e_uniq; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_categories
    ADD CONSTRAINT core_indicouser_categories_indicouser_id_99b54b7e_uniq UNIQUE (indicouser_id, servicecategory_id);


--
-- TOC entry 3321 (class 2606 OID 1297272)
-- Name: core_indicouser_categories core_indicouser_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_categories
    ADD CONSTRAINT core_indicouser_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3224 (class 2606 OID 1297274)
-- Name: core_indicouser core_indicouser_documents_id_key; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser
    ADD CONSTRAINT core_indicouser_documents_id_key UNIQUE (documents_id);


--
-- TOC entry 3227 (class 2606 OID 1297076)
-- Name: core_indicouser core_indicouser_email_key; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser
    ADD CONSTRAINT core_indicouser_email_key UNIQUE (email);


--
-- TOC entry 3325 (class 2606 OID 1297511)
-- Name: core_indicouser_groups core_indicouser_groups_indicouser_id_712f5a70_uniq; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_groups
    ADD CONSTRAINT core_indicouser_groups_indicouser_id_712f5a70_uniq UNIQUE (indicouser_id, group_id);


--
-- TOC entry 3327 (class 2606 OID 1297282)
-- Name: core_indicouser_groups core_indicouser_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_groups
    ADD CONSTRAINT core_indicouser_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3229 (class 2606 OID 1297074)
-- Name: core_indicouser core_indicouser_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser
    ADD CONSTRAINT core_indicouser_pkey PRIMARY KEY (id);


--
-- TOC entry 3331 (class 2606 OID 1297525)
-- Name: core_indicouser_skills core_indicouser_skills_indicouser_id_cbb70f6a_uniq; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_skills
    ADD CONSTRAINT core_indicouser_skills_indicouser_id_cbb70f6a_uniq UNIQUE (indicouser_id, skill_id);


--
-- TOC entry 3333 (class 2606 OID 1297290)
-- Name: core_indicouser_skills core_indicouser_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_skills
    ADD CONSTRAINT core_indicouser_skills_pkey PRIMARY KEY (id);


--
-- TOC entry 3337 (class 2606 OID 1297539)
-- Name: core_indicouser_user_permissions core_indicouser_user_permissions_indicouser_id_6eb0b9b1_uniq; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_user_permissions
    ADD CONSTRAINT core_indicouser_user_permissions_indicouser_id_6eb0b9b1_uniq UNIQUE (indicouser_id, permission_id);


--
-- TOC entry 3339 (class 2606 OID 1297298)
-- Name: core_indicouser_user_permissions core_indicouser_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_user_permissions
    ADD CONSTRAINT core_indicouser_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3257 (class 2606 OID 1297134)
-- Name: core_notification core_notification_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_notification
    ADD CONSTRAINT core_notification_pkey PRIMARY KEY (id);


--
-- TOC entry 3260 (class 2606 OID 1297145)
-- Name: core_place core_place_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_place
    ADD CONSTRAINT core_place_pkey PRIMARY KEY (id);


--
-- TOC entry 3263 (class 2606 OID 1297153)
-- Name: core_reference core_reference_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_reference
    ADD CONSTRAINT core_reference_pkey PRIMARY KEY (id);


--
-- TOC entry 3270 (class 2606 OID 1297169)
-- Name: core_relationship_friends core_relationship_friends_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_relationship_friends
    ADD CONSTRAINT core_relationship_friends_pkey PRIMARY KEY (id);


--
-- TOC entry 3272 (class 2606 OID 1297366)
-- Name: core_relationship_friends core_relationship_friends_relationship_id_9cb01e48_uniq; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_relationship_friends
    ADD CONSTRAINT core_relationship_friends_relationship_id_9cb01e48_uniq UNIQUE (relationship_id, indicouser_id);


--
-- TOC entry 3266 (class 2606 OID 1297161)
-- Name: core_relationship core_relationship_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_relationship
    ADD CONSTRAINT core_relationship_pkey PRIMARY KEY (id);


--
-- TOC entry 3275 (class 2606 OID 1297177)
-- Name: core_servicecategory core_servicecategory_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicecategory
    ADD CONSTRAINT core_servicecategory_pkey PRIMARY KEY (id);


--
-- TOC entry 3278 (class 2606 OID 1297185)
-- Name: core_servicediscount core_servicediscount_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicediscount
    ADD CONSTRAINT core_servicediscount_pkey PRIMARY KEY (id);


--
-- TOC entry 3283 (class 2606 OID 1297193)
-- Name: core_servicemessage core_servicemessage_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicemessage
    ADD CONSTRAINT core_servicemessage_pkey PRIMARY KEY (id);


--
-- TOC entry 3287 (class 2606 OID 1297201)
-- Name: core_serviceprovided core_serviceprovided_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_serviceprovided
    ADD CONSTRAINT core_serviceprovided_pkey PRIMARY KEY (id);


--
-- TOC entry 3292 (class 2606 OID 1297212)
-- Name: core_servicerequest core_servicerequest_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicerequest
    ADD CONSTRAINT core_servicerequest_pkey PRIMARY KEY (id);


--
-- TOC entry 3295 (class 2606 OID 1297220)
-- Name: core_servicetype core_servicetype_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicetype
    ADD CONSTRAINT core_servicetype_pkey PRIMARY KEY (id);


--
-- TOC entry 3298 (class 2606 OID 1297228)
-- Name: core_skill core_skill_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_skill
    ADD CONSTRAINT core_skill_pkey PRIMARY KEY (id);


--
-- TOC entry 3300 (class 2606 OID 1297238)
-- Name: core_subscription core_subscription_candidate_id_key; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_subscription
    ADD CONSTRAINT core_subscription_candidate_id_key UNIQUE (candidate_id);


--
-- TOC entry 3302 (class 2606 OID 1297236)
-- Name: core_subscription core_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_subscription
    ADD CONSTRAINT core_subscription_pkey PRIMARY KEY (id);


--
-- TOC entry 3304 (class 2606 OID 1297246)
-- Name: core_userdocuments core_userdocuments_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_userdocuments
    ADD CONSTRAINT core_userdocuments_pkey PRIMARY KEY (id);


--
-- TOC entry 3308 (class 2606 OID 1297302)
-- Name: core_workerevaluation core_workerevaluation_hirer_id_73a9847b_uniq; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_workerevaluation
    ADD CONSTRAINT core_workerevaluation_hirer_id_73a9847b_uniq UNIQUE (hirer_id, worker_id);


--
-- TOC entry 3310 (class 2606 OID 1297254)
-- Name: core_workerevaluation core_workerevaluation_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_workerevaluation
    ADD CONSTRAINT core_workerevaluation_pkey PRIMARY KEY (id);


--
-- TOC entry 3313 (class 2606 OID 1297262)
-- Name: core_workerevaluationitem core_workerevaluationitem_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_workerevaluationitem
    ADD CONSTRAINT core_workerevaluationitem_pkey PRIMARY KEY (id);


--
-- TOC entry 3315 (class 2606 OID 1297300)
-- Name: core_workerevaluationitem core_workerevaluationitem_workerEvaluation_id_6b79d8ea_uniq; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_workerevaluationitem
    ADD CONSTRAINT "core_workerevaluationitem_workerEvaluation_id_6b79d8ea_uniq" UNIQUE ("workerEvaluation_id", item);


--
-- TOC entry 3343 (class 2606 OID 1297553)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3204 (class 2606 OID 1297014)
-- Name: django_content_type django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3206 (class 2606 OID 1297012)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3202 (class 2606 OID 1297004)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3391 (class 2606 OID 1297757)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3395 (class 2606 OID 1297769)
-- Name: django_site django_site_domain_key; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_domain_key UNIQUE (domain);


--
-- TOC entry 3397 (class 2606 OID 1297767)
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- TOC entry 3373 (class 2606 OID 1297649)
-- Name: oauth2_provider_accesstoken oauth2_provider_accesstoken_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_pkey PRIMARY KEY (id);


--
-- TOC entry 3364 (class 2606 OID 1297638)
-- Name: oauth2_provider_application oauth2_provider_application_client_id_key; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_client_id_key UNIQUE (client_id);


--
-- TOC entry 3368 (class 2606 OID 1297636)
-- Name: oauth2_provider_application oauth2_provider_application_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_pkey PRIMARY KEY (id);


--
-- TOC entry 3380 (class 2606 OID 1297660)
-- Name: oauth2_provider_grant oauth2_provider_grant_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_pkey PRIMARY KEY (id);


--
-- TOC entry 3384 (class 2606 OID 1297670)
-- Name: oauth2_provider_refreshtoken oauth2_provider_refreshtoken_access_token_id_key; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_access_token_id_key UNIQUE (access_token_id);


--
-- TOC entry 3387 (class 2606 OID 1297668)
-- Name: oauth2_provider_refreshtoken oauth2_provider_refreshtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_pkey PRIMARY KEY (id);


--
-- TOC entry 3403 (class 2606 OID 5319331)
-- Name: core_indicouser_work_zones pk_core_indicouser_workzone_id; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_work_zones
    ADD CONSTRAINT pk_core_indicouser_workzone_id PRIMARY KEY (id);


--
-- TOC entry 3399 (class 2606 OID 4897075)
-- Name: core_phonenumber pk_core_phonenumber; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_phonenumber
    ADD CONSTRAINT pk_core_phonenumber PRIMARY KEY (id);


--
-- TOC entry 3401 (class 2606 OID 5319323)
-- Name: core_workzone pk_core_work_zone; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_workzone
    ADD CONSTRAINT pk_core_work_zone PRIMARY KEY (id);


--
-- TOC entry 3345 (class 2606 OID 1297577)
-- Name: social_auth_association social_auth_association_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY social_auth_association
    ADD CONSTRAINT social_auth_association_pkey PRIMARY KEY (id);


--
-- TOC entry 3349 (class 2606 OID 1297625)
-- Name: social_auth_code social_auth_code_email_801b2d02_uniq; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY social_auth_code
    ADD CONSTRAINT social_auth_code_email_801b2d02_uniq UNIQUE (email, code);


--
-- TOC entry 3351 (class 2606 OID 1297585)
-- Name: social_auth_code social_auth_code_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY social_auth_code
    ADD CONSTRAINT social_auth_code_pkey PRIMARY KEY (id);


--
-- TOC entry 3353 (class 2606 OID 1297593)
-- Name: social_auth_nonce social_auth_nonce_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_pkey PRIMARY KEY (id);


--
-- TOC entry 3355 (class 2606 OID 1297610)
-- Name: social_auth_nonce social_auth_nonce_server_url_f6284463_uniq; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_server_url_f6284463_uniq UNIQUE (server_url, "timestamp", salt);


--
-- TOC entry 3358 (class 2606 OID 1297604)
-- Name: social_auth_usersocialauth social_auth_usersocialauth_pkey; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_pkey PRIMARY KEY (id);


--
-- TOC entry 3360 (class 2606 OID 1297606)
-- Name: social_auth_usersocialauth social_auth_usersocialauth_provider_e6b5e668_uniq; Type: CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_provider_e6b5e668_uniq UNIQUE (provider, uid);


--
-- TOC entry 3212 (class 1259 OID 1297049)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3217 (class 1259 OID 1297062)
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- TOC entry 3218 (class 1259 OID 1297063)
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3207 (class 1259 OID 1297048)
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- TOC entry 3230 (class 1259 OID 1297317)
-- Name: core_clickstoshowmore_ce77e6ef; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_clickstoshowmore_ce77e6ef ON core_clickstoshowmore USING btree (worker_id);


--
-- TOC entry 3231 (class 1259 OID 1297316)
-- Name: core_clickstoshowmore_e49e0596; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_clickstoshowmore_e49e0596 ON core_clickstoshowmore USING btree (hirer_id);


--
-- TOC entry 3234 (class 1259 OID 1297329)
-- Name: core_endorsment_ce77e6ef; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_endorsment_ce77e6ef ON core_endorsment USING btree (worker_id);


--
-- TOC entry 3235 (class 1259 OID 1297328)
-- Name: core_endorsment_e49e0596; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_endorsment_e49e0596 ON core_endorsment USING btree (hirer_id);


--
-- TOC entry 3240 (class 1259 OID 1297475)
-- Name: core_evaluationparameter_b0dc1e29; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_evaluationparameter_b0dc1e29 ON core_evaluationparameter USING btree (service_id);


--
-- TOC entry 3245 (class 1259 OID 1297330)
-- Name: core_evaluationtemplate_name_d5f28d26_like; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_evaluationtemplate_name_d5f28d26_like ON core_evaluationtemplate USING btree (name varchar_pattern_ops);


--
-- TOC entry 3250 (class 1259 OID 1297336)
-- Name: core_evaluationtemplateitem_bc7b74e7; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_evaluationtemplateitem_bc7b74e7 ON core_evaluationtemplateitem USING btree (evaluation_template_id);


--
-- TOC entry 3316 (class 1259 OID 1297494)
-- Name: core_indicouser_categories_033f6804; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_indicouser_categories_033f6804 ON core_indicouser_categories USING btree (servicecategory_id);


--
-- TOC entry 3317 (class 1259 OID 1297493)
-- Name: core_indicouser_categories_48624afe; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_indicouser_categories_48624afe ON core_indicouser_categories USING btree (indicouser_id);


--
-- TOC entry 3225 (class 1259 OID 1297305)
-- Name: core_indicouser_email_0537edef_like; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_indicouser_email_0537edef_like ON core_indicouser USING btree (email varchar_pattern_ops);


--
-- TOC entry 3322 (class 1259 OID 1297513)
-- Name: core_indicouser_groups_0e939a4f; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_indicouser_groups_0e939a4f ON core_indicouser_groups USING btree (group_id);


--
-- TOC entry 3323 (class 1259 OID 1297512)
-- Name: core_indicouser_groups_48624afe; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_indicouser_groups_48624afe ON core_indicouser_groups USING btree (indicouser_id);


--
-- TOC entry 3328 (class 1259 OID 1297526)
-- Name: core_indicouser_skills_48624afe; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_indicouser_skills_48624afe ON core_indicouser_skills USING btree (indicouser_id);


--
-- TOC entry 3329 (class 1259 OID 1297527)
-- Name: core_indicouser_skills_d38d4c39; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_indicouser_skills_d38d4c39 ON core_indicouser_skills USING btree (skill_id);


--
-- TOC entry 3334 (class 1259 OID 1297540)
-- Name: core_indicouser_user_permissions_48624afe; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_indicouser_user_permissions_48624afe ON core_indicouser_user_permissions USING btree (indicouser_id);


--
-- TOC entry 3335 (class 1259 OID 1297541)
-- Name: core_indicouser_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_indicouser_user_permissions_8373b171 ON core_indicouser_user_permissions USING btree (permission_id);


--
-- TOC entry 3255 (class 1259 OID 1297342)
-- Name: core_notification_f4b39993; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_notification_f4b39993 ON core_notification USING btree (to_id);


--
-- TOC entry 3258 (class 1259 OID 1297348)
-- Name: core_place_5e7b1936; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_place_5e7b1936 ON core_place USING btree (owner_id);


--
-- TOC entry 3261 (class 1259 OID 1297464)
-- Name: core_reference_ef42673f; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_reference_ef42673f ON core_reference USING btree (subscription_id);


--
-- TOC entry 3264 (class 1259 OID 1297354)
-- Name: core_relationship_905979e3; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_relationship_905979e3 ON core_relationship USING btree (user_one_id);


--
-- TOC entry 3267 (class 1259 OID 1297368)
-- Name: core_relationship_friends_48624afe; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_relationship_friends_48624afe ON core_relationship_friends USING btree (indicouser_id);


--
-- TOC entry 3268 (class 1259 OID 1297367)
-- Name: core_relationship_friends_fad43076; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_relationship_friends_fad43076 ON core_relationship_friends USING btree (relationship_id);


--
-- TOC entry 3273 (class 1259 OID 1297374)
-- Name: core_servicecategory_0e939a4f; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_servicecategory_0e939a4f ON core_servicecategory USING btree (group_id);


--
-- TOC entry 3276 (class 1259 OID 1297458)
-- Name: core_servicediscount_1c39d0e3; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_servicediscount_1c39d0e3 ON core_servicediscount USING btree (service_provided_id);


--
-- TOC entry 3279 (class 1259 OID 1297386)
-- Name: core_servicemessage_924b1846; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_servicemessage_924b1846 ON core_servicemessage USING btree (sender_id);


--
-- TOC entry 3280 (class 1259 OID 1297385)
-- Name: core_servicemessage_af4c5c15; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_servicemessage_af4c5c15 ON core_servicemessage USING btree (destinatary_id);


--
-- TOC entry 3281 (class 1259 OID 1297452)
-- Name: core_servicemessage_b0dc1e29; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_servicemessage_b0dc1e29 ON core_servicemessage USING btree (service_id);


--
-- TOC entry 3284 (class 1259 OID 1297440)
-- Name: core_serviceprovided_8f1d2d79; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_serviceprovided_8f1d2d79 ON core_serviceprovided USING btree (service_type_id);


--
-- TOC entry 3285 (class 1259 OID 1297446)
-- Name: core_serviceprovided_ce77e6ef; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_serviceprovided_ce77e6ef ON core_serviceprovided USING btree (worker_id);


--
-- TOC entry 3288 (class 1259 OID 1297404)
-- Name: core_servicerequest_1c39d0e3; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_servicerequest_1c39d0e3 ON core_servicerequest USING btree (service_provided_id);


--
-- TOC entry 3289 (class 1259 OID 1297403)
-- Name: core_servicerequest_5e7b1936; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_servicerequest_5e7b1936 ON core_servicerequest USING btree (owner_id);


--
-- TOC entry 3290 (class 1259 OID 1297402)
-- Name: core_servicerequest_ea8e5d12; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_servicerequest_ea8e5d12 ON core_servicerequest USING btree (address_id);


--
-- TOC entry 3293 (class 1259 OID 1297410)
-- Name: core_servicetype_87a4bca1; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_servicetype_87a4bca1 ON core_servicetype USING btree (service_category_id);


--
-- TOC entry 3296 (class 1259 OID 1297416)
-- Name: core_skill_b583a629; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_skill_b583a629 ON core_skill USING btree (category_id);


--
-- TOC entry 3305 (class 1259 OID 1297433)
-- Name: core_workerevaluation_ce77e6ef; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_workerevaluation_ce77e6ef ON core_workerevaluation USING btree (worker_id);


--
-- TOC entry 3306 (class 1259 OID 1297432)
-- Name: core_workerevaluation_e49e0596; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_workerevaluation_e49e0596 ON core_workerevaluation USING btree (hirer_id);


--
-- TOC entry 3311 (class 1259 OID 1297439)
-- Name: core_workerevaluationitem_74282563; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX core_workerevaluationitem_74282563 ON core_workerevaluationitem USING btree ("workerEvaluation_id");


--
-- TOC entry 3340 (class 1259 OID 1297564)
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- TOC entry 3341 (class 1259 OID 1297565)
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- TOC entry 3389 (class 1259 OID 1297758)
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- TOC entry 3392 (class 1259 OID 1297759)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3393 (class 1259 OID 1297770)
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX django_site_domain_a2e37b91_like ON django_site USING btree (domain varchar_pattern_ops);


--
-- TOC entry 3369 (class 1259 OID 1297691)
-- Name: oauth2_provider_accesstoken_6bc0a4eb; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX oauth2_provider_accesstoken_6bc0a4eb ON oauth2_provider_accesstoken USING btree (application_id);


--
-- TOC entry 3370 (class 1259 OID 1297690)
-- Name: oauth2_provider_accesstoken_94a08da1; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX oauth2_provider_accesstoken_94a08da1 ON oauth2_provider_accesstoken USING btree (token);


--
-- TOC entry 3371 (class 1259 OID 1297692)
-- Name: oauth2_provider_accesstoken_e8701ad4; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX oauth2_provider_accesstoken_e8701ad4 ON oauth2_provider_accesstoken USING btree (user_id);


--
-- TOC entry 3374 (class 1259 OID 1297693)
-- Name: oauth2_provider_accesstoken_token_8af090f8_like; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX oauth2_provider_accesstoken_token_8af090f8_like ON oauth2_provider_accesstoken USING btree (token varchar_pattern_ops);


--
-- TOC entry 3361 (class 1259 OID 1297676)
-- Name: oauth2_provider_application_9d667c2b; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX oauth2_provider_application_9d667c2b ON oauth2_provider_application USING btree (client_secret);


--
-- TOC entry 3362 (class 1259 OID 1297678)
-- Name: oauth2_provider_application_client_id_03f0cc84_like; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX oauth2_provider_application_client_id_03f0cc84_like ON oauth2_provider_application USING btree (client_id varchar_pattern_ops);


--
-- TOC entry 3365 (class 1259 OID 1297679)
-- Name: oauth2_provider_application_client_secret_53133678_like; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX oauth2_provider_application_client_secret_53133678_like ON oauth2_provider_application USING btree (client_secret varchar_pattern_ops);


--
-- TOC entry 3366 (class 1259 OID 1297677)
-- Name: oauth2_provider_application_e8701ad4; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX oauth2_provider_application_e8701ad4 ON oauth2_provider_application USING btree (user_id);


--
-- TOC entry 3375 (class 1259 OID 1297705)
-- Name: oauth2_provider_grant_6bc0a4eb; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX oauth2_provider_grant_6bc0a4eb ON oauth2_provider_grant USING btree (application_id);


--
-- TOC entry 3376 (class 1259 OID 1297704)
-- Name: oauth2_provider_grant_c1336794; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX oauth2_provider_grant_c1336794 ON oauth2_provider_grant USING btree (code);


--
-- TOC entry 3377 (class 1259 OID 1297707)
-- Name: oauth2_provider_grant_code_49ab4ddf_like; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX oauth2_provider_grant_code_49ab4ddf_like ON oauth2_provider_grant USING btree (code varchar_pattern_ops);


--
-- TOC entry 3378 (class 1259 OID 1297706)
-- Name: oauth2_provider_grant_e8701ad4; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX oauth2_provider_grant_e8701ad4 ON oauth2_provider_grant USING btree (user_id);


--
-- TOC entry 3381 (class 1259 OID 1297724)
-- Name: oauth2_provider_refreshtoken_6bc0a4eb; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX oauth2_provider_refreshtoken_6bc0a4eb ON oauth2_provider_refreshtoken USING btree (application_id);


--
-- TOC entry 3382 (class 1259 OID 1297723)
-- Name: oauth2_provider_refreshtoken_94a08da1; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX oauth2_provider_refreshtoken_94a08da1 ON oauth2_provider_refreshtoken USING btree (token);


--
-- TOC entry 3385 (class 1259 OID 1297725)
-- Name: oauth2_provider_refreshtoken_e8701ad4; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX oauth2_provider_refreshtoken_e8701ad4 ON oauth2_provider_refreshtoken USING btree (user_id);


--
-- TOC entry 3388 (class 1259 OID 1297726)
-- Name: oauth2_provider_refreshtoken_token_d090daa4_like; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX oauth2_provider_refreshtoken_token_d090daa4_like ON oauth2_provider_refreshtoken USING btree (token varchar_pattern_ops);


--
-- TOC entry 3346 (class 1259 OID 1297611)
-- Name: social_auth_code_c1336794; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX social_auth_code_c1336794 ON social_auth_code USING btree (code);


--
-- TOC entry 3347 (class 1259 OID 1297612)
-- Name: social_auth_code_code_a2393167_like; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX social_auth_code_code_a2393167_like ON social_auth_code USING btree (code varchar_pattern_ops);


--
-- TOC entry 3356 (class 1259 OID 1297618)
-- Name: social_auth_usersocialauth_e8701ad4; Type: INDEX; Schema: public; Owner: tbzewllzbqfmem
--

CREATE INDEX social_auth_usersocialauth_e8701ad4 ON social_auth_usersocialauth USING btree (user_id);


--
-- TOC entry 3406 (class 2606 OID 1297055)
-- Name: auth_group_permissions auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3405 (class 2606 OID 1297050)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3404 (class 2606 OID 1297041)
-- Name: auth_permission auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3414 (class 2606 OID 1297331)
-- Name: core_evaluationtemplateitem c_evaluation_template_id_2c27651e_fk_core_evaluationtemplate_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_evaluationtemplateitem
    ADD CONSTRAINT c_evaluation_template_id_2c27651e_fk_core_evaluationtemplate_id FOREIGN KEY (evaluation_template_id) REFERENCES core_evaluationtemplate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3408 (class 2606 OID 1297306)
-- Name: core_clickstoshowmore core_clickstoshowmore_hirer_id_dc9c5152_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_clickstoshowmore
    ADD CONSTRAINT core_clickstoshowmore_hirer_id_dc9c5152_fk_core_indicouser_id FOREIGN KEY (hirer_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3409 (class 2606 OID 1297311)
-- Name: core_clickstoshowmore core_clickstoshowmore_worker_id_fbe0ed0b_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_clickstoshowmore
    ADD CONSTRAINT core_clickstoshowmore_worker_id_fbe0ed0b_fk_core_indicouser_id FOREIGN KEY (worker_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3410 (class 2606 OID 1297318)
-- Name: core_endorsment core_endorsment_hirer_id_e6340758_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_endorsment
    ADD CONSTRAINT core_endorsment_hirer_id_e6340758_fk_core_indicouser_id FOREIGN KEY (hirer_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3411 (class 2606 OID 1297323)
-- Name: core_endorsment core_endorsment_worker_id_d5d8a5d5_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_endorsment
    ADD CONSTRAINT core_endorsment_worker_id_d5d8a5d5_fk_core_indicouser_id FOREIGN KEY (worker_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3413 (class 2606 OID 1297470)
-- Name: core_evaluationtemplate core_evaluation_category_id_1d60b0ff_fk_core_servicecategory_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_evaluationtemplate
    ADD CONSTRAINT core_evaluation_category_id_1d60b0ff_fk_core_servicecategory_id FOREIGN KEY (category_id) REFERENCES core_servicecategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3412 (class 2606 OID 1297476)
-- Name: core_evaluationparameter core_evaluationpa_service_id_6b6e08f0_fk_core_servicerequest_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_evaluationparameter
    ADD CONSTRAINT core_evaluationpa_service_id_6b6e08f0_fk_core_servicerequest_id FOREIGN KEY (service_id) REFERENCES core_servicerequest(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3438 (class 2606 OID 1297486)
-- Name: core_indicouser_categories core_ind_servicecategory_id_9c48e87a_fk_core_servicecategory_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_categories
    ADD CONSTRAINT core_ind_servicecategory_id_9c48e87a_fk_core_servicecategory_id FOREIGN KEY (servicecategory_id) REFERENCES core_servicecategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3437 (class 2606 OID 1297481)
-- Name: core_indicouser_categories core_indicouser_ca_indicouser_id_15f854d4_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_categories
    ADD CONSTRAINT core_indicouser_ca_indicouser_id_15f854d4_fk_core_indicouser_id FOREIGN KEY (indicouser_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3407 (class 2606 OID 1297495)
-- Name: core_indicouser core_indicouser_documents_id_46ab98ac_fk_core_userdocuments_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser
    ADD CONSTRAINT core_indicouser_documents_id_46ab98ac_fk_core_userdocuments_id FOREIGN KEY (documents_id) REFERENCES core_userdocuments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3439 (class 2606 OID 1297500)
-- Name: core_indicouser_groups core_indicouser_gr_indicouser_id_c8e8f951_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_groups
    ADD CONSTRAINT core_indicouser_gr_indicouser_id_c8e8f951_fk_core_indicouser_id FOREIGN KEY (indicouser_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3440 (class 2606 OID 1297505)
-- Name: core_indicouser_groups core_indicouser_groups_group_id_31223a59_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_groups
    ADD CONSTRAINT core_indicouser_groups_group_id_31223a59_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3441 (class 2606 OID 1297514)
-- Name: core_indicouser_skills core_indicouser_sk_indicouser_id_91fb7410_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_skills
    ADD CONSTRAINT core_indicouser_sk_indicouser_id_91fb7410_fk_core_indicouser_id FOREIGN KEY (indicouser_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3442 (class 2606 OID 1297519)
-- Name: core_indicouser_skills core_indicouser_skills_skill_id_04b0af21_fk_core_skill_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_skills
    ADD CONSTRAINT core_indicouser_skills_skill_id_04b0af21_fk_core_skill_id FOREIGN KEY (skill_id) REFERENCES core_skill(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3443 (class 2606 OID 1297528)
-- Name: core_indicouser_user_permissions core_indicouser_us_indicouser_id_b1383048_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_user_permissions
    ADD CONSTRAINT core_indicouser_us_indicouser_id_b1383048_fk_core_indicouser_id FOREIGN KEY (indicouser_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3444 (class 2606 OID 1297533)
-- Name: core_indicouser_user_permissions core_indicouser_us_permission_id_624aeb40_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_user_permissions
    ADD CONSTRAINT core_indicouser_us_permission_id_624aeb40_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3415 (class 2606 OID 1297337)
-- Name: core_notification core_notification_to_id_fa81cd94_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_notification
    ADD CONSTRAINT core_notification_to_id_fa81cd94_fk_core_indicouser_id FOREIGN KEY (to_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3416 (class 2606 OID 1297343)
-- Name: core_place core_place_owner_id_57b3f9dc_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_place
    ADD CONSTRAINT core_place_owner_id_57b3f9dc_fk_core_indicouser_id FOREIGN KEY (owner_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3417 (class 2606 OID 1297465)
-- Name: core_reference core_reference_subscription_id_d7138822_fk_core_subscription_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_reference
    ADD CONSTRAINT core_reference_subscription_id_d7138822_fk_core_subscription_id FOREIGN KEY (subscription_id) REFERENCES core_subscription(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3419 (class 2606 OID 1297355)
-- Name: core_relationship_friends core_relations_relationship_id_b014531a_fk_core_relationship_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_relationship_friends
    ADD CONSTRAINT core_relations_relationship_id_b014531a_fk_core_relationship_id FOREIGN KEY (relationship_id) REFERENCES core_relationship(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3420 (class 2606 OID 1297360)
-- Name: core_relationship_friends core_relationship__indicouser_id_1a7df2d5_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_relationship_friends
    ADD CONSTRAINT core_relationship__indicouser_id_1a7df2d5_fk_core_indicouser_id FOREIGN KEY (indicouser_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3418 (class 2606 OID 1297349)
-- Name: core_relationship core_relationship_user_one_id_599ab42a_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_relationship
    ADD CONSTRAINT core_relationship_user_one_id_599ab42a_fk_core_indicouser_id FOREIGN KEY (user_one_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3431 (class 2606 OID 1297405)
-- Name: core_servicetype core_se_service_category_id_74ed46cb_fk_core_servicecategory_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicetype
    ADD CONSTRAINT core_se_service_category_id_74ed46cb_fk_core_servicecategory_id FOREIGN KEY (service_category_id) REFERENCES core_servicecategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3422 (class 2606 OID 1297459)
-- Name: core_servicediscount core_se_service_provided_id_d1a06f86_fk_core_serviceprovided_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicediscount
    ADD CONSTRAINT core_se_service_provided_id_d1a06f86_fk_core_serviceprovided_id FOREIGN KEY (service_provided_id) REFERENCES core_serviceprovided(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3430 (class 2606 OID 1297397)
-- Name: core_servicerequest core_se_service_provided_id_d1c0ae6a_fk_core_serviceprovided_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicerequest
    ADD CONSTRAINT core_se_service_provided_id_d1c0ae6a_fk_core_serviceprovided_id FOREIGN KEY (service_provided_id) REFERENCES core_serviceprovided(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3421 (class 2606 OID 1297369)
-- Name: core_servicecategory core_servicec_group_id_1f80d593_fk_core_groupservicecategory_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicecategory
    ADD CONSTRAINT core_servicec_group_id_1f80d593_fk_core_groupservicecategory_id FOREIGN KEY (group_id) REFERENCES core_groupservicecategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3423 (class 2606 OID 1297375)
-- Name: core_servicemessage core_servicemessa_destinatary_id_0aa21470_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicemessage
    ADD CONSTRAINT core_servicemessa_destinatary_id_0aa21470_fk_core_indicouser_id FOREIGN KEY (destinatary_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3425 (class 2606 OID 1297453)
-- Name: core_servicemessage core_servicemessa_service_id_93f33637_fk_core_servicerequest_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicemessage
    ADD CONSTRAINT core_servicemessa_service_id_93f33637_fk_core_servicerequest_id FOREIGN KEY (service_id) REFERENCES core_servicerequest(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3424 (class 2606 OID 1297380)
-- Name: core_servicemessage core_servicemessage_sender_id_72f60a61_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicemessage
    ADD CONSTRAINT core_servicemessage_sender_id_72f60a61_fk_core_indicouser_id FOREIGN KEY (sender_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3426 (class 2606 OID 1297441)
-- Name: core_serviceprovided core_servicepro_service_type_id_6c208207_fk_core_servicetype_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_serviceprovided
    ADD CONSTRAINT core_servicepro_service_type_id_6c208207_fk_core_servicetype_id FOREIGN KEY (service_type_id) REFERENCES core_servicetype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3427 (class 2606 OID 1297447)
-- Name: core_serviceprovided core_serviceprovided_worker_id_bec11d96_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_serviceprovided
    ADD CONSTRAINT core_serviceprovided_worker_id_bec11d96_fk_core_indicouser_id FOREIGN KEY (worker_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3428 (class 2606 OID 1297387)
-- Name: core_servicerequest core_servicerequest_address_id_b6501df0_fk_core_place_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicerequest
    ADD CONSTRAINT core_servicerequest_address_id_b6501df0_fk_core_place_id FOREIGN KEY (address_id) REFERENCES core_place(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3429 (class 2606 OID 1297392)
-- Name: core_servicerequest core_servicerequest_owner_id_179de36b_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_servicerequest
    ADD CONSTRAINT core_servicerequest_owner_id_179de36b_fk_core_indicouser_id FOREIGN KEY (owner_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3432 (class 2606 OID 1297411)
-- Name: core_skill core_skill_category_id_e2b959f5_fk_core_servicecategory_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_skill
    ADD CONSTRAINT core_skill_category_id_e2b959f5_fk_core_servicecategory_id FOREIGN KEY (category_id) REFERENCES core_servicecategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3433 (class 2606 OID 1297417)
-- Name: core_subscription core_subscription_candidate_id_a6cba19f_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_subscription
    ADD CONSTRAINT core_subscription_candidate_id_a6cba19f_fk_core_indicouser_id FOREIGN KEY (candidate_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3436 (class 2606 OID 1297434)
-- Name: core_workerevaluationitem core_w_workerEvaluation_id_acf5f6b4_fk_core_workerevaluation_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_workerevaluationitem
    ADD CONSTRAINT "core_w_workerEvaluation_id_acf5f6b4_fk_core_workerevaluation_id" FOREIGN KEY ("workerEvaluation_id") REFERENCES core_workerevaluation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3434 (class 2606 OID 1297422)
-- Name: core_workerevaluation core_workerevaluation_hirer_id_acdf9b67_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_workerevaluation
    ADD CONSTRAINT core_workerevaluation_hirer_id_acdf9b67_fk_core_indicouser_id FOREIGN KEY (hirer_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3435 (class 2606 OID 1297427)
-- Name: core_workerevaluation core_workerevaluation_worker_id_8d17b186_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_workerevaluation
    ADD CONSTRAINT core_workerevaluation_worker_id_8d17b186_fk_core_indicouser_id FOREIGN KEY (worker_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3445 (class 2606 OID 1297554)
-- Name: django_admin_log django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3446 (class 2606 OID 1297559)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_core_indicouser_id FOREIGN KEY (user_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3456 (class 2606 OID 4897076)
-- Name: core_phonenumber fk_indico_user_to_core_phonenumber; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_phonenumber
    ADD CONSTRAINT fk_indico_user_to_core_phonenumber FOREIGN KEY (id) REFERENCES core_indicouser(id);


--
-- TOC entry 3458 (class 2606 OID 5319332)
-- Name: core_indicouser_work_zones fk_indicouser_id_workzones; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_work_zones
    ADD CONSTRAINT fk_indicouser_id_workzones FOREIGN KEY (indicouser_id) REFERENCES core_indicouser(id);


--
-- TOC entry 3457 (class 2606 OID 5319337)
-- Name: core_indicouser_work_zones fk_workzone_id_workzones; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY core_indicouser_work_zones
    ADD CONSTRAINT fk_workzone_id_workzones FOREIGN KEY (workzone_id) REFERENCES core_workzone(id);


--
-- TOC entry 3453 (class 2606 OID 1297708)
-- Name: oauth2_provider_refreshtoken oaut_access_token_id_775e84e8_fk_oauth2_provider_accesstoken_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oaut_access_token_id_775e84e8_fk_oauth2_provider_accesstoken_id FOREIGN KEY (access_token_id) REFERENCES oauth2_provider_accesstoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3450 (class 2606 OID 1297745)
-- Name: oauth2_provider_accesstoken oauth2_provider_accessto_user_id_6e4c9a65_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accessto_user_id_6e4c9a65_fk_core_indicouser_id FOREIGN KEY (user_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3448 (class 2606 OID 1297740)
-- Name: oauth2_provider_application oauth2_provider_applicat_user_id_79829054_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_applicat_user_id_79829054_fk_core_indicouser_id FOREIGN KEY (user_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3452 (class 2606 OID 1297699)
-- Name: oauth2_provider_grant oauth2_provider_grant_user_id_e8f62af8_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_user_id_e8f62af8_fk_core_indicouser_id FOREIGN KEY (user_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3455 (class 2606 OID 1297718)
-- Name: oauth2_provider_refreshtoken oauth2_provider_refresht_user_id_da837fce_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refresht_user_id_da837fce_fk_core_indicouser_id FOREIGN KEY (user_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3454 (class 2606 OID 1297713)
-- Name: oauth2_provider_refreshtoken oauth_application_id_2d1c311b_fk_oauth2_provider_application_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth_application_id_2d1c311b_fk_oauth2_provider_application_id FOREIGN KEY (application_id) REFERENCES oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3451 (class 2606 OID 1297694)
-- Name: oauth2_provider_grant oauth_application_id_81923564_fk_oauth2_provider_application_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY oauth2_provider_grant
    ADD CONSTRAINT oauth_application_id_81923564_fk_oauth2_provider_application_id FOREIGN KEY (application_id) REFERENCES oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3449 (class 2606 OID 1297680)
-- Name: oauth2_provider_accesstoken oauth_application_id_b22886e1_fk_oauth2_provider_application_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY oauth2_provider_accesstoken
    ADD CONSTRAINT oauth_application_id_b22886e1_fk_oauth2_provider_application_id FOREIGN KEY (application_id) REFERENCES oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3447 (class 2606 OID 1297619)
-- Name: social_auth_usersocialauth social_auth_usersocialau_user_id_17d28448_fk_core_indicouser_id; Type: FK CONSTRAINT; Schema: public; Owner: tbzewllzbqfmem
--

ALTER TABLE ONLY social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialau_user_id_17d28448_fk_core_indicouser_id FOREIGN KEY (user_id) REFERENCES core_indicouser(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2017-04-19 17:25:09

--
-- PostgreSQL database dump complete
--

