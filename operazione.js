function onResponse(response){
    console.log('Risposta ricevuta');
    return response.json();
}

function onError(error){
    console.log('Error:'+ error);
}

function onJson(json){
    const lista=document.querySelector("#risultato");
    lista.innerHTML='';
    const doc=json;

    for(let i in doc){
        const tot=document.createElement("div");
        lista.appendChild(tot);
        const nome_corso=doc[i].Corso;
        const orario=doc[i].Orario;
        const immagine=doc[i].Immagine;
        const istruttore=doc[i].Istruttore;
        
        const nome_c=document.createElement("h1");
        nome_c.textContent=nome_corso;
        tot.appendChild(nome_c);
        const ora=document.createElement("h4");
        ora.textContent=orario;
        tot.appendChild(ora);
        const imm=document.createElement("img");
        imm.src=immagine;
        tot.appendChild(imm);
        const istr=document.createElement("p");
        istr.textContent="L'istruttore che terrà il corso è: "+istruttore+".";
        tot.appendChild(istr);

    }
}

function nome_piscina(event){
    const nome=document.querySelector("#corsi").value;
    console.log(nome);

    fetch("caricamento_offerte.php?piscina="+nome).then(onResponse).then(onJson,onError);
    event.preventDefault();
}
document.querySelector("#info").addEventListener("submit",nome_piscina);