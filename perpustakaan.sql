PGDMP     1    #                 |            perpustakaan    12.16    12.16                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16441    perpustakaan    DATABASE     �   CREATE DATABASE perpustakaan WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE perpustakaan;
                postgres    false            �            1259    16442    katalog    TABLE     �   CREATE TABLE public.katalog (
    id bigint NOT NULL,
    judul character varying(50) NOT NULL,
    pengarang character varying(30) NOT NULL,
    penerbit character varying(30) NOT NULL,
    tahun_terbit integer NOT NULL,
    stok integer NOT NULL
);
    DROP TABLE public.katalog;
       public         heap    postgres    false            �            1259    16447    peminjam    TABLE       CREATE TABLE public.peminjam (
    id bigint NOT NULL,
    nama_peminjam character varying(100),
    tanggal_pinjam timestamp(6) without time zone,
    tanggal_kembali timestamp(6) without time zone,
    id_buku integer,
    status character varying(20)
);
    DROP TABLE public.peminjam;
       public         heap    postgres    false                      0    16442    katalog 
   TABLE DATA           U   COPY public.katalog (id, judul, pengarang, penerbit, tahun_terbit, stok) FROM stdin;
    public          postgres    false    202   :                 0    16447    peminjam 
   TABLE DATA           g   COPY public.peminjam (id, nama_peminjam, tanggal_pinjam, tanggal_kembali, id_buku, status) FROM stdin;
    public          postgres    false    203   c       �
           2606    16458    katalog katalog_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.katalog
    ADD CONSTRAINT katalog_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.katalog DROP CONSTRAINT katalog_pkey;
       public            postgres    false    202            �
           2606    16469    peminjam peminjam_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.peminjam
    ADD CONSTRAINT peminjam_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.peminjam DROP CONSTRAINT peminjam_pkey;
       public            postgres    false    203            �
           2606    16459    peminjam fk_katalog    FK CONSTRAINT     t   ALTER TABLE ONLY public.peminjam
    ADD CONSTRAINT fk_katalog FOREIGN KEY (id_buku) REFERENCES public.katalog(id);
 =   ALTER TABLE ONLY public.peminjam DROP CONSTRAINT fk_katalog;
       public          postgres    false    2690    203    202                 x�=��j�0E�㯘U�3��m 	MJK��M7�<8��d�2!��N�R�0��{�0�簥(-�\�{��u$8�O#v�V3�
��Ng�]����G��}���{
�|�f+fw`+dnM�69�.��N�-����F<z���Ac�R.�R�)➽G���uZ����H�3D:�9��=��|��+�,��ޒr�w�hބ�Ϊ�8�߶�M���/^�v��͐ة�ZA�-�CTvl����>iaY�3-\�)�&����-����W�e��r�         N   x�3�L*M��4202�50�50W00�20 "���	B̐3%?/�ː3)3'��hm�mƜ%�yDk2�h2�E�c���� �p-     