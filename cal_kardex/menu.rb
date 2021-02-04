#!/usr/bin/env ruby
require "./materia.rb"
require "./nivel.rb"
#require "./sqlite_controller.rb"
class Menu
  attr_accessor :niveles
  def initialize(niveles=[])
    @niveles=niveles
  end

  def add_nivel(nivel=0,materias=[],nombre="")
    @niveles.push(Nivel.new(nivel,materias,nombre))
  end

  def add_materia_of_nivel(index=0,nombre="",calificacion=0)
    @niveles[index].add_materia(nombre,calificacion)
  end

  def get_prom_by_levels()
    str=""
    @niveles.each{|i|str+=i.get_str_prom}
    str
  end
  def get_prom_gral()
    calc_t=0
    num_t=0
    @niveles.each{|i|calc_t+=i.get_suma_cal();num_t+=i.get_num_materias()}
    "\tTotal de materias cursadas: #{num_t}\n\tPromedio general:"+
      " #{sprintf("%.3f",calc_t.to_f/num_t.to_f)}"
  end

  def get_materias_by_levels()
    str=""
    @niveles.each{|i|str+="\t#{sprintf("%35s nivel",i.nombre)}\n#{i.get_materias}\n"}
    str
  end
end
