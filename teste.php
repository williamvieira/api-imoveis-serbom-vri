<?php 

function maskToFloat($value) {
    // Remove the "R$" symbol and spaces
    $value = str_replace(['R$', ' ', '.'], ['', '', ''], $value);
    
    // Replace the comma with a dot for decimal formatting
    $value = str_replace(',', '.', $value);
    
    // Convert the string to a float
    return (float) $value;
}

$valor = "R$ 399,00";
$valorFloat = maskToFloat($valor);

echo $valorFloat;  // Output: 399.00
