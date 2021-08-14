import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.stream.Collectors;
import java.util.Map;

public class KeyHints {
   public static void main(String... args) throws Exception {
      if (args.length != 1) return;
      Map<String, String> lines = Files.lines(Paths.get(args[0]))
         .map(x -> x.strip())
         .filter(x -> x.startsWith("bindsym") && x.contains("$mod"))
         .map(x -> {
               x = x.replaceAll("[ |\t]+", " ").substring(x.indexOf("$"));
               return x.split(" ", 2);
         }).collect(Collectors.toMap(x1 -> x1[0], x2 -> x2[1]));
      lines.forEach((k,v) -> System.out.println(k + " : " + v));
   }
}
