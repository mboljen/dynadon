*KEYWORD
$
$-------------------------------------------------------------------------------
$
*PARAMETER
$#    name       val
R   ENDTIM      1.00
$
$-------------------------------------------------------------------------------
$
*PARAMETER_EXPRESSION
$#    name  expression
R       DT  &ENDTIM/1000.
R    DTPLT  &ENDTIM/50.
$
$-------------------------------------------------------------------------------
$
*CONTROL_TERMINATION
$#  endtim    endcyc     dtmin    endeng    endmas     nosol
   &ENDTIM
$
$-------------------------------------------------------------------------------
$
*CONTROL_TIMESTEP
$#  dtinit    tssfac      isdo    tslimt     dt2ms     lctim     erode     ms1st
                 0.9                                    9999
$
$-------------------------------------------------------------------------------
$
*DEFINE_CURVE_TITLE
$# title
Timestep
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp
      9999         0   &ENDTIM       &DT
$#                a1                  o1
               0.000               1.000
               1.000               1.000
$
$-------------------------------------------------------------------------------
$
*DATABASE_BINARY_D3PLOT
$#      dt      lcdt      beam     npltc    psetid
    &DTPLT
$#   loopt

$
$-------------------------------------------------------------------------------
$
*DEFINE_CURVE_TITLE
$# title
Loadcurve
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp
         1         0   &ENDTIM     1.000
$#                a1                  o1
               0.000               0.000
               1.000               1.000
$
$-------------------------------------------------------------------------------
$
*INCLUDE_PATH_RELATIVE
build
$
$-------------------------------------------------------------------------------
$
*INCLUDE
dynadon.k
$
$-------------------------------------------------------------------------------
$
*INCLUDE_TRANSFORM
$# filename
target.k
$#  indoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff
       1E7       1E7       1E7       1E7       1E7       1E7       1E7
$#  idroff              prefix    suffix
       1E7
$#  fctmas    fcttim    fctlen    fctlen    fcttem   incout1

$   tranid

$
$-------------------------------------------------------------------------------
$
*END
