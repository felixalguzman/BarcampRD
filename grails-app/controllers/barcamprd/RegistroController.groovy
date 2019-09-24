package barcamprd

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class RegistroController {

    def index() {

        def teatro = Aula.findByLugar("Teatro")
        def charlas = Charla.findAllByAulaNotEqual(teatro).collate(Charla.countByAulaNotEqual(teatro) / 2 as int)

        def charlaHorario = [:]
        def charlaHorario2 = [:]
        boolean ok = false

        for (Charla c : Charla.list()) {
            if (!c.llena) {
                ok = true
                break
            }
        }

        charlas[0].each {
            if (charlaHorario.containsKey(it.horario.value)) {
                charlaHorario[it.horario.value].add(it)
            } else {
                charlaHorario[it.horario.value] = [it]
            }
        }

        charlas[1].each {
            if (charlaHorario2.containsKey(it.horario.value)) {
                charlaHorario2[it.horario.value].add(it)
            } else {
                charlaHorario2[it.horario.value] = [it]
            }
        }

        ['charlas': charlaHorario, 'charlas2': charlaHorario2, ok: ok]
    }

    def registrar() {
        def participante = new Participante()
        participante.cedula = params.cedula
        participante.nombre = params.nombre
        participante.correo = params.email
        participante.sizeCamiseta = params.size
        participante.estado = EstadoRegistro.findByNumero(1000)
        def c1 = params.h_1 != null ? Charla.findById(params.h_1 as long) : null
        def c2 = params.h_2 != null ? Charla.findById(params.h_2 as long) : null
        def c3 = params.h_3 != null ? Charla.findById(params.h_3 as long) : null
        def c4 = params.h_4 != null ? Charla.findById(params.h_4 as long) : null
        def c5 = params.h_5 != null ? Charla.findById(params.h_5 as long) : null
        def c6 = params.h_6 != null ? Charla.findById(params.h_6 as long) : null
        def charlas = [c1, c2, c3, c4, c5, c6]
        def ok = verificarCupoCharla(charlas)

        if (ok) {
            participante.charlas = new ArrayList<Charla>(charlas)
            participante.save(flush: true, failOnError: true)
        }

        redirect(controller: 'registro', action: 'confirmar', params: [ok: ok])
    }

    def verificarCedula() {
        println "verificar data num ${params.data}"

        render Participante.findByCedula(params.data) ? true : false
    }

    def verificarCorreo() {
        println "verificar data correo ${params.data}"
        render Participante.findByCorreo(params.data) ? true : false
    }

    def confirmar() {
        [ok: params.ok]
    }

    def verificarCupoCharla(def listaCharlas) {
        boolean ok = true

        for (Charla c : listaCharlas) {
            if (c != null) {
                if (!c.llena) {
                    c.cantidadParticipantes()++
                    if (c.cantidadParticipantes() >= c.aula.cantidadPersonas)
                        c.llena = true
                    c.save(flush: true, failOnError: true)
                } else {
                    ok = false
                    break
                }
            }
        }
        return ok
    }

    /*def descargarCuadre() {
        def (inicio, fin) = params.data.tokenize('_')
        def tanda = params.tanda as int

        response.setContentType('application/vnd.ms-excel')
        response.setHeader('Content-Disposition', 'Attachment;Filename="registro.xls"')

        WritableWorkbook workbook = Workbook.createWorkbook(response.outputStream)
        WritableSheet sheet1 = workbook.createSheet("Participante", 0)

        WritableFont cellFontTitulo = new WritableFont(WritableFont.TIMES, 12)
        cellFontTitulo.setBoldStyle(WritableFont.BOLD)

        WritableFont cellFont = new WritableFont(WritableFont.TIMES, 12)
        WritableCellFormat cellFormatTitulo = new WritableCellFormat(cellFontTitulo)
        WritableCellFormat cellFormat = new WritableCellFormat(cellFont)
        cellFormatTitulo.setAlignment(Alignment.CENTRE)
        cellFormatTitulo.setVerticalAlignment(VerticalAlignment.CENTRE)
        cellFormatTitulo.setBorder(Border.ALL, BorderLineStyle.THIN)
        cellFormat.setAlignment(Alignment.CENTRE)
        cellFormat.setVerticalAlignment(VerticalAlignment.CENTRE)
        cellFormat.setBorder(Border.ALL, BorderLineStyle.THIN)

        sheet1.addCell(new Label(0, 0, "ID", cellFormatTitulo))
        sheet1.addCell(new Label(1, 0, "Nombre", cellFormatTitulo))
        sheet1.addCell(new Label(2, 0, "Método de Pago", cellFormatTitulo))
        sheet1.addCell(new Label(3, 0, "Fecha", cellFormatTitulo))
        sheet1.addCell(new Label(4, 0, "Monto", cellFormatTitulo))

        

        def totalEfectivo = 0
        def totalTarjeta = 0
        def fs = getCuadre(tanda, inicio as String, fin as String)

        def fsEfectivo = []
        def fsTarjeta = []

        fs.each {
            if (it['metodoPago'] == 'Efectivo') {
                fsEfectivo.add(it)
            } else {
                fsTarjeta.add(it)
            }
        }

        for (int i = 0; i < fsEfectivo.size(); i++) {
            sheet1.addCell(new Label(0, i + 1, fsEfectivo[i]['id'] as String, cellFormat))
            sheet1.addCell(new Label(1, i + 1, fsEfectivo[i]['usuario'] as String, cellFormat))
            sheet1.addCell(new Label(2, i + 1, fsEfectivo[i]['metodoPago'] as String, cellFormat))
            sheet1.addCell(new Label(3, i + 1, fsEfectivo[i]['fecha'] as String, cellFormat))
            sheet1.addCell(new Label(4, i + 1, fsEfectivo[i]['monto'] as String, cellFormat))
            totalEfectivo += fsEfectivo[i]['monto']
        }
        sheet1.mergeCells(0, fsEfectivo.size() + 1, 3, fsEfectivo.size() + 1)
        sheet1.addCell(new Label(0, fsEfectivo.size() + 1, 'Total', cellFormatTitulo))
        sheet1.addCell(new Label(4, fsEfectivo.size() + 1, totalEfectivo as String, cellFormatTitulo))

        for (int i = 0; i < fsTarjeta.size(); i++) {
            sheet1.addCell(new Label(7, i + 1, fsTarjeta[i]['id'] as String, cellFormat))
            sheet1.addCell(new Label(8, i + 1, fsTarjeta[i]['usuario'] as String, cellFormat))
            sheet1.addCell(new Label(9, i + 1, fsTarjeta[i]['metodoPago'] as String, cellFormat))
            sheet1.addCell(new Label(10, i + 1, fsTarjeta[i]['fecha'] as String, cellFormat))
            sheet1.addCell(new Label(11, i + 1, fsTarjeta[i]['monto'] as String, cellFormat))
            totalTarjeta += fsTarjeta[i]['monto']
        }

        sheet1.mergeCells(7, fsTarjeta.size() + 1, 10, fsTarjeta.size() + 1)
        sheet1.addCell(new Label(7, fsTarjeta.size() + 1, 'Total', cellFormatTitulo))
        sheet1.addCell(new Label(11, fsTarjeta.size() + 1, totalTarjeta as String, cellFormatTitulo))

        //PLATOS DESPACHADOS
        def platos = getPlatos(inicio as String, fin as String)

        int i = 0
        platos.each { fecha, map ->
            sheet2.mergeCells(0, i , 1, i)
            sheet2.addCell(new Label(0, i, fecha as String, cellFormatTitulo))
            sheet2.addCell(new Label(0, i + 1, "Nombre Plato", cellFormatTitulo))
            sheet2.addCell(new Label(1, i + 1, "Cantidad", cellFormatTitulo))

            map.each { plato, cantidad ->
                sheet2.addCell(new Label(0, i+2, plato as String, cellFormat))
                sheet2.addCell(new Label(1, i+2, cantidad as String, cellFormat))
                i++
            }
            i += 3
        }

        workbook.write()
        workbook.close()
    }*/
}
