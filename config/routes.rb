Rails.application.routes.draw do
  # Rutas para la galería
  get "galeria/index", to: "galeria#index"
  get "resumen", to: "galeria#resumen"

  # Ruta de bienvenida
  get "welcome/index"

  # Verifica el estado de la aplicación
  get "up", to: "rails/health#show", as: :rails_health_check

  # Rutas para archivos PWA
  get "service-worker", to: "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest", to: "rails/pwa#manifest", as: :pwa_manifest

  # Define la ruta raíz de la aplicación
  root "galeria#index"
end
