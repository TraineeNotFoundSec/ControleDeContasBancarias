PGDMP     8                
    |            ControleDeContas    11.22    11.22 %    =           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            >           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            @           1262    16457    ControleDeContas    DATABASE     p   CREATE DATABASE "ControleDeContas" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
 "   DROP DATABASE "ControleDeContas";
             postgres    false            �            1259    16498    banco_id_seq    SEQUENCE     |   CREATE SEQUENCE public.banco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 123456789
    CACHE 1;
 #   DROP SEQUENCE public.banco_id_seq;
       public       postgres    false            �            1259    16500    bancos    TABLE     �   CREATE TABLE public.bancos (
    id integer DEFAULT nextval('public.banco_id_seq'::regclass) NOT NULL,
    descricao character varying(50) NOT NULL,
    ativo character(1) DEFAULT 'S'::character varying
);
    DROP TABLE public.bancos;
       public         postgres    false    200            �            1259    16463    cidade    TABLE     �   CREATE TABLE public.cidade (
    id_cidade integer NOT NULL,
    nome_cidade character varying(230) NOT NULL,
    id_uf integer NOT NULL,
    codigo_ibge character varying(10)
);
    DROP TABLE public.cidade;
       public         postgres    false            �            1259    16477    cliente_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 123456789
    CACHE 1;
 %   DROP SEQUENCE public.cliente_id_seq;
       public       postgres    false            �            1259    16482    clientes    TABLE     �  CREATE TABLE public.clientes (
    id integer DEFAULT nextval('public.cliente_id_seq'::regclass) NOT NULL,
    nome character varying(50) NOT NULL,
    cpf character varying(14) NOT NULL,
    fixo character varying(20),
    celular character varying(20),
    cep character varying(15),
    endereco character varying(50),
    numero character varying(10),
    bairro character varying(20),
    id_uf integer,
    id_municipio integer
);
    DROP TABLE public.clientes;
       public         postgres    false    198            �            1259    16512    conta_id_seq    SEQUENCE     |   CREATE SEQUENCE public.conta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 123456789
    CACHE 1;
 #   DROP SEQUENCE public.conta_id_seq;
       public       postgres    false            �            1259    16542    contas    TABLE     d  CREATE TABLE public.contas (
    id integer DEFAULT nextval('public.conta_id_seq'::regclass) NOT NULL,
    id_banco integer NOT NULL,
    id_cliente integer NOT NULL,
    agencia character varying(15),
    numero character varying(15),
    saldo_anterior numeric(9,2) DEFAULT 0,
    saldo_atual numeric(9,2) DEFAULT 0,
    total_debito numeric(9,2) DEFAULT 0,
    total_credito numeric(9,2) DEFAULT 0,
    data_ultimo_movimento timestamp without time zone,
    data_criacao timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    ativo character(1) DEFAULT 'S'::bpchar,
    descricao character varying(50)
);
    DROP TABLE public.contas;
       public         postgres    false    202            �            1259    16566    historico_id_seq    SEQUENCE     �   CREATE SEQUENCE public.historico_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 123456789
    CACHE 1;
 '   DROP SEQUENCE public.historico_id_seq;
       public       postgres    false            �            1259    16568 	   historico    TABLE     �  CREATE TABLE public.historico (
    id integer DEFAULT nextval('public.historico_id_seq'::regclass) NOT NULL,
    id_conta integer NOT NULL,
    saldo numeric(9,2),
    acao character(10),
    valor numeric(9,2),
    forma character varying(10) DEFAULT 'MANUAL'::character varying,
    observacoes character varying(50),
    data_hora timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.historico;
       public         postgres    false    204            �            1259    16458    uf    TABLE     �   CREATE TABLE public.uf (
    id_uf integer NOT NULL,
    nome_uf character varying(30) NOT NULL,
    sigla_uf character varying(2),
    codigo_ibge character varying(2)
);
    DROP TABLE public.uf;
       public         postgres    false            6          0    16500    bancos 
   TABLE DATA               6   COPY public.bancos (id, descricao, ativo) FROM stdin;
    public       postgres    false    201   ",       2          0    16463    cidade 
   TABLE DATA               L   COPY public.cidade (id_cidade, nome_cidade, id_uf, codigo_ibge) FROM stdin;
    public       postgres    false    197   ],       4          0    16482    clientes 
   TABLE DATA               t   COPY public.clientes (id, nome, cpf, fixo, celular, cep, endereco, numero, bairro, id_uf, id_municipio) FROM stdin;
    public       postgres    false    199   ��      8          0    16542    contas 
   TABLE DATA               �   COPY public.contas (id, id_banco, id_cliente, agencia, numero, saldo_anterior, saldo_atual, total_debito, total_credito, data_ultimo_movimento, data_criacao, ativo, descricao) FROM stdin;
    public       postgres    false    203   �      :          0    16568 	   historico 
   TABLE DATA               d   COPY public.historico (id, id_conta, saldo, acao, valor, forma, observacoes, data_hora) FROM stdin;
    public       postgres    false    205   z�      1          0    16458    uf 
   TABLE DATA               C   COPY public.uf (id_uf, nome_uf, sigla_uf, codigo_ibge) FROM stdin;
    public       postgres    false    196   �      A           0    0    banco_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.banco_id_seq', 3, true);
            public       postgres    false    200            B           0    0    cliente_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cliente_id_seq', 3, true);
            public       postgres    false    198            C           0    0    conta_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.conta_id_seq', 2, true);
            public       postgres    false    202            D           0    0    historico_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.historico_id_seq', 4, true);
            public       postgres    false    204            �
           2606    16550    bancos bancos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.bancos
    ADD CONSTRAINT bancos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.bancos DROP CONSTRAINT bancos_pkey;
       public         postgres    false    201            �
           2606    16467    cidade cidade_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_pkey PRIMARY KEY (id_cidade);
 <   ALTER TABLE ONLY public.cidade DROP CONSTRAINT cidade_pkey;
       public         postgres    false    197            �
           2606    16487    clientes clientes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public         postgres    false    199            �
           2606    16548    contas contas_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.contas
    ADD CONSTRAINT contas_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.contas DROP CONSTRAINT contas_pkey;
       public         postgres    false    203            �
           2606    16573    historico historico_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.historico
    ADD CONSTRAINT historico_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.historico DROP CONSTRAINT historico_pkey;
       public         postgres    false    205            �
           2606    16462 
   uf uf_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY public.uf
    ADD CONSTRAINT uf_pkey PRIMARY KEY (id_uf);
 4   ALTER TABLE ONLY public.uf DROP CONSTRAINT uf_pkey;
       public         postgres    false    196            �
           2606    16605    contas unique_nro_conta 
   CONSTRAINT     g   ALTER TABLE ONLY public.contas
    ADD CONSTRAINT unique_nro_conta UNIQUE (numero) INCLUDE (id_banco);
 A   ALTER TABLE ONLY public.contas DROP CONSTRAINT unique_nro_conta;
       public         postgres    false    203    203            �
           2606    16468    cidade cidade_fk    FK CONSTRAINT     m   ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_fk FOREIGN KEY (id_uf) REFERENCES public.uf(id_uf);
 :   ALTER TABLE ONLY public.cidade DROP CONSTRAINT cidade_fk;
       public       postgres    false    197    2725    196            �
           2606    16551    contas fkey_banco    FK CONSTRAINT     |   ALTER TABLE ONLY public.contas
    ADD CONSTRAINT fkey_banco FOREIGN KEY (id_banco) REFERENCES public.bancos(id) NOT VALID;
 ;   ALTER TABLE ONLY public.contas DROP CONSTRAINT fkey_banco;
       public       postgres    false    2731    203    201            �
           2606    16556    contas fkey_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY public.contas
    ADD CONSTRAINT fkey_cliente FOREIGN KEY (id_cliente) REFERENCES public.clientes(id) NOT VALID;
 =   ALTER TABLE ONLY public.contas DROP CONSTRAINT fkey_cliente;
       public       postgres    false    199    2729    203            �
           2606    16574    historico fkey_contas    FK CONSTRAINT     v   ALTER TABLE ONLY public.historico
    ADD CONSTRAINT fkey_contas FOREIGN KEY (id_conta) REFERENCES public.contas(id);
 ?   ALTER TABLE ONLY public.historico DROP CONSTRAINT fkey_contas;
       public       postgres    false    2733    205    203            �
           2606    16493    clientes fkey_municipio    FK CONSTRAINT     �   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT fkey_municipio FOREIGN KEY (id_municipio) REFERENCES public.cidade(id_cidade);
 A   ALTER TABLE ONLY public.clientes DROP CONSTRAINT fkey_municipio;
       public       postgres    false    197    2727    199            �
           2606    16488    clientes fkey_uf    FK CONSTRAINT     m   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT fkey_uf FOREIGN KEY (id_uf) REFERENCES public.uf(id_uf);
 :   ALTER TABLE ONLY public.clientes DROP CONSTRAINT fkey_uf;
       public       postgres    false    196    2725    199            6   +   x�3�t*JLI-N����2�tJ�K�WH�W �g� �b���� �p
