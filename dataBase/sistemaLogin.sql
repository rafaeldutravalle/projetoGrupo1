CREATE TABLE "Usuario" (
  "id" PK,
  "nome" <type>,
  "email" <type>,
  "senha" <type>,
  "perfil_id" FK
);

CREATE TABLE "Perfil" (
  "id" PK,
  "nome" <type>,
  "descricao" <type>,
  "" <type>
);