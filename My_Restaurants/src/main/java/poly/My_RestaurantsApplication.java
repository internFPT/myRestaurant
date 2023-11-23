package poly;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import poly.config.StorageProperties;

@SpringBootApplication
@EnableConfigurationProperties(StorageProperties.class)
public class My_RestaurantsApplication {

	public static void main(String[] args) {
		SpringApplication.run(My_RestaurantsApplication.class, args);
	}

}
