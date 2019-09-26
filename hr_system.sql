--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10
-- Dumped by pg_dump version 10.10

-- Started on 2019-09-26 08:57:15

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
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2846 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 201 (class 1259 OID 24760)
-- Name: attendancedate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attendancedate (
    ad_id integer NOT NULL,
    ad_date date
);


ALTER TABLE public.attendancedate OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 24758)
-- Name: attendancedate_ad_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attendancedate_ad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attendancedate_ad_id_seq OWNER TO postgres;

--
-- TOC entry 2847 (class 0 OID 0)
-- Dependencies: 200
-- Name: attendancedate_ad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attendancedate_ad_id_seq OWNED BY public.attendancedate.ad_id;


--
-- TOC entry 203 (class 1259 OID 24768)
-- Name: attendanceproper; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attendanceproper (
    ap_id integer NOT NULL,
    emp_id integer NOT NULL,
    ad_id integer NOT NULL
);


ALTER TABLE public.attendanceproper OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 24766)
-- Name: attendanceproper_ap_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attendanceproper_ap_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attendanceproper_ap_id_seq OWNER TO postgres;

--
-- TOC entry 2848 (class 0 OID 0)
-- Dependencies: 202
-- Name: attendanceproper_ap_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attendanceproper_ap_id_seq OWNED BY public.attendanceproper.ap_id;


--
-- TOC entry 197 (class 1259 OID 24647)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    department_id integer NOT NULL,
    department_name character varying(20)
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 24645)
-- Name: departments_department_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departments_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departments_department_id_seq OWNER TO postgres;

--
-- TOC entry 2849 (class 0 OID 0)
-- Dependencies: 196
-- Name: departments_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departments_department_id_seq OWNED BY public.departments.department_id;


--
-- TOC entry 199 (class 1259 OID 24693)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    emp_code integer NOT NULL,
    emp_fname character varying(20) NOT NULL,
    emp_lname character varying(20) NOT NULL,
    emp_gender character varying(3) NOT NULL,
    emp_benefactorname character varying(5) NOT NULL,
    emp_bf_contactnum character varying(23) NOT NULL,
    emp_bf_address character varying(23) NOT NULL,
    emp_birthplace character varying(23) NOT NULL,
    emp_birthdate date,
    emp_maritalstatus character varying(10) NOT NULL,
    emp_nationality character varying(20) NOT NULL,
    emp_contactnum character varying(20) NOT NULL,
    department_id integer NOT NULL,
    emp_position character varying(20) NOT NULL,
    emp_religion character varying(20) NOT NULL,
    emp_address character varying(50) NOT NULL
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 24681)
-- Name: positions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.positions (
    position_id integer NOT NULL,
    position_name character varying(20) NOT NULL,
    position_salaryrate numeric(7,0),
    department_id integer
);


ALTER TABLE public.positions OWNER TO postgres;

--
-- TOC entry 2691 (class 2604 OID 24763)
-- Name: attendancedate ad_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendancedate ALTER COLUMN ad_id SET DEFAULT nextval('public.attendancedate_ad_id_seq'::regclass);


--
-- TOC entry 2692 (class 2604 OID 24771)
-- Name: attendanceproper ap_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendanceproper ALTER COLUMN ap_id SET DEFAULT nextval('public.attendanceproper_ap_id_seq'::regclass);


--
-- TOC entry 2690 (class 2604 OID 24650)
-- Name: departments department_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments ALTER COLUMN department_id SET DEFAULT nextval('public.departments_department_id_seq'::regclass);


--
-- TOC entry 2836 (class 0 OID 24760)
-- Dependencies: 201
-- Data for Name: attendancedate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attendancedate (ad_id, ad_date) FROM stdin;
\.


--
-- TOC entry 2838 (class 0 OID 24768)
-- Dependencies: 203
-- Data for Name: attendanceproper; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attendanceproper (ap_id, emp_id, ad_id) FROM stdin;
\.


--
-- TOC entry 2832 (class 0 OID 24647)
-- Dependencies: 197
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departments (department_id, department_name) FROM stdin;
1	Sales
2	Programmers
\.


--
-- TOC entry 2834 (class 0 OID 24693)
-- Dependencies: 199
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (emp_code, emp_fname, emp_lname, emp_gender, emp_benefactorname, emp_bf_contactnum, emp_bf_address, emp_birthplace, emp_birthdate, emp_maritalstatus, emp_nationality, emp_contactnum, department_id, emp_position, emp_religion, emp_address) FROM stdin;
\.


--
-- TOC entry 2833 (class 0 OID 24681)
-- Dependencies: 198
-- Data for Name: positions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.positions (position_id, position_name, position_salaryrate, department_id) FROM stdin;
\.


--
-- TOC entry 2850 (class 0 OID 0)
-- Dependencies: 200
-- Name: attendancedate_ad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attendancedate_ad_id_seq', 1, false);


--
-- TOC entry 2851 (class 0 OID 0)
-- Dependencies: 202
-- Name: attendanceproper_ap_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attendanceproper_ap_id_seq', 1, false);


--
-- TOC entry 2852 (class 0 OID 0)
-- Dependencies: 196
-- Name: departments_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departments_department_id_seq', 1, false);


--
-- TOC entry 2702 (class 2606 OID 24765)
-- Name: attendancedate attendancedate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendancedate
    ADD CONSTRAINT attendancedate_pkey PRIMARY KEY (ad_id);


--
-- TOC entry 2704 (class 2606 OID 24773)
-- Name: attendanceproper attendanceproper_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendanceproper
    ADD CONSTRAINT attendanceproper_pkey PRIMARY KEY (ap_id);


--
-- TOC entry 2694 (class 2606 OID 24652)
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);


--
-- TOC entry 2700 (class 2606 OID 24697)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (emp_code);


--
-- TOC entry 2696 (class 2606 OID 24685)
-- Name: positions positions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.positions
    ADD CONSTRAINT positions_pkey PRIMARY KEY (position_name);


--
-- TOC entry 2698 (class 2606 OID 24687)
-- Name: positions positions_position_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.positions
    ADD CONSTRAINT positions_position_id_key UNIQUE (position_id);


--
-- TOC entry 2709 (class 2606 OID 24779)
-- Name: attendanceproper attendanceproper_ad_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendanceproper
    ADD CONSTRAINT attendanceproper_ad_id_fkey FOREIGN KEY (ad_id) REFERENCES public.attendancedate(ad_id);


--
-- TOC entry 2708 (class 2606 OID 24774)
-- Name: attendanceproper attendanceproper_emp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendanceproper
    ADD CONSTRAINT attendanceproper_emp_id_fkey FOREIGN KEY (emp_id) REFERENCES public.employee(emp_code);


--
-- TOC entry 2706 (class 2606 OID 24698)
-- Name: employee employee_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.departments(department_id);


--
-- TOC entry 2707 (class 2606 OID 24703)
-- Name: employee employee_emp_position_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_emp_position_fkey FOREIGN KEY (emp_position) REFERENCES public.positions(position_name);


--
-- TOC entry 2705 (class 2606 OID 24688)
-- Name: positions positions_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.positions
    ADD CONSTRAINT positions_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.departments(department_id);


-- Completed on 2019-09-26 08:57:16

--
-- PostgreSQL database dump complete
--