X      2      x�|�͒��%8V=E>�w��i(�J��ʒ�le�ѓ��tDG��� (����qr��E� ,��t�.��S�W������˛���u��Y�.{���o�2�x^�r3�8��Ր���|�VE�����v��O�l���������������,�jj5��Z�{��>>�y�[l���geN�v���~W6�k���J�����O��z��N�k�5���t����:9����0��^�e_�{|������ڧ��U�Q�=���i.v�:�v��,u���a�^�^uEؙ��ݮ�2ԟ
4��g�~G�US��:|���+JJ���i��T$��W�JM����k���i�^#Z��p��m�3]�gl�0�u��e�Svކ�4S������ru`�]��z��e�X�]����Buv�E���a��=�����Bv>�٠>[��<�g�#� }���=��j����A�6�/�l�e^+}���x��ɢ&�O�Mtm��e�D`�=���7H�6��֬ M�y�l�ݐ2�q�?+�s��+��Ղ���W��&�.�r�_?.4��F���a~w��7�ݝ:�i`E�����2}�)���ۆ�5�%�Օ]����F�R���Lϗ=n_v���k|Ԟ��x뾥��=��T�'h��]1�Ǐ�tWa�KC�obX��9Ŀk���h�#�2�$5dP�F�+��QW</��}ܕ������<l>�Ө�Nu{��3�����������פ�i�n#����4��>�m�����q鉆��c����(�h=i�+@
�{\�i.�H�b���y>ً��4�c�� ��P{<R��h�o1Ļ�^��G��(�X��6s+�.)�y��v��3��w�KҮ4_�@yP����=��Z����rsmh��G������[��!GS9��Y��5��� �7�X��CiZ?���g��?���43Î_oq�ьHcd3�/��z�Ds��^߾iO�Z�ش+i�Ј��	I�Ңa�(O��>ia]o^��l[/_�?�|au��:���s��0���Y�~���&zI3�9<���Ma������;֐�e���i�|�O���Cb�@��� ,�a�%�`�H7G�̅�4Xb�L�'-P4�&��4��t��(��J��!>E�Q������)![��v��Ȇ��?��XK,㍾�
i��3-�9����!�4X�X�RC��Wh:�ihX����L+Fz��){��/�HE}���72$'�D�z�]���u���l��տ�R��5��v����u�.w����yp_�x7�w��ĮV��VZ�&����5?�*�<_��0雒A;.�4թѥz��e��<Τ������1���h�M��s�uT��ա/�ސN�cdM֠ʎ��y�?���?--�-F��[�U!2$V�߷�t��@/����Uf�F���M��<҂��� ��+�����@�d~/�F�O�
t���;�%1HS�t䋌�߈�N?�+"���Xc�Ҷa���u��b{z�H����?�Sg4w��ߴ�M?����̀Y�RZ�h��0Tӈ$s�f˹�P��#҆15�҅ɵ�.�����eOT�@Z���#��?�37��O��Z܊�d
U�|������mF2^#޿�8��_ s��OCh0��3>�"d �7��(D���c.�0Nn _��i�<b�>>��6�ڪٽt�u�J�,,���`O�}f[Ue-��[|���w���l���ez��/1��I7�:��+�i(B�i7�nyi�K�~����'��r#X��~�m�3�@�0Xw���~$�`]V���m�eC����.]�*t���j�+�:L_����P�d���[x+4�>Ż`'C������M��S��Q�.ݬ��w4W���e� ��H�z����d��B�����u`�W�.����3H�S�7}c��.��(z��dژ�m�^�����6[�x��g�c��	�/Γ�ܔ��u��4C����y�bXl���,>�%I���?�c3���T�x��:�>|N�8jR+���O>CR�bp_܃7u�%�Ls�lǏD:G�)^T����������(�c���?�˵��k�7�8(FW��o�r [	f���65���v�
��f��O�����8�k�Y�}it����$��	Ȇ�LqԐ��㥯�>�ۤ�m�`�M���]�6as�=�>��t`l�e6��d�곶d�|�.E��:�O���ߚ������jr�5�P���ǖ8G[��z�w�	�3��Q 2��� l��w�;?�Q�����!��Y�1*V�4��#�������}�L;69n|`@�O�,,˛��(��z��i9�o2���⣅˗�k�?]�Ӗ|J!�s��?b�
]�A'�{��-�a:�h�!%�i2U��m�T��� ���������>�i�c�7�G�q�狴��Ʋp�̓�Mt�*��{�hg�]w��gP��#����x�d��>�^;�C��*B�����^�~H*$]&�p�e��d*@4�/�ַ�Q;��li�3ٵ���d����z��e��q���Qp٠t���5�Oi����َq�'a��ض.6<�o�T���0?mNӬ����D�$���g���2z�'�[��4iicN[��I
���(�뺨�@��WZ��=e$�y��郑���7�񧕗=V��[�y8�u?Bu���g�Aþ�_����p�������y�OӒq�3�(��(B2�iB���22F��1�	~��¼��J-�7}��Ǹ���� ��e�qM�}����s����'�o?�=1Ey��-K�ߦm���~�mԴU�?q!li���w\�Z�ഉ�l�i���`�ol���?)e�E��iЖ�8����_�n���^�&��~�HOۣ��A�ez��IO�i\dZ�� ���IK��cuP�1�v{����Iܶ� �)q+o��^��������/�p�˺B��en`ߎ́hᷤ+x�j���dsK������1�h��}�N����B���{��,}R* �U;����@�>퍯6����2�~�H�`%|E�b`��D�N�_�g,)�i�u�~EZczLq5�h}�pZx�]e��M]�Ti`xmq
�0�~͊�� �b�0�5�W���������?���ٕ|izV�ʱg�%�;�a�3@�����2��/+��}rm������]�7X[���e����i����_��p_��'sS
M �C
 ��v��/��7��r�9ݓ��ݩ�H��rdp����}}��Ǥ-���7����N-��&�vO��h��~R���i�pc��d�G�ob�{�3���M����?IW�܎��7uO2B:�)vk�;���&�7��v���)�� H4k��Np4Qq��q�7Нt4a��.���47�I�KD���bʦ���Mz)j����7�C��UgC��_��M#�y<:�9vV����T�8�M4D��e��W�]�����QX�R��׊�Q�N��{�$����E�8�"��S��t�v�&�sk�}eO�op5`��3�mrz-qj(@/D�K��w %1�|�iMdvyl�9b-0Z����+в���8�{Z�	q�`��ۡiE�;����pu_��d&fz_���l��v�1u=;�p\5��뛜14��J9�w���t�8��K��h/�S�~uq�6g��Ծ�S��~�o��"���$6�\�]�ڢ�-Dm��:~�~���Z�L��d���A�!nx]�(�|d�~Xȃ
� ���5�U@7����?Q���mDO��mg�rVQ����N8Ӵk��~�6�γ����ݎ;hߐgq��?�}dC��&����x��Ap+�ő�T�6څI	0:OW;w$��AS��F�x������#=?����7kB��I��� D��O窍3���_��𩺜Z4Ԃ��H��l��GvٺM�q{_���&�x�D��!����}�֤4h+�:e#ݴ\��IO�o����W�m����C�Sz��ܟֆ
@�1�M���]��v��a�3�Yp�V�T�ά-��p�ӭƗ�Ӎ&�:�3�yL|�`    �L*��n�x�G[�"c6ڀ%����n}	h���i�㘤�t��I[��;�#��zr0Mp���o�p˰=�u�7��@�>�o���C�Һ�\��
�ߧ�x2��>9Z	�t�q#N�业v��N�H#e�c�L���<!S�0�l�!,j�ԯ�#h`��W;5!��`Y5wg����Z�c������<G����DG��L2	úb~�l��ZP��rj��SD;F9�A�����_N����p�g�"�a^�[\2	lx��g7�
��o����B},n��,Ɇm�R����)�ݵ:e�U��%�W'��I����Լ��x>�_F콪�hM��~�u,?�z\U�&��+C�>�Ȍ7�K���J���/Re�V�ti%�.x��ghj�1��r0j;o����g-e�?z�IP��S��P=�W�4%}H����%C58�Lԩ(���<��Z����iچhM���z��Ю^b���O`�F��6�۾w�1ziD�9����߻s=�����x�f!B�x'�z��	f�[� EŁx;l/� ��j�{� �9S�����rxJ7=~����)=4�Z��*#�˧�#��/J����ŝ1�}	��`g�g?4��׳�]T>�W�&��h�b�IlK׆�������b�	�I|;S�-���ƒ���E��d��O�����Ά+GѺ7E������-����eô�=$����w��]�����Imjص>��b�`�ݎ��8�]@w��u��] �����w���#,C|���"��z�ŐW�(h���;��E����i��������T�@��w�6S��
33�}�؁K|���5�������#X@N[A!k�݀�#b�B��NG�������~ �}OC� �4����Eƴ�,�%b6 �MΓC0y#�7^�7�})�C}8_rht��,�a�]�8���0o.$��LK:(9�BB� ^���苚���OZǶx�>H��R��#�-�#����cY�4b�b�{J	Y�-�BM�J`�LA<��B i ��
����,���|nr����?k?b\�S�u��%�8X}J�.�X+�uI��p����
�($�G1l7�y�Ԡ����O��)��{�f�>-�q�6'��9.�Ŵ���7�t.�������"�w�l�����-�����?�����F�ړ��+����J7
8����#�w�~B��p��8.ۆ����٩�ɰ��n{IX���e(�K����Tǎ��z0�:�'�]�[|p�m�(m�����g/=-:1�
����$���ꒃ7肴<E�Q�7N����m������d�s"�&�U�>���(�ac$�b%{��Y�X��4왏z��x9U����
��}�}R!�dz���h鴏_�6���iIb�Y\��ȱ�U���kZ�^��2NQ#�6��9c��<G���G!"m�W?E����OHى8�F�x|�sM�r㋃k��� �c��Hũ���]���A�P�Ѯvg�X�T����N��?c�9������mA���c-i���α�I����BP��%`��8���Q=#�K��[M��cK+�Hjs���l��+t���o��A�M�U��޸�,Ī�S1|�#~zZD����W�B�u�����2U��<�}f����M�{���I�_�|#�0&�!\1��_���'���[��,+и�i������=�<���,�[4/����p�"��&67v[LĬGD�"b�(��V97x��'iK�H��ƍ~��e|�n�KLNN��L��i��.�%����ϋ�z<�Eg��sNh=����0�k��5�m6�x�.s�t}�h�GTy�E�-���p�e�M*���]�H�m�{�d>SG��>!r!���u�3�@�_�i<]G3O��8�5��n���/kaƘ����@c��xw��	H75\�/�#�F�ԮW<�����c���'�����u�A��`q��6�͏&f��{��⮏�#�z�a�dd��?�nH)�s�����b�4��$�;��O��S�s��-פ؂o��@
����sԸ)7ۓָ�rE�{����g�$��>諛�5i�o�⽛J��ؽ��I�?���:���V���ݗ�J���s2�.Q��Ѵ@�8�������	K��=����͵�����n>�m�ؖx�2��M���K�"�q��ۘ��8��2N���N��0q�3R��FR����N]o5g�=�mH1��9��CZ�a =�zÒ���+�t7t�cq���du��k$iQ��ޯ{��i!~�1;s��,	ab��A>�c���%�~4��$?���8{�9ᱣiN��.�T�w9T6�bo5��+�i(�kCry��Ӿ��H!v��QnH^�/��Vq�Q�2����9^��k =�!����s���8���X��?��4�E`3��^�B��@l3ox��C4E���� �������N&��gTu]S©>�mqS�����M!L����l���g�tn��.�Ȇ��x߆�غ�s2�)�,�[���U��|o[U�����~���i=��AU��W������7 g����WDZ�#�l��.	y�Ci�F��Bﰤ��V�$�����W?=�Ap6É� mA��4�i���g�F�>}���:�6�0}�yj�4��G\�����M'^z�S����˗xb��w�0�H���i� ���H�.���7�����>��W�f6L>����t%�~�<Sϻp�"5{��0����j���҇��f��Ak�2��G���91�\�4H����؁ۢk�WG���r��M��!�ւ!$��� ��b�C(z��U�b@�S��!�@�n��]P2s���ϻ��L�{��?|0m��Up]o��1�i��cK\�9.-m.���WA���KRKfo�M
&%�Lף;�7�S�?Cv�e�?�)�d��E���55�ڢ��O�thl����DdD?V�J��$����o���_�Gz�fw["�`@ȴ�OR�8��s�b-���=ާBZ�^�t3#{�]�dts�Yt �#�������.CJ���}HXS�{�R]h�B�٤��}\d�;��O�y�b�&�e6��-'��1�;�����e��ٔ1A!嬉�@�(_ç=D�{,6Mr��}���.R
��9�b����9��ߥm�M�rd׶�����k�i#i���=�R�;�,~%b!�).�
�qs�1m'!
�+1���k�څN`��1���
z9��5q糽��C��������]i{�A��yE\�=G�0F䠭�A��/�0��O�c �ؗ6YFTL�*=b]���q����Κ�� �g�6��q�ݝ
&y�e�	.#���lX I��"β��Y��4�a����N"2.�E]�&��c�^q5E^�5�~�y@"Y\���E)� ��������G�}�	i�w]�����UDd�Rm �[�6�O�x+w��`'!#r�`�!�h��N d��h�V�0Z5�Zɣ��`��Z����ZRA/���{���Y�_MEp�ߐ�H۬��B
15GS+b~r���|���#�- 9;��`�a5�)PH>�AE8�>8tk��+1�!����=�gP��4q��$v�AQ~�}AҏAp��!�b���d��S�(m��mƁy!��`�i�(� �M\�������An� =�$�|ڷ���y�Y?��z`����]ػ6I�b]vg�y��>��&,!��:W�����>WU'�&�p���+��^�{�]BNh�E���Mg�u�ˬ�ɠ�N?�?�ū�Ȯ�،| ��J�C��.
7>���.c��<�=';<6?
<L���P�ZS����f7n�ٱ�P��n�4+Z��'J��=��8�߬Y��0�?�e�Ü����6��w{/A��pp��`���y�h�@����y�)�["!a0�;�L�EҠ"�@���29�� ���+p�����d�    Yw|t�� �|l�)���� <j����3E�l{����d�5B�@���}H1sH��c�h}�gb6ErAd�`����1�X%��w�N�/� �HÙ^�C��q�}�#Bʚ��G
9��P�Piӟ8G��lt�XƐA�Y�R�!�{��R�<��fEjBL������|q ���r�	G[dN��or���o���I_.4�in�[Fa�����޸�EB¨`��m]�-�ے�!Q�ѯu�~�&���H�U*�mL�S�d5r�j��i����p�b �0P�j�!0�i�pz�l6
�3\9�@��qXp��&�y
��Òv&�u��������	l�A�<$��/�����';0W�v�J��x�Zw���بO�<�h�]�y���ڤ�h�T����}�ϫ�	ۜ��S�P	�wkk�T�mZ�y�!c�~�xgw�)�{�����g�	�^����{w��͠#�BV4��C؎�*�t^�u���(u+%��`��#�yz�����ڐ��rg����u+;�JN�ݷ����:��}�� �J}�����pR���2V���-�t����AM��dl&n�Ov�5�m�>�8��N��YD��&Y�����q~*��WY�����VA��Ɛ%��]~�}��CϵMޤrp��[|<=M�|�V��.�{����<?e~��vzڠp;x�ʈ�U��y��@Z�gH� �O-��<Iv��8�\S;@�X8�6<F��T�R�Q�[S:d�^#\�N׭�9R`�M��k�)�>Ŷ����;w�A�8I�"z��֤�6;⁠os�rcG�F�`�re奕��3�.,�>[7S9mu���5]�-A�
��d��R�#�:i��"�I�����Bg}��>�8P��u%NU,��K����]�Wz��@�G_��v�xm�v}Q�r������{;��Cs�b�4�R��2%�VDC·�'	���Z�W���_C%�5�K�KP��')�1����Cs!S�}^�z�sD��,o ����/��D�&Ա�a�_�/�At�	4sP��&}�2�_"����x��Rd-$]M1�ӡ�Ȥ�a�c@��;`k�J��,w2�)x��^�,�t\ر�H��v����� �ݓ�?�"��([��!�2H��ޟ����.���k�����5�K���-�8U&���r�08<$�5�Z	o@L�	8�	F�oغ5��x��Ƥw@�v@k$n3� s	��@\�O�6�Av��ɘ���j^�V���dWa�����[��ǧ�D�[��������:~d=��>gS5 ��x�x�߰�����QsPB�q��� �NIy� �1��&���|�[��ڵʣ�� �-�_����X`E_s�iSy�NR{��U�$g��������N�w�� �:�]����Oإ��@�-��"}F��.���أ�"�0l>�Q�G���@!���
��t����b�Kx��~o㭹p��4��od���K"�C䋜]����-���"��\q�kh�&���e�#>U	6y�oSiL���I5��9�v�:σ����u��ˀ�pvL���4k	��� �"x�t#lxg��Xl��#�o��F�{�Aцu9(� >gcޒ��6b�]��BX�i�yDxf|�����-%@�%Z�p���H�c�
f|�Б����b�ƅ9b}��xP �G��!R�AQt�YC�x$��ct(/�F"���7���+�e*ܦ�6,w��U�>�G���n?BT _">�@��F���o�u� �!�eH��w1��2���t�Y;s��e���Q���MO[e�1�8I%�m����A
*��	H3�A~L�a�<�%�Z�����]�NbH�$ڊ��A��1)���w�M��LO�su��ԍ����M��E���~Uߠ���Qа �bC�f?�d5���ƜދG���k���m���Uϵc?�R���虔 �0��^7�6�K#;)k��IE�+��>j��;�n�e&v�mLM���Icz2���2�(?�T����/n�w��\��]�׿�88�!����ݍ"=ryًh<���*�q�2�Ob����ï�
�o`"�(���pK7H UhlzëO[�)��������w?���?#���2�U��~��Jb��5�k��zQ�C1],�r�y�k������Y�1�Wa��ܕ�'���BB����x�L��������\B��	j�T�Xc���RQE����=:'���5�_2�H��a �_�Wb�=����D�7���&�U���6�Q���JЕ�uj����FI#��z*npY���N|�I����0G�]�Q)����}�P�V�
����H��Q\�⻤hDy�rġ�[DF���q����K���/�(xօ�0
u��F��mp��2����:��K������j!Òy�1{N�[4���+G��3a/�O
����p��r�"���
�-z>M���۰}q�	=S�q�.��L�&M�-����g>v'�3�(}c��{3��`W1aqJ�H&N��������L��5��������2��A�D�������2�e��*g}ҳos�CB��Ù@����zfbW�"�
�şK�U2Vd� �2�u����0�ח�9����s��	3��}�2�L�i㲰�q̧��t�e��
/�A%�/cD*A�� ������	c]x���c��e�~�op�If˻��çO2z�Ĩ�A\H#l1�݃���J�z��������^�z�u�<�%}Z�I�_�#fA�Jx�|��1U�%>v�1�	Bʧa-�C�T�p�'8���G�p(k�N�L\����86�I��E�m�I�6��[$��]�K#�����}*�\7�
Uy}���� 	��B^bݮ�K������*��z��2~|��>��k�W}�r/�&�7zq��a�4�_��I07�@ua�h썌�;�&l�&�T���@T,ƒ߾�'.v�l2N���83+ r�\�B�xq�d0*�������$L�uv/�K�}^2��1)H��u���֋rP��<8 H�k, �\��Ό
Ҋw;N�>���,
B�`�@Ű�	��֞�JD���k�8�mŞ�ĤND,�"��(���#��MK�'Q�!��HU�-���� S���6ŉ
_c�d�v;(!��Vh����=<�����L��r����nϙ#�N���Gn%0q�/xv�Ğ�;fB�!�QdB(�RL��~p�eyE���#������}�L��x��b��K.2|����&�m��&m��y�ZV�o{�*+�5:�Lڙ�C�'S{|�`��y�UK��ݧt(�`��sЄ� q���d1�w}rPwb�'����;>��-J4?DYe�'�/�CH���O�A�8�y�W�����KԚ�Q��6���A�������d|��jwX�IL��ũ��~>')D��2�@�t���~�n�OR��m�PhL�ܽH�|[��`�}�"��LÔ��_�����Y���4˞�ό�
.K$A���J��xɧ��f��(���u�!��}�o�r��Ʃ/�\���VubĽRUH�q�eZ�2�ǁ�C�3�Bmv#jsm:Bv	�PeeZ�������n�� `T$HH��x����e����;&91q�oz`K<���{���[7\�b�΄HI���6���a����څ�|�^�z��8�rO��	���$)���{��b�ޠk����l(z��ɦ^�����K��\�R;�t��D�*����è�<g�)mF���Ԅ���q�ܗ��OLc��*׀�E��$�S�D�]G�νG����{*)�v�})�F7P�I�ii_
5��٥e���h���$uʂ�*�8��A��e��c�J�D���!q��bN������} F1��"�au��{����&RJQDc�σ���j�9~���fL̗m���_� 7���o
�h`'��A�ƶ'��h�Y��l��%��woe�2�x)���Jc�"�����R�bX��Ψ��� �,�73��    y
���Kj�������ھ�z^?�qr��1�tS�c��_q1����x�dT�'q�G�>
��0����g��θ�qs\�e@���55�-�����$M�7ᾉ�q��	{N�o[��Kc���׎�g����2w�A��YK���T �VH�[;��-��8�@J���)k���5�� �B!=�^�D\����ug��#��EI�|%g�	�X]�
C<���@�Wz�߃���J�����\*~��.)��U�2��59O��:T��8J�
�i����:y�aP����x:�#p�YNz+w��t2�'���;,��2�~n�ea�H�*�JڧJ��h���e�Bb@�kYq:I$�o����rcJ�{wUZ��0�`���2,��'��j~�����W�8?ׅ���B��e<����Z��d	F,�2]�چ|�Hh��s��h��`vO�vǜ��-�^&������Hw9�N�cՓDM"*�(��\���V�R	S��M�U3U�qo�0`l��Rp�d�ʦ�	�0	.�{',U�R��(:+���`l2��[�/��V�l��f��#�sQ�Vճ0|�cow������B�)bB�2=���~�R("�6�����"�)����iBcn�?½�|�ʦ��X�`�W�F���KL�r_�Ω��}B����s��A�C�&�G�qb�	W����՚�
�R�8���!��H>\��ӓs�Mv�et�5f	��3���7
��A3h��D�b�����LG"�W�$�Z-'��z�Ɏ8C'��7T�D��%�r���ī��h�pB1�J�4�.4$o�p���Kң��k��e�� ����;,cF#�u4�	���^)ή���R:ȫm�2�~x~,���-�q���s1����nf%�Ҩ���*���8Ѹ�%�I��'L��f"z%=�DD3r;^��Y��	�����ىVg�09}u��bꤊ�gh�W���P�1x��!!bs�X�}�²��[z�.?'2
.O~�7w4#�D�#R6��$N~\���8�֝�2k�*m���.І�F$:An1�1�욬W�1@�G��#-C�3-����O$l����E�	��t�k�x�s���3Al&Ʃ��Y�^h��|F�6܁��CԿ���G������7��>MĿ)!t�
d�?��0:
;�B���	z��d���
!8-J�g��Gې2��d.,�VajA�~P��S�j�^�v]/i�~d����zd6�:,K���.q���f[�#�#V�\�xs<�C�b���]-���dR@;��`�!ab�t�?O���'�-�Z��*��U�2�K���]֤J��e���㏮�&�;Ġ��PL���2�N}�����D쓓�'�|�@�`x�wep�%ٻi�f�Uz#��A��A�4٩R��M��A���CxX*~s�wu~h�_���U���;C�j��<��պ�I�\]%�[���^]�S�՝k�k��xk�X�x0�5��@.��Q�=���[9΂���(m�4��0y���O���@k�o�N�&7GU��t!=�?{�����U�x�V��U�=M�����K��9���g����m5N���^f�����?�v������������Ԡ�[2zbMwKDgnL����}k���8������?�O�z}�/ؼѴ�CN��3�$V�y��r�����Y�g�2L��/�$\ݕ�x��<p_���}�C�u�����g0�V���sX+�����H[�/|�s�~=^>F���C���������r]��6,C?�Jh+A"l3�&�Ϗ�+	��>[��ʫS*�+	�߄�3qM��	�SGw��?�Q�"��K���~�Zi
�v��Y��z�}��o[�>���8�� ��I�i����}S'�C@8ɛ��58��o�T,��*mS�����ܷ郁��f��{[%Mg=}[ćE�o��&�}߶�4�>��	����4g�.����݅�w�܁k�2y�I�"�Np?�S���Z
��AL_�'��}צ�t������Va3�����r[��žK7=��}����ؠ�K�4Ψ?�VJ���YI��t
#I�T�sm���A��շ*���t@����:¾خ�K�=�
h��I��,��:i�X/��n������	���߶�h��G~�ӟ}���>�s4j��(�"�����b��%��$C{|m~ ��NӚ#^z�}�&uڄ���Asl ���ߧmb��NYR"�۪d���i�;\�����5H�.HKM���E��;E���d�B(�����敄8R��W����Ό�~H�����1��N�-O���-����asw����:�K���m�w>�j����dR6K���䑜Y	����2�}��32q��-��5hε�sЅ�w���*x��ϐ���A�TDA#ߙX	c�ղ��^�nG(ؼhS�����&#�y�p�|�g��A����	�Q������7R�8��\�ysۜ����xv������ U�Kƍw?@@W\�1=�z9�>�7��B
���7/��c�u�"�Is$�
@ی�W��f~����F�ev9ŀ ��>%�(�\8KrMI���; RB����)*0��t#+�l(��D�Iq�(F���.��P�gN���֌��7�����՜g%j6�Ε/jvbp���d��Jb�����`��]��@���K"�����s`c`�C�6pVXƞ�"��>��"�:<t��[�/�9�n�fCP���q�*��%���}�"PY-~L�9�;���񾦟�kC��J���>���M͇�H.����@$���'3���0X���� �R��h�h	��h�4L?m�^�#�v~ww�ɯ��� 8C�E���ͤp�}��319H�0�ڡ����w/����Q�2��w�3�L���F�뷲5w�9�m'�aH���{+��T��g��Y�o�)1�Wg�Y���J!��n������@�:*�k �2��0���!�!� �7����u�wq��}O�5�S;h)/�ErW��SW<��yL����7K#����Q69BV����������F{
�C�(���$[���*��垼��P��`�OJj�tB��*9�l�8@(�6���X�iԲL�Mxyww�o�H&
\�ߨ[��.#�(��%µIbÒ�z$Jƣ9�5�oV�����'p�T(C��N�a������<�s���ɋ�Q<i��
��(-����W@{&2ZL����'���E��՚dQ܆�9ڝ�����uBT�����M���'�_�3x�C����l��Ҹ�[o��(+��$����eY��!��y��YY:bP�VY,�ahK��U�mI*Cx��T����0��~��/���drzA/�;C�![3&�9�g����i~�����0A#F�'?e�����	s���0��A�%n��Ԡ��=ab0���˿�u���J��7��nR�
6iUЂ�e���a�ob�� w�G�R�;�cax�?��a h?�?�	3h�l�7#b�]M�(����p���#��)s�7CsO!��2�cd��5��WJ�c�ʸDA)%�=T�DE�A"r��Ý����?�m�(���}�Y}*��R�}r��9v�V'?$��:�͒<f�r��m]�!��K���#-�^��r�~�#�!�We����d��l�P�=�,�$��X%�Y�����z��B��P
<J������EZ_#D[���>���ުbh}!�����I<Ο��ːh$�TH����Gz��&��m�HJcOn����]����B���4
�H�ƷOP�1A�8f�g�,x�10'�ńX�IΎ��å�����ݳ�9��Jc 'z|ym�����8�0���pdc�A=g������1��Bu葮<z���_�����2��$T�4ZI��'�� z�ݿ}�v�h�2��GHĐ�{�1�[���|e}�$�Ht�`x�����?�4Ȧ��
���6����a+bׂ2�_#	    ��_M���M�w?��Rs1Ɛ]"�LT��0ܑk!�Ē08G����3��peŕL�� �����V��
���Py%e�S�kU\V�0q�J�D��q5��g�j!H��S�~�菺�BR��	����ډ/C������cL��ŋx���vs��x���Ԣ�:�Q�:�5"�5�峹ݙ6i�
v�1���,�3x�Q����N����Cv0�e��.A�E������q�K�u��힌+>��)�z�l'>�dO�*!�*#E�2�􎨜h���x�k�v������@a/�H"��V^2e�`�[y� E$o�i'B��W5���-� '��6轭�h���^Wh%KP^�n� &�X}:��+��Ņ)-M�:�J��C��5�Yyw׸(��q���&�>����C���[1��c���C�zm�0d2������1�|te�wl
9\Y���8���V����/�FT���L=A&�M�Q���6������_�I�y2�p2�]�-F�#�p���9%��w-*���{�Z���bEZ�4�RY,�� \�ǩ�U�3�=�gjO| �̽���>Nn�5�8����M˕�~��� vFiði�v�=��~���n�2�W}�s�����i��.��W&7J3�!3L��=�S 7��]��kH{�+�:����q9��v W�:GG��5�#��(�*���%�*IeY��=��\�2XΔL f�i��ڞ
���7GQ���7m�	gs��=a��I�$8v�W�3+�+|�&bF��?��yO�3��?�d���'���pD*:�H��8�蝿&2\�A����gk�g��DB{'�$3��ae61I	�~�|�o���Z�➲���mK�fx1��a�%�����7��?�rx�4}�N)q���]�¦�Θ̥r�������}��d<�@���%җ���i#���ם�9�����+o-':So"�d�E�͝�}�#�S��*�ug�oɣ�\�tCr�,�rfP!�Hzu0W�+�@"�h��k�3���}!� ���.�=Ɉw
�����j�"[{Jߦ���������^rQ��mH�� 'i�5rU��p�0|��u���>�m�F��}���T�M�;���C�j�)f���w�u�!c��D��lq81���b29<Ӓ��B�g����w0	m���<��v�� �k�g��$,�3H�R����D��u%�qZ�e�qo��G3K|���w��o�6�5v��_^�b�QS!7�`��n���`à`�c<~s� =&�J3��M��9'U��S���d3J��6x���Dō���=@��(�q_�Iʜs�p�,a�&(3��.O����z��a�&h��7�+L��5U�]�7!��pK�Ly7/�M����,��7g�v�!"J�����$?� ����A�Z�!�B1������+6>�q�间�m���*#?0�>o�Mw���;�a��>S��7l���W&��8��I�2���cI:�x�&�N�E+�p0��D�B�wl��F�����s��,�REZm�[��UE�mڴ��	8:�'�1��� t�
~:L��k�ۑ�u���G`�rپ5��hx�pwB����r��?���������P8��p����<@�Rl�k3�ngI�6a8|�L�f����Y��/��C��:��T�*oK���#�^"�G$�`9Z٦�G��T\#�LP$�7+�/�lS�v��/zJP+T��8=q$���.���s�\��G��.4v*o}�C���*�M]��v�2ԙgKb�sw(�G�(�0��i������#�cvW�Fm|L���3{v���y�������s��������=��@w9�4(7��6RfO�f��}'~����R���������l#?����+PE�d�k3���ب��m�elB3I�6 �H��pd#2��b���(T���kg&�L@�4�KI���04��Š"�`�/ �5^��S�z�Q:K�6A:���H���K�,���~Q^L,�����E���>���`�9�e�����W`H���LӞi?�Bl�{�RM-�܌��ڢ:�F���f�>��d���u��^Es輲9f�4O��U�x6��G�\ڠ��}#�k7���~�,46Dn/�|D�W��9��w��bP�����A����p������RY2$��C���D����F�&�������0Q��1N�9�o��᱾�U�L{zL�=b|���f�s�D�b��Q澙�����ɬ�n���b�&����dm�1=���E�S&��~[I��K毡8%_����q��~\q��m���!ő����ӯd�)&��ƪa�k/��}ƺe#�`=E!e�����֠�~E�Y��٘@��-0r$�)^qe��#V1b�Yt��`8q~���r�|q/.�<3�2Qk���p�HQ��CѬ�vW�B;���%:&��Vf�TK���6=�Ր.��E���׮7mʑq�oWp��!eR��	��Q����s�j��Ig���&\�xX��E<*$�#�j�p�zq?&Ö�&r�p"�qL�a�<�Ʌ:9�����H�o��`�� l�ɪ��v�I�WY������t%�L�T�?�������{�vO�n�9	~60Ͼ�e'��J2�'R$��H=Н�W��V��Mdp��)���4Ȥջ#��x��z`��:��A����|��GID�o�i`�{p���p#��o���wW�W�u}B�
	�6�D�<ئ=ReҞ�7�8yy�*����$"�	����k��N*�{\�Gҕ�{�h�RNR�$�<u����#���|��R��]��P[鳞����\��tj/�����D�^��,����%�r*sIpz�� �L��߰��]�P�T����C�5�^CE��F�'��e=���6��ԣ���Բ��2]|;���$����V��y����*>��w)��A8��0q,��|9�f�� ��=�nט5��-��Z�⽉�4�03�J��Eh-@�:%ߖ,�u�-��͈WH��]72�%jH-��X�M� ��!w�&�Hz�ũD�ƪ��}@���/�*}x%��R�2��'�E��̉jv@�`C�,F������z�d׀���,�P,j�A�!Pt�Ut��%�HB������n�����i#)���+�2����`D��Kwc�o#03	h��?�@�#	e�;����*
