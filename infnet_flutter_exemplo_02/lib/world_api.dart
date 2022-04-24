import 'package:testando/worldpopulation.dart';
import 'dart:convert';

class WorldApi {
  Future<dynamic> _get() async {
    return jsonDecode(jsonString);
  }

  Future<List<WorldPopulation>> loadJsonFromApi() async {
    List<dynamic> responseJon = await _get();
    List<WorldPopulation> worldpopulation = new List();
    responseJon.forEach((map) => worldpopulation.add(WorldPopulation.fromJson(map)));
    return worldpopulation;
  }

  String jsonString = "[" +
      "{" +
      "\"rank\":1,\"country\":\"China\"," +
      "\"population\":\"1,354,040,000\"," +
      "\"flag\":\"https://cdn11.bigcommerce.com/s-e2nupsxogj/product_images/uploaded_images/china-flags-cat.png\"" +
      "}," +
      "{" +
      "\"rank\":2,\"country\":\"India\"," +
      "\"population\":\"1,210,193,422\"," +
      "\"flag\":\"https://cdn11.bigcommerce.com/s-e2nupsxogj/product_images/uploaded_images/india-flags-cat.png\"" +
      "}," +
      "{" +
      "\"rank\":3,\"country\":\"United States\"," +
      "\"population\":\"315,761,000\"," +
      "\"flag\":\"https://cdn11.bigcommerce.com/s-e2nupsxogj/product_images/uploaded_images/usa.png\"" +
      "}," +
      "{" +
      "\"rank\":4,\"country\":\"Indonesia\"," +
      "\"population\":\"237,641,326\"," +
      "\"flag\":\"https://cdn11.bigcommerce.com/s-e2nupsxogj/product_images/uploaded_images/indonesia-flags-cat.png\"" +
      "}," +
      "{" +
      "\"rank\":5,\"country\":\"Brazil\"," +
      "\"population\":\"193,946,886\"," +
      "\"flag\":\"https://cdn11.bigcommerce.com/s-e2nupsxogj/product_images/uploaded_images/brazil-flags-cat.png\"" +
      "}," +
      "{" +
      "\"rank\":6,\"country\":\"Pakistan\"," +
      "\"population\":\"182,912,000\"," +
      "\"flag\":\"https://cdn11.bigcommerce.com/s-e2nupsxogj/product_images/uploaded_images/pakistan-flags-cat.png\"" +
      "}," +
      "{" +
      "\"rank\":7,\"country\":\"Nigeria\"," +
      "\"population\":\"170,901,000\"," +
      "\"flag\":\"https://cdn11.bigcommerce.com/s-e2nupsxogj/product_images/uploaded_images/nigeria-flags-cat.png\"" +
      "}," +
      "{" +
      "\"rank\":8,\"country\":\"Bangladesh\"," +
      "\"population\":\"152,518,015\"," +
      "\"flag\":\"https://cdn11.bigcommerce.com/s-e2nupsxogj/product_images/uploaded_images/bangladesh-flags-cat.png\"" +
      "}," +
      "{" +
      "\"rank\":9,\"country\":\"Russia\"," +
      "\"population\":\"143,369,806\"," +
      "\"flag\":\"https://cdn11.bigcommerce.com/s-e2nupsxogj/product_images/uploaded_images/russia-flags-cat.png\"" +
      "}," +
      "{" +
      "\"rank\":10,\"country\":\"Japan\"," +
      "\"population\":\"127,360,000\"," +
      "\"flag\":\"https://cdn11.bigcommerce.com/s-e2nupsxogj/product_images/uploaded_images/japan-flags-cat.png\"" +
      "}]";
}
