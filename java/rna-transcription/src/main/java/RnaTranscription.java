import java.util.Arrays;
import java.util.HashMap;

class RnaTranscription {
    public String transcribe(String dnaStrand) {
        String[] rnaArray = Arrays.stream(dnaStrand.split(""))
            .map(character -> convertToRna(character))
            .toArray(String[]::new);

        return String.join("", rnaArray);
    }

    private String convertToRna(String dna) {
        dna = dna.toUpperCase();

        HashMap<String, String> rnaTranscriptionMap = RnaTranscriptionMap.getInstance().getTranscriptionMap();

        if (rnaTranscriptionMap.containsKey(dna)) {
            return rnaTranscriptionMap.get(dna);
        }

        return "X";
    }
}
