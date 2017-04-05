--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: Chen
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO "Chen";

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: Chen
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO "Chen";

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Chen
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: Chen
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO "Chen";

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: Chen
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO "Chen";

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Chen
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: Chen
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO "Chen";

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: Chen
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO "Chen";

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Chen
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: captcha_captchastore; Type: TABLE; Schema: public; Owner: Chen
--

CREATE TABLE captcha_captchastore (
    id integer NOT NULL,
    challenge character varying(32) NOT NULL,
    response character varying(32) NOT NULL,
    hashkey character varying(40) NOT NULL,
    expiration timestamp with time zone NOT NULL
);


ALTER TABLE captcha_captchastore OWNER TO "Chen";

--
-- Name: captcha_captchastore_id_seq; Type: SEQUENCE; Schema: public; Owner: Chen
--

CREATE SEQUENCE captcha_captchastore_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE captcha_captchastore_id_seq OWNER TO "Chen";

--
-- Name: captcha_captchastore_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Chen
--

ALTER SEQUENCE captcha_captchastore_id_seq OWNED BY captcha_captchastore.id;


--
-- Name: coffee_comment; Type: TABLE; Schema: public; Owner: Chen
--

CREATE TABLE coffee_comment (
    id integer NOT NULL,
    comment_message character varying(140),
    comment_user_name character varying(70),
    comment_date timestamp with time zone NOT NULL,
    comment_user_id integer NOT NULL,
    spot_id integer NOT NULL,
    comment_mark character varying(10),
    comment_user_avatarurl character varying(200)
);


ALTER TABLE coffee_comment OWNER TO "Chen";

--
-- Name: coffee_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: Chen
--

CREATE SEQUENCE coffee_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE coffee_comment_id_seq OWNER TO "Chen";

--
-- Name: coffee_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Chen
--

ALTER SEQUENCE coffee_comment_id_seq OWNED BY coffee_comment.id;


--
-- Name: coffee_spot; Type: TABLE; Schema: public; Owner: Chen
--

CREATE TABLE coffee_spot (
    id integer NOT NULL,
    city character varying(70) NOT NULL,
    name character varying(70) NOT NULL,
    longitude double precision NOT NULL,
    latitude double precision NOT NULL,
    download_speed character varying(70),
    speed_test_link character varying(100),
    price_indication character varying(70),
    bathroom boolean NOT NULL,
    commit_user_name character varying(70),
    commit_message character varying(140),
    commit_date timestamp with time zone NOT NULL,
    commit_user_id integer NOT NULL,
    upload_speed character varying(70)
);


ALTER TABLE coffee_spot OWNER TO "Chen";

--
-- Name: coffee_spot_id_seq; Type: SEQUENCE; Schema: public; Owner: Chen
--

CREATE SEQUENCE coffee_spot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE coffee_spot_id_seq OWNER TO "Chen";

--
-- Name: coffee_spot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Chen
--

ALTER SEQUENCE coffee_spot_id_seq OWNED BY coffee_spot.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: Chen
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


ALTER TABLE django_admin_log OWNER TO "Chen";

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: Chen
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO "Chen";

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Chen
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: Chen
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO "Chen";

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: Chen
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO "Chen";

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Chen
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: Chen
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO "Chen";

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: Chen
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO "Chen";

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Chen
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: Chen
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO "Chen";

--
-- Name: user_user; Type: TABLE; Schema: public; Owner: Chen
--

CREATE TABLE user_user (
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
    date_joined timestamp with time zone NOT NULL,
    nickname character varying(50) NOT NULL,
    bio character varying(120) NOT NULL,
    url character varying(100) NOT NULL,
    location character varying(100) NOT NULL,
    avatar character varying(100) NOT NULL,
    last_login_ip inet,
    ip_joined inet,
    client_mark character varying(10),
    "weixin_avatarUrl" character varying(200),
    "weixin_nickName" character varying(50)
);


ALTER TABLE user_user OWNER TO "Chen";

--
-- Name: user_user_groups; Type: TABLE; Schema: public; Owner: Chen
--

CREATE TABLE user_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE user_user_groups OWNER TO "Chen";

--
-- Name: user_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: Chen
--

CREATE SEQUENCE user_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_user_groups_id_seq OWNER TO "Chen";

--
-- Name: user_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Chen
--

ALTER SEQUENCE user_user_groups_id_seq OWNED BY user_user_groups.id;


--
-- Name: user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: Chen
--

CREATE SEQUENCE user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_user_id_seq OWNER TO "Chen";

--
-- Name: user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Chen
--

ALTER SEQUENCE user_user_id_seq OWNED BY user_user.id;


--
-- Name: user_user_user_permissions; Type: TABLE; Schema: public; Owner: Chen
--

CREATE TABLE user_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE user_user_user_permissions OWNER TO "Chen";

--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: Chen
--

CREATE SEQUENCE user_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_user_user_permissions_id_seq OWNER TO "Chen";

--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Chen
--

ALTER SEQUENCE user_user_user_permissions_id_seq OWNED BY user_user_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: captcha_captchastore id; Type: DEFAULT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY captcha_captchastore ALTER COLUMN id SET DEFAULT nextval('captcha_captchastore_id_seq'::regclass);


--
-- Name: coffee_comment id; Type: DEFAULT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY coffee_comment ALTER COLUMN id SET DEFAULT nextval('coffee_comment_id_seq'::regclass);


