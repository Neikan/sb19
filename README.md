<h1 align="center">About</h1>

# Run project
## - Android:
```sh
flutter run lib/main.dart
```

## - Web:
```sh
flutter run -d chrome --web-renderer html
```

<br />

# Run sorting imports
```sh
flutter pub run import_sorter:main
```

<br />

# Модуль 19. Integrations

#### Задание

1. Создать приложение, в котором будет текстовое поле и кнопка:

    - при нажатии на кнопку введенный текст должен передаваться на платформу через method channel и отображаться на экране в PlatformView.
