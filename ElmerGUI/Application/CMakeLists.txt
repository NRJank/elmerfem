SET(CMAKE_INCLUDE_CURRENT_DIR ON)
SET(CMAKE_AUTOMOC ON)
SET(CMAKE_AUTORCC ON)
SET(CMAKE_AUTOUIC OFF)
#FIND_PACKAGE(Qt4 COMPONENTS QtOpenGL QtXml QtScript QtGui QtCore REQUIRED)

SET(HEADERS src/bodypropertyeditor.h 
  src/boundarydivision.h 
  src/boundarypropertyeditor.h 
  src/checkmpi.h 
  src/dynamiceditor.h 
  src/edfeditor.h 
  src/egini.h 
  src/generalsetup.h 
  src/glcontrol.h 
  src/glwidget.h 
  src/helpers.h 
  src/mainwindow.h 
  src/materiallibrary.h 
  src/maxlimits.h 
  src/meshcontrol.h 
  src/meshingthread.h 
  src/meshtype.h 
  src/meshutils.h 
  src/operation.h 
  src/parallel.h 
  src/projectio.h 
  src/sifgenerator.h 
  src/sifwindow.h 
  src/solverparameters.h 
  src/summaryeditor.h 
  src/objectbrowser.h 
  src/solverlogwindow.h 
  src/newprojectdialog.h 
  plugins/egconvert.h 
  plugins/egdef.h 
  plugins/egmain.h 
  plugins/egmesh.h 
  plugins/egnative.h 
  plugins/egtypes.h 
  plugins/egutils.h 
  plugins/elmergrid_api.h 
  plugins/nglib_api.h 
  plugins/tetgen.h 
  plugins/tetlib_api.h 
  twod/renderarea.h 
  twod/twodview.h 
  twod/curveeditor.h)


SET(FORMS forms/bodypropertyeditor.ui 
  forms/boundarydivision.ui 
  forms/boundarypropertyeditor.ui 
  forms/generalsetup.ui 
  forms/glcontrol.ui 
  forms/materiallibrary.ui 
  forms/meshcontrol.ui 
  forms/parallel.ui 
  forms/solverparameters.ui 
  forms/summaryeditor.ui
  forms/newproject.ui)


SET(SOURCES src/bodypropertyeditor.cpp 
  src/boundarydivision.cpp 
  src/boundarypropertyeditor.cpp 
  src/checkmpi.cpp 
  src/dynamiceditor.cpp 
  src/edfeditor.cpp 
  src/egini.cpp 
  src/generalsetup.cpp 
  src/glcontrol.cpp 
  src/glwidget.cpp 
  src/helpers.cpp 
  src/main.cpp 
  src/mainwindow.cpp 
  src/materiallibrary.cpp 
  src/maxlimits.cpp 
  src/meshcontrol.cpp 
  src/meshingthread.cpp 
  src/meshtype.cpp 
  src/meshutils.cpp 
  src/operation.cpp 
  src/parallel.cpp 
  src/projectio.cpp 
  src/sifgenerator.cpp 
  src/sifwindow.cpp 
  src/solverparameters.cpp 
  src/summaryeditor.cpp 
  src/solverlogwindow.cpp 
  src/objectbrowser.cpp 
  src/newprojectdialog.cpp
  plugins/egconvert.cpp 
  plugins/egmain.cpp 
  plugins/egmesh.cpp 
  plugins/egnative.cpp 
  plugins/egutils.cpp 
  plugins/elmergrid_api.cpp 
  plugins/nglib_api.cpp 
  plugins/tetlib_api.cpp 
  twod/renderarea.cpp 
  twod/twodview.cpp 
  twod/curveeditor.cpp)

ADD_DEFINITIONS(-DEG_PLUGIN)

IF(WITH_QWT)
  SET(HEADERS ${HEADERS} src/convergenceview.h)
  SET(SOURCES ${SOURCES} src/convergenceview.cpp)
ENDIF(WITH_QWT)