--
-- Name: coffee_spot id; Type: DEFAULT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY coffee_spot ALTER COLUMN id SET DEFAULT nextval('coffee_spot_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: user_user id; Type: DEFAULT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY user_user ALTER COLUMN id SET DEFAULT nextval('user_user_id_seq'::regclass);


--
-- Name: user_user_groups id; Type: DEFAULT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY user_user_groups ALTER COLUMN id SET DEFAULT nextval('user_user_groups_id_seq'::regclass);


--
-- Name: user_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY user_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('user_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: Chen
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Chen
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: Chen
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Chen
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: Chen
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
16	Can add user	6	add_user
17	Can change user	6	change_user
18	Can delete user	6	delete_user
19	Can add comment	7	add_comment
20	Can change comment	7	change_comment
21	Can delete comment	7	delete_comment
22	Can add spot	8	add_spot
23	Can change spot	8	change_spot
24	Can delete spot	8	delete_spot
25	Can add captcha store	9	add_captchastore
26	Can change captcha store	9	change_captchastore
27	Can delete captcha store	9	delete_captchastore
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Chen
--

SELECT pg_catalog.setval('auth_permission_id_seq', 27, true);


--
-- Data for Name: captcha_captchastore; Type: TABLE DATA; Schema: public; Owner: Chen
--

COPY captcha_captchastore (id, challenge, response, hashkey, expiration) FROM stdin;
2	FKOB	fkob	eb22e013fafa30095d1298d038341ada0b9f5f5b	2017-04-05 17:01:26.097622+08
3	BWSM	bwsm	f5b0271805436cec1bdee26713812842734547ca	2017-04-05 17:02:05.632139+08
4	KGAU	kgau	1e85c59ca5f72e872843b93d4ce8341a12138cf7	2017-04-05 17:05:10.434151+08
5	KKJM	kkjm	5cd9c42904c5ce160bcecfcb7b2fbec12f0e6872	2017-04-05 17:05:11.046727+08
6	JAPX	japx	8420fe5e5aa37b89dd597d885ee9d8a91019bec2	2017-04-05 17:05:18.195025+08
7	WIHK	wihk	066e0aaa7f93ee89e0d0e0ebe8b085dc290a75ad	2017-04-05 17:08:43.958086+08
8	NFHM	nfhm	03aa3bee575331c51541b021f43d890e6390832c	2017-04-05 17:08:50.450172+08
9	VAXE	vaxe	51d206d619643c5ad66439c6bf693b6b21aa9e4a	2017-04-05 17:09:52.960027+08
10	JCFZ	jcfz	8423bfa5581c0cf99562c98d86585f4361b1b6ba	2017-04-05 17:13:48.509509+08
11	ZADA	zada	5cd86fd95415a3c7dc2580c9377c8b80476247f8	2017-04-05 17:14:14.562826+08
12	JAHQ	jahq	b21f4e00154edd38ab6763ab142e66b4e4855a5c	2017-04-05 17:14:54.284079+08
13	TDGV	tdgv	72bd8187c25a16bcefa855046bc8f9834e7dea94	2017-04-05 17:16:00.93676+08
14	RBHT	rbht	6902ed9049f9d07ed23ee68d9a3837ca5ce731ff	2017-04-05 17:16:39.010392+08
15	OFPL	ofpl	c3cee84e452a7efad6a8c5e6b311d49015e3e727	2017-04-05 17:17:11.557908+08
16	CVAR	cvar	4896ca967b77f59199673e357f0d84e4054e63f1	2017-04-05 17:19:01.830666+08
17	JSCU	jscu	08cdce89f0a9a4b05687247188a195cd45fcf8e6	2017-04-05 17:19:20.347489+08
18	UIHE	uihe	1cef0f9f0f3b24ad99696063a22e6b4511938c95	2017-04-05 17:19:29.102032+08
19	CZGM	czgm	b1fe551bbb9bbbf2805ea04aaf265230d59f31cf	2017-04-05 17:19:29.832346+08
\.


--
-- Name: captcha_captchastore_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Chen
--

SELECT pg_catalog.setval('captcha_captchastore_id_seq', 19, true);


--
-- Data for Name: coffee_comment; Type: TABLE DATA; Schema: public; Owner: Chen
--

COPY coffee_comment (id, comment_message, comment_user_name, comment_date, comment_user_id, spot_id, comment_mark, comment_user_avatarurl) FROM stdin;
2	hgvj	jhbhj	2017-04-01 00:00:00+08	1	1	comment	http://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epicwkEfE7iclCpadJmTcsEicoc509XJCpk6l0c4tDxibpKkd9WNyAbmTaQXUXL8PljTUJTKOziarpnR0A/0
3	hgvj	jhbhj	2017-04-02 00:00:00+08	1	1	comment	http://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epicwkEfE7iclCpadJmTcsEicoc509XJCpk6l0c4tDxibpKkd9WNyAbmTaQXUXL8PljTUJTKOziarpnR0A/0
4	hgvj	jhbhj	2017-04-02 00:10:00+08	1	1	check	http://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epicwkEfE7iclCpadJmTcsEicoc509XJCpk6l0c4tDxibpKkd9WNyAbmTaQXUXL8PljTUJTKOziarpnR0A/0
\.


--
-- Name: coffee_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Chen
--

SELECT pg_catalog.setval('coffee_comment_id_seq', 21, true);


--
-- Data for Name: coffee_spot; Type: TABLE DATA; Schema: public; Owner: Chen
--

COPY coffee_spot (id, city, name, longitude, latitude, download_speed, speed_test_link, price_indication, bathroom, commit_user_name, commit_message, commit_date, commit_user_id, upload_speed) FROM stdin;
149	北京	星巴克（北京赛特购物中心店）	116.435000000000002	39.9065000000000012	10.02 Mbps	http://www.speedtest.net/my-result/i/2033544148	\N	f	xhacker	在赛特地下一层，工作日的上午人非常少，到中午饭点人多了起来。	2017-04-03 00:00:00+08	1	\N
73	杭州	青峰	120.211513999999994	30.2125799999999991	4.47 Mbps	http://www.speedtest.net/my-result/5272283494	30元	f	Du	靠墙座位有插座，有WiFi，服务态度不错，价格合适，环境安静，供应餐食可以顺便解决午饭	2017-03-20 08:00:00+08	1	\N
1	北京	奇遇花园	116.341999999999999	39.9410000000000025	22 Mbps	http://www.speedtest.net/my-result/4629928302	30-40 元	f	xhacker	有电源，网速快，环境不错，咖啡也不错。	2017-03-20 08:00:00+08	1	\N
2	北京	May Café	116.328976999999995	40.0327800000000025	41 Mbps	http://www.speedtest.net/my-result/4850194225	25-40 元	f	mckelvin	有电源，网速快，环境不错，人不多。	2017-03-20 08:00:00+08	1	\N
3	北京	Esquires Café	116.418825999999996	39.9154240000000016	3.18 Mbps	http://www.speedtest.net/my-result/4891431411	30 元	f	crispgm	有电源，网速快，可看王府井街景。	2017-03-20 08:00:00+08	1	\N
4	北京	Starbucks 星巴克 (四元桥店)	116.450942299999994	39.9780850000000001	13 Mbps	http://www.speedtest.net/my-result/5106521098	30 元	f	tianyuf	有电源，网速快，服务好。	2017-03-20 08:00:00+08	1	\N
5	北京	雕刻时光 Sculpting In Time	116.472346999999999	39.9974050000000005	3.03 Mbps	http://www.speedtest.net/my-result/5115403108	40 元	f	tianyuf	环境好，服务好。	2017-03-20 08:00:00+08	1	\N
6	北京	Meet Café	116.454031000000001	39.897630999999997	28.91 Mbps	http://www.speedtest.net/my-result/i/1674659148	30 元	f	crispgm	环境好，手机测网速快，Brunch 好吃。	2017-03-20 08:00:00+08	1	\N
7	北京	Gloria Jean's Coffees（通盈三里屯店）	116.449020000000004	39.9309470000000033	22.49 Mbps	http://www.speedtest.net/my-result/i/1711955836	34 元	f	crispgm	电源充足，人不多，手机测网速快。	2017-03-20 08:00:00+08	1	\N
8	北京	漫咖啡 MAAN COFFEE	116.351184000000003	39.9621479999999991	3.51 Mbps	http://www.speedtest.net/my-result/5539012756	30 元	f	beta	电源充足，环境不错，人不多。	2017-03-20 08:00:00+08	1	\N
9	北京	极客咖啡	116.300510000000003	39.9814670000000021	9.40 Mbps	http://www.speedtest.net/my-result/5598700538		f	xhacker	拿铁一般，环境一般，人少，网速快，有电源。	2017-03-20 08:00:00+08	1	\N
10	北京	么么咖啡（紫竹店）	116.299232000000003	39.9426860000000019	2.13 Mbps	http://www.speedtest.net/my-result/5599038063		f	xhacker	咖啡不错，环境不错，网速一般，有电源。	2017-03-20 08:00:00+08	1	\N
11	北京	Starbucks 星巴克（丰联店）	116.433000000000007	39.9221999999999966	3.47 Mbps	http://www.speedtest.net/my-result/i/1764988610		f	crispgm	场地大，光线好，网速一般，有少量电源。	2017-03-20 08:00:00+08	1	\N
12	北京	Costa Coffee（丰联广场店）	116.4328	39.9221000000000004	4.34 Mbps	http://www.speedtest.net/my-result/i/1766332176		f	crispgm	环境好，网速一般，有电源。	2017-03-20 08:00:00+08	1	\N
13	北京	星巴克（贵友店）	116.445449999999994	39.9076000000000022	5.01 Mbps	http://www.speedtest.net/my-result/5608827828		f	xhacker	有少量电源。Wi-Fi 似乎限速 5 M。	2017-03-20 08:00:00+08	1	\N
14	北京	Costa Coffee（颐堤港店）	116.485260999999994	39.9679479999999998	1.41 Mbps	http://www.speedtest.net/my-result/i/1768641381		f	xhacker	网速很慢，地方挺大的，有少量电源。	2017-03-20 08:00:00+08	1	\N
15	北京	J Coffee（SOHO 尚都店）	116.447999999999993	39.9177999999999997	30.68 Mbps	http://www.speedtest.net/my-result/i/1769675242		f	imty42	日式风格矮桌椅，挺安静的。大叔老板拉花不错。有电源。	2017-03-20 08:00:00+08	1	\N
16	北京	Carlly Cafe 车里咖啡	116.252427999999995	39.9069339999999997	20.88 Mbps	http://www.speedtest.net/my-result/i/1772238471		f	xhacker	很安静、很舒服，咖啡好喝。网速不错，有少量电源。晚上还有人弹琴。🎸	2017-03-20 08:00:00+08	1	\N
17	北京	Coffee Holic（朝外 SOHO 店）	116.448999999999998	39.9187000000000012	4.40 Mbps	http://www.speedtest.net/my-result/i/1770959453		f	imty42	网速不快，咖啡有特点，好喝。老板年轻人，乐于分享咖啡知识。有电源。	2017-03-20 08:00:00+08	1	\N
18	北京	咖啡陪你（王府井店）	116.404674	39.9145070000000004	4.63 Mbps	http://www.speedtest.net/my-result/i/1773643866		f	xhacker	有一点喧闹，靠窗的位子能看到王府井街景。拿铁不错。网速凑合，没看到电源。	2017-03-20 08:00:00+08	1	\N
19	北京	星巴克（北京新东安店）	116.405704	39.9137729999999991	4.99 Mbps	http://www.speedtest.net/my-result/i/1773871904		f	xhacker	有一点喧闹，在 APM 地下一层。网速凑合，有少量电源。	2017-03-20 08:00:00+08	1	\N
20	北京	星巴克（龙旗广场店）	116.340999999999994	40.0649000000000015	12.25 Mbps	http://www.speedtest.net/my-result/i/1774642514		f	imty42	有一点喧闹，可能是因为接近中午的缘故。大桌和沙发桌有电源。	2017-03-20 08:00:00+08	1	\N
21	北京	星巴克（北京西四环南路咖啡店）	116.279822999999993	39.8366019999999992	8.54 Mbps	http://www.speedtest.net/my-result/i/1774834286		f	xhacker	人不太多，靠边的位置有电源。	2017-03-20 08:00:00+08	1	\N
22	北京	漫咖啡（悠唐店）	116.433000000000007	39.9200999999999979	1.55 Mbps	http://www.speedtest.net/my-result/i/1774857512		f	crispgm	人比较多，但环境好，电源充足。	2017-03-20 08:00:00+08	1	\N
23	北京	星巴克（嘉里店 BJ Kerry Center）	116.453999999999994	39.9121000000000024	5.95 Mbps	http://www.speedtest.net/my-result/i/1777083259		f	imty42	有两层，二层可以点手冲，人多网慢小圆桌有沿不适合放电脑，木质大圆桌还不错，一楼有电源。	2017-03-20 08:00:00+08	1	\N
24	北京	星巴克（丰北路店）	116.287783000000005	39.8651869999999988	19.87 Mbps	http://www.speedtest.net/my-result/i/1778287600		f	xhacker	地方不大，人也不太多。有少量电源。	2017-03-20 08:00:00+08	1	\N
25	北京	迪欧咖啡（石景山店）	116.243031999999999	39.896684999999998	27.44 Mbps	http://www.speedtest.net/my-result/i/1778571350		f	csvenja	地方挺大，人不多，有电源。	2017-03-20 08:00:00+08	1	\N
26	北京	Gloria Jean's Coffees（Naga上院店）	116.421999999999997	39.9399000000000015	9.06 Mbps	http://www.speedtest.net/my-result/i/1779843014	34 元	f	crispgm	场地大，人不多，光线好，网速较快。	2017-03-20 08:00:00+08	1	\N
27	北京	星巴克（北京南站第一咖啡店）	116.371978999999996	39.862957999999999	3.74 Mbps	http://www.speedtest.net/my-result/i/1779876236		f	xhacker	在南站里，二层人不多。有少量电源。	2017-03-20 08:00:00+08	1	\N
28	北京	星巴克（三里屯店）	116.447999999999993	39.9331999999999994	2.23 Mbps	http://www.speedtest.net/my-result/i/1781079455		f	xhacker	有两层，有少量电源。	2017-03-20 08:00:00+08	1	\N
29	北京	香咖啡	116.456000000000003	39.9322999999999979	8.86 Mbps	http://www.speedtest.net/my-result/i/1781257065		f	xhacker	环境很好，很幽静，咖啡不错。网速实际感觉较慢，有电源。	2017-03-20 08:00:00+08	1	\N
30	北京	Costa Coffee（京汇店）	116.456899000000007	39.9054160000000024	5.62 Mbps	http://www.speedtest.net/my-result/i/1782497468		f	xhacker	Wi-Fi 信號奇差，基本連不上。	2017-03-20 08:00:00+08	1	\N
31	北京	星巴克（北京大成路店）	116.259	39.8879000000000019	8.86 Mbps	http://www.speedtest.net/my-result/i/1790507938		f	xhacker	地下地方比较大，靠墙有一些电源。	2017-03-20 08:00:00+08	1	\N
32	北京	星巴克（北京羊坊路咖啡店）	116.314999999999998	39.8978999999999999	0.85 Mbps	http://www.speedtest.net/my-result/i/1795487239		f	xhacker	网速感人（贬义的）。	2017-03-20 08:00:00+08	1	\N
33	北京	Costa Coffee（金隅万科店）	116.240221494500005	40.2124291870999997	11.12 Mbps	http://www.speedtest.net/my-result/5682421414		f	cscmaker	厅内右侧尽头有一个黑色皮沙发，非常舒服，店内插座较少。	2017-03-20 08:00:00+08	1	\N
34	北京	Coffee Craft (CC咖啡馆)	116.343000000000004	39.9431999999999974	7.10 Mbps	http://www.speedtest.net/my-result/i/1828821698	卡布奇诺：30 元，手冲咖啡：40 元	f	crispgm	空间很大，但位置不多，风格现代艺术感。手冲咖啡味道不错，插座不多但有插线板。	2017-03-20 08:00:00+08	1	\N
35	北京	Costa Coffee（IFC 大厦店）	116.447000000000003	39.9063999999999979	0.46 Mbps	http://www.speedtest.net/my-result/i/1831357023		f	xhacker	环境不错，网速慢。	2017-03-20 08:00:00+08	1	\N
36	北京	Costa Coffee（中环世贸店）	116.450999999999993	39.9055999999999997	3.90 Mbps	http://www.speedtest.net/my-result/i/1861251511		f	xhacker	中环世贸中心D座1层。地方不大，有少量电源。网速由 ZHSM-D 测出，Costa 自己的 Wi-Fi 非常慢。	2017-03-20 08:00:00+08	1	\N
37	北京	星巴克（颐堤港中心咖啡店）	116.486000000000004	39.9694000000000003	5.06 Mbps	http://www.speedtest.net/my-result/i/1876256024		f	xhacker	有少量电源。	2017-03-20 08:00:00+08	1	\N
38	北京	Costa Coffee（英特宜家店）	116.322000000000003	39.7886000000000024	13.32 Mbps	http://www.speedtest.net/my-result/i/1877225008		f	xhacker	在荟萃一层，店挺大的，人不太多，边上有少量电源。	2017-03-20 08:00:00+08	1	\N
39	北京	Costa Coffee（首地大峡谷店）	116.361000000000004	39.8534000000000006	2.56 Mbps	http://www.speedtest.net/my-result/i/1878448433		f	xhacker	首地大峡谷一层 F1-05，店挺大的，人不太多，边上有少量电源。	2017-03-20 08:00:00+08	1	\N
40	北京	星巴克（英蓝国际店）	116.352000000000004	39.9191000000000003	0.77 Mbps	http://www.speedtest.net/my-result/i/1879679355		f	xhacker	地方大，环境不错，有少量电源，可惜网速渣。	2017-03-20 08:00:00+08	1	\N
41	北京	雕刻时光（腾讯店）	116.330911	39.9755660000000006	50.67 Mbps	http://beta.speedtest.net/result/5847282428		f	xohozu	环境不错，网速挺好，电源量还好。因在腾讯大楼里，出入不是方便。	2017-03-20 08:00:00+08	1	\N
42	北京	星巴克（银座百货店）	116.430000000000007	39.938600000000001	2.33 Mbps	http://www.speedtest.net/my-result/i/1879845515		f	Cee	环境不错，座位多，非常温暖。	2017-03-20 08:00:00+08	1	\N
43	北京	星巴克（欣宁大街店）	116.322000000000003	39.7867000000000033	8.38 Mbps	http://www.speedtest.net/my-result/i/1884566518		f	xhacker	地方很开阔，有一些电源。	2017-03-20 08:00:00+08	1	\N
44	北京	星巴克（丰葆路店）	116.286000000000001	39.8166000000000011	12.11 Mbps	http://www.speedtest.net/my-result/i/1892160727		f	xhacker	地方很开阔，有一些电源。	2017-03-20 08:00:00+08	1	\N
45	北京	Costa Coffee（三里屯太古里店）	116.447999999999993	39.9341000000000008	5.42 Mbps	http://www.speedtest.net/my-result/i/1908970377		f	xhacker	三里屯 Village 地下一层。	2017-03-20 08:00:00+08	1	\N
46	北京	星巴克（鲁谷远洋店）	116.245999999999995	39.9024000000000001	1.96 Mbps	http://www.speedtest.net/my-result/i/1914242475		f	xhacker	地方挺大，有一些电源。	2017-03-20 08:00:00+08	1	\N
47	北京	Costa Coffee（欧美汇店）	116.308000000000007	39.9782999999999973	0.71 Mbps	http://www.speedtest.net/my-result/i/1924488152		f	xhacker	人不太多，网速奇慢	2017-03-20 08:00:00+08	1	\N
48	北京	咖啡陪你（天桥店）	116.391999999999996	39.8843000000000032	9.24 Mbps	http://www.speedtest.net/my-result/i/1916773595		f	xhacker	在寒冷的晚上走进的咖啡店，吃的还不错。	2017-03-20 08:00:00+08	1	\N
49	北京	MANGOSIX Coffee & Dessert	116.447000000000003	39.9331000000000031	21.73 Mbps	http://www.speedtest.net/my-result/i/1924659288		f	crispgm	比较安静人少，可能天气不太好的缘故。网速很不错，有一些插线板。	2017-03-20 08:00:00+08	1	\N
50	北京	福楼咖啡 Cafe Flo	116.442999999999998	39.9181000000000026	0.75 Mbps	http://www.speedtest.net/my-result/i/1927287755		f	xhacker	侨福芳草地地下二层。环境不错。拿铁好喝。	2017-03-20 08:00:00+08	1	\N
51	北京	星巴克（北京 LG 大厦店）	116.442999999999998	39.9063000000000017	9.60 Mbps	http://www.speedtest.net/my-result/i/1928516069		f	xhacker	中午人有点多，有少量电源。	2017-03-20 08:00:00+08	1	\N
52	北京	星巴克（北京 SK 大厦店）	116.450999999999993	39.9063000000000017	1.29 Mbps	http://www.speedtest.net/my-result/i/1929928850		f	xhacker	在 SK 大厦二层，开放式布局，环境挺好的。	2017-03-20 08:00:00+08	1	\N
53	北京	星巴克（北京西小口路店）	116.350999999999999	40.0454000000000008	8.08 Mbps	http://www.speedtest.net/my-result/i/1934227111		f	xhacker	在东升科技园内。空间很大，人很少。有少量电源。	2017-03-20 08:00:00+08	1	\N
54	北京	星巴克（北京西单汉光百货商场店）	116.370000000000005	39.9076000000000022	7.08 Mbps	http://www.speedtest.net/my-result/i/1934686138		f	xhacker	人不太多，有电源。	2017-03-20 08:00:00+08	1	\N
55	北京	星巴克（北京五棵松第二咖啡店）	116.272000000000006	39.9117999999999995	8.74 Mbps	http://www.speedtest.net/my-result/i/1935870482		f	xhacker	在卓展五层，耀莱成龙外面。人挺多的，有点乱。沙发座有电源。	2017-03-20 08:00:00+08	1	\N
56	北京	Costa Coffee（中海广场店）	116.450000000000003	39.9091999999999985	7.19 Mbps	http://www.speedtest.net/my-result/i/1937074734		f	xhacker	环境好，有少量电源。在中海广场写字楼一层。	2017-03-20 08:00:00+08	1	\N
57	北京	太平洋咖啡（国贸店）	116.451999999999998	39.9108000000000018	2.28 Mbps	http://www.speedtest.net/my-result/i/1948933221		f	xhacker	地方很有意思，有各种座位和桌子。有一些电源，人不太多。在国贸商城地下一层，从 Zone 1 & 2 到 Zone 3 的路上。	2017-03-20 08:00:00+08	1	\N
58	北京	星巴克（北京万丰路咖啡店）	116.292000000000002	39.8813999999999993	14.65 Mbps	http://www.speedtest.net/my-result/i/1953036805		f	xhacker	在银座和谐广场一层东北入口处。地方小，座位少。大年初一人不太多，平时不知道。	2017-03-20 08:00:00+08	1	\N
59	北京	星巴克（北京古北咖啡店）	117.262	40.644599999999997	2.60 Mbps	http://www.speedtest.net/my-result/i/1954465963		f	xhacker	在古北水镇旅客服务中心内，比较乱，人多。	2017-03-20 08:00:00+08	1	\N
60	北京	星巴克（北京建外现代城店）	116.453999999999994	39.9039000000000001	2.29 Mbps	http://www.speedtest.net/my-result/i/1965150161		f	xhacker	地方非常大，有三层，但人也非常多。	2017-03-20 08:00:00+08	1	\N
61	北京	Cafe Flatwhite（华茂店）	116.474000000000004	39.9074000000000026	4.91 Mbps	http://www.speedtest.net/my-result/i/1972987326		f	crispgm	环境极好，插座充足。	2017-03-20 08:00:00+08	1	\N
62	北京	星巴克（北京什刹海天荷坊店）	116.385999999999996	39.9326000000000008	1.13 Mbps	http://www.speedtest.net/my-result/i/1998158513		f	xhacker	在荷花市场里，地方很小。	2017-03-20 08:00:00+08	1	\N
63	北京	Illy（侨福芳草地）	116.441999999999993	39.9181999999999988	1.23 Mbps	http://www.speedtest.net/my-result/i/2007239493		f	xhacker	在芳草地二层，地方大、采光好、很开阔。	2017-03-20 08:00:00+08	1	\N
64	北京	太平洋咖啡（银座和谐店）	116.290000000000006	39.8808000000000007	2.27 Mbps	http://www.speedtest.net/my-result/i/2011340641		f	xhacker	在银座和谐广场西南角。地方大、人不多。	2017-03-20 08:00:00+08	1	\N
65	北京	星巴克（北京丽泽桥恒泰咖啡店）	116.299999999999997	39.8652999999999977	8.27 Mbps	http://www.speedtest.net/my-result/i/2012460104		f	xhacker	人挺多的，基本没地方。靠边有少量电源。	2017-03-20 08:00:00+08	1	\N
66	广州	班克咖啡	113.320205000000001	23.1312449999999998	8.51 Mbps	http://www.speedtest.net/my-result/5243998080	30-50 元	f	mshhmzh	自家烘焙咖啡店，主打精品咖啡。网络一般，平时人比较少	2017-03-20 08:00:00+08	1	\N
67	广州	7-INN郁源咖啡	113.319997999999998	23.131219999999999	39.73 Mbps	http://www.speedtest.net/my-result/5563529474	40-50 元	f	mshhmzh	自家烘焙咖啡店，主打精品咖啡。电信光纤，网速很快。很适合小团队外出办公	2017-03-20 08:00:00+08	1	\N
68	杭州	贝塔朋友@当堂咖啡馆	120.112044811249007	30.2866977891211988	2.00 Mbps	http://www.speedtest.net/my-result/5220542783	27-45 元	f	Du	店比较空，唯一像互联网咖啡厅的地方是楼上有一些会议室状的房间。网速没有想象中的快，且并没有自带梯子。另外没有插座很怨念	2017-03-20 08:00:00+08	1	\N
131	深圳	蒙咖啡小馆 Mon Cafe	113.978999999999999	22.5427999999999997	7.11 Mbps	http://www.speedtest.net/my-result/i/1799531243	38-50 元	f	crispgm	格调很好，比较安静，氛围更适合看书。价格稍贵。	2017-03-20 08:00:00+08	1	\N
69	杭州	芸台书舍	120.203969999999998	30.2415720000000015	1.48 Mbps	http://www.speedtest.net/my-result/5257166271	38 元	f	Du	座位有插座，WiFi速度还行，书店所在的娃哈哈未来城有点冷清，所以比起闹市区来这个店很安静，也不用怕来得晚没有座位。	2017-03-20 08:00:00+08	1	\N
70	杭州	薄荷咖啡	120.117011000000005	30.2826939999999993	34.53 Mbps	http://www.speedtest.net/my-result/5259475408	30 - 50 元	f	61	店隐蔽在树林里，比较难找，人比较少环境不错	2017-03-20 08:00:00+08	1	\N
71	杭州	Zoo Coffee	120.096551000000005	30.2749769999999998	14.37 Mbps	http://www.speedtest.net/my-result/5260003831	30 - 50 元	f	61	蘑菇街楼下，位置多	2017-03-20 08:00:00+08	1	\N
72	杭州	云门书屋	120.079322000000005	30.3125110000000006	9.78 Mbps	http://www.speedtest.net/my-result/5267002745	30 - 50 元	f	61	浙大紫金港校区边上，人比较少	2017-03-20 08:00:00+08	1	\N
74	杭州	Teresa's	120.118611000000001	30.272825000000001	7.0 Mbps	http://www.speedtest.net/my-result/5276933310	35 - 50 元	f	61	浙大玉泉校区北门附近，人比较少，沙发舒服	2017-03-20 08:00:00+08	1	\N
75	杭州	黑桃咖啡	120.105040000000002	30.270423000000001	34.63 Mbps	http://www.speedtest.net/my-result/5349797629	35 - 50 元	f	61	西溪路上，店很大，装修很不错，桌子很大沙发很舒服	2017-03-20 08:00:00+08	1	\N
76	杭州	星巴克咖啡 (西溪天堂店)	120.085999999999999	30.2669999999999995	0.76 Mbps	http://www.speedtest.net/my-result/5534420505	≥ 36 ¥	f			2017-03-20 08:00:00+08	1	\N
77	南京	Costa Coffee（南京南站店）	118.781999999999996	31.972999999999999	0.75 Mbps	http://www.speedtest.net/my-result/4643048535	25-30 元	f	xhacker	出北出站口就到。	2017-03-20 08:00:00+08	1	\N
78	南京	Starbucks（南京苏宁商贸店）	118.780000000000001	32.0420000000000016	5.0 Mbps	http://www.speedtest.net/my-result/4643486860	30-40 元	f	xhacker	人挺少的，网速还不错。	2017-03-20 08:00:00+08	1	\N
79	南京	The Cub	118.772000000000006	32.0519999999999996	13 Mbps	http://www.speedtest.net/my-result/5220780633	20-40 元	f	61	很简洁的咖啡馆，网速很快。	2017-03-20 08:00:00+08	1	\N
80	上海	猫的天空之城（新天地店）	121.470755338668994	31.2195729716891996	2.2 Mbps	http://www.speedtest.net/my-result/4638301580	25-30 元	f	xhacker	共享新天地的免费 Wi-Fi，极慢。网速用 XTDStyle_free 测量。丝袜奶茶还不错。	2017-03-20 08:00:00+08	1	\N
81	上海	星巴克（800秀店）	121.439359999999994	31.2357000000000014	2.95 Mbps	http://www.speedtest.net/my-result/4643633193	33元	f	aquarhead	其实就在我司楼下. 速度还可以(虽然远远比不上我司就是了www)	2017-03-20 08:00:00+08	1	\N
82	上海	delimuses	121.436449999999994	31.2355799999999988	3.75 Mbps	http://www.speedtest.net/my-result/4652272975	50-70元	f	aquarhead	也在我司附近. 一般人不会太多所以网速蛮不错的. 有吃有喝只是价格略贵上菜也比较慢	2017-03-20 08:00:00+08	1	\N
83	上海	Starbucks (CITIC Square)	121.450720000000004	31.2296799999999983	1.00 Mbps	http://www.speedtest.net/my-result/4657045711		f	aquarhead	地方蛮大的. 有一张长方桌所以感觉挺不错的	2017-03-20 08:00:00+08	1	\N
84	上海	Wine Connection	121.435559999999995	31.2240099999999998	3.61 Mbps	http://www.speedtest.net/my-result/4659526554	30 元	f	aquarhead	价位合理. 有早午餐正餐酒水齐全. 就在路边上但并不太吵	2017-03-20 08:00:00+08	1	\N
85	上海	Meo's Coffee	121.505749100000003	31.2352515000000004	16.00 Mbps	http://www.speedtest.net/my-result/4659481377	31 元	f	ryaneof	地理位置很好，顾客很少，比较安静，网速也不错。	2017-03-20 08:00:00+08	1	\N
86	上海	Starbucks (Baoshan Road)	121.475558800000002	31.2529614000000002	22.00 Mbps	http://www.speedtest.net/my-result/4673146632	30 元	f	ryaneof	宝山路地铁站 1 号口附近，平时顾客不多，星巴克门店中网速不错的一家店。	2017-03-20 08:00:00+08	1	\N
87	上海	Musk Cat Coffee	121.497738999999996	31.235244999999999	78.00 Mbps	http://www.speedtest.net/my-result/4678162578	38 元	f	ryaneof	位于陆家嘴西路滨江大道，网速很赞，环境也很赞，周末人不多，坐在江边吹风感觉很好。	2017-03-20 08:00:00+08	1	\N
88	上海	SeeSaw Coffee	121.447334299999994	31.2226856999999995	11.00 Mbps	http://www.speedtest.net/my-result/4684014931	32 元	f	ryaneof	位于芮欧百货五层，店面不大，顾客不多，网速不错。	2017-03-20 08:00:00+08	1	\N
89	上海	Hunting the days (H Coffee)	121.447001	31.2260060000000017	58.00 Mbps	http://www.speedtest.net/my-result/4686820709	28 元	f	ryaneof	位于晶品六层，环境有些嘈杂，咖啡非常难喝，但网速不错。	2017-03-20 08:00:00+08	1	\N
90	上海	Starbucks (Reel F3)	121.447659999999999	31.2235559999999985	18.00 Mbps	http://www.speedtest.net/my-result/4692220583	31 元	f	ryaneof	位于芮欧三层，网速不错，但毕竟是星巴克，比较嘈杂，网络在人多时状况不好。	2017-03-20 08:00:00+08	1	\N
91	上海	Starbucks（碧波路店）	121.580833333333004	31.206666666666699	5.08 Mbps		35 元	f	songzhou21	网较差，经常断，人少（周末），但还是较嘈杂。	2017-03-20 08:00:00+08	1	\N
92	上海	湾里书香 | Harbook+	121.450363999999993	31.2246589999999991	30.00 Mbps	http://www.speedtest.net/my-result/4873748282	38 元	f	ryaneof	位于芮欧三层，网速一般，不太稳定，咖啡一般，有许多桌子和书，但是视觉很好，尤其靠窗座位。	2017-03-20 08:00:00+08	1	\N
93	上海	Starbucks（近铁城市广场店）	121.377178000000001	31.235087	22.00 Mbps	http://www.speedtest.net/my-result/4861082276	30 元	f	ryaneof	比较新的店，即使人很多的情况下，网络质量也不错。	2017-03-20 08:00:00+08	1	\N
94	上海	Gloria Jean's Coffees（月星环球港店）	121.407594680786005	31.2343621785427992	10.00 Mbps	http://www.speedtest.net/my-result/4891495073	31 元	f	ryaneof	店面不大，咖啡很好，即使人很多的情况下，网络质量也不错。	2017-03-20 08:00:00+08	1	\N
95	上海	Costa Coffee（我格广场店）	121.419235499999999	31.2394439999999989	6.00 Mbps	http://www.speedtest.net/my-result/5087420287	27 元	f	xavierchow	网络质量一般，平日人比较少，周末人太多太闹不建议去。	2017-03-20 08:00:00+08	1	\N
96	上海	咖咖奥咖啡厅（Kacao 田林店）	121.407905817032002	31.1716756676628997	10.53 Mbps	http://www.speedtest.net/my-result/5087420287	32 元	f	xavierchow	环境相当不错，空间也很大，唯一不好的2楼不是禁烟的。	2017-03-20 08:00:00+08	1	\N
97	上海	Caffebene（悦达889店）	121.423516273499004	31.2312338854879989	56.33 Mbps	http://www.speedtest.net/my-result/5104202266	28 元	f	xavierchow	网速非常快，咖啡和点心不好吃，室内位置较少.室外空间挺大，就是冬天如果没太阳有点冷。	2017-03-20 08:00:00+08	1	\N
98	上海	HOLLYS COFFEE（仲盛世界商城）	121.382549999999995	31.1083999999999996	1.54 Mbps	http://www.speedtest.net/my-result/5115524542	30 元	f			2017-03-20 08:00:00+08	1	\N
99	上海	咖咖奥咖啡厅（Kacao 圣诺亚店）	121.371751000000003	31.2335129999999985	7.95 Mbps	http://www.speedtest.net/my-result/5121292721	32 元	f	xavierchow	Kacao的环境一如既往的好，店在汤连得温泉馆边上，不知道是不是新开的原因有点装修的油漆味:(	2017-03-20 08:00:00+08	1	\N
100	上海	Staytion Coffee & Bake	121.479386687279003	31.2497452678272012	24.00 Mbps	http://www.speedtest.net/my-result/4986683376	31 元	f	ryaneof	位于中信广场，环境很好，网络不错，咖啡一般。	2017-03-20 08:00:00+08	1	\N
101	上海	Pacific Coffee (Global Harbor)	121.407508850097997	31.2340135762335009	7.00 Mbps	http://www.speedtest.net/my-result/5041676642	30 元	f	ryaneof	位于环球港四层，太平洋咖啡大家都懂的，以难喝出名。正因为这样在周六高峰时间只有它家有座位。。	2017-03-20 08:00:00+08	1	\N
102	上海	CAFÉ & BAR PRONTO	121.464275121688999	31.2086538963297997	18.00 Mbps	http://www.speedtest.net/my-result/5138579056	32 元	f	ryaneof	位于日月光一层，环境不错，店铺面积不小，顾客数量多，会比较吵，网络比较稳定，咖啡杯子很大，喜欢大杯拿铁可以考虑再加一份浓缩。	2017-03-20 08:00:00+08	1	\N
103	上海	Starbucks (Imago)	121.418730999999994	31.2397840000000002	15.86 Mbps	http://www.speedtest.net/my-result/5206305714	30 元	f	xavierchow	Starbucks的咖啡就不评论了.店内位置很少. 有部分座位在商场大厅环境较嘈杂	2017-03-20 08:00:00+08	1	\N
104	上海	Starbucks (美罗城)	121.434837999999999	31.1961319999999986	76.11 Mbps	http://www.speedtest.net/my-result/5244519566	27 元	f	xavierchow	至今为止我碰到的最好网速的星巴克，缺点就是环境比较闹，毕竟是黄金地段。	2017-03-20 08:00:00+08	1	\N
105	上海	Starbucks (中山万博国际中心)	121.418312999999998	31.199110000000001	4.15 Mbps	http://www.speedtest.net/my-result/5252949393	27 元	f	xavierchow	网速很一般，非常奇怪大叔大妈好多-_-bb	2017-03-20 08:00:00+08	1	\N
106	上海	Costa Coffee (Global Harbor)	121.407852172852003	31.2347474743353999	12.00 Mbps	http://www.speedtest.net/my-result/i/1572918665	34 元	f	ryaneof	位于环球港 B1 层，环境还好，客流量不大。他家咖啡一直不错。这家店网络质量最近变好了一点，并且才发现还有靠近商场停车场的露天座位。	2017-03-20 08:00:00+08	1	\N
107	上海	SeeSaw Coffee (淮海 755)	121.459704637526997	31.2207840855469989	19.00 Mbps	http://www.speedtest.net/my-result/i/1593392666	32 元	f	ryaneof	位于淮海中路，店面不大，周末人多，咖啡一如其他连锁店一样好喝。	2017-03-20 08:00:00+08	1	\N
108	上海	Costa Coffee（九六广场店）	121.520268917083996	31.2293715386815016	2.00 Mbps	www.speedtest.net/my-result/i/1617859652	31 元	f	ryaneof	位于九六广场一层，座位比较多，周末环境嘈杂，网速很慢。	2017-03-20 08:00:00+08	1	\N
109	上海	Starbucks (漕河泾店)	121.396629000000004	31.1732459999999989	1.01 Mbps	http://www.speedtest.net/my-result/5276464409	27 元	f	xavierchow	位于漕河泾创新大厦底楼.楼上是星巴克总部.算是星巴克大本营了网速居然这么慢...	2017-03-20 08:00:00+08	1	\N
110	上海	MANGOSIX (静安寺店)	121.441051999999999	31.2264920000000004	20.16 Mbps	www.speedtest.net/my-result/i/1639012202	31 元	f	z4rd	晶品旁，久光对面，愚园路上，手机微信直接连，电脑要手机验证，一般般	2017-03-20 08:00:00+08	1	\N
111	上海	AUNN CAFE &CO	121.440460000000002	31.2242430000000013	5.76 Mbps	http://www.speedtest.net/my-result/5305144009	35 元	f	z4rd	位于黄金地段 不喜欢咖啡馆的布局 不过听说手冲咖啡不错 楼上精品店值得一逛	2017-03-20 08:00:00+08	1	\N
112	上海	Starbucks (虹桥火车站出发区店)	121.316547999999997	31.1955160000000014	2.91 Mbps	http://www.speedtest.net/my-result/5482642377	31 元	f	xavierchow	位于出发区北侧2楼.位置还是很多的.就是环境一般比较嘈杂	2017-03-20 08:00:00+08	1	\N
113	上海	Starbucks (静安门大厦店)	121.434352000000004	31.2392240000000001	2.91 Mbps	http://www.speedtest.net/my-result/5514651758	31 元	f	xavierchow	网速一般，上下有2层楼位置较多	2017-03-20 08:00:00+08	1	\N
114	上海	李小姐の猫咖啡馆	121.447000000000003	31.2347000000000001	21.50 Mbps	http://www.speedtest.net/my-result/i/1827538221	38 元	f	LilianYe	猫咖啡馆，上下两层，有十多只可爱的猫咪，大概无法好好干活。	2017-03-20 08:00:00+08	1	\N
115	上海	Trident Coffee	121.486000000000004	31.2375000000000007	22.44 Mbps	http://www.speedtest.net/my-result/i/1836700422	35 元	f	LilianYe	外滩边上一个很小的一个咖啡馆，只适合聊聊天什么的。	2017-03-20 08:00:00+08	1	\N
116	上海	Starbucks (新淮海坊店)	121.418000000000006	31.1983999999999995	1.53 Mbps	http://www.speedtest.net/my-result/i/1839446250	31 元	t	LilianYe	离虹桥路地铁站最近的一个星巴克，只有一楼，午后来买咖啡会排队较久。	2017-03-20 08:00:00+08	1	\N
117	上海	Starbucks (越界店)	121.406999999999996	31.1712999999999987	1.03 Mbps	http://www.speedtest.net/my-result/i/1853980266	31 元	t	LilianYe	网速依旧慢的感人，周末下午还蛮多人的。	2017-03-20 08:00:00+08	1	\N
118	上海	MANGOSIX (田林路店)	121.412000000000006	31.1740999999999993	2.40 Mbps	http://www.speedtest.net/my-result/i/1863749217	31 元	f	LilianYe	手机上WIFI要通过微信连接，电脑要手机验证，网速较慢，空间比较宽敞，沙发位置有电源插座	2017-03-20 08:00:00+08	1	\N
119	上海	雕刻时光咖啡馆 (红坊店)	121.421000000000006	31.2009000000000007	10.37 Mbps	http://www.speedtest.net/my-result/i/1916507389	30 元	f	LilianYe	空间很宽敞，有音乐，但不吵。靠墙位置有电源插座，食物一般。	2017-03-20 08:00:00+08	1	\N
120	上海	赞咖啡 Nice Cafe & Books	121.420000000000002	31.1996000000000002	25.29 Mbps	http://www.speedtest.net/my-result/i/1917732687	30 元	t	LilianYe	空间宽敞，有两层，音乐舒缓。地上有挺多插排的，就是空调不热。	2017-03-20 08:00:00+08	1	\N
121	上海	Starbucks (宝乐汇店)	121.480999999999995	31.4014999999999986	3.87 Mbps	http://www.speedtest.net/my-result/i/1915277364	36 元	f	crispgm	测速很一般，但实际访问速度还不错。插座有但非常少。	2017-03-20 08:00:00+08	1	\N
122	上海	流光漫影 gallery & coffee	121.439999999999998	31.2140999999999984	0.90 Mbps	http://www.speedtest.net/my-result/i/1925937915	35 元	t	LilianYe	面积很小，很多艺术相关的书籍。靠墙有插座。可惜网速太慢。	2017-03-20 08:00:00+08	1	\N
123	上海	莫奈咖啡 Monet Cafe	121.445999999999998	31.2149999999999999	6.78 Mbps	http://www.speedtest.net/my-result/i/1934316618	48 元	t	LilianYe	只有几个位置，装修很欧式，更像家具店，隔壁是理发店。价位偏高。	2017-03-20 08:00:00+08	1	\N
124	上海	星巴克（中惠广场店）	121.604748999999998	31.2549680000000016	3.24 Mbps	http://www.speedtest.net/my-result/6029494988	26 元	f	xavierchow	位置比较偏的关系，晚上人真的很少，有电源. 21点打烊。	2017-03-20 08:00:00+08	1	\N
125	上海	PROTOSS	121.406999999999996	31.1711999999999989	31.73 Mbps	http://www.speedtest.net/my-result/i/1971600260	23 元	t	LilianYe	新开的咖啡馆，空间非常宽敞，装修清新，插座还有usb口。	2017-03-20 08:00:00+08	1	\N
126	深圳	More Cafe	113.967813000000007	22.5384920000000015	10.75 Mbps	http://www.speedtest.net/my-result/5241643963	30-40 元	f	RYOHOI	世界之窗，深南大道边上。欧洲小镇园区内，小桥流水，侧耳倾听蛙鸣。桌子不多，是家别致的小店。有少量露天位子。	2017-03-20 08:00:00+08	1	\N
127	深圳	Starbucks 星巴克	114.105812	22.54467	4.44 Mbps	http://www.speedtest.net/my-result/5243762474	30-40 元	f	RYOHOI	店内宽敞，位子充足，有大长木桌。室外可抽烟，夏天坐在人工喷泉边上时感凉风。上厕所很方便。硬伤：WiFi 太慢；解决方法：不用店内 WiFi，连 eluohu 都会更快。另：这一代星巴克特别多，方圆一公里内约十余家。	2017-03-20 08:00:00+08	1	\N
128	深圳	Starbucks 星巴克	113.926561000000007	22.5410520000000005	2.12 Mbps	http://www.speedtest.cn/ip/218.18.171.*/AG_OVn6wQW99QAHmvstXDfVjO1wi4lSU	30-40 元	f	RYOHOI	人流量少，厕所干净，位子充足。门外有小花园，绿化不错。在欢乐颂商场楼下，用餐方便。	2017-03-20 08:00:00+08	1	\N
129	深圳	GOOCOFFEE · 谷咖	113.923269000000005	22.4977090000000004	64.68 Mbps	http://www.speedtest.cn/ip/183.37.178.*/h4Em462HVo3fN55FrxmV1Q	20-30 元	f	RYOHOI	显而易见网速很快。因为周边都是写字楼，上班时间人并不多。位子不多，七八张小方桌。一整面书架零零散散地放了些书。位子都靠落地玻璃墙，采光很好。Last Word: 咖啡口味一般。	2017-03-20 08:00:00+08	1	\N
130	深圳	雕刻时光咖啡馆(华侨城店)	113.978213999999994	22.5405799999999985	6.03 Mbps	http://www.speedtest.net/my-result/i/1798025047		f	crispgm	位于生态广场入口处，环境不错。Wi-Fi 密码同北京相同。	2017-03-20 08:00:00+08	1	\N
132	深圳	City Green Cafe 城市咖啡	114.015000000000001	22.5383999999999993	9.79 Mbps	http://www.speedtest.net/my-result/i/1799809299	28 元（普通杯）	f	crispgm	开放式环境，座位大且舒服，所在的购物广场比较高级。	2017-03-20 08:00:00+08	1	\N
133	深圳	Nordic Cafe	113.984999999999999	22.5279999999999987	9.14 Mbps	http://www.speedtest.net/my-result/i/1801263880	32 元（小杯）	f	crispgm	北欧极简风，餐具似乎都是北欧品牌 iittala 的，店里面还有 iittala 的展区，不知道两者的具体关系。有少量电源。	2017-03-20 08:00:00+08	1	\N
134	深圳	Costa Coffee（海上世界广场店）	113.910865000000001	22.485676999999999	2.88 Mbps	http://www.speedtest.net/my-result/5775470173	28 元	f	bcho	环境不错，但网络太慢了。大部分座位都有电源。	2017-03-20 08:00:00+08	1	\N
135	深圳	Starbucks 星巴克（创意文化园店）	113.989000000000004	22.5393000000000008	0.96 Mbps	http://www.speedtest.net/my-result/i/1953095663		f	crispgm	春节期间人也爆满，但自身容量很大。网速跑分数值不高，但还是可用的状态。	2017-03-20 08:00:00+08	1	\N
136	深圳	Starbucks 星巴克（侨城路店）	113.980000000000004	22.5386999999999986	1.04 Mbps	http://www.speedtest.net/my-result/i/1954508585		f	crispgm	网速慢但可用，环境不错，即使连室外都有插座。	2017-03-20 08:00:00+08	1	\N
137	深圳	漫咖啡（1979店）	114.025999999999996	22.5550999999999995	5.28 Mbps	http://www.speedtest.net/my-result/i/1957282075		f	crispgm	场地很大，一二楼环境昏暗，三楼比较亮；基本每个座位都有插座。	2017-03-20 08:00:00+08	1	\N
138	武汉	星巴克（光谷国际广场店）	114.392807000000005	30.5093229999999984	3.87 Mbps	http://www.speedtest.net/my-result/5208990021	27-45 元	f	lvwzhen	位置有点小，网速一般	2017-03-20 08:00:00+08	1	\N
139	武汉	wow cafe	114.402027000000004	30.5045700000000011	10.27 Mbps	http://www.speedtest.net/my-result/52094459141	12-45 元	f	lvwzhen	测试网速很快，实际速度不稳定	2017-03-20 08:00:00+08	1	\N
140	北京	星巴克（永旺店）	116.284000000000006	40.0947999999999993	7.25 Mbps	http://www.speedtest.net/my-result/i/2017642617		f	xhacker	地方不算太大，但也有少量位子。靠边有少量电源。	2017-03-20 08:00:00+08	1	\N
141	北京	古塘咖啡	116.355000000000004	39.965600000000002	4.92 Mbps	http://www.speedtest.net/my-result/i/2015155052		f	beta	人少，比较安静，电源充足。	2017-03-20 08:00:00+08	1	\N
142	北京	星巴克（望京店）	116.481999999999999	40.0009999999999977	4.17 Mbps	http://www.speedtest.net/my-result/a/2708941658		f	beta	人很多，比较吵闹，网速一般，没找到电源。	2017-03-20 08:00:00+08	1	\N
143	北京	魔山	116.349999999999994	39.9620000000000033	31.43 Mbps	http://www.speedtest.net/my-result/a/2711924188		f	beta	店很小，很安静，网速很快，靠墙的桌子有插座，手冲咖啡和各种啤酒都很好喝，有 PS4 和 Nintendo Switch 可以玩。	2017-03-20 08:00:00+08	1	\N
144	北京	Costa Coffee（大兴绿地店）	116.328000000000003	39.7631000000000014	9.64 Mbps	http://www.speedtest.net/my-result/i/2019177863		f	xhacker	环境好、靠边有少量电源。网速测出来不错，实际奇慢。	2017-03-20 08:00:00+08	1	\N
145	北京	Costa Coffee（亦庄力宝华联店）	116.495000000000005	39.8033000000000001	32.16 Mbps	http://www.speedtest.net/my-result/i/2025917325		f	xhacker	地方很大、人很少，周五晚上八点半加上我只有三个人。靠边有少量电源。	2017-03-29 08:00:00+08	1	\N
146	北京	星巴克（丰科路万达广场店）	116.290999999999997	39.8233000000000033	3.77 Mbps	http://www.speedtest.net/my-result/i/2027024693		f	xhacker	地方非常大，电源也多。星巴克自己的网连不上，有一个 SSID 为 @ffan 的网可以用，网速也是用这个网测的。	2017-03-29 08:00:00+08	1	\N
147	上海	COSTA（上海盛邦国际店）	121.480137999999997	31.2539900000000017	1.22 Mbps	http://beta.speedtest.net/result/6163466169	34 元	f	sinchang	在盛邦国际大厦一楼，四川北路地铁旁，下午人不多。	2017-03-29 08:00:00+08	1	\N
148	杭州	漫咖啡(北城天地工厂概念店)	120.123000000000005	30.3210000000000015	24.6 Mbps	http://www.speedtest.net/my-result/d/4292792	25 - 50 元	f	leeiio	工厂风格，咖啡还行，比较安静因为这边本来就没有什么人，旁边就是超市和电影院	2017-03-31 08:00:00+08	1	\N
\.


--
-- Name: coffee_spot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Chen
--

SELECT pg_catalog.setval('coffee_spot_id_seq', 153, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: Chen
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Chen
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: Chen
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	user	user
7	coffee	comment
8	coffee	spot
9	captcha	captchastore
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Chen
--

SELECT pg_catalog.setval('django_content_type_id_seq', 9, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: Chen
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-04-01 18:06:05.486642+08
2	contenttypes	0002_remove_content_type_name	2017-04-01 18:06:05.495831+08
3	auth	0001_initial	2017-04-01 18:06:05.527757+08
4	auth	0002_alter_permission_name_max_length	2017-04-01 18:06:05.535841+08
5	auth	0003_alter_user_email_max_length	2017-04-01 18:06:05.543991+08
6	auth	0004_alter_user_username_opts	2017-04-01 18:06:05.553761+08
7	auth	0005_alter_user_last_login_null	2017-04-01 18:06:05.560806+08
8	auth	0006_require_contenttypes_0002	2017-04-01 18:06:05.562566+08
9	auth	0007_alter_validators_add_error_messages	2017-04-01 18:06:05.570749+08
10	auth	0008_alter_user_username_max_length	2017-04-01 18:06:05.608462+08
11	user	0001_initial	2017-04-01 18:06:05.643381+08
12	admin	0001_initial	2017-04-01 18:06:05.667024+08
13	admin	0002_logentry_remove_auto_add	2017-04-01 18:06:05.680598+08
14	captcha	0001_initial	2017-04-01 18:06:05.689158+08
15	coffee	0001_initial	2017-04-01 18:06:05.706208+08
16	coffee	0002_auto_20170401_1005	2017-04-01 18:06:05.754666+08
17	sessions	0001_initial	2017-04-01 18:06:05.763722+08
18	coffee	0003_auto_20170401_1010	2017-04-01 18:10:09.33901+08
19	coffee	0004_auto_20170401_1805	2017-04-02 02:05:34.279071+08
20	user	0002_auto_20170401_1805	2017-04-02 02:05:34.34989+08
21	user	0003_auto_20170401_1816	2017-04-02 02:16:17.23337+08
22	coffee	0005_auto_20170404_1453	2017-04-04 22:54:04.437707+08
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Chen
--

SELECT pg_catalog.setval('django_migrations_id_seq', 22, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: Chen
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
f47c0c8tffapk0b01k3c81tkrnp3dmco	YWEwNTk2ZmQyMWQ1MDc4ZGMwNDU4ODQ0ODdkMWUzZDMyYjI3N2FjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YmMxOGRkNTJjYTgzZTQwYjljMWE3YmU2ZmFmMWZjMzQ2MWFkZTgwIn0=	2017-04-15 18:06:26.080309+08
\.


--
-- Data for Name: user_user; Type: TABLE DATA; Schema: public; Owner: Chen
--

COPY user_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, nickname, bio, url, location, avatar, last_login_ip, ip_joined, client_mark, "weixin_avatarUrl", "weixin_nickName") FROM stdin;
10	!sShirLHcuDn7JcDLwZ2LzN1J4KJi9ZOFCHGKPPYg	\N	f	fsociety			fsociety@weixinclient.com	f	t	2017-04-02 02:59:22.261703+08	fsociety				avatars/fsociety@weixinclient.com/default_avatar_i6n232A.png	\N	\N	weixin	http://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epicwkEfE7iclCpadJmTcsEicoc509XJCpk6l0c4tDxibpKkd9WNyAbmTaQXUXL8PljTUJTKOziarpnR0A/0	fsociety
1	bcrypt_sha256$$2b$12$w7fGBsrGY26yRgyFq0u3RefxOtHSp6AFadnYV0TliyNsYlwdqaiyq	2017-04-05 00:37:41.733469+08	f	lsdvincent@gmail.com			lsdvincent@gmail.com	f	t	2017-04-01 18:06:25.610071+08	lsdvincent@gmail.com				avatars/lsdvincent@gmail.com/default_avatar_2Cllzwm.png	\N	\N	web		
\.


--
-- Data for Name: user_user_groups; Type: TABLE DATA; Schema: public; Owner: Chen
--

COPY user_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: user_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Chen
--

SELECT pg_catalog.setval('user_user_groups_id_seq', 1, false);


--
-- Name: user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Chen
--

SELECT pg_catalog.setval('user_user_id_seq', 12, true);


--
-- Data for Name: user_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: Chen
--

COPY user_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Chen
--

SELECT pg_catalog.setval('user_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: captcha_captchastore captcha_captchastore_hashkey_key; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY captcha_captchastore
    ADD CONSTRAINT captcha_captchastore_hashkey_key UNIQUE (hashkey);


--
-- Name: captcha_captchastore captcha_captchastore_pkey; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY captcha_captchastore
    ADD CONSTRAINT captcha_captchastore_pkey PRIMARY KEY (id);


--
-- Name: coffee_comment coffee_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY coffee_comment
    ADD CONSTRAINT coffee_comment_pkey PRIMARY KEY (id);


--
-- Name: coffee_spot coffee_spot_pkey; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY coffee_spot
    ADD CONSTRAINT coffee_spot_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: user_user_groups user_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY user_user_groups
    ADD CONSTRAINT user_user_groups_pkey PRIMARY KEY (id);


--
-- Name: user_user_groups user_user_groups_user_id_bb60391f_uniq; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY user_user_groups
    ADD CONSTRAINT user_user_groups_user_id_bb60391f_uniq UNIQUE (user_id, group_id);


--
-- Name: user_user user_user_nickname_key; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY user_user
    ADD CONSTRAINT user_user_nickname_key UNIQUE (nickname);


--
-- Name: user_user user_user_pkey; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY user_user
    ADD CONSTRAINT user_user_pkey PRIMARY KEY (id);


--
-- Name: user_user_user_permissions user_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: user_user_user_permissions user_user_user_permissions_user_id_64f4d5b8_uniq; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_user_id_64f4d5b8_uniq UNIQUE (user_id, permission_id);


--
-- Name: user_user user_user_username_key; Type: CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY user_user
    ADD CONSTRAINT user_user_username_key UNIQUE (username);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: Chen
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: Chen
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: Chen
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: Chen
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: captcha_captchastore_hashkey_cbe8d15a_like; Type: INDEX; Schema: public; Owner: Chen
--

CREATE INDEX captcha_captchastore_hashkey_cbe8d15a_like ON captcha_captchastore USING btree (hashkey varchar_pattern_ops);


--
-- Name: coffee_comment_4278575c; Type: INDEX; Schema: public; Owner: Chen
--

CREATE INDEX coffee_comment_4278575c ON coffee_comment USING btree (comment_user_id);


--
-- Name: coffee_comment_e72b53d4; Type: INDEX; Schema: public; Owner: Chen
--

CREATE INDEX coffee_comment_e72b53d4 ON coffee_comment USING btree (spot_id);


--
-- Name: coffee_spot_1c9ada0e; Type: INDEX; Schema: public; Owner: Chen
--

CREATE INDEX coffee_spot_1c9ada0e ON coffee_spot USING btree (commit_user_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: Chen
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: Chen
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: Chen
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: Chen
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: user_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: Chen
--

CREATE INDEX user_user_groups_0e939a4f ON user_user_groups USING btree (group_id);


--
-- Name: user_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: Chen
--

CREATE INDEX user_user_groups_e8701ad4 ON user_user_groups USING btree (user_id);


--
-- Name: user_user_nickname_71b8e37d_like; Type: INDEX; Schema: public; Owner: Chen
--

CREATE INDEX user_user_nickname_71b8e37d_like ON user_user USING btree (nickname varchar_pattern_ops);


--
-- Name: user_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: Chen
--

CREATE INDEX user_user_user_permissions_8373b171 ON user_user_user_permissions USING btree (permission_id);


--
-- Name: user_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: Chen
--

CREATE INDEX user_user_user_permissions_e8701ad4 ON user_user_user_permissions USING btree (user_id);


--
-- Name: user_user_username_e2bdfe0c_like; Type: INDEX; Schema: public; Owner: Chen
--

CREATE INDEX user_user_username_e2bdfe0c_like ON user_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coffee_comment coffee_comment_comment_user_id_d9c4eb21_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY coffee_comment
    ADD CONSTRAINT coffee_comment_comment_user_id_d9c4eb21_fk_user_user_id FOREIGN KEY (comment_user_id) REFERENCES user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coffee_comment coffee_comment_spot_id_748e87e6_fk_coffee_spot_id; Type: FK CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY coffee_comment
    ADD CONSTRAINT coffee_comment_spot_id_748e87e6_fk_coffee_spot_id FOREIGN KEY (spot_id) REFERENCES coffee_spot(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coffee_spot coffee_spot_commit_user_id_b7d34c1d_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY coffee_spot
    ADD CONSTRAINT coffee_spot_commit_user_id_b7d34c1d_fk_user_user_id FOREIGN KEY (commit_user_id) REFERENCES user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_user_id FOREIGN KEY (user_id) REFERENCES user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_groups user_user_groups_group_id_c57f13c0_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY user_user_groups
    ADD CONSTRAINT user_user_groups_group_id_c57f13c0_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_groups user_user_groups_user_id_13f9a20d_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY user_user_groups
    ADD CONSTRAINT user_user_groups_user_id_13f9a20d_fk_user_user_id FOREIGN KEY (user_id) REFERENCES user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_user_permissions user_user_user_per_permission_id_ce49d4de_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY user_user_user_permissions
    ADD CONSTRAINT user_user_user_per_permission_id_ce49d4de_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_user_permissions user_user_user_permissions_user_id_31782f58_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: Chen
--

ALTER TABLE ONLY user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_user_id_31782f58_fk_user_user_id FOREIGN KEY (user_id) REFERENCES user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

