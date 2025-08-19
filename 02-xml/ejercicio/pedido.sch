<schema xmlns="http://purl.oclc.org/dsdl/schematron">
  <pattern id="validacion-total">
    <rule context="pedido">
      <assert test="total = sum(for $i in items/item return number($i/cantidad) * number($i/precioUnitario))">
        El valor de total no coincide con la suma de cantidad * precioUnitario de los ítems.
      </assert>
    </rule>
  </pattern>
</schema>