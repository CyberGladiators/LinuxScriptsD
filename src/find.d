import std.stdio;
import std.file;
import std.string;

void searchFiles() {
    writeln("Choose the type of file you want to search for:");
    writeln("1. mp3");
    writeln("2. png");
    writeln("3. mp4");
    writeln("4. jpeg");
    writeln("5. jpg");
    writeln("6. webp");

    string choice;
    readf(" %s", &choice);

    string fileType;

    switch(choice) {
        case "1":
            fileType = "mp3";
            break;
        case "2":
            fileType = "png";
            break;
        case "3":
            fileType = "mp4";
            break;
        case "4":
            fileType = "jpeg";
            break;
        case "5":
            fileType = "jpg";
            break;
        case "6":
            fileType = "webp";
            break;
        default:
            writeln("Invalid choice");
            return;
    }

    foreach(string dir; dirEntries("/", SpanMode.depth)) {
        if(dir.endsWith("." ~ fileType)) {
            writeln(dir);
        }
    }
}

void main() {
    searchFiles();
}
