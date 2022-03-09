#' Risk - tempertaure
#' 
#' This function aims to compute a level of risk associated with extreme temperature events
#' We are using an index that scores between 2 and 6, where higher numbers indcate more risk
#' @param temp (in celsius (C))
#' @param age (risk in years (years))
#' @return associated_risk 
#' @return days of risk
#'
risk = function(temp, age) {
  # equation for extreme temp
  temp_risk = case_when(temp < 20 ~ "low", temp >= 20 & temp <= 29 ~ "medium", temp >29 ~ "high")
  
  
  # age risk
  age_risk = case_when(age >= 60 ~ "high", age < 60 & age >= 35 ~ "medium", age < 35 ~ "low")
  
  # age error checking
  
  if(age_risk < 0)
    {return("Can't measure risk if you don't exist!")}
  
  #temp risk
  else{         
  if(temp_risk == "high" && age_risk == "high") {risk_exp = 6}
  
  if(temp_risk == "medium" && age_risk == "high") {risk_exp = 5}
  
  if(temp_risk == "low" && age_risk == "high") {risk_exp = 4}
  
  if(temp_risk == "high" && age_risk == "medium") {risk_exp = 5}
  
  if(temp_risk == "high" && age_risk == "low") {risk_exp = 4}
  
  if(temp_risk == "low" && age_risk == "medium") {risk_exp = 3}
  
  if(temp_risk == "medium" && age_risk == "low") {risk_exp = 3}
  
  if(temp_risk == "low" && age_risk == "low") {risk_exp = 2}
  
  if(temp_risk == "medium" && age_risk == "medium") {risk_exp = 4}
  
  if(temp_risk == "medium" && age_risk == "medium") {risk_exp = 4}
  
  for(i in age_vec){
    
  }
    
  }
    
    risk_exp
  
  return(risk_exp)}
  
 
}


  
 



