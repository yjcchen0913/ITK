WRAP_INCLUDE("set")

WRAP_CLASS("itk::VectorContainer" POINTER)
  foreach(d ${WRAP_ITK_DIMS})
    foreach(t ${WRAP_ITK_SCALAR})
      WRAP_TEMPLATE("${ITKM_UI}${ITKM_LSN${t}${d}}"  "${ITKT_UI},${ITKT_LSN${t}${d}}")
    endforeach(t)

    WRAP_TEMPLATE("${ITKM_UL}${ITKM_VD${d}}"    "${ITKT_UL},${ITKT_VD${d}}")
    WRAP_TEMPLATE("${ITKM_UL}${ITKM_PD${d}}"    "${ITKT_UL},${ITKT_PD${d}}")
    WRAP_TEMPLATE("${ITKM_UC}${ITKM_O${d}}"    "${ITKT_UC},${ITKT_O${d}}")
    WRAP_TEMPLATE("${ITKM_UI}${ITKM_CID${d}}"    "${ITKT_UI},${ITKT_CID${d}}")
  endforeach(d)
  WRAP_TEMPLATE("${ITKM_UL}${ITKM_D}"    "${ITKT_UL},${ITKT_D}")
  WRAP_TEMPLATE("${ITKM_UC}${ITKM_D}"    "${ITKT_UC},${ITKT_D}")
  # used in FastMarchingExtensionImageFilter
  WRAP_TEMPLATE("${ITKM_UI}${ITKM_VUC1}"    "${ITKT_UI},${ITKT_VUC1}")
  WRAP_TEMPLATE("${ITKM_UL}SUL"    "${ITKT_UL}, std::set< unsigned long >")
END_WRAP_CLASS()

WRAP_CLASS("itk::DataObjectDecorator" POINTER)
  WRAP_TEMPLATE("VC${ITKM_UC}${ITKM_D}" "itk::VectorContainer< ${ITKT_UC}, ${ITKT_D} >")
END_WRAP_CLASS()
