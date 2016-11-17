SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: dynamic_kmz; Type: TABLE; Schema: public; Tablespace: 
--

CREATE TABLE dynamic_kmz (
    id integer NOT NULL,
    url character varying(512) NOT NULL,
    refreshrate integer NOT NULL,
    filename character varying(1024) NOT NULL
);


ALTER TABLE public.dynamic_kmz OWNER TO postgres;

--
-- Name: dynamic_kmz_seq; Type: SEQUENCE; Schema: public;
--

CREATE SEQUENCE dynamic_kmz_seq
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dynamic_kmz_seq OWNER TO postgres;

--
-- Name: dynamic_kmz_pkey; Type: CONSTRAINT; Schema: public; Tablespace: 
--

ALTER TABLE ONLY dynamic_kmz
    ADD CONSTRAINT dynamic_kmz_pkey PRIMARY KEY (id);

