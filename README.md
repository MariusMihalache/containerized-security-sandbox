# containerized-security-sandbox
Un sandbox open-source de analiză malware într-un container, cu Wireshark, ClamAV, YARA și monitorizare de activitate.
Containerized Security Sandbox 🛡️
Un sandbox open-source de analiză malware într-un container izolat, folosind:

Wireshark pentru capturarea traficului de rețea

ClamAV pentru scanarea antivirus

YARA pentru detectarea semnăturilor malware

Monitorizarea activității în timp real

⚙️ Cum funcționează
Acest sandbox rulează într-un container Docker și:

Capturează traficul de rețea în timp real

Scanează periodic fișierele pentru semnături malware

Listează procesele active

Actualizează automat semnăturile antivirus

📦 Ce conține proiectul

Fișier	Descriere
Dockerfile	Definim imaginea Docker, instalăm toate programele necesare (Wireshark, ClamAV, YARA).
docker-compose.yml	Pornim ușor serviciul folosind Docker Compose, mapăm foldere locale pentru rezultate.
scripts/entrypoint.sh	Script principal care rulează la pornirea containerului, inițiază serviciile.
scripts/capture-activity.sh	Script care capturează traficul, face scanări și salvează loguri periodic.
yara-rules/	Folder unde poți pune regulile YARA personalizate pentru detectarea de malware.
logs/	Folder generat automat unde se salvează toate capturile și logurile de activitate.
🚀 Cum folosești
1. Clonează repository-ul: git clone https://github.com/<numele-tău>/containerized-security-sandbox.git
cd containerized-security-sandbox
2. Build și rulare: docker-compose up --build
3. Intră în container și plasează fișiere suspecte pentru analiză: docker exec -it security_sandbox bash

📈 Rezultate
Capturile de rețea sunt salvate în logs/network_capture.pcap

Rezultatele scanărilor YARA și ClamAV sunt salvate în logs/

Procesele active sunt salvate în logs/processes.log

🔒 Notă de Securitate
Acest sandbox nu este recomandat pentru analiza malware extrem de avansat sau auto-evadant.

Recomand utilizarea într-un mediu de test izolat (VM, rețea separată).

📜 Licență
Acest proiect este licențiat sub Licența MIT – vezi fișierul LICENSE pentru detalii.

