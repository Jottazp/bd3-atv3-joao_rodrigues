const alunosList = document.querySelector("#students-list");
const form = document.querySelector("#add-student-form");

function renderStudent(doc) {
  let li = document.createElement("li");
  let cod_aluno = document.createElement("span");
  let cod_turma = document.createElement("span");
  let nome = document.createElement("span");
  let cpf = document.createElement("span");
  let rg = document.createElement("span");
  let telefone_aluno = document.createElement("span");
  let telefone_responsavel = document.createElement("span");
  let email = document.createElement("span");
  let data_nascimento = document.createElement("span");
  let excluir = document.createElement("button");

  li.setAttribute("data-id", doc.id);
  cod_aluno.textContent = `Código do Aluno: ${doc.data().cod_aluno}`;
  cod_turma.textContent = `Código da Turma: ${doc.data().cod_turma}`;
  nome.textContent = `Nome: ${doc.data().nome}`;
  cpf.textContent = `CPF: ${doc.data().cpf}`;
  rg.textContent = `RG: ${doc.data().rg}`;
  telefone_aluno.textContent = `Telefone: ${doc.data().telefone_aluno}`;
  telefone_responsavel.textContent = `Telefone Resp.: ${doc.data().telefone_responsavel}`;
  email.textContent = `Email: ${doc.data().email}`;
  data_nascimento.textContent = `Data de Nascimento: ${doc.data().data_nascimento}`;

  excluir.textContent = "Excluir";
  excluir.classList.add("excluir-btn");

  li.appendChild(cod_aluno);
  li.appendChild(cod_turma);
  li.appendChild(nome);
  li.appendChild(cpf);
  li.appendChild(rg);
  li.appendChild(telefone_aluno);
  li.appendChild(telefone_responsavel);
  li.appendChild(email);
  li.appendChild(data_nascimento);
  li.appendChild(excluir);
  
  alunosList.appendChild(li);

  excluir.addEventListener("click", (e) => {
    e.stopPropagation();
    let id = doc.id;
    db.collection("BD3-NoSQL-Firestore").doc(id).delete()
      .then(() => {
        li.remove();
        alert('Aluno excluído com sucesso!');
      })
      .catch(error => {
        console.error("Erro ao excluir aluno: ", error);
        alert('Erro ao excluir aluno!');
      });
  });
}

// Carregar alunos
function loadStudents() {
  alunosList.innerHTML = '';
  db.collection("BD3-NoSQL-Firestore").get()
    .then((snapshot) => {
      snapshot.docs.forEach((doc) => {
        renderStudent(doc);
      });
    })
    .catch(error => {
      console.error("Erro ao carregar alunos: ", error);
      alert('Erro ao carregar lista de alunos!');
    });
}

// Carregar lista inicial
loadStudents();

// Adicionar novo aluno
form.addEventListener("submit", (e) => {
  e.preventDefault();

  const aluno = {
    cod_aluno: form.cod_aluno.value,
    cod_turma: form.cod_turma.value,
    nome: form.nome.value,
    cpf: form.cpf.value,
    rg: form.rg.value,
    telefone_aluno: form.telefone_aluno.value,
    telefone_responsavel: form.telefone_responsavel.value,
    email: form.email.value,
    data_nascimento: form.data_nascimento.value
  };

  db.collection("BD3-NoSQL-Firestore").doc(aluno.cod_aluno)
    .set(aluno)
    .then(() => {
      form.reset();
      loadStudents();
      alert('Aluno cadastrado com sucesso!');
    })
    .catch(error => {
      console.error("Erro ao cadastrar aluno: ", error);
      alert('Erro ao cadastrar aluno!');
    });
});
