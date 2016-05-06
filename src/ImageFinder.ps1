#Where we're going to start
$destinationpath = "C:\Users\Администратор\Pictures"

#Create a file for report
$reportDest = "C:\ImageFolders.txt"
New-Item -Path $reportDest -Force -ItemType file

#Create a header in report file
$head = "{0,-10} {1,-100}" -f "Size", "Address"
$separatorLine = "-" * 80
Add-Content -Encoding UTF8 -Value $head, $separatorLine -Path $reportDest
     
#Build a list of folders
$folders = Get-childitem $destinationpath -recurse | Where-Object {$_.mode -like "d*"} 

#Iterate trough the list of folders to find large folders with images    
Foreach ($folder in $folders){
    #Count number of images in folder
    $imageNum = (Get-ChildItem -Path $folder.FullName `
    | Where-Object {$_.Extension -in ".jpg",".tiff", ".jpeg", ".png"}).Count
    $totalNum = (Get-ChildItem -Path $folder.FullName).Count
    if ($imageNum -ne 0) {
        $imageCap = $imageNum / $totalNum
        #Find images percentage in folder
        if ($imageCap -ge 0.75){
            $colItems = Get-ChildItem -Path $folder.FullName | Measure-Object -property length -sum
            $gbsize = ($colItems.sum / 1GB)
            #Is folder large enough to count?
            if($gbsize -ge 0.05){
                #Build a formatted string record about folder with images
                $imagefolder = "{0,-10} {1,-100}" -f [math]::Round($gbsize, 2), $folder.FullName
                #Make a record in a report file
                Add-Content -Encoding UTF8 -Value $imagefolder -Path $reportDest
                }
        }      
    }
}