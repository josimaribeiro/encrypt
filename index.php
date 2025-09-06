<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <title>Prof. Josimar</title>
    <link href="./css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <center>
    <form method="POST">
        <h2>Criptografar Texto</h2>
        <label for="texto">Texto:</label>
        <textarea name="texto" id="texto" required autofocus></textarea><br><br>

        <label for="chave">Chave (senha):</label>
        <input type="password" name="chave" id="chave" required><br><br>

        <input type="submit" class="btn btn-success" value="Salvar">

        <a href="visualizar.php" class="btn btn-primary">Ver</a>
    </form>

    <?php
    // Incluir o arquivo de conexão
    include 'conexao.php';

    // Verificar se o formulário foi submetido
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // Pegando os dados do formulário
        $texto = $_POST['texto'];
        $chave = $_POST['chave'];

        // Criar um hash da chave usando SHA1 (ou MD5)
        $chave_hash = sha1($chave); // Para usar MD5, use md5($chave)

        // Criptografar o texto usando a chave hash
        $encrypted_text = openssl_encrypt($texto, 'AES-128-ECB', $chave_hash, 0, "");

        // Inserir no banco de dados
        $stmt = $connect->prepare("INSERT INTO encrypted_data (encrypted_text, encryption_key) VALUES (?, ?)");
        $stmt->bind_param("ss", $encrypted_text, $chave_hash); // "ss" porque são duas strings
        $stmt->execute();
    ?>
        <!-- A mensagem de sucesso será exibida abaixo do formulário -->
        <div class="message">Texto criptografado e salvo com sucesso!</div>
    <?php
    }
    ?>
</body>

</html>
