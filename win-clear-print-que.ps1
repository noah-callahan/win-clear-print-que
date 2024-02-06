#run as system or admin
$printers = Get-Printer | Select-Object -Property Name

foreach ($printer in $printers) {
    try {
        $printJobs = Get-PrintJob -PrinterName $printer.name

        foreach($printJob in $printJobs){

            Remove-PrintJob -InputObject $printJob

        }
    }
    catch {
        continue
    }
}
