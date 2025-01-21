rm(list=ls())

path <- "/Users/Alainmac/Desktop/Asingaturas UNIr/Estadistica y R/Actividad1/"
setwd(path)

df <- read.csv("Dataset_expresion_genes.csv")

install.packages("patchwork")
library(ggplot2)
library(dplyr)
library(pheatmap)
library (patchwork)

lista_genes <- c("AQ_ALOX5", "AQ_CD274", "AQ_CHKA", "AQ_CSF2", "AQ_FOXO3", "AQ_IL6", "AQ_LDHA", "AQ_LIF", "AQ_MAPK1", "AQ_NOS2", "AQ_IFNG", "AQ_PDCD1", "AQ_PPARG", "AQ_TGFB1", "AQ_TNF")
lista_genes2 <- gsub(pattern = "AQ_", replacement = "", lista_genes)
print(lista_genes2)




#### ---- Box plots ---- ####
plot_list <- list()

for (var in lista_genes) {
  plot <- ggplot(dataset1, aes(x = trat, y = !!sym(var) + 0.001)) +
  geom_boxplot(outlier.color = "black", outlier.size = 0.2, width = 0.7) +
  labs(title = paste("Expresión de", var), x = "Tratamiento", y = "Absolute quantification") +
  scale_y_log10() +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))
  
  plot_list[[var]] <- plot
}

combined_boxplot <- wrap_plots(plot_list, ncol = 3)
ggsave("ejercicio1.png", plot = combined_boxplot, width = 18, height = 12, dpi = 300)

combined_boxplot

#### ---- Histogramas ---- ####
par_bioqs <- c("glucosa", "leucocitos", "linfocitos", "neutrofilos", "chol", "hdl", 
               "hierro", "igA", "igE", "igG", "igN", "ldl", "pcr", "transferrina", "trigliceridos", "cpk")

for (var in par_bioqs) {
  histogram <- ggplot(dataset1, aes(x = !!sym(var))) +
    geom_histogram(bins = 30, fill = "skyblue", color = "black", alpha = 0.6) +
    labs(title = var, x = var, y = "Frecuencia") +
    theme_light()

  histogram_list[[var]] <- histogram
}


combined_histograms <- wrap_plots(histogram_list, ncol = 3)
ggsave("ejercicio2.png", plot = combined_histograms, width = 18, height = 12, dpi = 300)

combined_histograms

#histogramas con densidades
density_list <- list()

for (var in par_bioqs) {
  
  histogram <- ggplot(dataset1, aes(x = !!sym(var), y = ..density..)) +
    geom_histogram(bins = 30, fill = "skyblue", color = "black", alpha = 0.6) +
    geom_density() +
    labs(title = var, x = var, y = "Frecuencia") +
    theme_light()
  
  density_list[[var]] <- histogram
}

combined_density <- wrap_plots(density_list, ncol = 3)
combined_density
ggsave("ejercicio2densidades.png", plot = combined_density, width = 18, height = 12, dpi = 300)
