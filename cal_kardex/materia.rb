#!/usr/bin/env ruby
class Materia
  attr_reader :nombre,:calificacion
  def initialize(nombre="",calificacion=0)
    @nombre=nombre
    @calificacion=calificacion
  end
end