�Q��T�c��f��tyʮ���׳�&�g33�>%�_I8�51��g�~�N���D_$XVNԧw��'s�ަ����D�.�C�#�
��v��f����]���C j)�x���[3����i��?� &��$d]�I�����!�����f�3�A*��Q+]�H�E�!>x�� 64�� F? 8h�*�<���9]~O�D��lZ�!��i�t�{RM�8K�Q���$�/�a`���;��S�K��p��b�w߮�v�2���9�cI�J|��;��	���o�\��8�f��Gg��>�ڡ�*�
J���YL��Z��?�Ƞ>�%�g����4�$G�?f+�6\�˄c/E�C9{��Dل�ͤ};s;E�l�ٻ�Q`�skQ�2;�|�d��h6ϟmR$f��14�zJH����)��ĻËL_켺�ѳ*T bc�U�o	�&A��x�aXk��]K��ҷ\dgh�NWW���y��֢-BU[�C)��_Du�/sh�5AC.-x��˓��2���ʓk���e��"����|<
��=��J�mp���7�Pp����-�>з�e��v}��;/�iɼr��-��=�q9rG!���j^q����*��� ����i�\�Q�.�u���&�9��-�,�&��`M_��\�k��w�Q�~߂�}�P(!=LH�s�:*��I�kPj���9{2Y��H��;� Zl��0>
��;�N�SY�e�5��Z]��&�c^�-q���ʈfn��\ׇ]���@_��۞������5ҩ��a���    ��@��`����i���ԫ�}sh0�����ى�u|�o-�C�7.nM�i��;8ף�q�}����@�rJ�3��T,�] ���T�����TI�s�qc�٦��M�Djr[4�k�'��NM����e(b���ܣ��N��啼+��ɜ!����_Ϝ���aR��U��>ꀾ��-�ҤEv�a�&��(ӳ�������&��6����/�2���&�8,>�wR,���B��+\�p<ʼ"����K���o�eձ0�
jIWN�U](ƶ�T@~|�ʵ�AD֠��B���BU�h}��Ա���	�K؅b���:"����bp`MA3A�}sf\Ϯ��mMޖ�'��n���"�$��!����//}��sI.�A�*BF�澶8}h��o&n��7���z�9<&7��>u�`(��	/O��r~F��$ZE���ng�h���3�F> 1Q.W��PKޕz7��Z����V��H��������k]�s��_F�p�x΄OB���G�q5���='ܓ>/6&�{
�c�����ѯ���a%c�bQ�|��O�LI�ȗ����N�������,N!��Œk�ۙśi�ɭ{��&�2q�Ho#ov>�����h^P��K��{u//����[�T��|�&��e,c&�=ŋ���?��5I����Q�7M�;��/Y�nz!��=3R�:��9B�V��.���>Q)�c��	c�����4����X��� .u��n����P�	��k����('�Jn����<��>_�ת�$I���$�X%9,&(��_8��"�;���9V0�9����5ː5��K{"��N/�ufj���o�0���o�
�B8��K���w`�*ȧ���`�}Spm)�i�l���m%�Yo��{(d�p�Z����Zb]���#�����:��xW�H��A׹&U6^w�*�Q&Ґ�*֦愵d�Y �h�:�K�I�y�D��c���Z�(w�!���ǿ5Z��n���iG8�Iu(�.|��ZpQ���i�O�
��4���_�,H�����t.	��W��Th���D�=?H��� C��1N�E���L7>�]]G�B�?ôy�; �04���u)�c��i�!���e{�`�Ȕ��I��&E��.�xg�}iyEg����I�U?�=y��&�$Kĭ�`)5�S˙`dU�?��ѽw���*�����~\C���d��W�Җ$�x%W~�~*����5�G��Q����QS�:�VR
>�}̼��+�P#~��o�*��f:����-����D�#Az?
9-7���x-��{'%�9a�X��Ύ�+Wp_�g����{�I�_Å݃��@f�^7�j)����n��i�`,�P�||�h�`�A{�tJ���H;���d�3�x�&o�P��&S�V�/��Ү�k�.���$���<�aA,$��MS�݋R�7�i����4�Ìgf�=����Hv��`��6~������ү��/�<�>s�6�)��W���������lrѷנw8��
t&��/�<ay���&��X~���7����G�l̓Z���M�t���Ij��#�:zuV�pC1{�eo�J$��8��1~���I[H����j�����3L��� ]���GS1�C;FAr�N��(��4�⋢R*S����; 
�ú�.�"�;]ߊ�S�!����� |��qi�6�	�G�N�DmiІ�:�-���`?tc������4F�`=��&�������626%�İ�����dr��,9"�:Ú��`�'w��_�1پ%_�����Gt�8��.����$����W��`�!b�����^�����?{����]�1�ږ>^�i;(l9��^=u$��0�i�����6�ޖDd0j��ft;�e_� Hxއ�H�A��j������ "���^�����8-�4��Њ�i���	.W%P�8e͹x0ϔ�Ġ������Bv���V�N�qx���Rɡ0���~�~^���&����Pr� 2-7�ʒ�h"��C+���y�}p�,�������sr~�m��'I��˥�b��I���i�g��}�a6�x]��������6D�ũ�T�h_�d����U`U@�T3�i��:}��B�n�h��!lx�f��-bI٤�{NC]�OkS��V��Y��^�qN�A%��7�k�]�����њڤ;)]�Y���P��5=�CX�)��~qp}�W4I�Jx�b��5
�8g�>�����^�oE�A��CU�@������NHO����c�1fO'
�����ƌ��=N�j�����x�9�O'�5��ف�3���!�Iޢ�EF���?>�Z굣��d���7�'\�wY8�����ô�.��Dy��D9�ic��P/[ғQ�����J��^�Uyvel�UZ�;b��
�Ax$ҿ�� ����Jl�:��7�q�"r�C	>���80����N�+��	�.���7m�E"l�>OO��p���A��W��YB\�i+��b��m#�k�r�E�HU���]pdr(iP�	[ü?_~���㜌��3l��/�8 ���K�(������UÅ�o�4�<��_�M��Uy�Qp83R�C�'Iw �g���(@�ˑ�Hl���� &��^��u�5�*D?�K�L8X��t�����W]D�m�N���"�n��ܐ��>vg�U}xb���`�V /Ң�6p��9�'�D�h��;�}�@Q�NFk�||��3�M��V&�U�}v�����T�R�ېN��=�5��c1���2^���E��B(u�>���*�#�P�����wpP u���AF9�c0�A�!�yoZ�����I����t`�M�o
D:t�_ե�gؖ!ڑ�~�M9e��U	�ОK���a�G�iBDC����׬O���M�I���	�EEv��k�2�ò�乯RU������0��� �{��W{Ӻ��o��+>���)��A�Jhx��M	Jo&9�Z��	�D� �V��X��q�徭g��`��I֫�9k�"������o�����2m�꫙_����WW(���W�:�_�߻՝�*��;w�2���K~Q�{�N�SSd�2���}q*�U��4xft��>����D[�wW�j<�T��M\o�k��hNE��bp����Ӝ�6oM4'���qN�b��#�ʩ;�_
�s��ݵ�[��`��VZ��{˛��[D�B*�Ln`�l����
ƅL���*Vz��	�Qa�I�C��	�#��Iފ��!�ݚ��M���m7���ы�H�	�tn�h�;n������E�R�#���橸J���{\R�����
�o�����bUkv���T}*~N�7���7+Au�T���t*�����R����M`U��uI�>Ъ(u��F���&�{���4���!���<���6M���8)�����hBE�$f�i\n��o����@ �{��p�	z���P��M`�c�o�0p�x�z��P��IB}�Mpx���$��;����s@�[� W���!�|��j����vR�K���+Q��V�aۀ&g�Q&`l�c�X;S���U��,h�c������V0 ���|�|�k�/�$�F��i�߀����e����Yi� �:F��!�9IxH�[j���������]ø���ضX�v�O��)�C�[�%�C�t�x	���J�K�@҅�d����)�D��g>8��|ۓ10D��k��@e߷�,�Ӹ��8���D�[`fK���ՒP�,A��_y$��0q?����P�����8����;<�Zeǅ���_�����UA���)�*da�|Q�+�9���u�3xK.�h:���6\+\���uA��1Gi�	�~@�x/���D��k{�l9�t�KM+I�*&�����~`��w�e?'� ����y71��u�Bw��F?���zu^���
>�\�؟t�(�c��+P�Hs��c�8���q�����N�����0;��B�9-n�n;Ƕ��    �כm�d��"�k)�&}�/��]`ۤ���C�MC���1����g0I��$�	�&���i�X���8�H�v�L�]����6�/�����R�0ٮ�\��3y�������-��Q��f�����V�?�� H���!(4���Q��*��o�P�I���*:���/"��CAL�f��j�,s@�փW	2{��Hg��M�L;P[$�҂�u.����\�� ��!��AH�����������L60���߻V�2)�^��?V���IM`�q#�{Q�%�s�Uk�6MX4\�$��`N��\�+*��ȷ���2?�C1IዟZJ��7ߺɼ�����4XN8۱_Q���e�9)k�:���Z!�šU�s��d���d�o��f�����<��v�.�>0gkŬ�+�Ys �;�W]�Ɩ��0$-���;:�_�&u���h,j�em�p�)`X���cf��R����I$ �Κ���?Ǜ�Hp�&�PK���7���m���ǳ�w���-��"&}�c:L���XJ/���l�JX6^�M������J�{��j�>���ʻS(Z�Rf�<��<]-�$���M�J]l`�}����
Z5?�:q��VLDݮ~�w�}�o����L;�͏@Z o��6�he���H��~��]�Gتd��8�YMZ
s\8�0�x�o��Mw�1Aˑ���
�6�\>'�4	B&���Pd"���g��L0� �_��tz��p4䙌g�R��T�1��搱�|��`>�BAJ���*� ���q��a�?�YT9��P�f��I��eT�y$W-�&͞�zQh�����?�L�iP���}rK-X�e����ሔ���"�����K
�|��L��r�ٳx)L�l|�Co�2$#�e\��(����T�VT!mӠ<D�{UER��	BI{uq��G{j}�U����kWM�>����k��A]���ݱ��ƇCi?��?n���Z�����!����n4���qH��/qH��՚4��E[��C��'}՝��&	�>��{�yS�9!Ve��-r����B��`�D.�־n�k=��Ӑ�t���F�:㞠} l�8�!P�q��k�� =��LPfv��5򥩻ǫ�[A���?I��]p��r���O�"��I��4Y��r���������Tt�ē�3>(e!�6������V�k�؃�Ӎ�^���dR"���-�c�8̠�tX"�S�o�&��z��L�hP���7��*Q":���E���	�@n�
�DBtt\�۬��n�8\�
,Q��D���?F��	6G�=[����p���aڹ�O��Ԛ���wiyb��1]!�����u$G���D�5�[�T,���Q��L�'�>��:mU���~G�6VƳ&���������鏿�U�R�F+sY��/�E�r��B�!3J�/8��b<2�P�4���)q��� ���s�>�Yq�t����J�k�z�h�����vG�Gw��|��s���>�	��Gkռ52J��b�w��u���B�j�ض�N6���LaJ�:0���
6���R�D8=����|g�y��TRRѐ��w�����ɿ}�c���-����f`���dX48���x�oޞ�4XS��Y�/��-�������j9'��/��������g��N��5*�s�AGNbG��U_����z�߾{�2=�<Q> }r����W�C�F����-���ڗ9����\�, H(�������\h�\Q>�9�9
b�C�C03D���jf��(����=��m-����%ɔ�׆V�����u�[l�d�h r�v�s�E�QU3K}��,|��g��(�8��莃0L*������Ǟ(h���-bP/��ve�,4@^��k]��"�c}��mr��O"� �@��/�x����îA�x�G��w�NkPi�2���� ~X���''�~ٸ��A-���]�RKuocR|~�����4�F�l7�I������ud�+�7^e-'~����>/ TZ���U��WB�^e?ȶ.�]ߚ�8�3�۳�Z�7z�z�T��jձ-۪�S�_�ef���FLtL *Y�@�B�+��d�?�zL��)ں5�u�gM��6t\�8Wm����sO�,��2k����1����Ȧ�/I�ZRh��d�sVt?Z���,a!r���6*=y>r5K�Ӡz�B�-�QX��/��|/tl3o�G`�����w��	����H:���#g�]�q��7Nΰm�d�PԹQ}v��? �>g�P�W��#��)Z�gi�D\�麖�5�QC���q��<�^n��7)2L���3|)���l�'��0h���|�݇�Y����8n{�OfQ&I	�S�1jlR�ƫ��v��Q���>�@fa��n����SiV��oO2d�2�c�#�]�+�}�Y>ʫ�Kn'k��71I��9	1��a?��wAG��u�Y��>�Y<�,�I�&FI���U�O��DD]gE�R�߽��=�RD�l铥hdD�B~d{.�a;���{a�(	���^�e��_,eʺ!��E�-���ؗ�}lvHǬ�S��T~Yc	.#���.��ݍzG�VҐ�.��f�Ж*����z�bR���#��u;��l qߵ��'L�1	�� YUp��BiSϏ�"��2�Y�[�HG!�9�Op)�J9 ��{.�%F3��dY�;0|��k��\��y��1�X�"]kT��V_���'y�1�I=���U,L�����=�^CY7������� ��7�>U���(�-y��Lp�U.�lI���f�R�{c�c,�{�ܢ�&?e����Rxʤj��~/� , 9�� �)>6��QX�����/��:f��}X��"�sy5��h�U^�i�X&r����LUNgF&�23�]������|���1))2�_�def�����Y����˻��f��c=��9�W0G]ʝ2��b�i6Z����l�L�.�e%2�+iSYM:;+�>!2�u�t��>�ڽ�v�������z_�r���@e�kq�6Q�B;����ݰ�^��E�pU��_K�Q����`�og�Ӯ��G�b{�Ͽ�b���k;�k���[���4���n���pZ��D]U����i��'�k��uD��>f����iw�!%�O$�3�HR���@J�◂Ӷc�ˊQ,qVC������$R��;�Q)��/�,��1�,b�P�⊯�jF]�^�
'L��MH[l���'\��v$2:뻤7"���*�H�rHʛz�幌���Z��4{��s����4"�2�_�G���E�¯r4=��ȟ1_�� 	�&k�����3SE^!��v��igE>�ک%Y҄s��M�)���!�l$�ʎ�,�LAv�m���-c���^4��Qu%0kq��>�)D@���2�$&�hz��aI����]&G+�y$���������أ� ���^��"h�4�Ŗy"�"���������"3�c% ���Y@*� �TH�,h��@4�{��z0T�{D�}~��7��R|�V��}�/�7M�EpF����z(���{��|*�t�
�|%y� ޼��(�wj��-H�{pA��"�YVt"�Z��۔���|{?��s��IY�J��Yӿ�*e�pع\�W�����W����}+�&���\xd-H�������Y՛*�q�J�s2`җ��<�� ���;�	0���}d����c[д�ԣ�PI�,���O���C��xz^Ft`�����ws��6Y�&�8���� hC����3��ހ�J�b"@���"C@��=I
(���c`�A��E��р����I��!a���k^|v-��e��c.�ro,:�[��0�H,�����J9�UF-s���t�R�0�2 j/6`I����J�gE�����_��=h1x�ChIs����c)�洜w�u���L^�ϡ%K1 ��!�R�̀X"�bCm'a �ĺ��H�v
U�U8Z�L~pI�2�Y���TFu��L����S;r�,MΊ�$+�_.�x����T�K	��5�    ���@�A�m*��Ȱ����&�>���� j,)N�|L'?��2��-�*T5�CK!q�`R^~s��aj@����娓���t���Dp`�,*7�I�ta�:^�.`��$8ȥ���)7�[+?���N���0 �75�<�wi��Q�3������$s�HS��q^I��=/��:o�������p���C��������>)i)��X�;�#�)Lf�{V��*
�S��|]W\���$���>��ن�-��#	-L�x]�F�Z$�q�dm�?���[�6��o�K�w�\�٭� B��M`x��i?�:�s<wQO )]vf܋�㹞�QB�ST��I�J�%�u��I�,_��ŗ�@��GF���U�M[i����⥋7&�	�nR�`,l�e��bF�����dO垦r@�0�,�{Z����ķ����G2�嚍)��-��V�p��K����g�R�2��r��dFE��c����z���=�����R,�+G0�V(�^��z��M�I{)8v���I�����ͱWA�fx�f}���r���}IK�/�8�T��p͚�PpA%�Hd�����B��u?��iR����0��%�i/p�/�?G��C	�S� ��h�L6�S�hw��C484��Cģ�\�e��B�!�����z(ľ`x����c�r�P8���O�h]5�tY�I,4�1\.��:I���*s,��h�ܘ� w�Mm!�}��\�/��Y膂��8-v���1���nvYn�D+����+�͊��蜒�Q��� 6��q�y� ����c�!�Zޥ/@%I�I�H�v�D���[�mm����$�e9��gh7Eu=��?�B��
0����6U�F�H�+��{�^G���Pτ����������[��$�� �R޳����@�C���l9����_<7�WvpL�=�I���z�Oq�5�~4�*��~�Q?��I:���_{�3�A 7���0�U�'��b-E���G���O�V:4�~����)2�(m*�E�r)@� <�{!������ ���v��nrQ{!5�niAs J�������rM�����CXD)�޾���4{�ա����7
��J����%�j>5��+)X�#L��0-7I�]G�$wuBl�� k��
o��,��i�t8LOkc��)1����!���.���B�Gt��L���/�p\�d���n4��e����rS�Ŭ��J��Y����O�X�?dRdT�L}DA�cNR���mf��azJ�מ�t��{Ϩ�����9������gQ1�lJ�%��o]��m��~�k\Z�y���7Ö$�a����BX��LBB��k��5)ڄ�I"U�4eh�7�5�^�Cv�̕Ľ�
��/��Eo����h��\����>.[9jaF���;-����}�,啱�:����3Q���&�orb����+���A����S+��x6���|������c*��/@���c}����=������P�����Q	�4�풌��n��z�D��X�Z�,%-�� j�#_�pI��"��~p7�ؙ���(�AhT�4�I�??⾙#%颲�M�:Vc��y)eh\3���B8��M�N%��ZHX�����W1�w[�y� �2��B�,�kxFv�H�661ɒ��� �s)�6��<O�Z�&1�,B�b����l0�x1���FI�})D��P~~0g��>?{�e{U`�>��1u1���H��!I�x6�$�1y�����iw�>&����_FI�,���X zL�ъ&����Vͯ�㣼.v38ng��d�%n��]ʑ���"ڬ��a�y��#iF����R������}p���ܓX=�K͚��K��Qx�l���0= o�U�i��t]��6 T�E싕��L蕥#��,(�>���JB��'dt+^��g�;q\�Õ =tq�����-���ߨ��zT-�$hcV�]K!t|���B���3�4���~m8�$�/*xcl7)���u�Y����%)u���mŮ�I��TՔ�rz���ҿ�{�D�h6|D��Be�ϗi)ڂ���?̽C�%/������Y����"���F�ǐ�B��b-�;�,b��^�V�H��/�~���_��9<����QA�̪�5
���_s�_�QwK��� 9W���*���K�~�36���C��YqXT�{�@�Y�z���3Ո��/�iI:���U���ƟW��&��JR���z>�L��΂^/ފ�T��M�~�8 Eg�I㢦xk2@~,�b7>���K����$b�k�G]gu�!�,<^}8OX��x���:Wp�%i�c�C/^�G�U�����CD+N���.lv��)�������@:\�c�7v%�r I�-T��JEmt�h���1����QԖ|�I��b6%a@��U��gk���AD�c#E�-�`�9;eMY�
Q�>'��!q�>KI�b1ᚓ�6Q�np���+r�[����I�"�}�(���9,I���+��"��E�w�#Pu-��8�����/�Ҳ��q����:y�2���v~��&�tM���L0�k��'}���6�6��8�_:O����@n�����HCp��^��R�%��:Y̻�)F�,�@`��1,�&	���U� �H����=�+>���|��%YO:��I�4II�huYQ��I�>Y� YFy%9�O �����߃�y��x�O��D>>G�O��_2k���Z�罶�P��/_�C��iT�Om�I�`���+��Iӕ��`�#ϨB�x�w������P���z@�v��,?\_�榣I=��X��������5((��*��fJQ=�Q�Ј_}��a���n������2�#�����k����	B�w��d���a4�/���v�~͏�%8&��0�eV�n�sdk�EX��m�?Tr#)\*>Ds��,�υ�/�I8&���ȕ��u�,E��S��$$k�J���/ӳT�����$ŭ�躔u�ۯ U��0���Xc�A*MO�e!nJ0���<�q���\�U�T������~iAb���nX�t���id1R�幏r��|�g�X����,tƸyڭ_`芴�D�`�Lo0*4(�z���"�X@�|���Q������zuI�R�"�[T�s�bN,�O�>���9����i��K��˶��mqe]��g3`u�����^ �<{�ܤ��D��ƠAԇ�B��L峄YZ�R�8����y��h[�^�'(K*#J�AU3���D[x�Ũ���ߵ��Q�"���~|9K���.��]�o�͖ؕxE��%��@I����:�t�_)� �h{N�ǭx�p�� (�����b�\�xD����|��:�^,k�EAxY�K!S�|�-E��:���ϯ�7�Z�����=�)�B�}p���R��/��7�bf�L?��w�6��+�M��iY�<���HI�wK��Ĳ��"�(FV�YEi�TH��RX���������ǳ�;{/WddJ��Euk�?�T�x�C\�����zӖΖ���G!�1�߭n[Q��2a��n�tF�w#✄_ţ�Z���,y�����fm�'�ڎ���zOde��Z��k�/n�	�����h8D��$���~)t`�Ŗ�٣5��RБ�f9��1v�G'���C�z��0�i{��:��1���N����A�,�����������k��5_�Wc��ag<QŘ�Ї�ۼ�����N�	��sCϝ���58�B� ێs!��~	0	/��Q��=�*���8�SE�~V� I���C�`����
9/����M��h��Hin�el<Х%)���q�v���#�/V�b�iԃ��i���<K�jNm�K��u�:=K�6���̤l���-����V���*�(@�q$Tm��J�HNQ^<)�`����@gP��*��)04�*��f���#z:�
W��t ���Rp�S�bÐ�m�����ټ����[��-�l��ྭ^��ӞQxV�e�    ��p[���w|���S��*ʷ���,���^N��6�����Lm��@y}�R���>}Y!RR��5,KI��%EfX�8c^�i���1�f�A~�Ę��[v�Fe�u}��R�b�쟾M�Rkmat
�l��ݞ�
��G ����})�΄�e�����<!�Tܜ�wp�#�6��z޾8�{�i��v�l�ľ���Z��kb=��7 o�����c��Re-��U�ԭyٿ�����/[�Q�EU̿X
v�i�W7=��;-Eĳ�:�T��ȼ>��U�ll��V�K)�*9&��iڴ����hg�s���h�9؍���g�{q&��yb��r5�P�k1_	��cuEo_K,'Um*����)t�.�eU7�9���Q'�BֈK��`X�����}����}[^f�c�=5�J2t���}�o�J��ԡ�u�s�@�Jg~�q�Z����C����ѧ�K�>���Q\���n���R��O�\ߟ/�뜧Uwٟk���2�+&�2�}*=Q���&.�X�bƔ�HtЩv���?'7��r>_��(�8O���V�d�P�������ߎ�}�?�s�ZK]ߨM���>��U�̥�y��>T9[���Y"���C�7���F��c���c�Z�U��K���wγͧƧ
��/�w���'���S�L��ސ�,]�>�ݺ�}��a�ͣ ko���י�<]���>"�p�7/u5�@;_�R���1�V8��k�c�c�X����e�R������ڇ��W��!i��(_��OI�������c�dZi.��\�r�#�ĭ����w�F��0�
�B��� 
!H��G��QZB�bym�5�̢:6�̢`Y�8����-I؋��_��Q����q��y��
{ 4�	�A3 !�cR9=?�㴔a���"�qy/�P�写?,��	�E��/a���*�g�,�KĶ�ؒ���b�K�S�r��tI�p��s�{����n�G�2Y�DB�Y�'�%ua2� xI��dEط���o��ȅXb"6����>�����r+%�q���.:v�L��a�}햸��!��z��"�^�0�ȓ~���R������6�ܤ�$#�.�������v�92P�N��QX�{�W�Q��̜\�Ip� �Q�;��#�%	�����K")=S@��o;�ڍR��c��I
��i}���l��D�#
B��(�,�j����C�{!"��u�oa4�)~e腵! "	�����I2v?�KL��m���Z�AcQ,iI����|˯��2J����ъ��XD�CU���u�0�e �i��S�sL�юTFC�8SSvz��7<�؏X�$nb��諷�qR_�|�z�
��lk���:��O��"�eU�������E�h�h�C7]�����P��Ձt!$�ZJG�e@r�}���-���?�*B�x-2��ߝ׺�?��+�����k�Qs�>%��
�r4%J���~Z����Q f A�����H©D�R>�OV#:������������WQ���\צ�ٷ+)����d ��;���84N��d�Ќ`��&�Gvn4���n�ԉpPG.z`�#=h����έ���C��z^짆��������N�����!���a��wkv$��>��(�GKn�&*�W�
N7����gA@v�:v�$���Ŋ�������Z�w��k��@�H��wCq������S�t!miO�6D=�Ao��h��^�5��y�����Ld��V'��.�P�+��m��oh��r������a6�-��2U������`���h� �~$|�
��rTk�T��c~*KU�=���	o�����cd�lQK9�=�b�(DQ]x����-���s�;�E���C8ZIda3>IXn�ѵ\�"�Ʌզ�gb�I{'~̶#M�o.o��v�� ���8�k�&Hṟ"a�[ώ�l�BD_V|Ϸ_^���^L��CX4�"�N��V���)u���pC2�e3'H{ �v�reK^�eǛ��K5��g�{ޕ�i:a��$�9�c�R> kA@UFS�T#g0 ����4an�l5�2�R{,�R9KLk<K��]������M��e;�`2Lް�����Z��S���x�T>;tBҳ�I_�Q��:�5�鐢��ѯ�Mփ8a��^,�a�����MŽ{*?���/䝣?y>��u>8�b��2�&hÉ��]��N���
L���,M�����U5�n�s��G�CO0p�V��-��FEj>��7k|���#�vp���Q޶�z�'c�oL�Ӗ����d퐇w�G���?
 ꬦtA�Ȁ[Ҧ���۶��1ѱ��o���Y��=;�ew6�
ZS:٣�J��yLa
Y��m���)^,�=�  ;.k�i5�2��k�ӑ)�¡�3&г���������sͽj��Хc�;�Z>�����L�#$f�������6*�	���m��4q6�����X�]{���\G��Z*�v_�q�����	?�8�=��'��F�H~��`��̐��?������6o�8�TG/�4���ml�'F(�p�^[T�Ư���6Ｒ[n��0�;Z��29�[8a#F�|��(�"�߿��������	ažb7\��!�XB@�� Z1���E���s�8[[2n�����ӯ�V���(��'4A��k����>����X��`>���×��[|}4�V+�n��@�C`���P����L���i��yp�n�El+�H#w��zY��#�Z��nW��`�B8f.�P���k�:���2��(Z���/�%ߧ������vgon��F�v�0���zZ+�Ģ����/\���E]�������a��U	����8�����ܨNB���i�p5��;JӒ����J�;�q<�!H&~�p���F�?��ߥ[N��_�!q���]�z��B�_����tcoN��G?sa�:J��*M�a�{g�f[����i;G���ĥ�R�l�H]�=U:D��k���QWu���3�?w}Z��=�!��Э��uUZx5��M==p�a�C���ܭ*zN!֑l�K�M�5'���
��]���99�1��D8�:v)س��# ��Иvd�@Z��*_���*md��������ҁG6bVs����ᒓ��ydb7;�:�-�]̟q^^�1�;�[��A�Fl�4&;��d1Yjs�M�>����x8t��r��(!�[}�E�5���mƳ�aN�j��JަGlX��C��0?���w:�A0�H�s�@�b��5�d�W5A�L�F{XA�Lg�07`V�3������^"z/'!^V�lT�t��}����UL�Pwv�͡��5��z��1����T�7!osh,2x���-X�p��9�#o�G�����"��y��U�}&����:�w�3�n9��0�SU�t�9���p�o���:*�t��k8��5(�����l��?.ԲcO��{[�͍�봞�!5N����A������aza���𻀈KF��ſ��c�|W���x�r �_sݡQ�~k��>��rq��˷ݰ��~���4�>�'=��t���X*q���+�/Qvv� �Hꟃě������$5U�y�~��H#yW��niFu����/*!��-��$�S��S�����
f��f�e�Ż�Dy�q���^$HD^�Zgo]6�]���.�����4�y��&Y\�.k�"0]�:"��B�I֖�,�@�� ���p���hh�<Ŀ�Q��lk�	�\j��q��8͐m���=�����H�ǽ�����,D��bU�L1�MSDO��ᄉ�-K�u��a#�5�7�}v
�3ʋt[}E�h�����;6-��	>�*X,�{�v5fd>h#=Nj�ޕA#�j�.V�n�����dؽͅ�؎�J��jz���P�ϼ�C��s��	���q�=�K�U*��Zj43�>��`T��@ܗ-��z̚f`��;�狝�{M'�%��3�Լ�z�R[�t�k�҉�ӇQBI�!�    [3"�y���C�����1a?"��$����5A#9�6=م�;qO��,�^�+b�D6Lu8����h����3�l����?�m��k����-�4f E&ŀ�|��b��:����T9G�/3r升y��=w0u#�m����?�P��܇YVhs��v�sA�����Y}��)~�Gnfډ�G�%���U��+��:|�+
�i���∄�c5��`�Կ�[e�2�^AT�}��qZ� U�Ϫ�gT�ן�:�@��6�Z�Y�#S�������v5�FC��f�&��ܘ?b�A֌��8D��{��h�@����y2�[jTD��Z��äx��]�M
$� �e��5��PscT��e�o��ަٙ���YhKV���Y���4�"h�"��h*�Cu��+d��	�ȎT���}�<�Ќx:���7-�O�"1�~S�D㠷<����.�S�{dY�Ol��V��dqN�&Zw��y���0Z����;�;��z���JO��bxX����OsdTVY�XF�R���{��l7�դ�H�#ʗ��h�*�{dX�y� ��)����f
��hx����Q���9�:�5xe��eemvM3G�}e���=�����Q�UQ\�S6�=I�k�I3�6��E3⡷��ðC�%/�7���-wY��I�����V�ו�a���&d��Yt�ƥ�x��TN]�w�����1.泎J�-�op�Z+!�a�mVݨ��,=2"נ�������蘶V�I �78�_��}L�%���̝Y��GY0|m�k�H�=�GeT��>}�<�J�m$����-�a��Pݵ^�tO[J�E�k�Mӣ�ߵy0����W��	���$ '���L�_�"i����t��n䢑m-B\͞1�;���tM�9g��B����ryJ�TȊ�%�_�2֠��U���j���*n��U?���\�����l٣�q�"6j��@�=ݔ�0��m=)��t�q~Jm�ccӺ�0k�l4����l/�gRi 2a�����2Mx��c�mJ��. ��s�5ŷ�E��}����JV��:����^Nk)�\ײV�5�^���2�h#7�r���b�R]�-���]� |)*� �{;bh:�m�j�|�T,���
�A	���*R %lIm2�i0ǟ�6��6{��!�.���
��j%Op�E>G�$��hDFSqdП����`�����z���j��.,w����yթ������^-�Jq�y!6��ab��+Y����4�@���m}3Ϙ<xO�[�G�b���H���N̪ǃ�qs��w#�B`gÒ�1 ˍ��)�H��'���Dc���8�wU4I��_��{�d�@G �@+���.��z�Fه����,%%�!�u"k�i5�Ė���j��#xH��eY�2X��l�����h��(� ��Iᳺ��jQ�XT2}ے&x��e+��\i�f�k ���~�����n�H��,��H�-#��,��4�;FL�5q$������6:&��CN��e�3q���q��$p�áf��[_S`#tq#dؤM0�3���UeD�(�R�l�q4�R]��<e����H����s�ޅ�n�*�a&��@8:���H���t��RӪZYa[��7�*ͱU�~�YX��5����^�I���1!�A��UY%|�$e��wd�c�]���X��<填����.��$�PzZ9}X:�?���>�r�gN!
��X.˽�A�\�yP���S��t�9�Jaײ���1"=�#<�O�4)>!���Z���SN��X/K�Z���1F�u�+6�֖�|B	�Ė���c���g1�Q#�o�s`�i^T�������`��DP�^��u`���jg&T˄�W��]��ƅ𶍹���h�����iI�ux�:�@r}�d�߱�T0p��v�1ru�p�J���k��̬'���I�R~�L�D%;*�`!�ΐ�-;������<�B�{���pt����§ޮ�!8I���#�E�O��-,
�,F����:#����:��p�#��b	��)P�&S[���"|-�E߮l4�?i�c�tp�&�mu�\q��ѴvX��p�Q�)��G	ɍW���e~�AzC�����L�fȅ�?B�����o� +�Ck�����B��g52svU�4iPɃ�ů������|�PW7�6&��x�g��7�A7���!$��)R<��&iޘ���Q�,N�V���%
���:iz�l̤��=_dמᴮ;�W4�>�)h�l�0ъ�v ���%�4�T-o+�qj�IOK�S��f*1��0ڧ���l�����|Q����X�K0��T�ڠ�s�9	K�r͕�Pq�,��aAW��Z|�1��>x�=��a~���jx�楏H�h[��t����/@�0i{�����L}}��v��H=O��� ��>2ȞQ�ER�R�a0Sz��j�L���%��_8+*YQv\f>l/��
�ʉH�G�h�:pn�(����9ļ@u��vA��!��J'6>���L=*+��ҧG��2�z>`��n�Wђl����_�ZOqS�^y&�Q;�SI��YC<��j����R!(��z���z?ĕ���5�H(E�2a��L2���	���.�� �贐�t�����׋��J�$c�璅M?�T������}sF�\�4�&��>,��i5��,|9(��!G���bI����4�7�׶��2��/|��訕��WAZQ�7��*��s�`AU/�8bO�bEro@n�ED �&���~��n��dG��d{�r���{�L���D(��x�׷�Q����_k2x��H��xSX�,��XJ���\��א�?3ZA-zj�s�\����nk,�n�K�y�@2]�QX�$�vI0�<%e�k�77�>�B�a��&�PP�=R>X��0�R5(l�b�izFX3�b�8�e�홶 ���ZvkFe�J��ԟ-,	�R	J���ܬ��#��������fН?��1�/���.��	��(2�f�/�Ѯn#�=�`3c�s��2��*��Ϊf�0,�;K���5�Uh�W�K�40�^Z��D�ۆd���)��6�xH����i�Z�i;�d���C	�ќ���0wXn�w�L����(B7�, �ܛx �:`_w����6G�h2��FHd�yy*�_Jw ��p�6��I��ϼ����@�m��*u�������<���)�#�(C�#>�X�R�Z�v��{�F��}ߖM_	�@DX����`ҳa4OCV��|M���6��e������Լ�U_|���-�c֫㸩{�����U�	����	�C~g��Q#�׷B��ӷ�(������:�l�g��q��@�o͜:��p2�@Wn��� �?�������̑	k�����0��8& ��͑
�W1!�2��z��o������P#�����*����0��72K����M\d��s��6$C�Ei�c��k4��p�`!��5Rx�(���C�x��J�8��H�K2 ϗZ W��h�UF/�	���=�u�c�C:PN���#!���3�=b�g������P��h�R��;�[��l���Y�
��ҝ*R- 1�fa���4�Sq�QQ���Mpl��A+2멨��n6u�JB�v3v�n�=���F��Z��oE����7�t��}S)���V*�vZ�#Kz���`�1؊±���^��|�b��H��,綎b�J\nEc�DvLŉO
�c�9+� �x��FyI�a�:2Z>���yE}��}Пy~eȢ�)��b��&e;sxU�n���S��o1����&L��x��'��o[�Np�m�?D%K���X�uNW���'���,@�����_L��!9;�hv��] }�`]iQ����.O��p� ���>P��7�J�p���U�ҧ�� V��3���ǖ}F�\��`�HĆ��X�BSOC��k�W���� {&�6!pZ_�=�]U��R�	�6��Ǎ|q��i�Z�j�K�=HV���{�=1������rr0{=d_FA���zL���v�{�    Y6�<���e/���ig�.�%��>2���dw�r
3��J̲+v(j��\O� ��:D'8K������-��<M�Sh];�f�F�\�L�;� 3ہ�<�](�i-��]*������Y��٫�s�t� e���<f�r2�ԪR�1���J�Hדq�c���#��ʙb���'@#@='y��kd�L޵�Q�3eX�Ag����3�a]�)	&�C��S	28�F�`��E����vYM#E�fw�	�V�4��j�>���sm��q���G&bkG�!;PV�g���0�2ҷaҹGe�7 �<k�	t���m�>�{�>``���W�g�1-�jRB:�=�ס9_��6���@�������-�z�Fi�>C�ɫ�헾��B�d�1_q�T3��)"u�\}�fߋ��Mc��ŧx�O�8T��⎪R4�X��q�+J1F�F6��D�g�bZ��],�I;Ae-So4m@���4(g~��9�7i+d�9|��>W��l%X�!�L�ެ�j�MX[=�x`w.fV���)gF�α�&J�"�94]Ԅ���{�Ns��6�"\���&����Z=��jm�O�R}���!nͅ�z��P沛QMo��i�_��1xO�
ub�=�5�^K"�$�2��V��wЦ��J���%�6�Z��i�ia�:�S߈[hZ���o�Q��
�����GO�圧O��t�lZ�����Q�MӷJZ����ؚ��3�9���><�v�Rn(�Ղ+�9�ߧ(��ZO�Y?�,Xw��#V�J#���GF���g�s�i���M�Уkav�euc����L)���#�6�{�������D���F.U-��m3�@�;������D��F�j�ML=4������� ����C+"���C=C��w
l>�c�(��nX�Yi��)���]G�b�8% �"����Ᏺ/�C��T�![Y�3��X�oF�tvqѝ>�ټ����@��~��q2��p��D@|���l��c~$�$���Ƭw��!ͺ͢���8��hQ[(���u�,�1��:ڈɟ��93ɞ;�d&��yC�.s�x��^���fX�LP!��z�8,/�{Η�R�P�p�E{�X��۟��p�C�Ê�G�L���F��Gܳn����?:6�Ґ�9�C ���d;�D��T5x	��/O2��,˛ub�?D,��ʃ �Yb��p��yfBPix��2�C�{ծ#+.�uڇ,ʒ�v��J���f�f�
�
p��&GT�lh
�r����&�n�y�(����*k��!=���'��}�*�m��#�gX���M�x�;�6+)�M,��"�R���zQ�� ��.qEE�U��������r���6N��З��L���:p�w��b�U�՚T�����ܤ�Ȗ<�U�⬙���@�ɋ��o��a��N�}�Xn��ß~1���Xї�I �,�_I��mF�9	�*�� L �\3V���|Y��VQ������j����1u�ː.��GiͿ�@j��T�%��[t���m	��*S��0��ө�l�)r��̀�x b����O󦨯�����Wz�1��k�-x2�_k����/(��Iw�I ������5�HJ4~��=����]&3�i[8����[������-{�O���~�k�� ��?�������<��aq��.�	�!!�����!�A�2����Z���ޚIM�U�ar�ٜ�g!Zb�$E?�}��/��7m�jR�������1>P�LD��3��燨�M�''��Pbm��v �L0GU|��`mE���<������JT ~��Z�3���T�����tp��i�u��ǲ�~y~�&s��6<{p8�K��W0ެ��	+�WDq���y���2He6~��m��nA��=���镴@�Y�2�(�+Yx���9b��0\��Q�&��1.����#�)������3+.�P90]lc�Dˏӥ��L�a@f���}�R���u��۞o��;�=h��˚�����*�X�z�@�V�w�����pT���#�Ǡ�(d����Fg�Pul>r{���P���<�1D��{t�d�A{�`r<�x��<h�0G�{Yʶ�Eβ�qe׃͇>�&������[u�x�eA}fu�͠z���%}�Y��"�Z��a͌���B&3'�npl���}��M�����H���2}؏],��'�A�~�y��=V�HѠ5�7���1����d+J@��A�8MXd�f�(+Ǒ�$(:2.��P�N5H���|�-F"E�ٹwKN5=L�^��ڊo��sⰏ�Ĝ"�a�Vd�f�L��(�ڨ��_V���{wdT1����������k�GAꆇ���`?������1�#W?�27X�kU�ʢ# ����u��3�U�v�f��+�V9l���ЧA�9�l������[�iP{Zji%�N	g[�GU�������-�dXBD�Z�X5Dmߪ� E5��zg�	�:���qQr��¬x̛�U���(bw���S#
?�O���%R=rI�'�g�|Z���A)�ǨH\�e�d���b��p�5YMc[1��
?������}b4�m%�=�`6}j�%v�ԏ�-��n��o���H�����5tَ"��!�;�,r�L��n{a\O��o[�|=�m�ɱ�4�Z?�P$&����*�!���	�BiE���V���4���s�otvшl֮
��)\��C��Zo�f�1>Z�jS�v~;�|�!�ƨtX�̊E����u�p���}ww�P��aP����]g�Dؓ 	��j�(���W���"E?��ta�	~dS"iZ��|@�kZ��I��h��!�Mw�8�8C`X��f���%����'�8:e�	�l��<�H�)m��3b��˃� �gZ+"���F Uw�0�k8�~��9E�@mj�cQV����]UL�rcҌ�hє!�w0������b�8TsFY�ÕnY�6^��Tx$4�ٷ�}����bz���]�cO5�ۑȞ��[�<�!�ç��|9���M�2Ե��jT��T'�h#/�B�Z��M��D�3�b��4�'B��L���*4�0�"L�������w욽cQ���o�V�ZXđ1��ŀ�X7�XIN���}������	V�ql^逧�zJ+���h
tE��Q�k6�|��.�}<���i�M<���Y�!x��as��6ΖFAI2^�xZ��h�����WO��\���GbyTU�7�_�ء�s�,ڵ�}wk$�qqt$|L�0�3V�"hf�Y�z�6����syZ:�x��n�(��Ϙ�`��������x���7e�K���@EN�Fw�f">�1�3�:Hm��κ9�A4,-ZY~cS�>?��K�:N[�{���Gb[N����|܅�|���6��}\��MZ�C_~!ސfh�L�lYR��Z����_�3<�����3�����]��qT<B��m,�/_�*�����{y8Ǉ��ʋ�m�����#�
�VLR ,ju�R�j�0���9�h+�z9�D��H�x��k�B�}ݠ�ꑞ��1�DY�I|iU���Fߛ��b��T����8l�D4�3����5[�)�����&�p[�tLZ�/��M�>_�9�����i���H���f���	�~�]QM�=NE�Y��	���$�2H�Vȓ�����Z;ƴJ���s��l�eƳj*�'���m+8����T̿�i�͸u�W���s���֨�,x09F�����IE�}}`+����%�ޑg9(���[�\�˄�n��L�;������!{ʆC8�ɑ� ��u	7����]V�4pgs�an���I�V1��n���C�ߥ�ؙ�O�f��EgF����Yg{~�� �a��73�.�M*�����I�����jU��'c5i�RUa������	�֮hhqg��y#1,ي��N)zzW �4sfB֑���\�T�зF�08*�*��0E29`��5���F+��.g�һ    6���z�F6�U�+-���G������&e��a���8-������~��F`?`�!���0'X�N�z�r'���Z%��x�%��0<��O�񻞧y界\�I= "Ԃ�00)]��
����^���J{��W�qDh�f���-k�6�5��2�+��Z<��a��D�	Q�y�ڕ��V|����Z�l�ux��<?�'v
A��˾I}v^~���l���;��R��|^��x������9+��8:���x�GB�!Q�}��yh�/Ɩ.��??���.�l�E��ˏ�d	�K:eO��9����
���p��_��v�g N�#JDZ�D\��[]�x	��費�;#��(�Zfbû��.�吘�E/�����W�ϓ��ED�E�q���g,�K��g�a���ǵ��2ie'W�V'+� ?��5Mio��������i�"ͬ���u���=2Hi�R����9S<�?�2���VY'�5i����	��Ļ�Bu�槎ڡ'��Ѣ�vf�����ҙb�:Xr��'T�Ј���-���pӆ�o��-���ò��Ym�P>�0B��.g�k���s��7���y�/�̶`��]Y,O����#J$�h�0::�~N0>*zG���M۩Ϋ�J�@
��z0�T?�V�op�q���8�`���@<�A��ׅ�Y�P5���u��?�e}Z���rD|`e����ϲ�^�w�\{ƒAS���m�����Nl�%bQF�ۺ5Q^����r������GX\�dj��&���r�dy�X2 �Q�0��5y�C9jV�D���g@��#����U2�n��dB�����Fϐ�ɑZY�@��=����%L�:�-�Sʡ`�Zq��)�E���b�܆�i ��X���R�NS�]�s�j��EV�̧�.&gp:��r���$	���D�ox�F�u�aF��H��a�X8����S�ﯰ�^�@7T���TB_���p�d�"��:a��5��D�5�]ŕZ��2��=�]�,'�;��s��q0��(F�T���0��AƳ�3���k��h�}�+>H��@�'0��Ԋ����q8h��n�#,�S� ��Z�?�=��|W�̓Ek�IQ�i��l��d��Z�V�������5Q��W�Caq]��Mo�py�7��ª�_�)�Ye|D��*k����4[tDcs�����mz�� ���@u����1m��/P��f�#���Ai�^��[��̽c0����e��I��x�J�z����:����]�>-�Ii�]�6Fb+�#��}�4+g�Y�ӆ$2 g+��.X�@�Π��c�'�O;��78P�����ݴ��*��#�g�J&<��w���(���ȃ�u��:#U,9�+�h����{�r}�qWy϶�D�,�] C# 4����#�l�蠾�5G�5@Ӂ��s�ZoE�0�ر"��z��|T.���N�f�u�-W~Tf�H-l����A�I�Z��<�+43�+�Ɔうګ�쑝?J�չ<y1G�Hi���1�
�s}_������"���<�m#�f1M��y�n����&_�}���Ǣ���CE3��1����x��b��o󀢪�b��v�a`�`�ұ;Zr����~�hܨȽ#�pt⦯���Jq�>)�0���A��r�
cC(�ּʴ�A���j$��}k�b�I�qV��f���?�����!��;aTf��,l<]X���!$�Poq�o��S�؂hPKllf&ǡ���1�Ө�b��E#����N9h�J~�Wk��suE�(՝hi)+US���'�T	<4֥�&+a5��Sr!s�x���b#�m0}�b]e�^[�C��	+T�c�أ�Ӻ�j��rNX��BR�	�
m�/��®fn<����de+EvUGO��c?�ON��q(�{�>,�F���_ǿ���Y`��<\Nv�8bH���h�;u�v���h�ʮVx?,�1'�)P�N��9=.�`�v��Q��7�u�!����<��z��([=WgVp�)������eDT�
�jB#�ϗ�ޱ�4(�Զ���u�/�g��TgGY��\\�V͵Z �k���`�v���>F��-����!�A{�7�韻�F��P��͌��6�Y��՚{�h���lX�<���n���5��v'��[�at�m��Jhj�\�9�fNN	�pff���x&�d5Ǯ֩y�DjHx"��#�_>L��4�֩��*qaY	��x�N��V��9��#v���:��x��as@�Ǟk��N@��FfGa^�`4��e��e�)/����t����qT��KF�C#��p�^���B�Dto��h��v0G*G�d$w�ᴙS���~4V'Ϙ�"��2�ǔ=�\���8��kS������+z�E��qډpMY?�|ha��_��v�eS��.Qǡ(֬h�4�|�#��O��k�S#�Fʀ<�Gs�%�8D[�\��*��u�(b)��>��!Sv�[,��s���F�pP�7i��t��z�R�%�{|������@Y�ԁ�W:�� a@꼴A4��֫:�h�j�P�b��^mTI&�gE�]��G��}�A��H�׷���I:�%�7�g�k���4��x~_캁�:��QX�[�[� FFuI��.n�q3��pcD��3H%�۶�n�c��%�R�J��W����t[F��3_�����Z�]�ˏ�阐�p~Y��U�(0�:Q�zX��� !U��/J�P>C����Q�{���V#+\b��:�l�_���,*����PK��Zΐ?{�"riԎ��h�N��0�N��kW��̧��ߏ��$Ӣ�?8�vt�TF�(�����T�/p7��dv-sᓝ�-_�>W�F�䞝��l��u}8���=��\�Xg�qG襕$����F��\��y�q�g����^�!6�-Қ�ɴF�V�n�\���3��i5�)tJ��F)Sq�ڤ�[��߷��C,!����a�g�E����ԝ�f�<-@�1Ehn�S(��<HR�,'Ꜭ-8���0��)1�]N�ht���~�I���u"u�q���MY�C�@j����xD�Љ,K�dl������<��sϳ}U-��T�
��u.��%��,���Mp���&�lV���!��u���+kl��	0�4>t�T�����ox-"%l�W0 �P="�� �=I�x�mp���d��%�3�P���
V<�g�ͷ�v�A��o3Vm%|Y�SɃ����4����Λݲ0ר2�$oPY�;�:jh�L��6!L��s�M7Q�؍�k��!���><b���������F`�ؒH���)�%\G1B�H����O��xFҟ��*��,����ye�z[>x�(v���f�u����f���[��zI�\�)��3��5�6��d��j赈�`8��a��4��.��
|~�b�;Q����o���{Wp���z�#� Х�O)�y�U��p�lQr#���. ��D�yY�3K%�5+�X �D�$�
��=_&b��uX��d�d��K3��A-L���2:�k�x��}�iW��=�~���OK������?az<��Sʤ����I��1_�k�u�S� h�5TKۇ�rYAK�NU��K8J���!�9D^|K#�����R�C|�T��V���\�`�d�楱��1��k�y�j��ϙ0��4���E�~k�02%ʶ|GO�o�p��G})���y���ٗw����3\ڳ��(�7����-7�Ł8y���aE4�љ+���7�:�a��0�Ω���:���F��q����jU�_�g�B,�;��p�/����_�JQ�Ϝ�	{ �2��-_���2�z��������Gvt�f�#$F�=��O�Uv�U.g���ͅ�1y�#b����L�0g5�o
F��Tʋ�H����[@�Ey�#l��h+K܇����w%4Ŀ��@�|t���±V ���+��s#C�**/��L�ݓ+;�a{���������5��Tl�Iy������Uk$�r���E�Uj:.$�#0Y�KdsV��zI����:��8�¹     �:����@MU���c�8T#Vc�A���8�8d����g��ڄ:\JX@jxC����/�8�bO��Ձu#��_Ub4�c�������}�B�1�N�'1�4�z�	#O�l~�R�u7��VI\5JC�:�Hu�T�z;M�z;�i5��&�%��]�.�_cXj��4��t�S2κ�ӑ̼�ނvCG{y�����r��
E�Z���.�U�+�H�}�ұ�uH$����b�\U� b~n����VIQ<���l�΁�#.Ա�(�5Yu�'�����y}�!~XK��Q�������/�4���h#v�ҁ��Ǟ�1�k���#[BF���r�7�¡�r��FjX�� t� v�{�n¡gb���T���R6��9Q,�D��c�H}n��-'vQ�{09��b�[-�ĵE0�1�3�I��� yћp�2)	JaŻ>�(#��|���A֡>���~fc�L�(/�p2���!�.�+Ї3��+��7�ߍd��z:_S�j� ��>a�ţ����Q��a��Eu�F�U����%�TZ<��W�Q�M�w=�Ԩ�@䋂��e��G)&�*".�A�J�,�t�U=Ï����h�x��0��S�"��!��,�W���v"��e���ZL3�a������ګ�hӣ4C�|M�"�l�F�3i���?�-CɞU���T3Y���
6]� �K�}�	a��1|5��j����	���Y�����3��^�GEc$��F�Eh���l�VD�u�౮F��ᨹ���Q�L��_e&������/�`��Z��?��&��x2�V�m�~���#��|ߺe��ư-}�#^��-��C̶�=c���.q��13l��k�J����
:]��[�U<�9A�L�N&��<��C0��b���`V<Nm�����"\����z�I�<���X�6�ր���9k=��ٗ�M��0?����d�/]�Ë.䨦ͩ@tp�K�F1�ܢ��B�^	6d�����'�_�W��i�	���<Z{L��g�UC	8V N�F��ybi��Hɨ���8uGM�$A7�Y��ܓuĐ�m�:��?0�m����c��T~��Ӌ8a��m�F��DOG$����s�L��@p����^-L��ܞ�b��]*R��Q�y�4�X����C��Q��d3ED���w�Ol#�Y���
��TOif����+H��)e��S���x���@��i��� �ǡ�sh����3�|�&��u�����x��,E(78>�E4.^�@�>|`��s�467�,GˍQ: A��5�XF���܏�M��&�p8�	����,%��K�����5�>l!o�K��s5�X6���>?��x�[V©���g1g˒��9UH� �c�&��Ĵd�D� �YF��偒}���i�[�*���y�����rJU�]Vt�p0X�Y-Dq�A�4(�G^xn��d��`�R0��������7��'C�m��D�F��qz�=��烍 ����ֱ�l���_g;�<�ܱؔ{�b�RA��g8�|���"���5SE�V*�����JFZ&�z5 ������s�����sHm�">���%����p|�Vq�p����B�Z A;��V��ٵ��*��dh��C��]W�|k8�v-Y`�@�s?am,��߶�~�����>��!=��W�&��2ݬ�ī3�(�}:;��X\d'��	�0�PAuN�p/��}�������lp	,��ͶD�����=e��Γ��� �l~K`��`梇P��߳do�;VE��dEW���fx���q�o�s�\
w�ю���z� �P[��S�d$��Dr(�.jp�cV�/E8�������P��f�*�b|��@9`#�\`5���^Pʨy�fv�q,w����|�,
]�$:�R@9�e�OKxJ�PQ
�L�1 �w��
�ɇF�T�h�nzE&:kp��;R5p��YV�nU�1P���%|�m�'*è5����wm��\�0�@�_!i�&��=1�g�e|���'h���%���s G��eў@GQPr�e_4^z��(�oU�q�,�����#���+bNvp y�(��P��d��hH��
�D��V��P2\��f�M|Jb@����VH�!b�iK�$z�<�E�~�~���u=9��ݑC�5)�9��$��t1:���%G���#C�F�����4=Kb�h>�9;F��;�C��x�5�l�lig�S��/�yP�Y��9W�w6���LA���֐�SEe��@{� w�����Al�W�ذr^T��Pt��c$�� =�hf�O����ܺ�͏ �����/4��Q���U�?�x�04]^#c �)l��
 6���ȴt�w�/K�S� |lx�,9z��`�i���0�����p�%WiD����F�᳅��o����}����L���Y�����'q���/X�"�c��dh�E�����A�^�s=0� �����vڪ�ʀ�1�]�:�<��uD��u��GKU^E00}v[���<Ӎm����h��+�5=���+s�5v�����vڜX�b+0	������U�"�U��z� �r��t
<�eT����lw���
Ц���g+d�	���Ƴ�TOIl���K���A��KD5����l� a��Ά�R]�$铜XzDN�Qp@r>[g�����#��1[��Tq�Tݑfh'ާ}��sT<�����ɼ�NS�W��l���c���D�4��b�Ybi�W���Rp�x%}����8�v�yM����̞T��JDn=9DՑс��'���� \���d%z��A��(r\Y���S��W� ����}q�B�sï�>����vYN�W�}��Y�8���6*av����01Z*�S�zIF�G���c���L#�Î�qT�H��lxv9�_%�T�$��$�м%|�6���T�K>��J�d �ϣ��zca8��i�j�H�r����J)1���F�s'fi�t���F���nd�����"���3��:�Fȼͨ�2�s��I0B�~%�C ����7��̧Z����f�=���l�i{V'U0������!�>���~�8�=sv5��s?�f*l�ڡ3+N{��4������頱W��dl,��8��g�(���s�AqDp0�~?VL��&���Q��%�F1;"�xRߗ���E��[�G���oH� ��h߽����]�rѸ��}��)'X���|�l�f��|8<q���K"R���쩍�5�fzv3A��}�t�*`亾Ǿ
^mI����,�a)�[�zMŕ�6'NC6�4�� 5�ؤ�H��.����L1�=V�2.�(��'R�f!J�U�SrܫdX��0�2 ���>o������4.�'���.:H�n���l-�m�t���'pYrϏn���|\�y3*�Ɲ���{z>LtGr�u�#�B̠�n�#l����ES�)��I���g�u,�sE��lL��o����G��y����|��/+�.<��f_$��p��J���`r�z�����/g���S6���v�.�?^i�2��)�W��,hW=�V4���IG1b�M,���Up�yb���Z:�Ji����H�>m��s ��":�[2���aZ���1�����ԸzK�a���E����*t����<Cvq�J�v�����A�T�H\.���j���W��#W�� ��?����N�I�𞗛� ����:��@�ǚH �ۢ;&���l`�f 4	�|p���$�T/7��~���4]TԠ��������Nq"��\d����ԏ/v����K z�B���
F�;ԗ"�����U��ȃ\���f���D��S�m^�#�^�e�;���`��b�3E���>9-F�����`=ʾ��Rȱ������A2̾���´���wH��V�ۉ�4|M�}G(��ܡF�2E�C��W�u}ǰU��Uz�!�Ypq���L�rsg��v/�t�(���
�:�r�i��&�O]�    �X=AS�B#-Mo��*�d�	:e��ƺ�	�nq�N�����̘��d-�Z������_z�u��"-���ݺƬ���E;���Ыo�<L��GX�l@�zO��v�.(O���]��s�젡d~������ڨ�A�fD�	FGNѦ��%l��%�4�Jl�YԬ��M�~����4	*�!Q�U)>�#�Q����u�ؼ��Nk�_�q�5�I���,���0
��*L�1��5�s�}��oQ'�"i�F���f�m�!|pF^���b# ^�˟�#��P���@<�@��GL �n��%�H�R7���3����I-�V���9���ߕ]�q��x���]� ���m���Ek��p��[�	ݢA�>'Z��csb�Jt.G���TQ�z��G�YGP0���I�jru�`=
�J�ڞ�^d��n�j&������g��3d4���k5��;_^�E� ����&A��VqN��[��%�QI�2�x�HEJ��킍�ǫM�ª�_�x��h:=���2�:�G�l�q3N�`��)e�-�1�}�cz�0�4ϏǼ<���/��#zL���gB�#�ߞlm%�)���	x@_V ���c2��=�|�Oy��5���V�$B�@�PsdD�~��r�g=݁1�U��|��4ń������UC6y��e�ʷ���8E(g�9߱�N��*�N�$�,�'�SN��g�g�׬�)���:DCv6�k��.��x��G����o�J:g�`(�}�j>9`-ѐQ�J�V�H�����C�����T�T�P�xv\�O�-�mW�u��#��B1.[7�
�?������4r �Kب�2%��^���z1qL$���Ӎ�Ʊ�����|���k�����2�B;����p������#�/lT�s;��?�������eIn�j���Em�D� 1=�T�2�J�~u|���\d�����"1�3a|��M}A���Iz�{�j�<��,
7��מ���[\�,��ıq��aL"|	ha �3����4?�`�Q0�M�)ˮ����ȴ�k�s�BY������ec�y��l����@��
J��Y���&N;B��F�qC2lY��&���,��j��a����� �E�ޑ+�.1\h�M'N�<Z����,a�@��)&�ۢ��S�F*��S����r�Q�`��Vfv�Y"��T�S��U�����C���"�l��=���;t�d<�:`�l��UI�Q7ܧ��c0� �*A<�,�Z�A,�m���$���2���FȪ䘘@���2�Ȯ&�*yR�RO�l������>����7�8"�ɀ�Bf�E�}!ȸ����\�\� ��aX��z�f�,��������M�anr� �zz�,*#�򲸜a��/���傄��1W}'�\KΝ�b�� ;-�*6�]t�Z񶍬��v4k"E�(��!�t�F�=ٍi�5�\I@��I��)�=o���3�a7U6!0�4,^���K����Mo!�_ո3ەG_ՙ��b�l��!�d�hó;Z~�И��¶S�z+mRe�E����:�X�+�g�7I|j�[P
�TW��w���[\��佌J�al�K�r�K�+U}6U#>�,�J�T3��y����L����W�X)V_9��$h��e+��V��Q�H�q�Ty)�k���͞�"��>f���/<��x��(2>���mܛ1�<Z����gP�, ���6���`Zڦ�i����0����7lb�� �[,���X�h� i,k�a��kPB[��i�Zh��(���(I�������	բ�P?��g31�ξ���Ff.�c�,���_�3���ʫ���Vn�Q�qy�����n}����OK�j�5V�p�M&�a��$�"�()��T_�.��	�6=�ǥT�����Aj, +	F���C1�!Ѿ��7���hC����Nj=������p�b�Ev��P0$�3����*>�Fm��E�
�&�ܛ�,TLg�i
ؚ�g�f� )���K։`�A��	�'�D~(���E{}9`��BR�:\������M���h��ҖJ1��MtVPw��'��z��<3ޯ"ɱ��o�9�t�5��T֞9i�E�T���'���� n����xK���i�|#*�kjy3�?�7z�Ȃ�B�V����/���O1�"������L�?gU�S�5Ֆ�I�ɠ�ڸI�w�i�ٍ��}�|կF��S�W�>6��F���jky�uD�-�$���2ҿ���ih/*.��qԽYg����1X�Ulh�%�:9.���
�����<	�56J�.B;M�+6�jʬ)��L<�p#�z)�&2�ī�?6t0���� �'��<{�;��(8H��\���m���I�:��R;����#�K��E�Iv�j4�i���8Q��_�#�˰�2,�j2f�ay��'P�&ŕ{�"A��1�;�9?�3���&?J\�i�O	�J���&Mp+;���|�~Lڃ��F�^�ƀ
�_�~1B]hejD�@�'M���b���jz�Hșf�y�
1�-�fÂ�-��̇f�V���t��9���φ�9a��e\
RUԘ�"ڴY��6��,K�cZ����|.1�c�mٲ�A�@�(����
p�ʲ$,Qvi]}��5�m_�1#S����;�.���}E�"���m4�^��ĺ=���o�'���SG/.N�O+IqlZ� g�>�gaB,W5s�����U�d���~&kχ` $d�}�Ƒ��f���iu�u�<�MƘ�z���'�(�5_3���S(>����oX"���M$����ދ���+V�2u��c����@�'�yYL�S���m\��RW�2���鏱�%�L������QN'�PL���á7H�Q�p��+逴ܗH���z���U�x�j�n��lC����&%C3��m�3x�W;�0"��{b`<�`u�?��3�Ĵ���x*J�c��ˉr3y��8>g$ޫ��Ρ��
�XX��Pf�|��o�>�X;	G��{s�y�P(�NK�>Z<T�l%�ׅcIn�� \gl��������wA�95 赹j5�r���P�m�6�j]}�S�4�ʬ�Q�l/~4�� ����<k�25���o��(oNWFq�>��K�`M<��6���O��ȟ��;YA�0#P��lU^ޕ�\a���� �Y�K��P���،rH��|����XA"2�t��؝!$v�Ȍ�؀�E����7�πd����+:��Ɔ���b��3�2K�В V�C�"�E�a�3�-��pz,���e����.�8Y�3X����vV}�V�e�����+��߹�u�mǐx�jK8�*�c�F�W=�o�j my��BO̪�BD5�Q��-C#���|{' �֏�+������o%�������^���\m��ȴ��M�TEޟ�<��0���'�w4�D���2�}��
+Y�0T�Ph��oPP}M� H��qF��j�^�f����8%�rm*�'a�1��mT�c$?@�M�^��l�QQ�?�����L#�h�*13h� �(������0%]���ZWt�v
�O����v..��@2Tb����*��1R�Tx!k�\�r� ?1u-�wH|(�P�`��dt�k5�P�.p���S1�W�g&=)c(-B�����i�#���1��K���f�*����6 r?�zB��wB���:�j�����x��}I틟�,�`�)ǃ%jF:Y|d�냮���-���ɽ,�l��M�jP_&�#f�Lt���U$,a[bߏC]��D*t�F�RW�Kƥ.�����l���#D c����-j�c�X�^�0	A��@���X�e���s�����y)���kXD��Tc�+3$?Zyb�ʖ�øAZ>@S^�1�8��aTZ}AK�/[cI�r� �x"㟷��3��#҇Ҥ�_4zBlje�g ro�����b�?��5�u:^�f�4BQ���.M�)��`�,_��w��\͒g`f����� �,pKu�qU܃T�(-��}6��H��v!�    ���J:M^x����	�j,c�W�n��#����������X���/��+3�*[&/�B��o)R��t>�ӧE�����P/`�L��A��},�iY�LP��i�Rf�u|�g��)�9d�d�R�l�0�����h5b�>��R*�\�%�0F�S��f| ���:�4B"��(�F5#�(EMcZLY���F�jQi��iCfm��k�:�,�2��i��f_0�Q�@�� `-��*������[H,!�����C�����bl�1�7�M�7G�kz��^r�c��:�*`Xu�L�+������mYD~�����cҢ��}T��(�@�[�	e�����2(ƞ&N���R����pL��F��v"`�Va��]f<����2�X�������e���x�p�ʹ�ȓ%��2ϸH�����:*���G9�>�Jc�J3�ےϤ�ӏ��-P�ӧiX�}��N�t�x���[#x��(q̛.�Hc?L�`ExqXd���Zz�z0 �q%Ğ��A?Oz�8�� e{y�<4[�����4�@���^#�y�c�'�_�߀6��I��5bU_�?�4�"���SM���)m�\�T�A�}�o�`�pȳ�����x���,��T~z����)�ZUYq�=Кn��o�Y�-]��ZA�a�H����v-u�p`�Z���c�Q(�s�y]�nX� -^97�yQ\k�A�y����!��&2�݌�I�� '�E#qI#ȓ'��?����rtOՊ��&.�ĝ�'Ry&�
�Hd�Da�.5N���>�AH�ծ�{$H5(>�"#l �*����ҔP����̀j�aB��۰R��P�����ʷ�f���������]��D$Цb[퐽���)�X��vR#cl�*�7�~�g9� ���0�ôY%`���&-5��bi,�5o����,�O$�Lr�L"Y �v�(��B ������'�+��/�]�o1��0�����cA0k����I�]2�,]U6��w������O��b,�>N�"uK3��P �ޕ���&�2)��leb�r۫���� ���nX�2{�c�Ԉԑ��fU����\�h�J�f����0ԧ#Δ�M�
 b�{ǋ�c��X[-=
�+&�B!�|c$�ZS&�y|�k�)����)�7�����t>ʛ��:��$�2�b�RGRD��K��]�P��2)x����ѓZ�0\d"�V�!�,ߕ��W{,��]NH4w�j,Q��p���"C���g"�ʙ܈�\�����Y3fR�h
�Us4W&��j99�S�[�X6�EjG�τה���6�\_e� �\���)��Wnp�T�V�(��ck�>+�n2�*�<ME{{[.HΣ�)voo�֌��
�jD �wL\,
��i�,�1m��29�Np,�&�x%^�������I��$�I��(�Z8T���Z��@�WI�ٕj~oJN�I!T���iǈ.����'9[�At�1�\U ho��AG%�t��x�����IN"[���j�ț��+�7�����q[�5<�$�_�k�i�g@�����Q�#�.9O�. ����oQ�@�l1ٍH,��N�q�ݮ�Ζ��F�Ip�D��5d����5�a*�V&qQ	%9�ϋ�Q"�j]�aGMiat��2�$�,�����9�˥�b���&���`|?�����jc��q�/�Ҡ�i�m߆��b������£E$�`���}�ۿ����0��Ҥ�en�-��e�a� G&�:9W���ė�|�QS^W'Z��$�g������%t���(.��mĥR	��ԑ�-EA��̕��@��6��+�C�J.�[XG�FH�jB�>���&�>'�:[K3H�>������A.
��� bGK�sVQ���m���%�d$ Qӂ}T���2�����jW��#����s8�n�Aq&q2A��IiF3�X�~D�9���N7�LBs��} >����_GK��-�Б�m��c1��ϞzV��cOe�3�,_$�A҃-wg߲*<WR����B��`VTbtǲ+D�%K�}���i��I�HH)�kB�ˎ�O��T��.���e��j�H^�Gl�6�c�	h?\+�W�g�!7���Y�B�Ii=P����_y�Mݰ�+ 2���.�������VW2!� 9���!����}�W��j(��)���@�XL]�Lt����/׎��i|w8�_��}�5O� �wV����Yl��	�v�,\� �K3�lO�����D0�m������θZj%��7����~�#���Ɗ1 =�#G�Dl.�<��x#��ɧa!&�	�7[���x�> ꑓ:��dNB��B��+�I�5>t�&{�]�*�� ��4��J�h��/���7ke@�/ z2@Z�%�"�>kn�|7N��h��<n���7��.��Q����a����Su�I�Au*����	�ڤI���F�T�Nw����#��� 6�T�%��ciH�s[�(XE "��_Ǉ���uź�	��P�G�IZ�mtX��\�WA�4,װ��Y�W\�5���2`xr`����	l�$Q� y=7�5s+%����,�YI4.��$��A�]�	c���Q3%��Iz�Ů",t�-)�a�w1p����\�ٕ��e��'GK�MfU����u�+y�`�@�@(0ߗ������O�~��{9�<�e�:2(��ٜ�f��q�yp^��J�]��N$T/��~)@��(�4��A�F�%Xu�
�L���&�#�02W�f��B]��Vk���B��GKF���:�5�<�VYf��"��S�l�6yYq¾�H6oS��T�wW=��<;/�t�$�%����`�'��-�,�3���֔�=�m^����V��ꂠG�A��ƻ������j?f'���)�!X�2�Y�'�௩")g����(�ǚ�*��?m�����B|��lWe9��YT)[]����G<�;��hI�)gJ=��\��[J��o�3�ͱ�D�I�a8
N?�ɫ�As���X=B^.CEk��.j/A{���a�K�Q���� ��hC2�V*�jn�n�^v�����VDnm
��}�91,N ���<���aF�pќ��'Ԫ�B�5e��N<�$�Eх����N� $��S�g�΋�x�Wh��u����ti���P��-����)"��S��
�_D�@f`7&�,U�ҨL�h�����g+[P��Xq��gC͒[9�\�&��o�jDR�<�Yn�"҃�J*���`s�j�����qa?�7Vr� ��vG��,���G2����kh���RK��f���O�w)x��$;.���\,�^$��W>����aIJ,��y��i>��e-�-�����k���!]m�ℼ��� '�b�D��\�|C�"�����"`-�@��m`%�Du�\？���D^�m�r�ɹ0��M������,��e�xpg2L0v\M�V���R�E&��� �m>p�F�?� Rl�������̘�`���(�3w6ф�3� �T�՝w�`�`��=7��"&�p��)�$^��N]1*D��x�D�F}1Y�Y��z�R8k0�*�@A���-2����fDLX��t�hC 2�.g�r�)VR�I�QYl�;�e�n��q�#�u0�2+s���H|QӼ�+�mϮ�8�w~�ͱi���k�*������y��ȋ'0��)XX�4���A?=�Ǩ��Rn�M��9X<_�@��oj�
�����6KziY���Z5�"���	���(^�<�9R�q&%��.��-��K��,�R� �� FƇ,>���Ók0��{�T_�#�jO�4vu!�L¹���]��A-�9�ME�F����h��cF�dV���F���" ί��n�m[e�|%������X���l]�y�����!�ٴ��@a�̗�ֶ����N/������+�7e:�"/�B�o7�]�E���}�3mY�rͤ%�ڲ��&�ҫ�����eY�n�g�!x�@���goj_2���a�LgX�����j�7�Y�"}    �0��1�l$�m����\Fk�r<KC~�2(-���B[�T�b�O;`�"���Q������[ud�fg�@���{�P��)@]��\��UM����.-.3�����11u�;\(��yv�-$G5��U	0��F�gŵ��=6b�xj䃴�.q��ut⫺6ְ��F3%E��VvY��@=A�L�k���! 㲮�w�]��YpA~�>oq���1G:j����R��m�O�6]Yn�1R�Ά��FUv@��d��Y���i����5`��	��[r��
�ұ]yJ�&j�E"9�����V�d�#2-�`������A��P��ְ��4�"�Pv��1Ѧϓ����rT`8�E$�b9R��6�2U�ER�[Cc�cTϪAqn��cE��T볂�p��+ɢ&.Ҵ͎%�7V�� ���p�������"���4���<���������ͼ$q
��[�]+��<%+N�8�˄1��Ο$SG���\�*,��7���TJ��M��x��s�B'᭸|��Ό��Ұv���4��o�!8��C�7m��P�1G3�&O�E�9,<&ld��$t���)� =��M�ӜY�G$��Sd�Y�����4#��v�P�a�dF�T�r���w��P�h�LX^&oo�*��b���뚛LǢ�	�_�Ӥ f��:��#�8�%��� 6�I&���8L��r>!x��0Ic�ͮ�E������BΠ.�P���c{ا����E~�5t�L��jT���s�c��2���6EH;���\�B|��>��'<�CIt҅�3Y9l�E�j�BJ(�T:���m�:I�V���6&[��1�*������v��TP��e9�y�R��-A�����2T����Xv��-�+D�
�kZ�_Bc9N��쪔,s�H*[�.�R!6�L���6!�~)�yQ>�Z:n���H\T�/�d�F``�îW��&��٢	j�

5�]ͅ�dnTM
U�x������5�a��5�څ� ���ۯ�Ş��	��Nw�|PE��Z��EU���P���j�TE��t�#��PȘD�ހC�f��X�gov#�֗i5i��I�hɪ�<�ZR��۴�:D�V\��"���Ұ�J��v N3�H�3�����X3X��q�1++c�������o���L�)[�Q��2d��8`�-���:Ԣ$�g 杂��JS0�r�[� j�Z��A1�Y��!A'K��
�ŉs�W�}g;���h{K5�F��;�m5w��LF5	hVB�e�4_u��)j��܁&i���3�3k�Xp�`
�X]�=?C�����&����e�ˎ�0�&��߆Ր�
��ٴ�l#g���~Q/X!�p���Nc'��6�����$��W~n�:hϤ]�����.�{̛��-��O&�*5/�t���p���1k��j�3R�5�N�)ȡՔ�j	^�3(�h]|� ���7�ʍ= ��h�l��2"�gG��a;%h��e<�Z�=U��h�"�:������rq�����&�%"��Ծ��'$�tve���mu��pH����Ժr;mnEI�$��&�A�8�L{|W�z�m�wEDG9C�D�XI�-�,�8�-��ʥW��m�,��mI;Ӑ�����b��j�{�L?���YQ��H��� �)#����	QN9�(�w��x��ɫ�I�&��-�eu@/痥YXq���
�;��|��G9N鮻Y�'J���4Mi\`>P��-�8{�r#r�ȧ�1���Bۊw]���Ջ$��:C_���8?�������)�ua��� +�ស�G�b̐��jz�hbُ�-�H�b��,���}(�M������i�5���o�:�NZN�5��8�����oꩻ��`r��k#'�iq��Ȱ�7�6���v�U�U��]���S{pF^F��Y[N3Ocq#r+�4c��a|O��6J�Q�b�Ԑ��52�Z	A�y��E�(f�1B�F�uR� �
'��Dr���hc��������22�r�8D��Q��,Лm9��3l�i/�D�@A����#�tu��"�`.#�����K1RW���2Ft!�z�YN\$��}V�'m�|M��:���Q� ��!4����'���Fy�h����Z����%�:�c��	��)#��Q5�R����D`��(V��������]ISA��+��vS�".�F(Wv;����б��}0����r��[MC�L�+*�!F���܁>9�!G��
t$,0F�*R0�������P`~	�s6	�l�����l�iIRB %p$Ȗ��Br8�6\p�U$๑[⨓曈[�
��c���\�����k��a�_7Q�MWD��8���Z}Y�:��c�K���_����h�k�U�9'��}Rx�Bϧɧ�'�-h7��=jTq1{W#�p{Z��H�$t��;r�ذ��v�8
�f�Z	D�,�B
��}�M��ѡ}�T��?W�J�+?F������Q-�D�8)��tK�%#�ac�AYVS���ǚsX%�����ʜ�c�!�&�c�<���E꽬��)��Q�e��0�mC-s�$�E������
y�T�Z$�̧��E��	�q�<�O�\-�Ѣ�n�Q���DB�(uJ�)����5�#��no�Ry��	\ĝ+����i#b`k�yy��)������1��}Q2a���a൭m�Bf�� ��+�F��$mS>���:Ơ��1J1��I��G4Rb��D�hb�=�b���[5#=A�,����}��^o�Z� XK���o�Pg<�(�ma��a��ӫ5�N���<)��/#����t'Wi!�65H�~A�>O��3�G�0�B��H� �08T��1`4na8���K��t6(��i�!~F����f����/L�AETh|��6\��dQ�xB#_�G�X֊!,���m�Y���+�����<�wӳ�(��I)K��E=�5��r ��N���qP?���l]u:����^�w���} 3~�l�*bQ�'C���`QO�i�w�񣎒���7�M������%�����jh6�LLÞ\�H�f��)C�V�Qq�𤉕a���kR�g)d:�����2)�N}���e�+�j�����x�5qu���K�~��f���㗘�86��bi���V�Tes���K��eC��!>hX�=�Ig /����,��i�:�* ǚqV/~�n�]]'�)�KOm��FyPOd�����l�Foc��8�H�2�,,�̲��j%,)��E���@�֕n��Ĺ�Jxh0~��be-������q��k���6�"%ʠXo�ގ���-鉂�L��g��ۘ�ʬSڴ�vZؿ�B�4��3jЧ�s�Z�q�,T���\Q�G,iѝ�&N�耜{���DV�[5DV&�,N���ݼe(�Q�RI>n4*�^�l�P���8�Y�5F��[����WXs1g��m���mT>t�6���fH��!���*T{��V-[o�5ѫ4&S+��,�}gt��_w_�x=�<�k[;
�0Ӏ^φ�)�f(�v�r����:4�6��>!Z&����o�_��	j�e OVЃT�&J�	P����WE1����3^h5�Ye��4X)z��K��A1�mj��U0��9�x���:� ��l.E����>
O�4�k�TMt��51�j$I��_g��V�Ga&�r�C>Χr��8�?������}�#�8�/sRxӯʵŗ��B�҆d8���$q���h�wva����@�ch��϶��Aܯ�vLZ���؃���4����%�hz>̩�F�}�Y���b���d���'�~o��b��M���ˌ���jUCWZ}sOE�2HmUB�S��Q��Iv�E�+S��@�4W�j�*�=�.E�׉i�>�=Jó�l�Q@�Z�`�:���Sd�G�^Y�� :�%ǔ;�7�nG3���=ek�x������M���Ҹ��E��\E���G��|4LbF�񷰱���n��r��1���sH���Q?�N�j    f�f��q;�,���%\e��"��p3L]� �(��kA��$�������~�v׺!I�����J��
� ��2�k	�`$ꍼN&��H��T��]�p�*�ݤ/T����*'J�E������2_��i'3�R)6�rR櫖f�<��K���>E�����R��R4 �/�ϻ�3� zK/�N;�C$��^O�|������p8�Ƴ�;�p:�I\���%�-|I�o����Ϛ����@&}b`� ���ɰ3�:�X���{g�@� "�tm}.����"�0Z���.l���=z(O��$�,cV���@xL��	�Q�W�F��k���nL�UaB�߃Ĉ��_�YD�r�2����B-���x=�\C5���/�bFlv�5`�I�^'��(vY���g!-��%��54$�=ۗ ��J�~�po���U���j��t�.��i�,BFU�,T�b������@��~~���`��#�+�	ٺ���_�L|�k0sH�؂J�0.�3"�-Ȇ
�X��Zi��4;��5��=��|T���]Cot^�,'���g�Xx~�w�D�by��9ˀ�r��q���w�=G7�>Q��Y�	�){�c���j�O���V�u��
Eˮ�8I�T��u��Z��l�*27����}2�·�i��sDŏ��k�Lh���YN�Y�ƃE�cX��@v<�<��jo�wv��t��e�t"�HD��=�'�]mɷ�I&��$��I�*G�Q�
�lT�$b����:���Z�p�iH�d �)���ջ8!��ؠ������/3�8�
�o:�-]+B��g�� ����8+��S�\5�!���)���֨0�7n��} ��V��N��c�/�TG�!$0<��Kf:��r �IF"�������&w���Z�9��.&ω��l���\ͣ�品�]�h
Kb+;N��jL����Lk����Q�#'X�T9N������*UX�����o�h5����]^�"SS�
b�*e$�Z��O"�}�[ ʣ�m_	PW�>���j0&��ƺຄ{>0@�:�kk��
�v�7'.��z�W�|��|�qZC��S?5��_�\��pv@c�3��G��E���N��O�����5_e緭周�7�5�;��n�q���P+˟"�>�x�cI�G��ڭ�(u ��<����{�J�Ұ"��RϿ^�k���[zdTQ��ۄb�+�HiA��;�����r�k<�I�|C�t:����PJ1�����t���J�&�J���I1��5�%8�#:_�`1G*�ؕ&���aj����U�"<]�PAI�Xi�ZVi���>�O��qm�ϕ� vpъ����/#���(� �OcR��^�G1���r޷��M����e!�RIl���L	^�mo5��ёT �~UXcKY���u�j(lb%5���2��C�K8��t�\`5��yހ�.�C����a�h[���O��_-r��P#�A}�!�9(9"H<�Z���]5u<�a�2όk�g�C���@��Î��C˭Z���y�_��`� �;�2�kz:Z��v0�
������/	�Z�å�*��m�⡕�-���XP��먹�6�n��$GS'��k� ���"}�F����I����Q���_,Ԍ:ڬx?6p�܀7]����N��ʂ�y�]�i�X�I��P��rA6�A���oW{��N��e/.�e��ǀ�sfj��r����-GM�u���d#�{�%@%VT���
GM�jg�`ʢ�W��K���]Zn��N�¹������c�Q�a��,h�hhG\���`�!jz瓹���ZH���Z]& �����K�m@;ڄUX��#� �3�a��M�@���,�,b5���O�!�(l��ː�������Z�� j�엻�p&�!pnk��+��V��.)]$ �9��!������G�0Scz>j��3���jo�Ƌ
�f�-��y�Q��D�c2�=T����1ȹ���zIL ��8
�=u��yG�]=�0�2���Ha�{D��Pa�{Vi��Ca=��:� �,'I51���/6����v�L��tոHQ�1��	4<uɾ]T��	9�w�ٛ�V%�nv	��6<�et/j�'�rjm�,�40�u�̩Z :�1��6����N�޾yq�<��f}B�V�֢��$���QWYq��+��<~z��a|��)�&�����r��Q[$���YhX��\��g�jqR�
.e^R��R�e'(nX�n,�Ĵ1�4|�3�or:�;���pO�a���Ҝs+k!�1����<��%�Ze{�b�4e��� gS�[�GN���#r�\aUe3����Ω���rX�v�[ĥV��<����W'<�5��y1�)�fs���u�f�t��y=��ƙ�G�Tn{�|��x���� BO���9�U����H��Ό	v��m�������b��5<N��&���>ᗹ�~��h\p�w���ڸ��:�����By�Q�C��H:�D�c�!�7e^p����l
��z:"B���S�V��G�>��ۛ�3lg�g �b;�"�@�&�W9vo�´�
��q�$?��`�5|Bkn��?Ԅi�:n�r�nߙ��Ý�Qu�:Zq ����E��(�P�8����-�u�	UqP�0?G|���y~����K�Q0�,l.g�.��/���Q]���%�u�1�u�y^R���8Z����f*"�r����-��lJf��T��mb*:�T&��tw�����rLe�TJ��T��*�[R�g!@|�yD����� _��*���v��a�wwF>�K�S��H�w8�>���N�%����(�L'-���bM��׷zYI�������y�1�f+Y��{�lT�C��i^$���1��Py�6���j��[޶�Z����'t��#�}�Z�GK��Y�a��<�\�"v54�r�&룷���Wi���'���-w�K\	N�\�?UD�t�Q]��v��h���;��8�
��wf�`��i}%����,��j[��y�����<h��G�FZ�Z+-�5�Q���8' �{i�������/��j$l$��)�ᧂ:��8V�|}���|�-�s�(	��l��2Q:S�CZ��w�ӈ<}�:2����&�A���E)�5|�v�E��,��Ȟ)��>F���f�����OM�Ξ5E�H�L/#^�tc�#�w�f��@d�ʲ��<�3	Xp��]����r�R���oL�=+qe�U�$c�"���� u+���Bⷦ�rI֌H_N��d6*߁�&�������doA�E׵���' _���a*x9Q�����n醝����mt�tg�j����$��A�Z���gɩ+�,���yK`kJG�е�Ł��;8�6�]�.(�Bz�s*��RT�2\�i��
���X��nǱL����~�D%~�F�,��EB0�����x�4��8r2΍Թ���dZ�$����	�)3;��Z^�w��lXHю�)�	�1����05��yz:� ��z��*2�+ �>��@L ��}JSn��7&
�g�1���Ǵ��+=�|��L��@�3�9d� ��
m�/{�"� -U��Y#����?
V��%��@eſpQ[e�1���hKQ/�^�%��o�ى^�B6��	܇��O9�m�W�u�
�h��\�=�Shkl�)G���ДW5�^h&�Jy�ى��7'��M�B�: �H]�WpC���1��j$�����S�6J��:L�WD�����0';pY�i���q6Ԁ��� E��?�O��h�~o�L�_6��w�<�P���ǲ��{�qA�d��I0 <?ϕ���@���H����OH�#�q��테+�����5�zSW�f��JMg�t>�ІZ^$���΄�r<���ܷ�{���e�SO���g �ښV�Bʭ9|M�Ð��u���j]�$����������T��!�LKy_ݝС�Vir�����ݶ��Q@R򦫭7=ȇ    W|8T��R���v��;�}_�+Y�}��b��2ȧ��P�/�{���i��<J�oꉓ��X�-�r�Z����|{QK���"�l��֕1qP����Nn�2�B2R�;[y��X"�U%�j��;�Oo`�����TU��  3	`��d����%���	�!���,��`eA�e᪽�Ȇ�G��|&ڎ�$1ѫq��M������d�*"�uiMa�?����a�z�$�7~��Fť�E��)Ȣ�z�mhw}�;|����	�
��tl�A�<�B o��)=X���	�t�)��{qT3��b\�_3�����O;{��孲r��wl�{�a��O���e͡y"3��¨�nS�[�
��jfD妚η�9�Y��!�-8z$kvSF6�M�@>p��	Ya��k^���o9=��'��l
�چn7�D��U'� ����u��
O	��?�mX��f8��|kQ`}�`�o���Ke�}�1`T�&Xx������}�<�}�끭�3H�L���`�b�>F���R����{ͲVi�"?�Eh�
�a�
W~F�'� ɻ\�Ծz�g˝����=[�,��$)fTt��û����NQ�Ql!�G�{����`o+XX).ZJ��}Д8�?�����)$�N��^�:�_�ŉ�"L�6�)���#:iR"�%B�X[1�见4)���\CTR0��/���F&�s㓍L�p��i!tZ��Į���:��4�r~������3���r��� $oQ����V�x)��V��3ڹ�
 \��8�NE����&J.�����rlph����2��� D�Jɜ�UJ�������SI-c��2M�x�_���,��~���X�͛�2v6n�/�'��Ǽަ��v�t�M��>������r��Z���O]u�X�#��Tk�Dt���)2��2�X�e��,�^�C7m^���nNoX
7�b0��`�+���\��NNNb�P��g_���9s'$�
�m7�����9<�KWm�L}W�BA�����ƋU?q�ʹ3Jذbf9� JX��oL��j��F�􍄯N!���Ry�����MvA�CHp� +�/����^�	mܣs�o�����0i���5���-Q�Y����e���|��*ʔ�]�\f�vh�;��.21�ܞ���3̼�&�o6��?�\'W_9�-5�s�u��g1���uVtN�͟ok��2����¢��0B4��$:���ߟ��z���Z�
����{��·�P�h��)ȋe~eA����b4�߷�>Ci̴�V{��/�9qџ}�\��7'l'��d���6�������C���D��<��Q�Jp ��mT��~U�zns9꧊����q-�b0x%W�p�!���\��s�����"��Ը��֬B-,gL�)�o���֓���uB�g��?8OB��M�.f/P��\7�:�I���!9!���).��|7Qi���o���A'�'�AW=?�=�*�׳9���	t��r$:GY��Ѻ+� ߧE�ҀIYl�:bP�i�S��	�X�P	�k5 27��bI����ؽ<�t�"�*5T�����}MF�d�Nr�F}�r�f�-��(��y� ���Sn l�(�?�;J�e����;Ӌh���s<�+����R�0��u�rF�/�<AـJ�����)�bJ)���Y��M��/-�,����G/��6Ҝ�l~�RȌO�o��vs�F� �<�G����vEH^��v�N��y��|�-���{�d㋝�%(�������C�ٶ�o�V�=G��z�WAW6��M%�W���P��y��2��pMwi����{�W����0�>�Y�7�C�d@��U�)(��u��^�dxf;I ��X���Lύ�(XH�`������r.�A�����f��Z�>zɔe�@�]�X*!��JG��=^$�Ě幹E�#E�nU �Y��W�J��ަ�� hH����8J̶��6 5x�4̬�d�ꔣu|9'�D���R���C�e!Q��� ~�`c��`q���#$�A�����0XhL6\"\�1I��B��a����$htR��ΪxS������
�R{x�-Տ"m{ɽV�\�\>��*yڧ"�쿟!���M��%�#��J�Nv�̅�͹�_z���䫛�����tF|Ҧ��(������X�����aU��/#hH�W��ޡ֛=J�k��F�T�@ݤ��[��f��	[&*�_�<K���s�V#�ڧ��m�$��J�Z�"?��@���Y ���D��v�^y�ūO��nN�	`���=��ͨ�L �(5p&�
��X�d�� �IC�5#ev��ƶ���[md�ߠ�+h��2VN��v�OQ��x� ?m�(>+T%K1C��'0���,��NT��c�bv�E�Z����̮W,�PkJ[!�U1Sȁm2؀���L+}��2|ɪ�ً I�Fz�JڋR'�̼���q�EH�'�A� <*(r�;JOG�8(��>V#BP.5D��r=��F�BCY��1'��,C���p^� ���.��yT�CC���R�~�sAy҈Za�����]0�2Ź /�ϭ��NfZ
���Yz��w~�ݢ����8�������"��P�\szll0n��rk��c@G���[�!\r��X;���X��ر�rP��ݪ�Tٰ���}|Kh�'�?Ӻmv���� ��}4�� WZ�[\��5<��(Z	-g���t�vʑ!�y��h�6���Dp	�*�lX.>�ya/N"K�,���T���JaY�70��l��MG�l�E��>nY���KG��\[���l͸��%���&�T��Q}�����2��dU��Q`�<]���R�l6T7���d��i��?���XKID�0ᳳ_��ɔ�h�x��c�	el�B��*tr��!�MOkE1����#(��~c*�z���61O�eA���C[.S�K>�����yD}!�&�ׅ]N�%�c��c� �V�M �6��hHz	mE�]0���h�qAћ��_$i�Β��-�j����5b��{>�DQ���XR�Ѱ�9;ĵ�V/�k1Q��a0�kX�#nE/������exf%7�O7�@T�� 1�m/A*�F5�,�.x�B%)��/w��T�|�����(�s��K=ݛ������	������	醕D��紸g$`��Q�f�������D���w�Pܯ�ħz��6���	-}~XjVY����s� i%�A�#r �bΈPQ�d�@$��2�J�oz�����t:�I�\���v"*�#��y4�/�3��<��Md	Q�I����T�nD�%@H�0�h�)��V0��l�Ƽ&  u��Ńr���YY腞7������!y/C��X"�dS�,c Bx%��D���d͐(PN���`L���eY��
��E��,�
x�C_��)Я������t���V���L�Ea6(ɋ�z�Bf-_5�|��9)�$��YfG�:�O�&�mW	�)G��x��X.��'L"�@q�i!ӈL 퉰�*��hT���{%α��_bfwh�P�����I/�#������
VM��f�����"�̃%���ooM��BO���!%,1ϯtQ�^����_�m��H"!��Շ%��FJ���L-�)��$xN�����cc�e��M���Q� �2�,��RA�z��f��F�ʥ�lAgN�Oi�`�x�E��K�E<�
���>�Vcl%�T�өHt�z�Ɩ�,���AQw��C�B���u*bKu�E�e���p�S�P A���iHWQYUM[�_T[�GRQuQN}�Sd���~�:��f��&qZ��ģ�=�v]��)�Ls�%D�=)�(�<q�F+7<�4�i�?cg�5����6T�X�8�m�,�����D��D�A��)��|`���k���2bХc����d����`L��f܉w��ݐ�򸚶f"m�n�֓��CD�t7�|?UpX�O(\R�"��\_A�Φ� �X�D߾��@_�M^'Y��ȃ���ك    r'<'�5�`D
��d�*��Tv\���ԍ���N��`!UQ�+(��_�y�Y.*;B����FO��k7ƷɂX؋^KSz]���A3��#Rdb��y~L��;����%�N��2RpSb��S���mF`՜��<��� �|�Ė ��zG#�y�[>��$���-��_LR�Xǣe	!_R�׵��&ߤ���x�t�X���ɜ��`��B�o�=�V#R�OB��ՙ
��S#��E���V����L�\�gڎ����,��hQ�iE���؆�F���7��
c�$�r�JseS�ے\�D��7
O�qᯖ�5�Hښ���9Ն��& �x.���"e˾���6*)F<�<U��^�I�Xs������H	���Mh����<C�ێ��M��&A4�@1�������
�'�Hp�-t|�/�t�T7@�Q� Qp �|��E���;�O�%C�ۥ6)�4p�}�t}�\X�M�E�Tk�r=�7(:[|b�m:g�]M��I`���$�,����/c�"%I<�;Z���"Gd�������Ѓ>M/h(���-	��M*��7.v�cc Y���ֆI��\�8LpJ�&��թ���ָ���g�Rb�Y��ؙ�0Y}��P'F�d�l��W�J�wjh6H��41��H�D �w�s���q�$6���7����.޹�"���ɓ?n4�����k���Ի�npk��V��궍����,�I�)M��n-L�6g��/��l�vGr�5�d�A�0�����3��^�RD�͸0KS�j�[�Jr�IcPo���xI��o��m�Wr�����mKwB�xWt���Nw��yckz2a��֛�l,�*-�AtO
�9��T]�I��M�����N������-.�N7�!��)F#-�`@��m��@�I �\����	�4 �@�'����oX�4�O�Py���tK��ݾr�V�SR�;�U7!F�o�\Ə�i�z޶!�F�:�1 	�,�X�s�+Nyލ!���S��������ȟ�.m%�N��[Lar��ѩ�(��je�}Պ^=$��]E-]��Ze �_?ua�@���j鉱�}�w����61��o��ĲѭSx�}��/,��q�#�x��2P�Կ��L}��ǥ[�&��4���M�"+�,2�
5GC;M�k���QwUbD|��xj(v�u_u|�들���0I~}o��3�mT/^EU�6�6c# �@���iKd�}"��6.pU�ٓn���=����M�9I�ckv�-ƹ���gRD�N�%������HPOZ��U_��.a���
��Ӟ����=�7P�K�q}��CrPDK7Z��<*?|�z�Y�`��p��<�\Gj�ʟ���YL)­q����S��@R\$�}ސ[��zVD�+Z��X~_�s����%�C�/���2c�ť�%,'༗$B-��IV%K�ؚÖ��8밅��uf1E�e�,d�(<$#�{]���R��$C��B��2EZΊ�I���nӥ��SY���ߛ�R��,Ż��eS1{�r����>u�T���*��勁N���jCߋ�ϊrQ^�z,c&\Ù��RY`cHi��2��L�W���*^c�����Ğ��R�ۣ��I5��%�yHk���Xe���t��?o_v�e��$�?�\�$�7�Y.��V��$���\*��[�T&�y'���i���f	���-O�
0x�g�x���ݯ�PB�f�A�jYE!�@�&9>7}@h�ռ� 7���#�W�2]z�����>��."�Q7���[�7��� �%��~h�HfL��uu>�"T�	�&@�������s�5�li���<�<y�.���% ː�Ľ�t���[�]�+V�5�S$��f���!�@x��B�/����_���cE�4�}��	`�G�ꩢ���Q�5P�� %��+��q�g�������S�;�Z5SǢ!l�m
E�[����:� �0�Q�c�OΛf���.�r`�:�1�;g"��G�D�����b�`w��b�Ȋ!Ɛl�K_��B���}%l� ��� ?w�f��V�[0�-���I��|%���iJ��m<�Y4w^+5o�r��T��9�Ժ\̽BZ a?�'B��|�F�l0����L��@�{�v���kR�oS�)31����V���"�|F���N����O�C�$���ǴO0�r�<Tp�
�H�v�yIi9�W���Ao�?����a�,�_�5 )d������p�������m#$A�-'�̑������$oM4��L�߾y=���	���� P�j�
�3`�3�6(w�TC�|�����
�\}Y��!3��8k����>ck"�\�l>�mˤ����PnA��j=]�Tx�UtM<W�"�i�+J�LЏyV3m�H��<<����4Y9��ѻ��mO[oiP�[�=/�y	�ɱ���z��������&�A� ��}�* ���o�O:3�����
m,�l[Kg��ۇ�e�О�V�E{�,Qr��HH4�t�#�P>u�`'��|��ΖgR{I<p-��Y1�����3�/"�7G��ȴd�M!�kö�b��p5Y7Y`�u��a�}�O_��9�,ޯ+�]�8X��	��ţ�k�U&r��u.
���P�H���^y���lƎ�_�S˪��#�ݍy*@�uO�7?�3&$F w�����y}7�&e�Q���"�ok`hqx��ZY��`w�N�w�{�Z~�W�+y�E�	xg~�>-O:v3���A$è���;ẳg�� ���������T�}B�\ Ż�[����*\^�S����J�E�����q��F���j���Kzaw���B5��\a�j��khK�� ٫��w%� ��t���)����3Sf���Y�KB�X�:���}����3ZOȜP2�`?��x�z���|zg[Hf0�+��)ν|\�>��R�Ng��H?8NV�8.���4�|(�$]�_mǐ@l�6.�k+����g+)~z/W�Z� PR�({Us�_'��,�;��e$b�8]�����������6��?�5^#/���۱�eg31͑��`1Ɛ�
ޜm9*Kǉ`�!;nf��q�	��á�ЖH���6)�|f���Ĝ�<hFz��5�������%��#��QH?�Z\>|�ަ��lǓx2�,�1��[*{,~�+�r�d�(�L��azw�\i��2a����maV�E��@C�AZ@��1(*�[6�2�=f���f������n�Y��f��`A6�*m�u�e.�)��>�f�F�9�-L��-��y��>&���u�w��?��c����{(<Q��Je�_�o*P_��'���NT���u�kc7��Jd���`�K�c��߭2��w�F�y:���m9��͈9�\f=d�y��-�	��6� n	�2(u�P�M�z�N��B�G���\耡8!(�]�ZJ��Պ����uk"?&�oCM�5���[�H��8z��(lش����t�!n�>�j�	S�#ç`�=�3^Z�$��0RKo�t"��}��6b�]ӵ#���~�n�93c������R52�@?��\��\�HKO�W\f��E���5��?��ާ�!L�T�~jH�v��P�ԇ���/[�ݯ�aW�\�O�f���)�t����\����)B:�dwo�&�����'؉\C]�;�f���%��bAi�t͍B��ADzߛ䞵�/�F�(��2��'���VHG5�퐔�7�E`��;f��7��$��ݡ(F�EM�d��խ̑�h
Jqk�h@zy������7v�u�p�"RG^�o�d�1)�/�K�ݦ��H�+��>(Bx�)į�Rk����߅�d1�%I��o��q �2��t��㪆;]�����ru�8�0�>�K�6�k3�C�nU\�H��^��V>�-��?�dߪ&��//3�Y/ ��"+��P$ `��D�`��t��NC�YCŲ[Y�P�}��FA@Y�:^~塍��f)��u ��fbaxШ�񹕑�    �U}^�TLoT
"���$��+ءEh�W̫�[`�ș�<��7��O,��W68�`�MW<γ�M�+-�jb�n�����*F?���-�k�Y�-����.��� \���¸ �jzLF�p�2ߍ�^�@D��|���3��� �����[�,#M��~�r�Vɡ��� L}��e�wjٱ��5�K),-�:D�Á�������r�#����Wd��T�q����OzyR4N��w�(:,�l~�Âë|�l�;6Ri,`x�_e+Iܕ	�}�ʃ�B.Of���u��
Ro�
�X 	���RG�N@S�n�Ձ��i�bYw�9,�@ �z�l��i�����w9R�f���v~��C�*�>	 &�_��<+�v���¯a��+�~֐���eB��V%ήx��e
6�d��d+C)(�&c�rd�H\:�j���0~%۶��t������S��8����狄��_�?�'mp�^R�:� �b�M��'���|-�]�s�c&��e�F��q;d{�� ��߭�$J ��t.�v����NR50s��e)u��;�/��\P^�-���ϒ: �����)��]�&�{r9�Oz2i�Z�ț�O1�G^��+�^8��=ٔ2�������S�+Q_���>�M��g�ꕵ�_��n����>�üB�}
�ݣtoI�s�4.m
��|V�-���1�uL���8���v�'-�5'�a�p�����)��}m����/���P���b
���4�r����{�|�5�<���;p�����ԡ2Q��?��å j�/+��#-1⣄@�>�t��Ӿ1�������Rߛ�"�[��\�㒏h~��g���W�̤�TtF��A9�`�6FXg�DOW�	I�r4��y]E�+{��Z��%��������@3}ũ���f��蹯R_�H6��R�%��}A�uғ��]~	�G���H�/�-��
"�u0����8�3��ىrַ�%m���Բ�#�������(K>׌����H�m���CD~���G��7Y��yp�	ȑ�ih2ٳ�� �r�+���h�XX�,jH5 hs��$T%3]v�+z��!��i��.(?_ؤ�1��
h}Mf� ���օԫ�Pu8u�8*�7��!����,�&|�*��)�g`�9��yY �׊��7��3t�,�{U�A�g �;�zm�0��G�hڹ٭-vN	_[D_2k"soI?�	E�!�u�)�ȑ���]��5���T��}�b�Z	�ik�e��{�!@�	|i�U�A+���G���I}�!G�g�Nb�/+��#dȇp%��u�~����%W~u/�5�rs�c���ؔ��~�.F@*{m~�rW�26˕��|��/��2a͘g�MIs�oD��	R��]#�8����a��]�x{4��N�XF��a$k ��v[�$,K�m�%H9)6�"�HE�d�k<&���3���):��*��q�|�)�>��;��d��c,=���������rI�/F���m??�b��r�2T099~��p���~��Iu�󭷼�|䌋�HZ!��y�����%�e�^\c�(�60�YڠhH6A��PJЄI�G�tk9AȓcĖ>���T�r�E�� ��.��14������2�ot>���Yk�c�9�&on
����[R�����'d�~����O��<Yl�!�۵�>u~D��崥�CCY��"�-��e�;I,�%�t[���
���)r�Hjf�.p�� J�㹠��J�W��;�Vj0���L����.	$����Zx�Y�@��D�g�®U�03�A<��([�Q��Q�5�p����}��H�.q��<��h�4�~J�&�Zc�v�Z�������%�h��תgj�)Sd<��� �P�j���_�}ݦ���HtGNpIl͟ښ%�A�)"�ft��q3c�(��[jL��y�'Tr��'���4�@����9�~Ձ���<k�:�%�.�~b��o2���j���ޢ�-�,��ȅ%>�l��X_HY!4T����3�&�t����]>���䷉�Q��!�x֨5<l��]���|h�U��&�[�}z�˿v���+�"�Kv�&c�4�T;�3�������zEö��xBR�]ky�"��kuJ��u�_cX���z�3o����k
-�\Ӫ�5�3a���9���y�Y�ٿ�bY�|%~��Кȋ�����<�B�Ge-�"đi$"]��p~���ce��,��-��
�T)~�|�ȥ�B�ʢB��rkC�5%F�{��6)%"�C����c�rC[)�&&��i�$��%(
�
<X��Z�Z�Ѓ��Hw��$�L��W��-�p�2��,��"=�,c� g�7���u��T&Bآ�B����h���N����1���=&�3���wH ���vOѺ|t�J�!d����whhYIA�I�'%:�Gdg,ч�eƧ�Ѕ���/Yˠ,��׸���zVV�7@1�	�ޅn�´̕'�_[.�������/�\�!�{,�o��h���j���y�r?t�ܷQ�#v�����f � �[&D�rճ��em8Q�e��>��
E-����$h��DَSʑ����H�sX�g��� /o��w��Y
���_OＲ1C_���k܏+נ���;�gS-�%�B�/�?E���h{�A�{%�4���� B�M��"��6�>���h�R��ֆ^K�,��w���9�N@�.�ۜ�ak1��A�����y:O�2w
���� �����E(-�c7�^�eZ��. �<�q� �q�҄&x!�����[�g<�e�9,k�#�/Z���
��A�;������*v�K�|��M���b�s,70����]`R�g�,ȏ����r����]x��r�"���vl�D� !��iY�3tp,.z��*���+ ���,B���a�'Q(���t�{����m�z��a!��!l'�1�E�D{nu�f>�>�o���+���L����{5��ܵx����4�g^:EHKy����䯐�Z�������P=����L��"&�iD��6��B���E6yP��5�.(�1��tB�J<ш@������d��"��7d���s��'a�;"~J��x����l�@���|��r�G�,�e��$�M�)6u�h��Y^�-�z��ifI<��f��������2������

