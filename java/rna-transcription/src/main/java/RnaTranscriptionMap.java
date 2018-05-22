import java.util.HashMap;

public class RnaTranscriptionMap {
    private static final RnaTranscriptionMap rnaTranscriptionMapInstance = new RnaTranscriptionMap();
    private HashMap<String, String> transcriptionMap;

    private RnaTranscriptionMap() {
        this.transcriptionMap = new HashMap<String, String>();

        transcriptionMap.put("C", "G");
        transcriptionMap.put("G", "C");
        transcriptionMap.put("T", "A");
        transcriptionMap.put("A", "U");
    }

    public HashMap<String, String> getTranscriptionMap() {
        return transcriptionMap;
    }

    public static synchronized RnaTranscriptionMap getInstance() {
        return rnaTranscriptionMapInstance;
    }
}