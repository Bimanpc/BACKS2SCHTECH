Add-Type -assembly System.Windows.Forms
$main_form = New-Object System.Windows.Forms.Form
$main_form.Text ='PROFESSIONAL FREE HOSTING ProFreeHost 4 Life!!!!! https://profreehost.com/'
$main_form.Width = 500
$main_form.Height = 500
$main_form.AutoSize = $true
$main_form.ShowDialog()