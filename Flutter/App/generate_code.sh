echo 'Getting dependencies'
fvm flutter pub get

echo 'Rebuilding'
fvm dart run build_runner build --delete-conflicting-outputs

echo 'Generating translations'
fvm dart run easy_localization:generate -f keys -o locale_keys.g.dart -O lib/presentation/core/locale -S assets/translations
fvm flutter pub get