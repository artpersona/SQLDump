PGDMP                         w         	   hr_system    10.10    10.10 )               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16393 	   hr_system    DATABASE     �   CREATE DATABASE hr_system WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Philippines.1252' LC_CTYPE = 'English_Philippines.1252';
    DROP DATABASE hr_system;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    24760    attendancedate    TABLE     U   CREATE TABLE public.attendancedate (
    ad_id integer NOT NULL,
    ad_date date
);
 "   DROP TABLE public.attendancedate;
       public         postgres    false    3            �            1259    24758    attendancedate_ad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.attendancedate_ad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.attendancedate_ad_id_seq;
       public       postgres    false    3    201                       0    0    attendancedate_ad_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.attendancedate_ad_id_seq OWNED BY public.attendancedate.ad_id;
            public       postgres    false    200            �            1259    24768    attendanceproper    TABLE     ~   CREATE TABLE public.attendanceproper (
    ap_id integer NOT NULL,
    emp_id integer NOT NULL,
    ad_id integer NOT NULL
);
 $   DROP TABLE public.attendanceproper;
       public         postgres    false    3            �            1259    24766    attendanceproper_ap_id_seq    SEQUENCE     �   CREATE SEQUENCE public.attendanceproper_ap_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.attendanceproper_ap_id_seq;
       public       postgres    false    203    3                        0    0    attendanceproper_ap_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.attendanceproper_ap_id_seq OWNED BY public.attendanceproper.ap_id;
            public       postgres    false    202            �            1259    24647    departments    TABLE     s   CREATE TABLE public.departments (
    department_id integer NOT NULL,
    department_name character varying(20)
);
    DROP TABLE public.departments;
       public         postgres    false    3            �            1259    24645    departments_department_id_seq    SEQUENCE     �   CREATE SEQUENCE public.departments_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.departments_department_id_seq;
       public       postgres    false    3    197            !           0    0    departments_department_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.departments_department_id_seq OWNED BY public.departments.department_id;
            public       postgres    false    196            �            1259    24693    employee    TABLE       CREATE TABLE public.employee (
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
    DROP TABLE public.employee;
       public         postgres    false    3            �            1259    24681 	   positions    TABLE     �   CREATE TABLE public.positions (
    position_id integer NOT NULL,
    position_name character varying(20) NOT NULL,
    position_salaryrate numeric(7,0),
    department_id integer
);
    DROP TABLE public.positions;
       public         postgres    false    3            �
           2604    24763    attendancedate ad_id    DEFAULT     |   ALTER TABLE ONLY public.attendancedate ALTER COLUMN ad_id SET DEFAULT nextval('public.attendancedate_ad_id_seq'::regclass);
 C   ALTER TABLE public.attendancedate ALTER COLUMN ad_id DROP DEFAULT;
       public       postgres    false    200    201    201            �
           2604    24771    attendanceproper ap_id    DEFAULT     �   ALTER TABLE ONLY public.attendanceproper ALTER COLUMN ap_id SET DEFAULT nextval('public.attendanceproper_ap_id_seq'::regclass);
 E   ALTER TABLE public.attendanceproper ALTER COLUMN ap_id DROP DEFAULT;
       public       postgres    false    203    202    203            �
           2604    24650    departments department_id    DEFAULT     �   ALTER TABLE ONLY public.departments ALTER COLUMN department_id SET DEFAULT nextval('public.departments_department_id_seq'::regclass);
 H   ALTER TABLE public.departments ALTER COLUMN department_id DROP DEFAULT;
       public       postgres    false    196    197    197                      0    24760    attendancedate 
   TABLE DATA               8   COPY public.attendancedate (ad_id, ad_date) FROM stdin;
    public       postgres    false    201   :1                 0    24768    attendanceproper 
   TABLE DATA               @   COPY public.attendanceproper (ap_id, emp_id, ad_id) FROM stdin;
    public       postgres    false    203   W1                 0    24647    departments 
   TABLE DATA               E   COPY public.departments (department_id, department_name) FROM stdin;
    public       postgres    false    197   t1                 0    24693    employee 
   TABLE DATA                 COPY public.employee (emp_code, emp_fname, emp_lname, emp_gender, emp_benefactorname, emp_bf_contactnum, emp_bf_address, emp_birthplace, emp_birthdate, emp_maritalstatus, emp_nationality, emp_contactnum, department_id, emp_position, emp_religion, emp_address) FROM stdin;
    public       postgres    false    199   �1                 0    24681 	   positions 
   TABLE DATA               c   COPY public.positions (position_id, position_name, position_salaryrate, department_id) FROM stdin;
    public       postgres    false    198   �1       "           0    0    attendancedate_ad_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.attendancedate_ad_id_seq', 1, false);
            public       postgres    false    200            #           0    0    attendanceproper_ap_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.attendanceproper_ap_id_seq', 1, false);
            public       postgres    false    202            $           0    0    departments_department_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.departments_department_id_seq', 1, false);
            public       postgres    false    196            �
           2606    24765 "   attendancedate attendancedate_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.attendancedate
    ADD CONSTRAINT attendancedate_pkey PRIMARY KEY (ad_id);
 L   ALTER TABLE ONLY public.attendancedate DROP CONSTRAINT attendancedate_pkey;
       public         postgres    false    201            �
           2606    24773 &   attendanceproper attendanceproper_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.attendanceproper
    ADD CONSTRAINT attendanceproper_pkey PRIMARY KEY (ap_id);
 P   ALTER TABLE ONLY public.attendanceproper DROP CONSTRAINT attendanceproper_pkey;
       public         postgres    false    203            �
           2606    24652    departments departments_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public         postgres    false    197            �
           2606    24697    employee employee_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (emp_code);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public         postgres    false    199            �
           2606    24685    positions positions_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.positions
    ADD CONSTRAINT positions_pkey PRIMARY KEY (position_name);
 B   ALTER TABLE ONLY public.positions DROP CONSTRAINT positions_pkey;
       public         postgres    false    198            �
           2606    24687 #   positions positions_position_id_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.positions
    ADD CONSTRAINT positions_position_id_key UNIQUE (position_id);
 M   ALTER TABLE ONLY public.positions DROP CONSTRAINT positions_position_id_key;
       public         postgres    false    198            �
           2606    24779 ,   attendanceproper attendanceproper_ad_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.attendanceproper
    ADD CONSTRAINT attendanceproper_ad_id_fkey FOREIGN KEY (ad_id) REFERENCES public.attendancedate(ad_id);
 V   ALTER TABLE ONLY public.attendanceproper DROP CONSTRAINT attendanceproper_ad_id_fkey;
       public       postgres    false    203    201    2702            �
           2606    24774 -   attendanceproper attendanceproper_emp_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.attendanceproper
    ADD CONSTRAINT attendanceproper_emp_id_fkey FOREIGN KEY (emp_id) REFERENCES public.employee(emp_code);
 W   ALTER TABLE ONLY public.attendanceproper DROP CONSTRAINT attendanceproper_emp_id_fkey;
       public       postgres    false    199    2700    203            �
           2606    24698 $   employee employee_department_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.departments(department_id);
 N   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_department_id_fkey;
       public       postgres    false    197    2694    199            �
           2606    24703 #   employee employee_emp_position_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_emp_position_fkey FOREIGN KEY (emp_position) REFERENCES public.positions(position_name);
 M   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_emp_position_fkey;
       public       postgres    false    198    2696    199            �
           2606    24688 &   positions positions_department_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.positions
    ADD CONSTRAINT positions_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.departments(department_id);
 P   ALTER TABLE ONLY public.positions DROP CONSTRAINT positions_department_id_fkey;
       public       postgres    false    197    2694    198                  x������ � �            x������ � �         #   x�3�N�I-�2�(�O/J��M-*����� ql�            x������ � �            x������ � �     