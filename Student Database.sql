PGDMP      #                }            student    17.2    17.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    16659    student    DATABASE     �   CREATE DATABASE student WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE student;
                     postgres    false            �            1259    16660    course    TABLE     �   CREATE TABLE public.course (
    course_id character varying(255),
    course_name character varying(255),
    duration character varying(255),
    credits integer,
    level character varying(255)
);
    DROP TABLE public.course;
       public         heap r       postgres    false            �            1259    16685    course_unit    TABLE     �   CREATE TABLE public.course_unit (
    unit_id character varying(255),
    unit_name character varying(255),
    course_id character varying(255),
    lecturer_id character varying(255),
    credits character varying(255)
);
    DROP TABLE public.course_unit;
       public         heap r       postgres    false            �            1259    16675 
   enrollment    TABLE     �   CREATE TABLE public.enrollment (
    enrollment_id character varying(255),
    student_id character varying(255),
    course_id character varying(255),
    semester character varying(255),
    year character varying(255)
);
    DROP TABLE public.enrollment;
       public         heap r       postgres    false            �            1259    16680    faculty    TABLE     �   CREATE TABLE public.faculty (
    faculty_id character varying(255),
    faculty_name character varying(255),
    dean character varying(255),
    building character varying(255),
    phone character varying(255)
);
    DROP TABLE public.faculty;
       public         heap r       postgres    false            �            1259    16670    lecturer    TABLE     �   CREATE TABLE public.lecturer (
    lecturer_id character varying(255),
    name character varying(255),
    specialization character varying(255),
    faculty_id character varying(255)
);
    DROP TABLE public.lecturer;
       public         heap r       postgres    false            �            1259    16665    student    TABLE     �   CREATE TABLE public.student (
    student_id character varying(255),
    name character varying(255),
    gender character varying(255),
    course_id character varying(255)
);
    DROP TABLE public.student;
       public         heap r       postgres    false            �          0    16660    course 
   TABLE DATA           R   COPY public.course (course_id, course_name, duration, credits, level) FROM stdin;
    public               postgres    false    217   c                  0    16685    course_unit 
   TABLE DATA           Z   COPY public.course_unit (unit_id, unit_name, course_id, lecturer_id, credits) FROM stdin;
    public               postgres    false    222   �       �          0    16675 
   enrollment 
   TABLE DATA           Z   COPY public.enrollment (enrollment_id, student_id, course_id, semester, year) FROM stdin;
    public               postgres    false    220   �       �          0    16680    faculty 
   TABLE DATA           R   COPY public.faculty (faculty_id, faculty_name, dean, building, phone) FROM stdin;
    public               postgres    false    221   �       �          0    16670    lecturer 
   TABLE DATA           Q   COPY public.lecturer (lecturer_id, name, specialization, faculty_id) FROM stdin;
    public               postgres    false    219   �       �          0    16665    student 
   TABLE DATA           F   COPY public.student (student_id, name, gender, course_id) FROM stdin;
    public               postgres    false    218   �       �      x������ � �             x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     