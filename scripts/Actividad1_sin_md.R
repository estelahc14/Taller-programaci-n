rm(list=ls())

path <- "/Users/Alainmac/Desktop/Asingaturas UNIr/Estadistica y R/Actividad1/"
setwd(path)

df <- read.csv("Dataset_expresion_genes.csv")

install.packages("patchwork")
library(ggplot2)
library(dplyr)
library(pheatmap)
library (patchwork)


#### ---- Box plots ---- ####
plot_1 <- ggplot(df, aes(x = trat, y = AQ_ALOX5 )) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "Expresión Gen AQ_ALOX5", x = "Tratamiento", y = "Expresion Genica") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_2 <- ggplot(df, aes(x = trat, y = AQ_CD274 )) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "Expresión Gen AQ_CD274", x = "Tratamiento", y = "Expresion Genica") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_3 <- ggplot(df, aes(x = trat, y = AQ_CHKA )) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "Expresión Gen AQ_CHKA", x = "Tratamiento", y = "Expresion Genica") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_4 <- ggplot(df, aes(x = trat, y = AQ_CSF2 )) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "Expresión Gen AQ_CSF2", x = "Tratamiento", y = "Expresion Genica") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_5 <- ggplot(df, aes(x = trat, y = AQ_FOXO3 )) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "Expresión Gen AQ_FOXO3", x = "Tratamiento", y = "Expresion Genica") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_6 <- ggplot(df, aes(x = trat, y = AQ_IL6 )) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "Expresión Gen AQ_IL6", x = "Tratamiento", y = "Expresion Genica") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_7 <- ggplot(df, aes(x = trat, y = AQ_LDHA )) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "Expresión Gen AQ_LDHA", x = "Tratamiento", y = "Expresion Genica") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_8 <- ggplot(df, aes(x = trat, y = AQ_LIF )) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "Expresión Gen AQ_LIF", x = "Tratamiento", y = "Expresion Genica") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_9 <- ggplot(df, aes(x = trat, y = AQ_MAPK1 )) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "Expresión Gen AQ_MAPK1", x = "Tratamiento", y = "Expresion Genica") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_10 <- ggplot(df, aes(x = trat, y = AQ_NOS2 )) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "Expresión Gen AQ_NOS2", x = "Tratamiento", y = "Expresion Genica") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_11 <- ggplot(df, aes(x = trat, y = AQ_IFNG )) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "Expresión Gen AQ_IFNG", x = "Tratamiento", y = "Expresion Genica") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_12 <- ggplot(df, aes(x = trat, y = AQ_PDCD1 )) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "Expresión Gen AQ_PDCD1", x = "Tratamiento", y = "Expresion Genica") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_13 <- ggplot(df, aes(x = trat, y = AQ_PPARG )) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "Expresión Gen AQ_PPARG", x = "Tratamiento", y = "Expresion Genica") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_14 <- ggplot(df, aes(x = trat, y = AQ_TGFB1 )) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "Expresión Gen AQ_TGFB1", x = "Tratamiento", y = "Expresion Genica") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_15 <- ggplot(df, aes(x = trat, y = AQ_TNF )) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "Expresión Gen AQ_TNF", x = "Tratamiento", y = "Expresion Genica") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

combined_plot <- (plot_1 + plot_2 + plot_3 + 
                    plot_4 + plot_5 + plot_6 + 
                    plot_7 + plot_8 + plot_9 + 
                    plot_10 + plot_11 + plot_12 + 
                    plot_13 + plot_14 + plot_15) + 
  plot_layout(ncol = 3) +   # Ajustar a 3 columnas para mejorar la visibilidad
  plot_annotation(title = "Comparación de Expresión Genética")  # Añadir un título general

combined_plot

#### ---- Histogramas ---- ####
bioquimica <- df %>% select("glucosa", "leucocitos", "linfocitos", "neutrofilos", "chol", "hdl", "hierro", "igA", "igE", "igG", "igN", "ldl", "pcr", "transferrina", "trigliceridos", "cpk")

