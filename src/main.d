import std.stdio;
import std.file;
import std.string;

void displayAsciiArt(string filePath) {
    string asciiArt = readText(filePath);
    writeln(asciiArt);
}

void mainOptions() {
    try {
        writeln("Choose the main option you want to execute:");
        writeln("1. Search for files");
        writeln("2. Modify SSH Config");
        writeln("3. Add minimum passwd of 8");
        writeln("4. Remove packages");
        writeln("5. List all the Forensics_Questions");
        writeln("6. Find all users crontabs");
        writeln("7. Lightdm configure");
        writeln("8. Update the system");
        writeln("9. List unauth users");
        writeln("10. Change all user passwords");

        string choice;
        readf(" %s", &choice);

        switch(choice) {
            case "1":
                search_files();
                break;
            case "2":
                modify_ssh_config();
                break;
            case "3":
                passwdMinimum();
                break;
            case "4":
                remove_packages();
                break;
            case "5":
                search_and_display_files();
                break;
            case "6":
                list_crontabs();
                break;
            case "7":
                lightdm_configure();
                break;
            case "8":
                update_system();
                break;
            case "9":
                check_unauthorized_users();
                break;
            case "10":
                change_passwords();
                break;
            default:
                writeln("Invalid choice");
        }
    } catch(Exception e) {
        writeln("Error: ", e.msg);
    }
}

void main() {
    displayAsciiArt("ascii_art.txt");
    mainOptions();
}
