divert(-1)

include(hippocrene.m4)

  define(`kronos', `syscmd(`date +%s')')
  define(`Fn', `substr(helicon(`$1'), 25, 35)substr(helicon(`$1'), 0, 25)')
  define(`Cn', `substr(helicon(`$1'),  0, 60)substr(helicon(`$1'), 0,  0)')
  define(`Gn', `substr(helicon(`$1'), 35, 25)substr(helicon(`$1'), 0, 35)')
  define(`Dn', `substr(helicon(`$1'), 10, 50)substr(helicon(`$1'), 0, 10)')
  define(`An', `substr(helicon(`$1'), 45, 15)substr(helicon(`$1'), 0, 45)')
  define(`En', `substr(helicon(`$1'), 20, 40)substr(helicon(`$1'), 0, 20)')
  define(`Bn', `substr(helicon(`$1'), 55,  5)substr(helicon(`$1'), 0, 55)')

divert

    define(`qp', `j36')dnl
	qp-format(`%s', kronos)dnl
	Fn(qp)
	Cn(qp)
	Gn(qp)
	Dn(qp)
	An(qp)
	En(qp)
	Bn(qp)


    pushdef(`qp', `k15')dnl
	qp-format(`%s', kronos)dnl
	Fn(qp)
	Cn(qp)
	Gn(qp)
	Dn(qp)
	An(qp)
	En(qp)
	Bn(qp)

  popdef(`qp')dnl

m4exit