IF(WITH_VTK AND NOT WITHOUT_VTKPOST)
  ADD_DEFINITIONS(-DEG_VTK)
  #FIND_PACKAGE(VTK REQUIRED)
  IF(${VTK_VERSION} VERSION_LESS 8.90)
    INCLUDE(${VTK_USE_FILE})
  ENDIF()
  SET(HEADERS ${HEADERS}
    vtkpost/axes.h 
    vtkpost/featureedge.h 
    vtkpost/vtkpost.h 
    vtkpost/isosurface.h 
    vtkpost/isocontour.h 
    vtkpost/epmesh.h 
    vtkpost/colorbar.h 
    vtkpost/meshpoint.h 
    vtkpost/meshedge.h 
    vtkpost/surface.h 
    vtkpost/preferences.h 
    vtkpost/vector.h 
    vtkpost/readepfile.h 
    vtkpost/streamline.h 
    vtkpost/timestep.h 
    vtkpost/ecmaconsole.h 
    vtkpost/text.h)

  SET(FORMS ${FORMS}
    vtkpost/axes.ui 
    vtkpost/featureedge.ui 
    vtkpost/isosurface.ui 
    vtkpost/isocontour.ui 
    vtkpost/colorbar.ui 
    vtkpost/surface.ui 
    vtkpost/meshpoint.ui 
    vtkpost/meshedge.ui 
    vtkpost/preferences.ui 
    vtkpost/vector.ui 
    vtkpost/readepfile.ui 
    vtkpost/streamline.ui 
    vtkpost/timestep.ui 
    vtkpost/text.ui)

  SET(SOURCES ${SOURCES}
    vtkpost/axes.cpp 
    vtkpost/featureedge.cpp 
    vtkpost/vtkpost.cpp 
    vtkpost/isosurface.cpp 
    vtkpost/isocontour.cpp 
    vtkpost/epmesh.cpp 
    vtkpost/colorbar.cpp 
    vtkpost/meshpoint.cpp 
    vtkpost/meshedge.cpp 
    vtkpost/surface.cpp 
    vtkpost/preferences.cpp 
    vtkpost/vector.cpp 
    vtkpost/readepfile.cpp 
    vtkpost/streamline.cpp 
    vtkpost/timestep.cpp 
    vtkpost/ecmaconsole.cpp 
    vtkpost/text.cpp)

  IF(WITH_MATC)
    SET(HEADERS ${HEADERS} vtkpost/matc.h  vtkpost/mc.h)
    SET(FORMS ${FORMS} vtkpost/matc.ui)
    SET(SOURCES ${SOURCES} vtkpost/matc.cpp)
  ENDIF(WITH_MATC)

ENDIF()

IF(WITH_OCC)

#  set(ELMER_USE_OCC_VARIANT "Official Version"  CACHE STRING  "Official OpenCASCADE version or community edition")
#  set_property(CACHE ELMER_USE_OCC_VARIANT PROPERTY STRINGS
#              "Official Version"
#              "Community Edition"
#  )

  SET(HEADERS ${HEADERS} cad/cadview.h  cad/cadpreferences.h)
  SET(FORMS ${FORMS} cad/cadpreferences.ui)
  SET(SOURCES ${SOURCES} cad/cadview.cpp cad/cadpreferences.cpp)
ENDIF()

IF(WITH_QT6)
  SET(DESIRED_QT_VERSION "6")
  QT6_WRAP_UI(UI_HEADERS ${FORMS})
  QT6_ADD_RESOURCES(UI_RESOURCES ElmerGUI.qrc)
  ADD_DEFINITIONS(-DWITH_QT6)
ELSEIF(WITH_QT5)
  SET(DESIRED_QT_VERSION "5")
  QT5_WRAP_UI(UI_HEADERS ${FORMS})
  QT5_ADD_RESOURCES(UI_RESOURCES ElmerGUI.qrc)
  ADD_DEFINITIONS(-DWITH_QT5)
ELSE()
  SET(DESIRED_QT_VERSION "4")
  QT4_WRAP_UI(UI_HEADERS ${FORMS})
  QT4_ADD_RESOURCES(UI_RESOURCES ElmerGUI.qrc)
  INCLUDE(${QT_USE_FILE})
ENDIF()
ADD_DEFINITIONS(${QT_DEFINITIONS})

IF(MINGW AND WIN32)
  SET(CMAKE_RC_COMPILER_INIT windres)
  ENABLE_LANGUAGE(RC)
  SET(CMAKE_RC_COMPILE_OBJECT
    "<CMAKE_RC_COMPILER> <FLAGS> -O coff <DEFINES> -i <SOURCE> -o <OBJECT>")
  SET(SOURCES ${SOURCES} ElmerGUI.rc)
