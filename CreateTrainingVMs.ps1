Write-Output "Creating New VM Switch in Hyper-V";
New-VMSwitch -name InternalSwitch -SwitchType Internal;
Write-Output "Creating New Training VMs: TrainingVM1 and TrainingVM2";
New-VM -Name TrainingVM1 -MemoryStartupBytes 4GB -BootDevice VHD -NewVHDPath .\VMs\Win10_1.vhdx -Path .\VMData -NewVHDSizeBytes 20GB -Generation 2 -Switch InternalSwitch;
New-VM -Name TrainingVM2 -MemoryStartupBytes 4GB -BootDevice VHD -NewVHDPath .\VMs\Win10_2.vhdx -Path .\VMData -NewVHDSizeBytes 20GB -Generation 2 -Switch InternalSwitch;