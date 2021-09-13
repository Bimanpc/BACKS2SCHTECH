[Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Null
Add-Type -AssemblyName System.Windows.Forms

# for talking across runspaces.
$sync = [Hashtable]::Synchronized(@{})

# long running task.
$counter = {
  $count = [PowerShell]::Create().AddScript({
    $sync.button.Enabled = $false

    for ($i = 0; $i -le 20; $i++) {
      $sync.label.Text = $i
      start-sleep -seconds 1
    }

    $sync.button.Enabled = $true
  })

  $runspace = [RunspaceFactory]::CreateRunspace()
  $runspace.ApartmentState = "STA"
  $runspace.ThreadOptions = "ReuseThread"
  $runspace.Open()
  $runspace.SessionStateProxy.SetVariable("sync", $sync)

  $count.Runspace = $runspace
  $count.BeginInvoke()
}

# create the form.
$form = New-Object Windows.Forms.Form
$form.ClientSize = New-Object Drawing.Size(200, 60)
$form.Text = "Counter"
$form.StartPosition = "CenterScreen"
$form.FormBorderStyle = "FixedSingle"
$form.MaximizeBox = $false

# create the button.
$button = New-Object Windows.Forms.Button
$button.Location = New-Object Drawing.Point(10, 10)
$button.Width = 180
$button.Text = "ΠΑΜΕ ΓΕΡΑ !!!"
$button.Add_Click($counter)

# create the label.
$label = New-Object Windows.Forms.Label
$label.Location = New-Object Drawing.Point(10, 38)
$label.Width = 100
$label.Text = 0

# add controls to the form.
$sync.button = $button
$sync.label = $label
$form.Controls.AddRange(@($sync.button, $sync.label))

# show the form.
[Windows.Forms.Application]::Run($form)