ENDIF()

ADD_EXECUTABLE(ElmerGUI WIN32 ${SOURCES} ${UI_HEADERS} ${UI_RESOURCES})
SET(CPACK_PACKAGE_EXECUTABLES ElmerGUI "ElmerGUI")

IF(WITH_QT6)
  TARGET_LINK_LIBRARIES(ElmerGUI Qt6::OpenGLWidgets Qt6::Qml Qt6::Xml Qt6::Gui Qt6::Core Qt6::Svg Qt6::Widgets Qt6::PrintSupport Qt6::OpenGLWidgets) 
ELSEIF(WITH_QT5)
  QT5_USE_MODULES(ElmerGUI OpenGL Xml Script Gui Core Svg Widgets PrintSupport)
ENDIF()

TARGET_LINK_LIBRARIES(ElmerGUI ng ${QT_LIBRARIES})
IF(NOT(WIN32) AND NOT(APPLE))
  TARGET_LINK_LIBRARIES(ElmerGUI GL GLU)
ENDIF()

IF(APPLE)
  SET_TARGET_PROPERTIES(ElmerGUI PROPERTIES COMPILE_FLAGS "-framework OpenGL -framework GLU")
  SET_TARGET_PROPERTIES(ElmerGUI PROPERTIES LINK_FLAGS "-Wl,-framework,OpenGL")
ENDIF()


IF(WIN32)
  TARGET_LINK_LIBRARIES(ElmerGUI opengl32 glu32 psapi)
  ADD_DEFINITIONS(-DPSAPI_VERSION=1)
ENDIF(WIN32)

IF(WITH_MATC)
  TARGET_LINK_LIBRARIES(ElmerGUI matc)
ENDIF()

IF(WITH_QWT)
  INCLUDE_DIRECTORIES(${QWT_INCLUDE_DIR})
  TARGET_LINK_LIBRARIES(ElmerGUI ${QWT_LIBRARY})
ENDIF()

IF(WITH_VTK)
  TARGET_LINK_LIBRARIES(ElmerGUI ${VTK_LIBRARIES})
  IF(VTK_MAJOR_VERSION VERSION_LESS 6)
    TARGET_LINK_LIBRARIES(ElmerGUI QVTK)
  ENDIF()
  IF(ELMER_INSTANTIATE_VTK_ARRAY_TEMPLATE)
    TARGET_COMPILE_DEFINITIONS(ElmerGUI PRIVATE ELMER_INSTANTIATE_VTK_ARRAY_TEMPLATE)
  ENDIF()
ENDIF()

IF(WITH_OCC)
  TARGET_LINK_LIBRARIES(ElmerGUI ${ELMER_OCC_LIBS})
  INCLUDE_DIRECTORIES(${OpenCASCADE_INCLUDE_DIR})
  IF(UNIX)
    ADD_DEFINITIONS(-DHAVE_CONFIG_H -DHAVE_IOSTREAM -DHAVE_FSTREAM -DHAVE_LIMITS_H) 
  ELSEIF(WIN32)
    ADD_DEFINITIONS(-DWNT -DCSFDB)
  ENDIF()
ENDIF()

IF(WITH_PYTHONQT)
  MESSAGE(WARNING "PythonQT is not tested.")
  INCLUDE_DIRECTORIES(${PYTHONQT_INCLUDE_DIR} ${PYTHON_INCLUDE_DIR})
  TARGET_LINK_LIBRARIES(ElmerGUI PythonQt)
ENDIF()

IF(NOT(WIN32) AND ELMERSOLVER_RPATH_STRING)
  SET_TARGET_PROPERTIES(ElmerGUI PROPERTIES INSTALL_RPATH "${ELMERSOLVER_RPATH_STRING}")
ENDIF()
INSTALL(TARGETS ElmerGUI RUNTIME DESTINATION "bin" COMPONENT "elmergui")
INSTALL(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/edf DESTINATION "share/ElmerGUI" COMPONENT "elmergui")
INSTALL(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/edf-extra DESTINATION "share/ElmerGUI" COMPONENT "elmergui")

INSTALL(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/icons/TangoElmerGUI DESTINATION "share/ElmerGUI/icons" COMPONENT "elmergui")
