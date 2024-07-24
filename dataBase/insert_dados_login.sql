INSERT INTO Perfil (nome, descricao) VALUES
('Admin', 'Administrador do sistema'),
('Usuario', 'Usuário comum do sistema'),
('Moderador', 'Moderador do sistema');

INSERT INTO Usuario (nome, email, senha, perfil_id) VALUES
('João Silva', 'joao.silva@example.com', 'senha123', 1),
('Maria Souza', 'maria.souza@example.com', 'senha456', 2),
('Carlos Oliveira', 'carlos.oliveira@example.com', 'senha789', 3);