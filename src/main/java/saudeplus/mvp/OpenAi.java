package saudeplus.mvp;
import java.net.http.HttpHeaders;

import org.apache.tomcat.util.http.parser.MediaType;
import org.springframework.http.HttpEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

@Component
public class OpenAi
{
 private static final String OPENAI_URL = "https://api.openai.com/v1/images/generations";

 private final String apiKey = "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";
 private final RestTemplate restTemplate = new RestTemplate();

 public String generateImages(String prompt, float temperature, int maxTokens, Strmaing stop, final int logprobs, final boolean echo)
 {
  HttpHeaders headers = new HttpHeaders();
  headers.setContentType(MediaType.APPLICATION_JSON);
  headers.set("Authorization", "Bearer " + apiKey);

  // We are including only some of the parameters to the json request
  String requestJson = "{\"prompt\":\"" + prompt + "\",\"n\":"+ n + "}";

  HttpEntity<String> request = new HttpEntity<>(requestJson, headers);
  ResponseEntity<String> response = restTemplate.postForEntity(OPENAI_URL, request, String.class);
  return response.getBody();
 }
}