SELECT 
    Usuario.nome AS usuario_nome,
    Usuario.email AS usuario_email,
    Perfil.nome AS perfil_nome,
    Perfil.descricao AS perfil_descricao
FROM 
    Usuario
JOIN 
    Perfil ON Usuario.perfil_id = Perfil.id;
