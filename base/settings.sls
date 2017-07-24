{% set p    = salt['pillar.get']('base', {}) %}
{% set g    = salt['grains.get']('base', {}) %}

{%- set base = {} %}
{%- do base.update( {
  'master' : p.get('master', 'agltpccld10.availity.net'),
}) %}
