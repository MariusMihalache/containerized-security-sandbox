rule Detect_Suspicious_Executable
{
    meta:
        description = "Detectează fișiere executabile suspecte pe baza unor stringuri comune malware."
        author = "Marius"
        date = "2025-04-27"

    strings:
        $suspicious_string1 = "h4cked_by" ascii
        $suspicious_string2 = "exploit"
        $suspicious_string3 = "backdoor"
        $suspicious_string4 = "rootkit"

    condition:
        2 of ($suspicious_string*)
}
