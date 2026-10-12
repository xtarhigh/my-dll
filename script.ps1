Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form
$form.Text = "My Loader"
$form.Size = New-Object System.Drawing.Size(450, 300)
$form.StartPosition = "CenterScreen"
$form.BackColor = [System.Drawing.Color]::FromArgb(25, 25, 30)

$button = New-Object System.Windows.Forms.Button
$button.Text = "START"
$button.Size = New-Object System.Drawing.Size(150, 45)
$button.Location = New-Object System.Drawing.Point(140, 100)

$button.Add_Click({
    [System.Windows.Forms.MessageBox]::Show("Program Started!")
})

$form.Controls.Add($button)
[void]$form.ShowDialog()