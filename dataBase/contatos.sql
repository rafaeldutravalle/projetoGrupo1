PGDMP     3                    |            cooperativa_veicular    15.4    15.3 	               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    168904    cooperativa_veicular    DATABASE     �   CREATE DATABASE cooperativa_veicular WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.utf8';
 $   DROP DATABASE cooperativa_veicular;
                postgres    false                        3079    168920 	   uuid-ossp 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;
    DROP EXTENSION "uuid-ossp";
                   false                       0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                        false    2            �            1259    168931    contatos    TABLE     )  CREATE TABLE public.contatos (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    nome character varying(255)[] NOT NULL,
    email character varying(255)[] NOT NULL,
    telefone character varying(255)[] NOT NULL,
    mensagem text[] NOT NULL,
    data_envio timestamp with time zone
);
    DROP TABLE public.contatos;
       public         heap    postgres    false    2                       0    168931    contatos 
   TABLE DATA           S   COPY public.contatos (id, nome, email, telefone, mensagem, data_envio) FROM stdin;
    public          postgres    false    215   	       q           2606    168938    contatos contatos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.contatos
    ADD CONSTRAINT contatos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.contatos DROP CONSTRAINT contatos_pkey;
       public            postgres    false    215                   x������ � �     