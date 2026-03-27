--create database clinicaodonto2;
create schema OdontoBD;
-- Cria a tabela paciente
CREATE TABLE paciente (
    id_paciente SERIAL PRIMARY KEY,
    nome_paciente VARCHAR(100) NOT NULL,
    cpf_paciente VARCHAR(11)  UNIQUE NOT NULL,
    data_nascimento DATE         NOT NULL,
    telefone VARCHAR(15)  NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    endereco VARCHAR(100) NOT NULL
);

-- Cria a tabela dentista
CREATE TABLE dentista (
    id_dentista SERIAL PRIMARY KEY,
    nome_dentista VARCHAR(100) NOT NULL,
    cpf_dentista VARCHAR(11)  UNIQUE NOT NULL,
    cro VARCHAR(20) UNIQUE NOT NULL,
    especialidade VARCHAR(50) NOT NULL
);



-- ENUM é um tipo personalizado que restringe os valores aceitos
CREATE TYPE diasemana AS ENUM ('segunda', 'terça', 'quarta', 'quinta', 'sexta');

-- Cria a tabela horario (agenda de cada dentista)
CREATE TABLE horario (
    id_horario SERIAL PRIMARY KEY,
    id_dentista INT REFERENCES dentista(id_dentista),
    dia_semana diasemana NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fim TIME NOT NULL
);

-- Garante que o status de uma consulta só possa ser um dos três valores definidos, prevenindo inconsistências.
CREATE TYPE statusconsulta AS ENUM ('agendada', 'cancelada', 'realizada');

-- Cria a tabela consulta
CREATE TABLE consulta (
    id_consulta SERIAL PRIMARY KEY,
    id_paciente INT REFERENCES paciente(id_paciente) ON DELETE CASCADE,
    id_dentista INT REFERENCES dentista(id_dentista),
    id_horario INT REFERENCES horario(id_horario),
    data_horario TIMESTAMP NOT NULL,
    descricao_atendimento TEXT,
    prescricao  TEXT,
    status statusconsulta NOT NULL DEFAULT 'agendada'
);

-- Cria a tabela procedimento
CREATE TABLE procedimento (
    id_procedimento  SERIAL PRIMARY KEY,
    nome_procedimento VARCHAR(100),
    descricao_procedimento TEXT,
    duracao_media_min INT
);

-- Tabela de interseção: uma consulta pode ter muitos procedimentos e um procedimento pode aparecer em muitas consultas (N:N)
CREATE TABLE consulta_procedimento (
    id_cons_proc SERIAL PRIMARY KEY,
    id_consulta INT REFERENCES consulta(id_consulta) ON DELETE CASCADE,
    id_procedimento INT REFERENCES procedimento(id_procedimento)
);

select * from paciente