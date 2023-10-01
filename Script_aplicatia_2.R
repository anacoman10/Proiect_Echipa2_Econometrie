library(tidyverse)
library(gplots)
library(plm)
library(readxl)
library(readxl)
library(foreign)
library(lmtest)
library(panelr)
# citirea datelor de tip Panel din excel
data<-read_xlsx("C:/Users/win/Desktop/Echipa 2/date2.xlsx")
print(data)

# statistici descriptive
summary(data)


data %<>% select(id,an,mmwics,em_ed_ter,ch_he,ch_ed)

wages <- panel_data(data, id = id, wave = an)

wages %>% line_plot(ch_ed,add.mean = TRUE,  alpha = 0.2)

