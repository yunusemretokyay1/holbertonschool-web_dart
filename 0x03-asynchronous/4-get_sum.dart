import 'dart:convert';
import '4-util.dart';

Future<num> calculateTotal() async {
    try {
        final id = json.decode(await fetchUserData())['id'];
        final userOrders = json.decode(await fetchUserOrders(id));

        double total = 0.0;

        // if (userOrders == null) return total; // ?

        for (final product in userOrders) {
            final productPrice = json.decode(await fetchProductPrice(product));
            // if (productPrice == null) continue; // ?
            total += productPrice;
        }

        return total;
    } catch (error) {
        return -1;
    }
}