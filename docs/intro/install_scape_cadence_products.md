# Download and installation of InstallScape Tool for Cadence Products

## How to configure the tool in Linux

### **Step 1: Download the InstallScape Tool**

1. **Visit the Download Page**:
   - Based on the information provided, you need to download the **Linux** version of InstallScape.

2. **Download the InstallScape for Linux**:
   - Download the **compressed tar file** for your platform by clicking the appropriate "Download" button for **Linux** (which is 315187200 bytes or ~300.59 MB).

3. **Check for Dependencies**:
   - Ensure that you have **GNU tar** installed to handle the compressed tar file format.

4. **Verify Download** (Optional):
   - Once downloaded, you can verify the integrity of the downloaded file using the checksum if provided by Cadence.

---

### **Step 2: Uncompress and Untar the InstallScape File**

1. **Navigate to the Download Directory**:
   - Open a terminal and navigate to the folder where the compressed tar file is downloaded:

   ```bash
   cd /path/to/downloaded/file
   ```

2. **Uncompress the File**:
   - Use **GNU tar** to extract the compressed tar file:

   ```bash
   tar -xvzf <file-name>
   ```

   - This command extracts the tarball, creating an **InstallScape** folder in the directory.

3. **Navigate to the InstallScape Directory**:
   - Once extracted, navigate into the InstallScape directory:

   ```bash
   cd iscape/bin
   ```

---

### **Step 3: Install the Required Software with InstallScape**

Now that **InstallScape** is ready, you can install your required Cadence products.

1. **Start InstallScape**:
   - You can launch InstallScape GUI by running the following command from the **installscape** directory:

   ```bash
   ./iscape.sh
   ```

2. **Select Installation Mode**:
   - **GUI Mode**: By default, InstallScape opens with a graphical user interface (GUI).
   - **Batch Mode**: If you prefer a command-line installation, you can run InstallScape in batch mode by using the following:

     ```bash
     ./iscape.sh -batch
     ```

     Batch mode is useful for unattended installations or if you're working in an environment without a GUI.

3. **Install Cadence Tools**:
   - Select the Cadence tools you want to install (such as Xcelium, Genus, Innovus, etc.).
   - InstallScape will download and install the selected tools automatically.

---

### **Step 4: Set Up Environment Variables**

1. **Add Cadence Tools to Your Environment**:
   - After installing the tools, you need to add them to your system's **PATH** and set up the license file location.

2. **Edit Your `.bashrc`**:
   - Open your **.bashrc** file (or **.cshrc** if you're using C shell) and add the paths for the installed Cadence tools and license information:

   ```bash
   export CDS_ROOT=<cadence_installation_directory>
   export PATH=$CDS_ROOT/tools/bin:$PATH
   export LM_LICENSE_FILE=<path_to_license_file>
   ```

3. **Reload Your Environment**:
   - Apply the changes by running:

   ```bash
   source ~/.bashrc
   ```

---

### **Step 5: Verify the Installation**

1. **Run a Tool to Verify Installation**:
   - You can verify that the Cadence tools are correctly installed by running the installed tools. For example, to check if **Xcelium** is installed:

   ```bash
   xrun -version
   ```

2. **Check for Errors**:
   - Ensure that there are no missing dependencies or errors during the installation process.

---

### **Optional: Access Documentation**

1. **Access the Help Documentation**:
   - You can access **InstallScape Help**, the **User Guide**, and **White Papers** from the same page where you downloaded the tool, or navigate to the installed directories to find relevant documentation files.

2. **Read White Papers**:
   - Review additional white papers on InstallScape, like:
     - `whitepaper_installscape_internals.pdf`
     - `whitepaper_installscape_batch_mode.pdf`
     - `whitepaper_installscape_archive_directories.pdf`

---

### **System Requirements and Dependencies**

1. **Ensure GNU Tar is Installed**:
   - Install **GNU tar** if it is not already available on your system. You can install it via your package manager (e.g., `yum`, `apt`):

   ```bash
   sudo apt-get install tar   # for Ubuntu/Debian systems
   sudo yum install tar       # for RedHat/CentOS systems
   ```

2. **Check System Compatibility**:
   - Ensure that your **Linux** system is compatible with the **x86_64** architecture. If you're using **ARM** or another architecture, download the appropriate version (e.g., LNARM64 for ARM-based systems).

---

### **Additional Notes**

- **Single Installation**: You only need one InstallScape installation per site, and you can manage multiple Cadence products through this tool.
- **Fast Installations**: InstallScape allows you to quickly install only the necessary components, making it more efficient than manually downloading and extracting full release media images.

By following these steps, you should be able to download, install, and use **InstallScape** to manage your Cadence software installations on Linux effectively.
