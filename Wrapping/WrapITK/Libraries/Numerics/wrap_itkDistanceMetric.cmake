WRAP_CLASS("itk::Statistics::DistanceMetric" POINTER)
  foreach(d ${WRAP_ITK_DIMS})
    WRAP_TEMPLATE("${ITKM_VF${d}}"  "${ITKT_VF${d}}")
  endforeach(d)
END_WRAP_CLASS()