�� 	�4.�����/@L��5OFs�|Y^���^StD�!5WI����C�F�8~ۘQZ�&g3/�"����.��pڛ/�AY^\�71k��q����4[Ԇ��Z$��(�$�8�'����g0\�'�a�<�'��.�0|3�Xp��F��o
?6��M��v����W��Գ:�˪h���1V[gc�/5� �D�B~_~�h��"\�\�ú�"��"��m7i� �Q��,#�#��nJ�8�e��
;�h�˛V�+�#[��_��ˏ�	V6���p/c�_K�cgYV��"�YBcp�.�&��!�府˷��UĨ���9�]�6��}�/�P�\�ϰO�%ğ�v��@2�(m�L�XF�BE��g!_&Vc�:��wj����1�?o��0w�q�>N��Gh����1�O����I���c�\C|�&+ʀ�L��Gb��r�87�^������:1�'�,����}��I�f]���FW9`�%�G����6��`�q���aqXU��0!꼌.��o�,;���% �i�o��ƞ�%��(f! w"*�E�{�nJ�����"԰c*v+���4��c#ºKU> H�}��.bu�e���;�kj_��֗��JQ�%0����u��]�S]'
䎀@*�͗�����i	�|���F���#/r����f����Y��Q�B��
�QfHl�t�ɗn׮Z��o�Wa��ED "�V~�y�!OV뵛8��[W�ܸ�,�}��?pn��F<ʒڭK�h�����[�Y I��A@k���2�n���|�}��Ĕ(�)fz�;v�����3x�&    +ā$��m��k�Ҏ��6e,B�����n\d�+k��'5�(@� \�q�C�ĝ.�K�~ص�Tlz�?����[C<�٩ ���R�� ������z�e��:0�G�f�L�m�`�7O-j�Yx��~��6�o��~!:���jH�r��Me�0ָ�x"��5PR\�\Ś.i�~Ӧ6)d[�g��E��2t�����rRPi�+K��/3D���.�������H#��v�\�"�QB7��5��a�͜Z3��.�|������QB�6J#�V�=���Ee��
��M,�f���i��vC/�
��pbwfp�6c�2���y�h���9���C���z]�I[���	�fd�!lU-�^x5�n9ğ�f]���x=է��s��|�~��I���ƌL <�� �2Wz쐇'��&q۔��ۯ'��¾�GJ���������)�b��4���3qg��.y{�����-%Uy��2j����6]8����ϣ��،��/�'ё��!L��&j:�/�>
)��x���1A��L����_B/��PO{^��R�&���D�9Rm3Y(wc��"\��e�k75�X[4h슼V�E��l���x��ޱN
l�P�/��O R�.�ӄ� Cۆ�my ��G�6u验����Ӟ]���uԺR��}��ȥ�����?��(�M,����X���NӋ��C�$�0K@Q
��kkӭ�Ze�g=Q�/��
%�OPJ�;g�63՗#"���-�P��hc�W��
�h@�mD(��w���Koe���#A���%@�������8#�ILN����	48�=A��L%��B/Pb0+�gL�eu��*p��6sg���?��2# 8ؒ�X�L�I�˦
g,�QMѪ��
2�=|V0�e$���Z�U�G#�i�J�X%W-w�M܏�'�ű
������Wy�Bڤ�ϕIsB9���� ]H���n�(�fm
���3V��{-�����C�`���#-0�� �l�:'�ub)&�� 6/Y
5�^깸�d�e-��������3�p����L�7[u-��R1�Ҵ��|X�lmY�����zwE!0�t$�V�<)`~�٬�o��vp�����4H�����V�r$���_�|�ڤ��<�40s�Ƌ`-WÖ`�&g��g�+�Y�y9�	��w2��ee�EN�7�%f��sg3B`�^!?��tA$�����A a0�n/xdq�"��1��3�:2��A>/��ӶY�]<��Q�)�~�O,A� ����Sq�����{�\�ɪf���&.XQ����]��>!<�̮�ܠ�2{��/6����a�b�9�ҿb�����s�
¢X�u�@w@���xz�]̾��H���������G� ��a@�U��e�K��i!(����h��/g�~�!�gb�-V��BW2l��)�8�a�X
��iv6��#����}��{�:��+)��3�9��qڴJ�kf`L�i��ɏ�d [��z�=nI�a�iM���Z\�Gosp������� "�^޶�#i惩g�����[��@�fZ�`����O���H�C뢷W��T<��&����F�i�n�嬁��2+~l��C��ԘEu~��5�	m�pٙŌ�;��$���'�X�B��������4�[r{,��3A���\�m�z�?N����,��Jx��Wܕ�F�Cg-n�eat#x�h�n���������}Nq_�C�l�x���H�VA��tGW��Z���te@x�]�q|c���P��h��q�?M�zT�w��	��<��f�1�V�?��ͥ�tZ��F{�Ŷ=S����il����sQ)'Dk\}X�_������Lc`"�N�q<���$�v~���lLaW�Pj�v&\�-,�"�;OϩE�Y��*_Q?uڄ<�̛�i]	Z���q�|z=�l�~��c�uPz������bܤ��D%'0�98�,c|!d�@o��V���ak���8q�V���Yɱ��d�	-*[�s�v`0o���5z!a��s+k�X�1'�]��b���;�냴9�Ċ�i���˳���}A�hO|���ȸ�j��ܮ�03H����׿���d�	-f�{3����Q����%�tB�������Uh�S~����|���L��=����cj`��Y8j_6OO!�|E⪱��lr�������a�/oT��Q��jti����������P�QA��n��E`Dj�������8cGq�E�c��h�5(��AƐ�`�V:A�8�-�i��E�����]_Hf��)�%�_�..��	��C�fF֠@�㬒E�l*C����"�+���"(/E
��庸-0̯2l=��6�(=H[���\��
xT�O4��`�x,>X�L.=`�Nt4��6���r��&f�d��^�0t�GC��a���QZU�������s��2��D�m��`�k�4o��C�ߠr`�n{ 4I�s�(��T4�1	�!0ڹ�Y!Ik!K;���g�K��>v�qaی+۶C:	n!D�N�>��I�KA���!�\�ٛdIa�gkO�����N��f�"L����K.����
v�_�'�Y�� �|�\�@DU�l��`�5�^x���@���O����J�`��o�Z�8�ck�b�Q����z]?c�Z(+():�Mc���yD`I�f���WQ�2v�o� ���@�ۣ�<CR�/���׭T�-�A��Yk� ���K��/�h�
k����pbK�d\���YW3U�v���V�!ˣ*xĶ�N��3�[���x;�S�;H����D%����0�T�G{Rܫ�ݩ����~3߅R����r���"95*�"���R,���c��tٖ������Z�^�k1v����+UVZ�#��zL�<m�NR�R���9��C���Yjs%2�I�1�!��x�0>{:*0������U��F�AĖ�6�� ��H���c�:O46�����2Ē��_��ù��s�f���0U���BQ
�⬩�������Z�������`B~2Ȼ>xX��|����)H~���3 ��;皚U�	�_�{�Y�I� �� T�z�g(J�"���<�#��b��o�:VR�p�&.�_�E:hCUUX�WU��hT�_G�6�U罧Yh���[C��m'���8��-�I+
G|-y�I�r�F�P�����CX�1M̀���ַf��k$���U������x9߇�p6��øXeR6p������u�D�cC�ة&eW`�,��g�s�O��aRvvq�0��k ��q@^��5�‽������� ?�P�*��+�� e�,�,�;�H���F���&<)5[4����{H�ӊa��z3+P�L���h'�_�裬`�i��|�X1��q��W�h����*V0a�D�`��[?��� ����-�/��<�B��l���x� '��c[��w&͛1��n��O¹-$,<�Ho�"v��W��bOe����LU�)�1��g���ϦiW�r-\��	Co^R�	s��o��3A]Q�°�'M���]e�O�m�J:�"�c���磩��y��0f�xV�+C�($W0�l+���v]�iXׇ�c�~�|�a#��g�-���G����Dy��E"�����m���hs���8��0~h�VA����0$)�P;`��Ե��zG]7 %����Ao\�	�pJX*2���-���^����"�يH���J(ê@��Q�s�3C����ŷ�?5�,�������c���n��
�f%�ۀ1�J��d=)�8�>/���7
���-a�MR�q~�u�ͫQw��ƫ�zX"k|�4o��Z���F��u�8@��1����*���be0����x���+]�>7J	��̎�?��.Ntr���Cٞ�rW��s�^*�qʭ��[���wn����փ�#�+`�Q�Ӆ���4��u�(lB`J�8w� �3�2�+�N"��U��k,+H��Y��SP�+R�    ��k����ѓp����08��ɧ���q�-���xp\�0�O�}%#�#@v��lw(�"� ~8�e�_�$�f�Z@�u�3p�֌���zAj���D�	E���2dT�s^ilE�� n��R�$0�1m��R��8C����+�*��Z���� Xy&��pY��@��:8�G��@�z�/^�!�R�xϸ@;GHD[�-�%�(��BZc��L6��E��\!��nMH&x��a�Ϥ���o�+�A��*���~;[,"���9�?�_&��ޡ_����^�Vg� ������I���XY�v��{��
���w��s��\iyy�O���+��c*��7\;!���H�7�e��S�t_ ��P|�7���z�K��x1H�B3��2�	y�z��w=��҂�5�R�M�Q�)^y��beX.��[����5Ho��>��\��n�Ӣ���Q�8	��[�{dq�Xi��g)ul���?��)�\`���;�#�x�>��QV�$UJ��h�s���P����v�
d!Ŏ�����_Gm�f0���3��(0l��
1�~^~KTJ4X�V�fQ�)
�j�s$�Θ����?���~̍o���e�'����_z~Z��%g�i`֋^���TsdA.L$1�����0����_��ܞ�V�lɝ�燣��J��V&�W�2�S��,��Ҕ�7���z�+��,���5i w����85�dSR�ͳw��ѥ��sS,e�N����p>v����D�y;*v,*�;e�8�0�/�R��$X�}�r���Csh�ry潭%i�����V�=��hM��6p�(|���mc�.��L��AШ�n�>�о��`��X1-�c �����Y���XZ59u>N0������&GL��ԁ"��Q��E z��{T��毑�2Nb$yZ�lDU��V��C85ԣ�k�/�2�Sq�"w���mMfb?w�J8�6*�<��B�n�w.�C�"'���1���{Qq$�:�׶_ h'�@��C��(uԑ���D��X�!��u����X[����Q��}��B��6�=��$iK��-BH��O��
��w?�����.�`� J�Jը�	����hwm~�(�x2m�uz:�]�ٻ5/\=�̣�͚TmEߙ)Ɔ`�	���/F���Q�Om���K�,�S���xhB�i3��Xa�fʱ��瞋n����O/ǝGթ��ս��2��*��g�O�a�������T��b��	G�Ȧfܧ���4I@��y�*��Rg�z�9"�^f'AU��\H��6m܄�JR���r����"� f\W�5߶i����Q���k�/gGZ�v3�|^*�/r;�gWQ�BZ���>NYv���R-iYil�2yS#�<�o�^&���ϝS:��qn�����x��49���}�<�a�2;77X_���*ɻt��D��ؼ��؈��ihc�x޾�vX�y��oj�	�+�%k��س'����J��z�W�'��*a�J�����P�����sF�T������L�A��kSdt�{h�ߒ<�r�f���o�d��8�\�8�1Vd6�10�"���~2��x���L�u��!tiV1��R����%���]<�;�d{�32p�������2��Lǵ\;�W
*H��5��o��%띬�@q>T������ɧ
)H�ҩ��UK�e�,�2��9�'[��|ib�TǻA8y���)� ��s��~e���q��^{�ىd˭9�^�}M�9g����t6Ksy!*+:�PkJqM6C�����H�	���0��W9M�[�1U!�iM�~�o��xB���������P�.��T��E�L�Ϛ���-�W��yO�a�Ƚ�Y�zTh��DQG0e�x�E/1�=ӻ�o�t��h״��2��3�?����bJOd��3��w�T���g���L���YzJ�#�3>�S��������3����2!V����wx��ϑ����9<X7�$7��~�x4�����i|�I.��eT2�"��D���#v�y��N�#�xfn�g���J�[Q��USw88t6����f
�Fx	��֩�cC�N�WRғ3w��&ϔ���6,�*r�r���ͤu�8���y���v� w����T����=�Fu��wl���B*�hY�}>� 隸?�����ⷅۨ�X��4ŝ\���׾	%�~�  ,�k�M4�����y���.�V����T*���\�f
�>qe��s���/�;P�9�5�'+P�����q���H���WT�R��\o���*{�̖(�^�jr�Ke��L���Sv��L4y����8ZoC&4�K+�dЊ9+����0��έ?�)zav�FVKԓ=-'E���Z2�����i�� ixZȣ��̺���T�. ��ϣ���(E%$/"�LP~}N�/���)� �?�6�'o��d\�{ ��;&�+��?/w�n\�wy�.Pvd��3�_���E(	23�ϡ�x-��HܰN"���%�y獈����mk(��MͶ���Cb�v�������(��Gh�o�n�8���ۂ������S��k���jbEi�v���G�%Z�����qۉm����h=v5�$�t�e�=ގ�����_�)�3��6[%uΒV���������! *�y������G���	 4⬂	Q�q@��h�dg��C%H3��S�6H�D�2Jj����8K�F<�>Ԛaqau"�y����V�h����؊���MPpI��֯H�Fs�f��0�݅ԁ��=~�a@�[;`���±��,�z�j�Fh�6q�vv�:iD"���@��!�R�7���=J�#�~=�ސ�R���N�bq�R*`�}~ Y�O��	 �63��#U���6U'
��x��0@h�X�@3���EJ(�=_7�U��;X��]�e'Q3u"T/��W�6����i���%� �z2:gR��W8���Y\vnu��{��NN�ӛ�牻�$T����syŸ��'ޝ�_��ѭҸ�1�ݿ�&U��S�g4D���3)(���S�M-$�v#����UDa�����y"3�jɕ��R�Ƕnhf6yyM�\Gq��3�]��n�Mnfζ0��?�0Ս�E�7:%���&�,��V��:��a{n��)�Ŏ�X~y�S���*�/�Z��N�Z�1�}�a��k1 X����ݶ�K�t\Є���K:�K��TK�nn�k�}H�����Z(\�y|q��$K0P0 ���Y�u�N�����)KŬ�屗�V@d皇���}VF�	 �;Q��+��PH��=� �r�v�j��V��Ŷ��-J�REq)��^�����
�YN�c���1*��vOݬ��� �����v96�q�\7��F�:N�a�_7x`ݨrO�Zע�~z�N��KY1{d��}�m���� B���l�$Wů�z�'Rп--(�(�Mf�������)}C�o���E����Q�P]�8�'�e�Qd����rG|��)%ڋM�Sjl_Ŭ�zr�穢�2�)��W��"���sN����͉���"�3�g�&ڏ�4n֕(�ֆ�~j6楐|�=��Dz�Y����@T��E����87�W�h��&,S���;5 �y�Ī��F�X^�NX/Hd.)Z��v�q����4�
󕦎����TN+��Q���,���a� ��I�oX���wL9�ҥ/��_�H�-�ٶJvZ�x�Yn�1ь'.�ȣ%<�ݗ��7Ko�oA,�24啳`���sn��3�r(�^��av���������&6��R����~��h��ʰ����y8Q˘ʸ,_�̦�r旰�X��L��]IK�g,��jO�,�oZ�J�	�����m��5��$�J*��/�+>Clͳ�2�jJ��(�Ԭ4,Mi|i�n��f4����t�@𐠅dz��Xh(�h���"txTJ��3M�l������M��� �-��v�T�)�ZR4�L�77gMK4u��T��	=q���R�/�`�]��q�ß��l�\�V��i���GX��� �  S��sM��E�����p`X�{���K�$�]�b[�ia~�aX�h�2���	!����eΫ�d�6����ZLO�.[�g��hȩCz����o����Э!�f�P�����fi&�I�`�k���	ݑu�,K�N�t
e���B0��9zC�=��3������&S�e>���$"5��Y�i�����0<�-Vv&٦	�.t��%4����"��;u�uǑ����
[Bܶrh	5�]I�6IȔh�+�?�G�5�e���#�k\������#�����M��ӕ#�"�ù]ߑ����kꅖTM	�5mV�}e�<������p�#����s�8�Z�~��LzkZt�:�,��j�K�G���v����^OO[�ϭ<����>��b\��
�n��w�E��"+h�;����Bdi́JG�kO�L������J�p��q�@���a%�w�Չ�]ƕ y��% ��1��#LE�7�4,�I�nT8����E�g�7j]{~n�3?0�����bˎT)j��s��#��Z��Z���*D��g�Ǥ$W���~5\]���`�>K/�&F˚̷&1W8��+���S����Frd�f3���%�:���ѵ�[rdR�I�?K��M����l��0!��ن���f�p�Y�Y�E��lF-�NT���m����w���)ꃸU����MI�QB(����A�=�����'~6b���IOdS_H)~�"^��q9e}~��RxH��Bn�C/SG_a�ޥ֚��"R���
�:'޶7`�R�?U�e c�͗��E./����Lâ��J�)���yT�&:�;7j�ԭ�N��#�>Hy��[�bN�ԡ�g>���z!��w{�O]��Eߞ���ۻ/�<i�e�*�s��削a��H�fBS��QOd�kua���_�^V��r�+o��K�'B͇���s�U��y�,��;HA.Y����A����p@���)43�I3�����W�R5*�D��	Ǳ�_a�����y�g��� �t�����<|<�3���o�z���������W�D'�; �נ�����懫�
Q�JX�/&�Ǵ�o@���91O4�[IA��D[������<�a�����˯�"N�
ǎ�����ހ\�v�7C�upa��o��v�����H��ԓ����,��e��>�$��&k�珂+�;JZ�Y�?��ٝE} g�/攁\����G�b� ��lxnk~�i�����T����'#�Y���O��`a�֎�u �;��b��Ro��_o��J�vd�ۖ���:A!�ϋ�P���Q��˷��|U��pk;%m�ۙ�$IrWy��N�id���C����W��5}YS3��y/�5��2���u-�:@��|Q�ˎ�������x��=l��@g	8�{�;e�0q�5���*���a�S�S.��:��_ ��nM?���0�,ԡٯ#���z���}�>T'	H��|ޣ/��.�e�e��  ��Ћq��������]��q_bQ�Qp^�A�Q
�}F���"�ڶ;�$h�b�Y"Q�d�v"��{L��Mu�9�>'B�_�D��h�G~�g��Z���=��Zd��7<Q�L/ g~ݿ"��Z��0��G�g����G��C�3�C:���Ih�������_���i��5      4   v   x�-�!�0Fa��)8Ag7�$��]Y��DD:�酪z.�O}�9��~���5��$b��D��E�Ȣ�iL80��[�ãm����;�s�J[��{]2�C8�'-���獈N~'�      8   d   x�Eʻ�@E��m4��y�a�[)	!�:r-n�d�͎���h�eW�5�Ed�AO)EfJ�0��d�.�3����w.�3j>�E1��}����:�!��x^      :   �   x�}̱�0�����@�ر��-��u�J�"T���*1p��tz�E!�O�Kw9A������e���: ���ԇЈ5��J��ł&�qG��P-Ip�m�з�Bݰa
��8)�JD&8oBEQ��?"jm�\�ι7�*+�      1   t  x�]P1n�@�g_��=��J����} U�YK� �'�&�1R����,U)wfwvf�Y>���~��dQ]�W����/�u�B�`J*��� �U�-���$%�=��Oa�R�b��O>�O�(,m������2L��i�&��kD�ɬ�J��s���CƠ�&kT.�hXEYU�IqcvR��m�bE��ˡ=�Ѓ�a�U0�be����H	�� ���1�i���.�m��}����jXd:䪺E���^d�!Et/��x���UNݽ�4yt���ؠ��i�3h���!f�4�E�Fw�K��G��9�%�e��ՠ��3q�ާ�p������D�=fNn����k�Q��0⠿�dP�GU�0��FDۓX     