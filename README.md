# 📱 MyCVApp - Application iOS de présentation de candidature

Une application iOS simple et élégante en **SwiftUI** permettant de consulter, partager et télécharger mon **CV** et ma **lettre de motivation**. Créée dans le cadre d'une candidature au poste de **Développeur iOS Junior chez Pictarine** 🇫🇷.

---

## 🎯 Objectifs

- 📄 Afficher mon **CV** (au format PDF) directement dans l’application.
- 💌 Intégrer également ma **lettre de motivation** au même format.
- 📤 Offrir une **fonction de téléchargement et de partage** pour chaque document.
- 🧭 Proposer une navigation fluide entre **accueil, CV, LM et contact**.

---

## 🛠️ Tech Stack

- **Langage** : Swift 5.9
- **UI** : SwiftUI
- **PDF Rendering** : PDFKit
- **Partage** : UIActivityViewController (via SwiftUI wrapper)
- **Architecture** : View-based navigation

---

## 📁 Arborescence
```
MyCVApp/
├── Assets/
│   ├── CV_Sofian_SMIMID_DevIOS.pdf
│   └── LM_SMIMID_Sofian.pdf
├── Views/
│   ├── ContentView.swift              # Vue principale avec navigation
│   ├── HomeView.swift                 # Page d’accueil
│   ├── CVDownloadView.swift           # Affichage
│   ├── MotivationDownloadView.swift   # Affichage
│   ├── ContactView.swift              # Infos de contact
│   └── PDFKitView.swift               # Wrapper PDFKit pour SwiftUI
├── MyCVApp.swift                      # Point d’entrée de l’app
├── README.md
```

---

## 🚀 Lancer le projet

1.  Cloner le repo
2.	Ouvrir le projet dans Xcode
3.	Vérifie que les fichiers PDF suivants sont bien inclus dans le projet
4.	Lance l’application sur un simulateur ou un appareil physique
5.	Profite d’une expérience fluide pour découvrir mon CV et ma lettre de motivation directement depuis un iPhone 📱

---

## 👤 Auteur

**Sofian Smimid**  
📧 sofian.smimid@gmail.com  
📱 07 86 54 70 02  
📍 Saint-Julien-aux-Bois, France  
🛞 Permis B + véhicule  
🔗 [LinkedIn](https://linkedin.com/in/sofian-smimid)

---

> Un CV, c’est bien. Une application iOS pour le présenter, c’est mieux. 🚀
   
