#ifndef BOOSTMATH_MACROS_HPP
#define BOOSTMATH_MACROS_HPP

#define UNARY_BOOST_FUNCTION(name, arg_type) \
  SEXP name##_(SEXP x_) { \
    BEGIN_CPP11 \
    arg_type x = cpp11::as_cpp<arg_type>(x_); \
    auto result = boost::math::name<double>(x); \
    return cpp11::as_sexp(result); \
    END_CPP11 \
  }

#define BINARY_BOOST_FUNCTION(name, arg1_type, arg2_type) \
  SEXP name##_(SEXP x_, SEXP y_) { \
    BEGIN_CPP11 \
    arg1_type x = cpp11::as_cpp<arg1_type>(x_); \
    arg2_type y = cpp11::as_cpp<arg2_type>(y_); \
    auto result = boost::math::name(x, y); \
    return cpp11::as_sexp(result); \
    END_CPP11 \
  }

#define TERNARY_BOOST_FUNCTION(name, arg1_type, arg2_type, arg3_type) \
  SEXP name##_(SEXP x_, SEXP y_, SEXP z_) { \
    BEGIN_CPP11 \
    arg1_type x = cpp11::as_cpp<arg1_type>(x_); \
    arg2_type y = cpp11::as_cpp<arg2_type>(y_); \
    arg3_type z = cpp11::as_cpp<arg3_type>(z_); \
    auto result = boost::math::name(x, y, z); \
    return cpp11::as_sexp(result); \
    END_CPP11 \
  }

#define TERNARY_BOOST_FUNCTION_SUFFIX(name, suffix, arg1_type, arg2_type, arg3_type) \
  SEXP name##_##suffix(SEXP x_, SEXP y_, SEXP z_) { \
    BEGIN_CPP11 \
    arg1_type x = cpp11::as_cpp<arg1_type>(x_); \
    arg2_type y = cpp11::as_cpp<arg2_type>(y_); \
    arg3_type z = cpp11::as_cpp<arg3_type>(z_); \
    auto result = boost::math::name(x, y, z); \
    return cpp11::as_sexp(result); \
    END_CPP11 \
  }

#endif
