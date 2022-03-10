create table public.users(
	id int not null,
	email character varying(320) not null,
	password character varying(25) not null,
	constraint pk_users primary key(id),
	constraint uc_users_email unique(email)
);

create table public.employees(
	id int not null,
	first_name character varying(35) not null,
	last_name character varying(35) not null,
	constraint pk_employess primary key(id),
	constraint fk_employess_users foreign key(id) references public.users(id)
);
create table public.candidates(
	id int not null,
	first_name character varying(35) not null,
	last_name character varying(35) not null,
	identity_number character varying(11) not null,
	birth_year int not null,
	constraint pk_candidates primary key(id),
	constraint fk_candidates_users foreign key(id) references public.users(id),
	constraint uc_candidates_identity_number unique(identity_number)
);
create table public.employers(
	id int not null,
	company_name character varying(255) not null,
	web_address character varying(50) not null,
	phone_number character varying(12) not null,
	constraint pk_employers primary key(id),
	constraint fk_employers_users foreign key(id) references public.users(id)
);

create table public.logs(
	id int not null,
	code character varying(5) not null,
	description character varying(50) not null,
	constraint pk_logs primary key(id)
);


