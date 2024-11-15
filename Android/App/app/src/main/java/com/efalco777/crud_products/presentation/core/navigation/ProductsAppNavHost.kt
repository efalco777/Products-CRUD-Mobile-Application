import androidx.compose.runtime.Composable
import androidx.navigation.NavHostController
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.navArgument
import com.efalco777.crud_products.presentation.core.navigation.Screen
import com.efalco777.crud_products.presentation.product.compose.screen.ProductDetailsScreen
import com.efalco777.crud_products.presentation.product.compose.screen.ProductsScreen

@Composable
fun ProductsAppNavHost(
    navController: NavHostController
) {
    NavHost(navController = navController, startDestination = Screen.PRODUCTS_ROUTE) {
        composable(route = Screen.PRODUCTS_ROUTE) {
            ProductsScreen(navController)
        }
        composable(
            route = Screen.PRODUCT_DETAILS_ROUTE,
            arguments = listOf(
                navArgument("id") {
                    type = NavType.IntType
                    nullable = false
                    defaultValue = 0
                }
            )
        ) { entry ->
            val id = entry.arguments?.getInt("id")
            ProductDetailsScreen(productId = id ?: 0)
        }
    }
}

