IF(HAVE_UMFPACK OR HAVE_MUMPS)
  INCLUDE(test_macros)
  INCLUDE_DIRECTORIES(${CMAKE_BINARY_DIR}/fem/src)

  CONFIGURE_FILE( TempDist.sif TempDist.sif COPYONLY)
  ADD_ELMERTEST_MODULE(pmultg Poisson Poisson.f90)

  file(COPY Poisson.f90 square.grd ELMERSOLVER_STARTINFO square  DESTINATION "${CMAKE_CURRENT_BINARY_DIR}/")

  ADD_ELMER_TEST(pmultg)
ENDIF()
