package saudeplus.mvp;


import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

@Component
public class OpenAi {
    private static final String OPENAI_URL = "https://api.openai.com/v1/images/generations";

    private final String apiKey = "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";
    private final RestTemplate restTemplate = new RestTemplate();

    public String generateImages(String prompt, float temperature, int maxTokens) {
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        headers.set("Authorization", "Bearer " + apiKey);

        String requestJson = "{\"prompt\":\"" + prompt + "\",\"n\":" + ",\"temperature\":" + temperature + ",\"max_tokens\":" + maxTokens + "}";

        HttpEntity<String> request = new HttpEntity<>(requestJson, headers);
        ResponseEntity<String> response = restTemplate.postForEntity(OPENAI_URL, request, String.class);
        return response.getBody();
    }
}
