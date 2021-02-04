#!/usr/bin/env ruby
require "./materia.rb"
class Nivel
  attr_reader :nivel,:nombre
  attr_accessor :materias
  def initialize(nivel=0,materias=[],nombre="")
    @nivel=nivel
    @materias=materias
    @nombre=nombre
  end

  def add_materia(nombre="",calificacion=0)
    @materias.push(Materia.new(nombre,calificacion))
  end

  def get_suma_cal()
    calc=0
    @materias.each{|i|calc+=i.calificacion}
    calc
  end

  def get_num_materias()
    @materias.length()
  end

  def get_str_prom()
    "#{@nombre} nivel con #{get_num_materias()} " +
      "materia(s) cursadas y promedio "+
      "#{sprintf("%.3f",get_suma_cal().to_f/get_num_materias())}\n"
  end

  def get_materias()
    str=""
    @materias.each{|i|str+="| #{sprintf("%49s",i.nombre)}  |  #{i.calificacion}\t|\n"}
    str
  end
end
