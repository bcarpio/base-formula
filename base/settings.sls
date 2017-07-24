{% set p    = salt['pillar.get']('metricbeat', {}) %}
{% set g    = salt['grains.get']('metricbeat', {}) %}

{%- set base = {} %}
{%- do base.update( {
  'master' : p.get('master', 'agltpccld10.availity.net'),
}) %}
