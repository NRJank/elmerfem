IF(HAVE_UMFPACK OR HAVE_MUMPS)
  INCLUDE(${CMAKE_CURRENT_SOURCE_DIR}/../test_macros.cmake)

  CONFIGURE_FILE(buoyancy.sif buoyancy.sif COPYONLY)

  FILE(COPY ELMERSOLVER_STARTINFO README.txt mesh.grd DESTINATION "${CMAKE_CURRENT_BINARY_DIR}/")

  ADD_ELMERICE_TEST(Buoyancy)
  ADD_ELMERICE_LABEL(Buoyancy elmerice-fast)
ENDIF()
