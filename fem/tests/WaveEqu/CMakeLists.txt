IF(HAVE_UMFPACK OR HAVE_MUMPS)
  INCLUDE(test_macros)
  INCLUDE_DIRECTORIES(${CMAKE_BINARY_DIR}/fem/src)

  CONFIGURE_FILE( ptest.sif ptest.sif COPYONLY)

  file(COPY square.grd ELMERSOLVER_STARTINFO  DESTINATION "${CMAKE_CURRENT_BINARY_DIR}/")

  ADD_ELMER_TEST(WaveEqu LABELS quick)
ENDIF()