# Para glucosa
hist_1 <- ggplot(bioquimica, aes(x = glucosa)) +
  geom_histogram(aes(y = after_stat(density)),  # Usa after_stat(density) para densidad
                 color = "black", fill = "lightblue", alpha = 0.4, 
                 bins = 30) +   # Ajusta el número de bins según prefieras
  geom_density(color = "blue", size = 1) +      # Añadir la curva de densidad
  labs(title = "Distribución de Glucosa", x = "Glucosa", y = "Densidad") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Para leucocitos
hist_2 <- ggplot(bioquimica, aes(x = leucocitos)) +
  geom_histogram(aes(y = after_stat(density)),  # Usa after_stat(density) para densidad
                 color = "black", fill = "lightblue", alpha = 0.4, 
                 bins = 30) +   # Ajusta el número de bins según prefieras
  geom_density(color = "blue", size = 1) +      # Añadir la curva de densidad
  labs(title = "Distribución de Leucocitos", x = "Leucocitos", y = "Densidad") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Para linfocitos
hist_3 <- ggplot(bioquimica, aes(x = linfocitos)) +
  geom_histogram(aes(y = after_stat(density)),  # Usa after_stat(density) para densidad
                 color = "black", fill = "lightblue", alpha = 0.4, 
                 bins = 30) +   # Ajusta el número de bins según prefieras
  geom_density(color = "blue", size = 1) +      # Añadir la curva de densidad
  labs(title = "Distribución de Linfocitos", x = "Linfocitos", y = "Densidad") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Para neutrofilos
hist_4 <- ggplot(bioquimica, aes(x = neutrofilos)) +
  geom_histogram(aes(y = after_stat(density)),  # Usa after_stat(density) para densidad
                 color = "black", fill = "lightblue", alpha = 0.4, 
                 bins = 30) +   # Ajusta el número de bins según prefieras
  geom_density(color = "blue", size = 1) +      # Añadir la curva de densidad
  labs(title = "Distribución de Neutrófilos", x = "Neutrófilos", y = "Densidad") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Para chol
hist_5 <- ggplot(bioquimica, aes(x = chol)) +
  geom_histogram(aes(y = after_stat(density)),  # Usa after_stat(density) para densidad
                 color = "black", fill = "lightblue", alpha = 0.4, 
                 bins = 30) +   # Ajusta el número de bins según prefieras
  geom_density(color = "blue", size = 1) +      # Añadir la curva de densidad
  labs(title = "Distribución de Cholesterol", x = "Cholesterol", y = "Densidad") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Para hdl
hist_6 <- ggplot(bioquimica, aes(x = hdl)) +
  geom_histogram(aes(y = after_stat(density)),  # Usa after_stat(density) para densidad
                 color = "black", fill = "lightblue", alpha = 0.4, 
                 bins = 30) +   # Ajusta el número de bins según prefieras
  geom_density(color = "blue", size = 1) +      # Añadir la curva de densidad
  labs(title = "Distribución de HDL", x = "HDL", y = "Densidad") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Para hierro
hist_7 <- ggplot(bioquimica, aes(x = hierro)) +
  geom_histogram(aes(y = after_stat(density)),  # Usa after_stat(density) para densidad
                 color = "black", fill = "lightblue", alpha = 0.4, 
                 bins = 30) +   # Ajusta el número de bins según prefieras
  geom_density(color = "blue", size = 1) +      # Añadir la curva de densidad
  labs(title = "Distribución de Hierro", x = "Hierro", y = "Densidad") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Para igA
hist_8 <- ggplot(bioquimica, aes(x = igA)) +
  geom_histogram(aes(y = after_stat(density)),  # Usa after_stat(density) para densidad
                 color = "black", fill = "lightblue", alpha = 0.4, 
                 bins = 30) +   # Ajusta el número de bins según prefieras
  geom_density(color = "blue", size = 1) +      # Añadir la curva de densidad
  labs(title = "Distribución de IgA", x = "IgA", y = "Densidad") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Para igE
hist_9 <- ggplot(bioquimica, aes(x = igE)) +
  geom_histogram(aes(y = after_stat(density)),  # Usa after_stat(density) para densidad
                 color = "black", fill = "lightblue", alpha = 0.4, 
                 bins = 30) +   # Ajusta el número de bins según prefieras
  geom_density(color = "blue", size = 1) +      # Añadir la curva de densidad
  labs(title = "Distribución de IgE", x = "IgE", y = "Densidad") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Para igG
