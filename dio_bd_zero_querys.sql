use bd_zero;

select * from ordem_service where status_os != 'consertado';

select e.nome_equipe, concat(m.fname, '  ',m.lname) as completName, m.especialidade
from equipe_mecanico em
join equipe e on em.idequipe = e.idequipe
join mecanico m on em.idmecanico = m.idmecanico
where e.nome_equipe = 'equipe 1';

select os.idos, os.descricao_problema, s.type_tarefa, s.valor_calculado
from mao_obra mo
join ordem_service os on mo.idos = os.idos
join service s on mo.idservice = s.idservice;


select os.idos, p.type_peca, osp.quantidade, p.valor_peca, (osp.quantidade * p.valor_peca) as total
from os_peca osp
join ordem_service os on osp.idos = os.idos
join peca p on osp.idpeca = p.idpeca
where osp.quantidade > 1
group by os.idos, p.type_peca, osp.quantidade, p.valor_peca
having total > 250;

