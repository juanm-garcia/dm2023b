# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-inicial/611_CA_reparar_dataset_01.r")
source("~/dm2023b/src/workflow-inicial/621_DR_corregir_drifting_01.r")
source("~/dm2023b/src/workflow-inicial/631_FE_historia_ExpB_01.r")
source("~/dm2023b/src/workflow-inicial/641_TS_training_strategy_ExpB_04.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-inicial/651_HT_lightgbm_ExpB_04.r")
source("~/dm2023b/src/workflow-inicial/661_ZZ_final_ExpB_04.r")
