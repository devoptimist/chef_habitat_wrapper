$pkg_origin = $Args[0]
$pkg_name = $Args[1]

echo "pkg_origin is $pkg_origin"
echo "pkg_name is $pkg_name"

Set-ExecutionPolicy Bypass -Scope Process -Force
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/habitat-sh/habitat/master/components/hab/install.ps1'))
hab license accept

$dir = "/tmp/kitchen/data"
$latest = Get-ChildItem -Path $dir -Filter *.hart | Sort-Object LastAccessTime -Descending | Select-Object -First 1

$latest_hart_file = "$dir/$latest"
echo "Latest hart file is $latest_hart_file"

echo "Installing $latest_hart_file"
hab pkg install $latest_hart_file

echo "Determing pkg_prefix for $latest_hart_file"
$pkg_prefix = hab pkg path $pkg_origin/$pkg_name

echo "Found $pkg_prefix"

echo "{\"bootstrap_mode\": true}" > /tmp/results/tmp_bootstrap.json
[System.IO.File]::WriteAllLines("/tmp/results/bootstrap.json", (Get-Content -Path /tmp/results/tmp_bootstrap.json))

cd $pkg_prefix

if ($bootstrap) { 
  Write-Host "bootstrap is set"
  hab pkg exec $pkg_origin/$pkg_name chef-client -z -j /tmp/results/bootstrap.json -c $pkg_prefix/config/bootstrap-config.rb --chef-license accept-no-persist
} else {
  hab pkg exec $pkg_origin/$pkg_name chef-client -z -c $pkg_prefix/config/bootstrap-config.rb --chef-license accept-no-persist
}

rm /tmp/results/bootstrap.json
rm /tmp/results/tmp_bootstrap.json
