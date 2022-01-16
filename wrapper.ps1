######################################################################

#                                                                    #

# Download and Unzip GitHub Repository                               #

# Author: Sandro Pereira                                             #

#                                                                    #

######################################################################

 

function DownloadGitHubRepository 

{ 

    param( 

       [Parameter(Mandatory=$True)] 

       [string] $Name, ${{ env.OWNER }}

         

       [Parameter(Mandatory=$True)] 

       [string] $Author, ${{ env.REPO }} 

         

       [Parameter(Mandatory=$False)] 

       [string] $Branch = "main ", 

         

       [Parameter(Mandatory=$False)] 

       [string] $Location = "c:\"

    ) 

     

    # Force to create a zip file 

    $ZipFile = "$location\workflow.zip"

    New-Item $ZipFile -ItemType Pythonfile -Force

 

    #$RepositoryZipUrl = "https://github.com/sandroasp/Microsoft-Integration-and-Azure-Stencils-Pack-for-Visio/archive/master.zip"

    $RepositoryZipUrl = "https://api.github.com/repos/$Author/$Name/zipball/$Branch" 

    # download the zip 

    Write-Host 'Starting downloading the GitHub Repository'

    Invoke-RestMethod -Uri $RepositoryZipUrl -OutFile $ZipFile

    Write-Host 'Download finished'

 

    #Extract Zip File

    Write-Host 'Starting unzipping the GitHub Repository locally'

    Expand-Archive -Path $ZipFile -DestinationPath $location -Force

    Write-Host 'Unzip finished'

     

    # remove the zip file

    Remove-Item -Path $ZipFile -Force

}
