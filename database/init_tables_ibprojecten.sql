PGDMP     ,    7            	    u           ibprojecten    9.5.7    9.6.5 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    16384    ibprojecten    DATABASE     {   CREATE DATABASE ibprojecten WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE ibprojecten;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    8            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    8                        3079    12361    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1                        3079    16397    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                  false    8            �           0    0    EXTENSION postgis    COMMENT     g   COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';
                       false    2                        3079    16386 	   uuid-ossp 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;
    DROP EXTENSION "uuid-ossp";
                  false    8            �           0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                       false    3            �            1259    17909 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         ibprojecten    false    8            �            1259    17907    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       ibprojecten    false    205    8            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       ibprojecten    false    204            �            1259    17919    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         ibprojecten    false    8            �            1259    17917    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       ibprojecten    false    8    207            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       ibprojecten    false    206            �            1259    17901    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         ibprojecten    false    8            �            1259    17899    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       ibprojecten    false    203    8            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       ibprojecten    false    202            �            1259    17927 	   auth_user    TABLE     �  CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         ibprojecten    false    8            �            1259    17937    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         ibprojecten    false    8            �            1259    17935    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       ibprojecten    false    211    8            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       ibprojecten    false    210            �            1259    17925    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       ibprojecten    false    209    8            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       ibprojecten    false    208            �            1259    17945    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         ibprojecten    false    8            �            1259    17943 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       ibprojecten    false    213    8            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       ibprojecten    false    212            �            1259    18005    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         ibprojecten    false    8            �            1259    18003    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       ibprojecten    false    215    8            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       ibprojecten    false    214            �            1259    17891    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         ibprojecten    false    8            �            1259    17889    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       ibprojecten    false    8    201            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       ibprojecten    false    200            �            1259    17880    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         ibprojecten    false    8            �            1259    17878    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       ibprojecten    false    199    8            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       ibprojecten    false    198            �            1259    18213    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         ibprojecten    false    8            �            1259    18036    employee    TABLE       CREATE TABLE employee (
    employee_id integer NOT NULL,
    "Voornaam" character varying(255),
    "Achternaam" character varying(255),
    "Email" character varying(128),
    "Telefoon" character varying(128),
    "Rol_id" integer,
    "ZoekeenCollegaUrl" character varying(128)
);
    DROP TABLE public.employee;
       public         ibprojecten    false    8            �            1259    18034    employee_employee_id_seq    SEQUENCE     z   CREATE SEQUENCE employee_employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.employee_employee_id_seq;
       public       ibprojecten    false    217    8            �           0    0    employee_employee_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE employee_employee_id_seq OWNED BY employee.employee_id;
            public       ibprojecten    false    216            �            1259    18047    organisatie    TABLE     �   CREATE TABLE organisatie (
    org_id integer NOT NULL,
    "Cluster" character varying(255),
    "Organisatie" character varying(255)
);
    DROP TABLE public.organisatie;
       public         ibprojecten    false    8            �            1259    18045    organisatie_org_id_seq    SEQUENCE     x   CREATE SEQUENCE organisatie_org_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.organisatie_org_id_seq;
       public       ibprojecten    false    8    219            �           0    0    organisatie_org_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE organisatie_org_id_seq OWNED BY organisatie.org_id;
            public       ibprojecten    false    218            �            1259    18058    project    TABLE     p  CREATE TABLE project (
    pjid integer NOT NULL,
    "Locatie" character varying(255) NOT NULL,
    "Intakedatum" date NOT NULL,
    startdatum date NOT NULL,
    einddatum date NOT NULL,
    "Plangebied" geometry(Polygon,4326),
    "Timetellnummer" character varying(18),
    "Indicatiebedrag" numeric(9,2) NOT NULL,
    "Maximumbedrag" numeric(9,2) NOT NULL,
    "Vervolgafspraken" text,
    "Account_houder_id" integer,
    "Ambtelijk_opdrachtgever_id" integer,
    "Bestuurlijk_opdrachtgever_id" integer,
    "Deel_projectleider_id" integer,
    "Opdracht_verantwoordelijke_id" integer,
    "Organisatie_id" integer
);
    DROP TABLE public.project;
       public         ibprojecten    false    2    2    8    8    2    8    2    8    2    8    2    8    2    8    2    8    8            �            1259    18266    project_Projecttype    TABLE     �   CREATE TABLE "project_Projecttype" (
    id integer NOT NULL,
    project_id integer NOT NULL,
    projecttype_id integer NOT NULL
);
 )   DROP TABLE public."project_Projecttype";
       public         ibprojecten    false    8            �            1259    18264    project_Projecttype_id_seq    SEQUENCE     ~   CREATE SEQUENCE "project_Projecttype_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."project_Projecttype_id_seq";
       public       ibprojecten    false    8    232            �           0    0    project_Projecttype_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE "project_Projecttype_id_seq" OWNED BY "project_Projecttype".id;
            public       ibprojecten    false    231            �            1259    18056    project_pjid_seq    SEQUENCE     r   CREATE SEQUENCE project_pjid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.project_pjid_seq;
       public       ibprojecten    false    8    221            �           0    0    project_pjid_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE project_pjid_seq OWNED BY project.pjid;
            public       ibprojecten    false    220            �            1259    18069    projectplan    TABLE     '  CREATE TABLE projectplan (
    pp_id integer NOT NULL,
    "Projectplan" character varying(100) NOT NULL,
    "Aanleiding" character varying(2000),
    "Doel" character varying(2000),
    "Resultaat" character varying(2000),
    "Afbakening" character varying(2000),
    "Project_id" integer
);
    DROP TABLE public.projectplan;
       public         ibprojecten    false    8            �            1259    18067    projectplan_pp_id_seq    SEQUENCE     w   CREATE SEQUENCE projectplan_pp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.projectplan_pp_id_seq;
       public       ibprojecten    false    223    8            �           0    0    projectplan_pp_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE projectplan_pp_id_seq OWNED BY projectplan.pp_id;
            public       ibprojecten    false    222            �            1259    18080    projecttype    TABLE     d   CREATE TABLE projecttype (
    type_id integer NOT NULL,
    "Projectype" character varying(255)
);
    DROP TABLE public.projecttype;
       public         ibprojecten    false    8            �            1259    18078    projecttype_type_id_seq    SEQUENCE     y   CREATE SEQUENCE projecttype_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.projecttype_type_id_seq;
       public       ibprojecten    false    225    8            �           0    0    projecttype_type_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE projecttype_type_id_seq OWNED BY projecttype.type_id;
            public       ibprojecten    false    224            �            1259    18088    rol    TABLE     U   CREATE TABLE rol (
    role_id integer NOT NULL,
    "Rol" character varying(255)
);
    DROP TABLE public.rol;
       public         ibprojecten    false    8            �            1259    18086    rol_role_id_seq    SEQUENCE     q   CREATE SEQUENCE rol_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.rol_role_id_seq;
       public       ibprojecten    false    227    8            �           0    0    rol_role_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE rol_role_id_seq OWNED BY rol.role_id;
            public       ibprojecten    false    226            �            1259    18096 	   werkorder    TABLE     �   CREATE TABLE werkorder (
    werkorder_id integer NOT NULL,
    "Werkordernaam" character varying(255),
    "Timetellnummer" character varying(18),
    "Boekingscombinatie" character varying(18),
    "Project_id" integer
);
    DROP TABLE public.werkorder;
       public         ibprojecten    false    8            �            1259    18094    werkorder_werkorder_id_seq    SEQUENCE     |   CREATE SEQUENCE werkorder_werkorder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.werkorder_werkorder_id_seq;
       public       ibprojecten    false    8    229            �           0    0    werkorder_werkorder_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE werkorder_werkorder_id_seq OWNED BY werkorder.werkorder_id;
            public       ibprojecten    false    228            �           2604    17912    auth_group id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       ibprojecten    false    204    205    205            �           2604    17922    auth_group_permissions id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       ibprojecten    false    206    207    207            �           2604    17904    auth_permission id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       ibprojecten    false    203    202    203            �           2604    17930    auth_user id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       ibprojecten    false    209    208    209            �           2604    17940    auth_user_groups id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       ibprojecten    false    210    211    211            �           2604    17948    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       ibprojecten    false    212    213    213            �           2604    18008    django_admin_log id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       ibprojecten    false    214    215    215            �           2604    17894    django_content_type id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       ibprojecten    false    201    200    201            �           2604    17883    django_migrations id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       ibprojecten    false    198    199    199            �           2604    18039    employee employee_id    DEFAULT     n   ALTER TABLE ONLY employee ALTER COLUMN employee_id SET DEFAULT nextval('employee_employee_id_seq'::regclass);
 C   ALTER TABLE public.employee ALTER COLUMN employee_id DROP DEFAULT;
       public       ibprojecten    false    216    217    217            �           2604    18050    organisatie org_id    DEFAULT     j   ALTER TABLE ONLY organisatie ALTER COLUMN org_id SET DEFAULT nextval('organisatie_org_id_seq'::regclass);
 A   ALTER TABLE public.organisatie ALTER COLUMN org_id DROP DEFAULT;
       public       ibprojecten    false    218    219    219            �           2604    18061    project pjid    DEFAULT     ^   ALTER TABLE ONLY project ALTER COLUMN pjid SET DEFAULT nextval('project_pjid_seq'::regclass);
 ;   ALTER TABLE public.project ALTER COLUMN pjid DROP DEFAULT;
       public       ibprojecten    false    220    221    221            �           2604    18269    project_Projecttype id    DEFAULT     v   ALTER TABLE ONLY "project_Projecttype" ALTER COLUMN id SET DEFAULT nextval('"project_Projecttype_id_seq"'::regclass);
 G   ALTER TABLE public."project_Projecttype" ALTER COLUMN id DROP DEFAULT;
       public       ibprojecten    false    231    232    232            �           2604    18072    projectplan pp_id    DEFAULT     h   ALTER TABLE ONLY projectplan ALTER COLUMN pp_id SET DEFAULT nextval('projectplan_pp_id_seq'::regclass);
 @   ALTER TABLE public.projectplan ALTER COLUMN pp_id DROP DEFAULT;
       public       ibprojecten    false    222    223    223            �           2604    18083    projecttype type_id    DEFAULT     l   ALTER TABLE ONLY projecttype ALTER COLUMN type_id SET DEFAULT nextval('projecttype_type_id_seq'::regclass);
 B   ALTER TABLE public.projecttype ALTER COLUMN type_id DROP DEFAULT;
       public       ibprojecten    false    225    224    225            �           2604    18091    rol role_id    DEFAULT     \   ALTER TABLE ONLY rol ALTER COLUMN role_id SET DEFAULT nextval('rol_role_id_seq'::regclass);
 :   ALTER TABLE public.rol ALTER COLUMN role_id DROP DEFAULT;
       public       ibprojecten    false    227    226    227            �           2604    18099    werkorder werkorder_id    DEFAULT     r   ALTER TABLE ONLY werkorder ALTER COLUMN werkorder_id SET DEFAULT nextval('werkorder_werkorder_id_seq'::regclass);
 E   ALTER TABLE public.werkorder ALTER COLUMN werkorder_id DROP DEFAULT;
       public       ibprojecten    false    229    228    229            �          0    17909 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       ibprojecten    false    205   u�       �           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       ibprojecten    false    204            �          0    17919    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       ibprojecten    false    207   ��       �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       ibprojecten    false    206            �          0    17901    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       ibprojecten    false    203   ��       �           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 18, true);
            public       ibprojecten    false    202            �          0    17927 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       ibprojecten    false    209   ��       �          0    17937    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       ibprojecten    false    211   V�       �           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       ibprojecten    false    210            �           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 1, true);
            public       ibprojecten    false    208            �          0    17945    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       ibprojecten    false    213   s�       �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       ibprojecten    false    212            �          0    18005    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       ibprojecten    false    215   ��       �           0    0    django_admin_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_admin_log_id_seq', 15, true);
            public       ibprojecten    false    214            �          0    17891    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       ibprojecten    false    201   ��       �           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 10, true);
            public       ibprojecten    false    200            �          0    17880    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       ibprojecten    false    199   �       �           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 27, true);
            public       ibprojecten    false    198            �          0    18213    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       ibprojecten    false    230   ��       �          0    18036    employee 
   TABLE DATA               v   COPY employee (employee_id, "Voornaam", "Achternaam", "Email", "Telefoon", "Rol_id", "ZoekeenCollegaUrl") FROM stdin;
    public       ibprojecten    false    217   �       �           0    0    employee_employee_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('employee_employee_id_seq', 2, true);
            public       ibprojecten    false    216            �          0    18047    organisatie 
   TABLE DATA               @   COPY organisatie (org_id, "Cluster", "Organisatie") FROM stdin;
    public       ibprojecten    false    219   ��       �           0    0    organisatie_org_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('organisatie_org_id_seq', 303, true);
            public       ibprojecten    false    218            �          0    18058    project 
   TABLE DATA               H  COPY project (pjid, "Locatie", "Intakedatum", startdatum, einddatum, "Plangebied", "Timetellnummer", "Indicatiebedrag", "Maximumbedrag", "Vervolgafspraken", "Account_houder_id", "Ambtelijk_opdrachtgever_id", "Bestuurlijk_opdrachtgever_id", "Deel_projectleider_id", "Opdracht_verantwoordelijke_id", "Organisatie_id") FROM stdin;
    public       ibprojecten    false    221   ��       �          0    18266    project_Projecttype 
   TABLE DATA               H   COPY "project_Projecttype" (id, project_id, projecttype_id) FROM stdin;
    public       ibprojecten    false    232   ��       �           0    0    project_Projecttype_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"project_Projecttype_id_seq"', 15, true);
            public       ibprojecten    false    231            �           0    0    project_pjid_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('project_pjid_seq', 6, true);
            public       ibprojecten    false    220            �          0    18069    projectplan 
   TABLE DATA               s   COPY projectplan (pp_id, "Projectplan", "Aanleiding", "Doel", "Resultaat", "Afbakening", "Project_id") FROM stdin;
    public       ibprojecten    false    223   ��       �           0    0    projectplan_pp_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('projectplan_pp_id_seq', 1, false);
            public       ibprojecten    false    222            �          0    18080    projecttype 
   TABLE DATA               5   COPY projecttype (type_id, "Projectype") FROM stdin;
    public       ibprojecten    false    225   ��       �           0    0    projecttype_type_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('projecttype_type_id_seq', 3, true);
            public       ibprojecten    false    224            �          0    18088    rol 
   TABLE DATA               &   COPY rol (role_id, "Rol") FROM stdin;
    public       ibprojecten    false    227   P�       �           0    0    rol_role_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('rol_role_id_seq', 2, true);
            public       ibprojecten    false    226            �          0    16694    spatial_ref_sys 
   TABLE DATA               "   COPY spatial_ref_sys  FROM stdin;
    public       ibprojecten    false    184   ��       �          0    18096 	   werkorder 
   TABLE DATA               q   COPY werkorder (werkorder_id, "Werkordernaam", "Timetellnummer", "Boekingscombinatie", "Project_id") FROM stdin;
    public       ibprojecten    false    229   ��       �           0    0    werkorder_werkorder_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('werkorder_werkorder_id_seq', 1, true);
            public       ibprojecten    false    228            �           2606    17916    auth_group auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         ibprojecten    false    205    205            �           2606    17971 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         ibprojecten    false    207    207    207            �           2606    17924 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         ibprojecten    false    207    207            �           2606    17914    auth_group auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         ibprojecten    false    205    205            �           2606    17957 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         ibprojecten    false    203    203    203            �           2606    17906 $   auth_permission auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         ibprojecten    false    203    203            �           2606    17942 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         ibprojecten    false    211    211            �           2606    17986 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         ibprojecten    false    211    211    211            �           2606    17932    auth_user auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         ibprojecten    false    209    209            �           2606    17950 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         ibprojecten    false    213    213            �           2606    18000 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         ibprojecten    false    213    213    213            �           2606    18029     auth_user auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         ibprojecten    false    209    209            �           2606    18014 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         ibprojecten    false    215    215            �           2606    17898 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         ibprojecten    false    201    201    201            �           2606    17896 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         ibprojecten    false    201    201            �           2606    17888 (   django_migrations django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         ibprojecten    false    199    199            �           2606    18220 "   django_session django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         ibprojecten    false    230    230            �           2606    18044    employee employee_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public         ibprojecten    false    217    217            �           2606    18055    organisatie organisatie_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY organisatie
    ADD CONSTRAINT organisatie_pkey PRIMARY KEY (org_id);
 F   ALTER TABLE ONLY public.organisatie DROP CONSTRAINT organisatie_pkey;
       public         ibprojecten    false    219    219            �           2606    18271 ,   project_Projecttype project_Projecttype_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY "project_Projecttype"
    ADD CONSTRAINT "project_Projecttype_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."project_Projecttype" DROP CONSTRAINT "project_Projecttype_pkey";
       public         ibprojecten    false    232    232            �           2606    18283 O   project_Projecttype project_Projecttype_project_id_projecttype_id_b9bb56e7_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY "project_Projecttype"
    ADD CONSTRAINT "project_Projecttype_project_id_projecttype_id_b9bb56e7_uniq" UNIQUE (project_id, projecttype_id);
 }   ALTER TABLE ONLY public."project_Projecttype" DROP CONSTRAINT "project_Projecttype_project_id_projecttype_id_b9bb56e7_uniq";
       public         ibprojecten    false    232    232    232            �           2606    18066    project project_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY project
    ADD CONSTRAINT project_pkey PRIMARY KEY (pjid);
 >   ALTER TABLE ONLY public.project DROP CONSTRAINT project_pkey;
       public         ibprojecten    false    221    221            �           2606    18077    projectplan projectplan_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY projectplan
    ADD CONSTRAINT projectplan_pkey PRIMARY KEY (pp_id);
 F   ALTER TABLE ONLY public.projectplan DROP CONSTRAINT projectplan_pkey;
       public         ibprojecten    false    223    223            �           2606    18085    projecttype projecttype_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY projecttype
    ADD CONSTRAINT projecttype_pkey PRIMARY KEY (type_id);
 F   ALTER TABLE ONLY public.projecttype DROP CONSTRAINT projecttype_pkey;
       public         ibprojecten    false    225    225            �           2606    18093    rol rol_pkey 
   CONSTRAINT     H   ALTER TABLE ONLY rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (role_id);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public         ibprojecten    false    227    227            �           2606    18101    werkorder werkorder_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY werkorder
    ADD CONSTRAINT werkorder_pkey PRIMARY KEY (werkorder_id);
 B   ALTER TABLE ONLY public.werkorder DROP CONSTRAINT werkorder_pkey;
       public         ibprojecten    false    229    229            �           1259    17959    auth_group_name_a6ea08ec_like    INDEX     a   CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         ibprojecten    false    205            �           1259    17972 (   auth_group_permissions_group_id_b120cbf9    INDEX     h   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         ibprojecten    false    207            �           1259    17973 -   auth_group_permissions_permission_id_84c5c92e    INDEX     r   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         ibprojecten    false    207            �           1259    17958 (   auth_permission_content_type_id_2f476e4b    INDEX     h   CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         ibprojecten    false    203            �           1259    17988 "   auth_user_groups_group_id_97559544    INDEX     \   CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         ibprojecten    false    211            �           1259    17987 !   auth_user_groups_user_id_6a12ed8b    INDEX     Z   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         ibprojecten    false    211            �           1259    18002 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     z   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         ibprojecten    false    213            �           1259    18001 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     n   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         ibprojecten    false    213            �           1259    18030     auth_user_username_6821ab7c_like    INDEX     g   CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         ibprojecten    false    209            �           1259    18025 )   django_admin_log_content_type_id_c4bce8eb    INDEX     j   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         ibprojecten    false    215            �           1259    18026 !   django_admin_log_user_id_c564eba6    INDEX     Z   CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         ibprojecten    false    215            �           1259    18222 #   django_session_expire_date_a5c62663    INDEX     ^   CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         ibprojecten    false    230            �           1259    18221 (   django_session_session_key_c0390e0f_like    INDEX     w   CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         ibprojecten    false    230            �           1259    18157    employee_Rol_id_ca0fb9c0    INDEX     L   CREATE INDEX "employee_Rol_id_ca0fb9c0" ON employee USING btree ("Rol_id");
 .   DROP INDEX public."employee_Rol_id_ca0fb9c0";
       public         ibprojecten    false    217            �           1259    18133 !   project_Accounthouder_id_6615183e    INDEX     _   CREATE INDEX "project_Accounthouder_id_6615183e" ON project USING btree ("Account_houder_id");
 7   DROP INDEX public."project_Accounthouder_id_6615183e";
       public         ibprojecten    false    221            �           1259    18134 *   project_Ambtelijkopdrachtgever_id_2db87811    INDEX     q   CREATE INDEX "project_Ambtelijkopdrachtgever_id_2db87811" ON project USING btree ("Ambtelijk_opdrachtgever_id");
 @   DROP INDEX public."project_Ambtelijkopdrachtgever_id_2db87811";
       public         ibprojecten    false    221            �           1259    18135 ,   project_Bestuurlijkopdrachtgever_id_f5fad830    INDEX     u   CREATE INDEX "project_Bestuurlijkopdrachtgever_id_f5fad830" ON project USING btree ("Bestuurlijk_opdrachtgever_id");
 B   DROP INDEX public."project_Bestuurlijkopdrachtgever_id_f5fad830";
       public         ibprojecten    false    221            �           1259    18136 %   project_Deelprojectleider_id_bd07818a    INDEX     g   CREATE INDEX "project_Deelprojectleider_id_bd07818a" ON project USING btree ("Deel_projectleider_id");
 ;   DROP INDEX public."project_Deelprojectleider_id_bd07818a";
       public         ibprojecten    false    221            �           1259    18137 -   project_Opdrachtverantwoordelijke_id_4d9efcf8    INDEX     w   CREATE INDEX "project_Opdrachtverantwoordelijke_id_4d9efcf8" ON project USING btree ("Opdracht_verantwoordelijke_id");
 C   DROP INDEX public."project_Opdrachtverantwoordelijke_id_4d9efcf8";
       public         ibprojecten    false    221            �           1259    18138    project_Organisatie_id_a6f5901e    INDEX     Z   CREATE INDEX "project_Organisatie_id_a6f5901e" ON project USING btree ("Organisatie_id");
 5   DROP INDEX public."project_Organisatie_id_a6f5901e";
       public         ibprojecten    false    221            �           1259    18132    project_Plangebied_id    INDEX     K   CREATE INDEX "project_Plangebied_id" ON project USING gist ("Plangebied");
 +   DROP INDEX public."project_Plangebied_id";
       public         ibprojecten    false    2    8    2    8    2    2    8    8    2    8    2    8    2    8    2    8    2    8    2    8    2    2    8    2    8    8    221            �           1259    18284 '   project_Projecttype_project_id_e69f5a5f    INDEX     j   CREATE INDEX "project_Projecttype_project_id_e69f5a5f" ON "project_Projecttype" USING btree (project_id);
 =   DROP INDEX public."project_Projecttype_project_id_e69f5a5f";
       public         ibprojecten    false    232            �           1259    18285 +   project_Projecttype_projecttype_id_dc95fb51    INDEX     r   CREATE INDEX "project_Projecttype_projecttype_id_dc95fb51" ON "project_Projecttype" USING btree (projecttype_id);
 A   DROP INDEX public."project_Projecttype_projecttype_id_dc95fb51";
       public         ibprojecten    false    232            �           1259    18144    projectplan_Project_id_bbac14ac    INDEX     Z   CREATE INDEX "projectplan_Project_id_bbac14ac" ON projectplan USING btree ("Project_id");
 5   DROP INDEX public."projectplan_Project_id_bbac14ac";
       public         ibprojecten    false    223            �           1259    18150    werkorder_Project_id_1187e225    INDEX     V   CREATE INDEX "werkorder_Project_id_1187e225" ON werkorder USING btree ("Project_id");
 3   DROP INDEX public."werkorder_Project_id_1187e225";
       public         ibprojecten    false    229            �           2606    17965 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       ibprojecten    false    203    3512    207            �           2606    17960 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       ibprojecten    false    207    3517    205            �           2606    17951 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       ibprojecten    false    201    203    3507            �           2606    17980 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       ibprojecten    false    211    3517    205            �           2606    17975 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       ibprojecten    false    209    3525    211                       2606    17994 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       ibprojecten    false    3512    203    213                        2606    17989 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       ibprojecten    false    3525    213    209                       2606    18015 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       ibprojecten    false    215    201    3507                       2606    18020 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       ibprojecten    false    215    3525    209                       2606    18158 0   employee employee_Rol_id_ca0fb9c0_fk_rol_role_id    FK CONSTRAINT     �   ALTER TABLE ONLY employee
    ADD CONSTRAINT "employee_Rol_id_ca0fb9c0_fk_rol_role_id" FOREIGN KEY ("Rol_id") REFERENCES rol(role_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY public.employee DROP CONSTRAINT "employee_Rol_id_ca0fb9c0_fk_rol_role_id";
       public       ibprojecten    false    3565    217    227                       2606    18188 B   project project_Account_houder_id_633d49c2_fk_employee_employee_id    FK CONSTRAINT     �   ALTER TABLE ONLY project
    ADD CONSTRAINT "project_Account_houder_id_633d49c2_fk_employee_employee_id" FOREIGN KEY ("Account_houder_id") REFERENCES employee(employee_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.project DROP CONSTRAINT "project_Account_houder_id_633d49c2_fk_employee_employee_id";
       public       ibprojecten    false    221    217    3547                       2606    18193 :   project project_Ambtelijk_opdrachtge_40a2db9f_fk_employee_    FK CONSTRAINT     �   ALTER TABLE ONLY project
    ADD CONSTRAINT "project_Ambtelijk_opdrachtge_40a2db9f_fk_employee_" FOREIGN KEY ("Ambtelijk_opdrachtgever_id") REFERENCES employee(employee_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.project DROP CONSTRAINT "project_Ambtelijk_opdrachtge_40a2db9f_fk_employee_";
       public       ibprojecten    false    3547    221    217                       2606    18198 :   project project_Bestuurlijk_opdracht_629ede47_fk_employee_    FK CONSTRAINT     �   ALTER TABLE ONLY project
    ADD CONSTRAINT "project_Bestuurlijk_opdracht_629ede47_fk_employee_" FOREIGN KEY ("Bestuurlijk_opdrachtgever_id") REFERENCES employee(employee_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.project DROP CONSTRAINT "project_Bestuurlijk_opdracht_629ede47_fk_employee_";
       public       ibprojecten    false    217    3547    221            	           2606    18203 F   project project_Deel_projectleider_id_06279419_fk_employee_employee_id    FK CONSTRAINT     �   ALTER TABLE ONLY project
    ADD CONSTRAINT "project_Deel_projectleider_id_06279419_fk_employee_employee_id" FOREIGN KEY ("Deel_projectleider_id") REFERENCES employee(employee_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.project DROP CONSTRAINT "project_Deel_projectleider_id_06279419_fk_employee_employee_id";
       public       ibprojecten    false    3547    217    221            
           2606    18208 :   project project_Opdracht_verantwoord_885793e1_fk_employee_    FK CONSTRAINT     �   ALTER TABLE ONLY project
    ADD CONSTRAINT "project_Opdracht_verantwoord_885793e1_fk_employee_" FOREIGN KEY ("Opdracht_verantwoordelijke_id") REFERENCES employee(employee_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.project DROP CONSTRAINT "project_Opdracht_verantwoord_885793e1_fk_employee_";
       public       ibprojecten    false    3547    217    221                       2606    18127 =   project project_Organisatie_id_a6f5901e_fk_organisatie_org_id    FK CONSTRAINT     �   ALTER TABLE ONLY project
    ADD CONSTRAINT "project_Organisatie_id_a6f5901e_fk_organisatie_org_id" FOREIGN KEY ("Organisatie_id") REFERENCES organisatie(org_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.project DROP CONSTRAINT "project_Organisatie_id_a6f5901e_fk_organisatie_org_id";
       public       ibprojecten    false    221    219    3549                       2606    18301 K   project_Projecttype project_Projecttype_project_id_e69f5a5f_fk_project_pjid    FK CONSTRAINT     �   ALTER TABLE ONLY "project_Projecttype"
    ADD CONSTRAINT "project_Projecttype_project_id_e69f5a5f_fk_project_pjid" FOREIGN KEY (project_id) REFERENCES project(pjid) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public."project_Projecttype" DROP CONSTRAINT "project_Projecttype_project_id_e69f5a5f_fk_project_pjid";
       public       ibprojecten    false    232    221    3558                       2606    18296 L   project_Projecttype project_Projecttype_projecttype_id_dc95fb51_fk_projectty    FK CONSTRAINT     �   ALTER TABLE ONLY "project_Projecttype"
    ADD CONSTRAINT "project_Projecttype_projecttype_id_dc95fb51_fk_projectty" FOREIGN KEY (projecttype_id) REFERENCES projecttype(type_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public."project_Projecttype" DROP CONSTRAINT "project_Projecttype_projecttype_id_dc95fb51_fk_projectty";
       public       ibprojecten    false    3563    232    225                       2606    18139 ;   projectplan projectplan_Project_id_bbac14ac_fk_project_pjid    FK CONSTRAINT     �   ALTER TABLE ONLY projectplan
    ADD CONSTRAINT "projectplan_Project_id_bbac14ac_fk_project_pjid" FOREIGN KEY ("Project_id") REFERENCES project(pjid) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.projectplan DROP CONSTRAINT "projectplan_Project_id_bbac14ac_fk_project_pjid";
       public       ibprojecten    false    223    221    3558                       2606    18145 7   werkorder werkorder_Project_id_1187e225_fk_project_pjid    FK CONSTRAINT     �   ALTER TABLE ONLY werkorder
    ADD CONSTRAINT "werkorder_Project_id_1187e225_fk_project_pjid" FOREIGN KEY ("Project_id") REFERENCES project(pjid) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.werkorder DROP CONSTRAINT "werkorder_Project_id_1187e225_fk_project_pjid";
       public       ibprojecten    false    229    221    3558            �      x������ � �      �      x������ � �      �   �   x�]�M� F��)8AS�m׽F��(�&����W�w����&�ī1��:9�^j��M(�ϟ}�2D�ocz�P>�`�`�G�R�G,�t��oX����5Pro���W',�[{?�u9���<�I�'7�I<��A�.z�OP���/�{ ��P��P�Z��{J�MZ�(��H@�u�ə�%W_xZ!᫰ɢ��+\�&P5_ 2�؃{#F�{� �-��      �   �   x�=��
�@@���.�E�{O�r (3B��j%A��e������*��Y�<Ӝ.�]��� �T�E�]C�7���T����bk�뮏�5�^�j�Y>��!Z0�M�tI��-2m�	 �Jˢb�e��nY�Te�eM�J^����pt�$�%8|F$���5M�5/�      �      x������ � �      �      x������ � �      �   �  x���_k�0ş�O!��ZHW�e�q0:�h�(���%Z+8N�(��N�4q�?��X��9�\�����pLj�W������LnUS�&�����SZVV�gO���M� N!�p #\�Q`O�q~��z-�R��B랗�e�Φ�>��̂���/��\jSl�2{�$�캉�e�u��$��3LGLsʔ��܈�m�B��P7���z|����8�[0���De�8X-cݮ�t�3�u>o��øZ_ �>�*�\(�%5M������qԞp���1��9�C��f�Nz��8��^���z�L;�4�ޅL^*�W2����b�[��0g�Way�LwI4�,�Y8���b����f^6Ӗ�I`4)��.ⷀ�jI����8*ۀ��>	���������)�*�]�*�i;����HH���F�0�ᠹ���-��Z�;	��r`�w�;�X㩇�:eí�F�?e�n>��Pl� ��<�#���r���1_�`0�	쑎�      �   x   x�m�K�0Dמ� ʟ��)�*AIl��"��jA���7���G
�����5쨯�Iʖ�{���BF��8,�:�4H.Ӭ4e�58�������]M^<L-2���'�Ҙq]Ꮪ_�����7�CE�      �   j  x����r�0���S�F��Y�g�F�5. pZ��+	Bl�Nr�`�~�9{�P=�a��<_�~�c`ۡ�[�UȀ�=2� �Aj�5C���+w�|�BM��W�ط�J�L�mN���jG߇Wo��u��.B2�&!���X_������$4�EB�M1Z��~�g?��4�a���wl�S��.�+�yBц�+�2ŋ�]�}J$EoqKI��N8��>B*T*!̆����Ms2���.����"l��h�K;n�f�m�lB��Bk+��k�n��l�8���~����GZ���Ի�|�y�����<���9
�<��(��+EY�KjS$�0�߅��$� YB��,h	���T	1l�.\����~x]�O�2���\�3�����aah�|Y���cA	V@k$����e���[0��������Q���J��~|	�1&d�;wn8��������-�lB��wMA��}S�0�HVGaF敀XB�ۢZ��=����c5�y����l4f�yK+)�a�V�H�3�e~��RW��=y#DmQ>X���c��^��9e|���"#G���2%*!�� �O�7h�V���>� m7��      �   o  x����n�0��usݏٟ�YTM�@�#
?�M�vl(L� Wߴ��Ut�JG�aS���%��d`���`pk42��w��u�ƦP��Uk	?���+�{D|՝�g���
��HZ��oN�ݮ��!#ǵ���F� �9�W���~�ԙЕve���H�s�Y�o]i�#>�>^Nipɳ#:=Y��j�D	�.��.�w]�H�<��w�wq�%�����m�g�O��!=J��5_;#v���ps�r�X$��!"�]�-��������c������Bh31=Vͤ��u���^�
1�U��ҹY~���=ƞE<B��9�/;h�C��N�W=R^:ׯf�L����v���wK�f��e�g��l>bx4R      �   w   x�3�tM��N��JLO-�L������%�E)��zy9�fF����f�F�%%�V��U��zȪ�L-L�M-��覂��2����*�,�,�+RH&�5426�jH��1z\\\ `8�      �   0  x���Kr�6���)x�I��\��8���=eWMe���T )W�J9�\,P�d ����� ���A� {״��u����o��^R��K���Ƨܿ*���D|#��� �+-,6��I�j�&��#����rȦFvy����KV��؞����q�� �m��Rm�Ang�zqG�KqGJ�B�!(r����z5�B�U_���=���	Q�WM(I��%|��i�z�ػ�{%��4L��C������YF ̜�e��M#��_�	81=(t��A�	�MNi}Qmr��N��2��)x���|�>��j�ѩ��p�nOeM9d��,�Z�f�ZҲ�}�e2WIk�v��3U�e3UYP�3�^n����.�;+���`�����:�\��,�T�b�J�Ùk<��#h��,�huǠ�������@T�^�Q�!��G�"����
����9�|��Ǟ5���o�ࢹl=N�����c��Ak�Z��0�AKe�")x��%��XU�ZW"-՜3���hOQ0���C�T䦯s��1��([%��X�����DKe���	Π�i�rRl`9h&%��ޓ$�=�+-:�uȆ�c�����=�n�6�4[ʠq�h���q�������#}b����V������-P<���z(o<��=+	X|��(T�?����[�GF|�+��'�FN��{m��_i���CH��81`��l7��85����z����Bf���둶�oTB�9�s��b/P\z�����S��{)A�q�$xB�Q�hB8r�$�v��$�|�9�>�6Lp�}�[*����|(B>�F�9�my�%���[q�`ӂSd�L�M��3,7���g�Mct��4��]>��6�叩�%c��Z�t��ڔ�Oe�w�?��Kd�3(Þ�<�ƓE��p�سM�x�&K��ƒeô��	.N�߭�|��Z�v��>���K���<�d���|�e8?y8�!��9�$�^O��gG��j3��,P�O�S�����a�lp�����9o�hft�[���{Z�=����guip��Y]�~],���      �   �   x�}���0���]��i�أ��#+K&���H�m��dɶ>�N6���r=�O����<(���=RK�@�P�Q"�gc�3��H] ���D��!hx��f>d�dQD�<����s�ѯ�T\�씚�m�/����C
���3ƞ�?�y�I$k
��5�u�S@�˪6����������i�4�1�P�      �      x�34�4�4�24R�\1z\\\ 	r      �      x������ � �      �   W   x���� �3��	L���I���H�i�
a}���7�0��T��%���D�[a,�g�,�. 2ңR;����?n�֣�N�@D/��      �   $   x�3��/H)JL�(IO-K-�2���Rs��=... �:�      �      x������ � �      �   .   x�3�t��M�KL)�L-�t40�4�0�t,�+7020�4����� �]	�     