hist_10 <- ggplot(bioquimica, aes(x = igG)) +
  geom_histogram(aes(y = after_stat(density)),  # Usa after_stat(density) para densidad
                 color = "black", fill = "lightblue", alpha = 0.4, 
                 bins = 30) +   # Ajusta el número de bins según prefieras
  geom_density(color = "blue", size = 1) +      # Añadir la curva de densidad
  labs(title = "Distribución de IgG", x = "IgG", y = "Densidad") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Para igN
hist_11 <- ggplot(bioquimica, aes(x = igN)) +
  geom_histogram(aes(y = after_stat(density)),  # Usa after_stat(density) para densidad
                 color = "black", fill = "lightblue", alpha = 0.4, 
                 bins = 30) +   # Ajusta el número de bins según prefieras
  geom_density(color = "blue", size = 1) +      # Añadir la curva de densidad
  labs(title = "Distribución de IgN", x = "IgN", y = "Densidad") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Para ldl
hist_12 <- ggplot(bioquimica, aes(x = ldl)) +
  geom_histogram(aes(y = after_stat(density)),  # Usa after_stat(density) para densidad
                 color = "black", fill = "lightblue", alpha = 0.4, 
                 bins = 30) +   # Ajusta el número de bins según prefieras
  geom_density(color = "blue", size = 1) +      # Añadir la curva de densidad
  labs(title = "Distribución de LDL", x = "LDL", y = "Densidad") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Para pcr
hist_13 <- ggplot(bioquimica, aes(x = pcr)) +
  geom_histogram(aes(y = after_stat(density)),  # Usa after_stat(density) para densidad
                 color = "black", fill = "lightblue", alpha = 0.4, 
                 bins = 30) +   # Ajusta el número de bins según prefieras
  geom_density(color = "blue", size = 1) +      # Añadir la curva de densidad
  labs(title = "Distribución de PCR", x = "PCR", y = "Densidad") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Para transferrina
hist_14 <- ggplot(bioquimica, aes(x = transferrina)) +
  geom_histogram(aes(y = after_stat(density)),  # Usa after_stat(density) para densidad
                 color = "black", fill = "lightblue", alpha = 0.4, 
                 bins = 30) +   # Ajusta el número de bins según prefieras
  geom_density(color = "blue", size = 1) +      # Añadir la curva de densidad
  labs(title = "Distribución de Transferrina", x = "Transferrina", y = "Densidad") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Para trigliceridos
hist_15 <- ggplot(bioquimica, aes(x = trigliceridos)) +
  geom_histogram(aes(y = after_stat(density)),  # Usa after_stat(density) para densidad
                 color = "black", fill = "lightblue", alpha = 0.4, 
                 bins = 30) +   # Ajusta el número de bins según prefieras
  geom_density(color = "blue", size = 1) +      # Añadir la curva de densidad
  labs(title = "Distribución de Triglicéridos", x = "Triglicéridos", y = "Densidad") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Para cpk
hist_16 <- ggplot(bioquimica, aes(x = cpk)) +
  geom_histogram(aes(y = after_stat(density)),  # Usa after_stat(density) para densidad
                 color = "black", fill = "lightblue", alpha = 0.4, 
                 bins = 30) +   # Ajusta el número de bins según prefieras
  geom_density(color = "blue", size = 1) +      # Añadir la curva de densidad
  labs(title = "Distribución de CPK", x = "CPK", y = "Densidad") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))
  
combined_hist <- (hist_1 + hist_2 + hist_3 + 
                    hist_4 + hist_5 + hist_6 + 
                    hist_7 + hist_8 + hist_9 + 
                    hist_10 + hist_11 + hist_12 + 
                    hist_13 + hist_14 + hist_15 + hist_16) + 
  plot_layout(ncol = 3) +   # Ajustar a 3 columnas para mejorar la visibilidad
  plot_annotation(title = "Parametros bioquimicos")  # Añadir un título general

combined_hist
