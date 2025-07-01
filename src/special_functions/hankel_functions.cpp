#include <cpp11.hpp>
#include <cpp11/declarations.hpp>
#include <boost/math/special_functions/hankel.hpp>
#include "../boostmath/complex_interop.hpp"
#include "../boostmath/macros.hpp"

BINARY_BOOST_FUNCTION(cyl_hankel_1, double, double)
BINARY_BOOST_FUNCTION(cyl_hankel_2, double, double)
BINARY_BOOST_FUNCTION(sph_hankel_1, double, double)
BINARY_BOOST_FUNCTION(sph_hankel_2, double, double)
