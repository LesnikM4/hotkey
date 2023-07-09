:: РУЧНАЯ НАСТРОЙКА
:: Устновить драйверы и программы
:: Настроить отпечаток пальца
:: TODO Настроить ассоциации приложений
:: Удалить из быстрого доступа Изображения. Добавить в быстрый доступ ПортаблеАппс и Папку пользователя
:: Отключить значек видеоконференции 
:: Убрать ярлыки с панели
:: Убрать лишние программы из автозапуска
:: Отключить в микшере звук системных оповещений и звук терминала
:: Поменять цвет терминала на белый
:: Установить удаленку

:: НАСТРОЙКА WSL
::sudo apt-get update
::sudo apt-get install git
::git init ~/
::git remote add origin git@github.com:LesnikM4/term-conf.git
::TODO Подвязвать новый ключ на guthub.com или пренести старый
::git pull
::git checkout main -f
::git branch --set-upstream-to origin/main
::~/.scripts/install
::touch ~/.bashrc.local
::echo "cd /mnt/c/Users/lm/Downloads/" >> ~/.bashrc.local

:: НАСТРОЙКА МОНТИРОВАНИЯ АНДРОИД
::sudo apt-get install sshfs
::sudo sh -c "echo "user_allow_other" >> /etc/fuse.conf"
::sudo mkdir /mnt/android
::sudo chown lm:lm /mnt/android
::sudo chmod 777 /mnt/android
::sudo ln -s /proc/self/mounts /etc/mtab
::ssh-copy-id -p 8022 lm@192.168.1.22
::sshfs -p 8022 lm@192.168.1.22:/data/data/com.termux/files/home/storage/downloads/ /mnt/android/ -o allow_other
::создаем ярлык доступа в винде \\wsl$\Debian\mnt\android


:: Время до отключния экрана при сетевом питании в сек.
powercfg /SETACVALUEINDEX SCHEME_CURRENT 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 600
:: Время до отключния экрана при питании от батареии в сек.
powercfg /SETDCVALUEINDEX SCHEME_CURRENT 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 60
:: Время до сна при сетевом питании в сек.
powercfg /SETACVALUEINDEX SCHEME_CURRENT 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0
:: Время до сна при питании от батареи в сек.
powercfg /SETDCVALUEINDEX SCHEME_CURRENT 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0
:: Время до гибернации при сетевом питании в сек.
powercfg /SETACVALUEINDEX SCHEME_CURRENT 238c9fa8-0aad-41ed-83f4-97be242c8f20 9d7815a6-7ee4-497e-8888-515a05f02364 0
:: Время до гибернации при питании от батареи в сек.
powercfg /SETDCVALUEINDEX SCHEME_CURRENT 238c9fa8-0aad-41ed-83f4-97be242c8f20 9d7815a6-7ee4-497e-8888-515a05f02364 3600
:: Кнопка питания и крышка - гибернация
powercfg /SETACVALUEINDEX SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 a7066653-8d6c-40a8-910e-a1f54b84c7e5 001
powercfg /SETDCVALUEINDEX SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 a7066653-8d6c-40a8-910e-a1f54b84c7e5 001
:: Гибернация при низком заряде
powercfg /SETACVALUEINDEX SCHEME_CURRENT e73a048d-bf27-4f12-9731-8b2076e8891f d8742dcb-3e6a-4b3c-b3fe-374623cdcf06 002
powercfg /SETDCVALUEINDEX SCHEME_CURRENT e73a048d-bf27-4f12-9731-8b2076e8891f d8742dcb-3e6a-4b3c-b3fe-374623cdcf06 002

:: Смена имени компа
wmic computersystem where name="%computername%" call rename name="lm-win"

:: Включить блокировку экрана
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Power\PowerSettings\0e796bdb-100d-47d6-a2d5-f7d2daa51f51" /v "DCSettingIndex" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Power\PowerSettings\0e796bdb-100d-47d6-a2d5-f7d2daa51f51" /v "ACSettingIndex" /t REG_DWORD /d "1" /f
:: Отключить часы на экране блокировки (только экран со временем, сама блокировка работатет)
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "NoLockScreen" /t REG_DWORD /d "1" /f

:: Принтер ошибка сетевого подключения из Win7 - 11b: 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print" /v "RpcAuthnLevelPrivacyEnabled" /t REG_DWORD /d "0" /f

:: Добавляем локаль для правильного отображения руссуого в консоле
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Nls\CodePage" /v "1252" /t REG_SZ /d "c_1251.nls" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Nls\CodePage" /v "1250" /t REG_SZ /d "c_1251.nls" /f

:: Отключение обработки сочетаний клавиш Win + Simvol
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisabledHotKeys" /t REG_EXPAND_SZ /d "MSKJHLTFCBAED" /f
:: Отключение обработки сочетаний клавиш Win + L для блокировки экрана
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableLockWorkstation" /t REG_DWORD /d "1" /f

:: Отключение всяких телеметрий и историй у пользоватлея
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "0" /f

:: Попытка отключить OneDrive
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /t REG_DWORD /d "1" /f
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Skydrive" /v "DisableFileSync" /t REG_DWORD /d "1" /f

:: Отключить скрытие расширения файлов в проводнике
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d "0" /f
:: Отображать только иконки в проводнике
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "IconsOnly" /t REG_DWORD /d "0" /f
:: Отображать скрытые файлы
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t "REG_DWORD" /d "1" /f
:: Отключить поиск в интеренете из поискова винды
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Explorer" /v "DisableSearchBoxSuggestions" /t "REG_DWORD" /d "1" /f

:: Отключить отслеживание запущенных приложений
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d "0" /f
:: Отключить отслеживание открытых файлов
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackDocs" /t REG_DWORD /d "0" /f
:: Отключить показ недавних папок в быстром доступе
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowFrequent" /t REG_DWORD /d "0" /f
:: Отключить недавние приложения в меню Пуск
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Explorer" /v "HideRecentlyAddedApps" /t REG_DWORD /d "1" /f
:: Отключить историю открытых документов
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsHistory" /t "REG_DWORD" /d "1" /f
:: Отключить отображение последних документов в пуск
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ClearRecentDocsOnExit" /t "REG_DWORD" /d "1" /f

:: Отключить обои и установить заливку
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "WallPaper" /t REG_SZ /d "" /f
reg add "HKEY_CURRENT_USER\Control Panel\Colors" /v "Background" /t REG_SZ /d "255 255 255" /f

:: Отключить чат на панели задач 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarMn" /t REG_DWORD /d "0" /f
:: Отключить виджеты на панели задач
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarDa" /t REG_DWORD /d "0" /f
:: Выравнивание панели задач слева
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAl" /t REG_DWORD /d "0" /f
:: Отключить поиск на панели задач
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d "0" /f
:: Отключить кнопку кортаны на панели задач
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowCortanaButton" /t REG_DWORD /d "0" /f
::TODO НЕ РАБОТАТЕТ Отклчюить новости и погоду на панели задач
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarViewMode" /t REG_DWORD /d "2" /f
:: Отклчюить группировку значков
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarGlomLevel" /t REG_DWORD /d "1" /f
:: Отображать все заначки приложений на панели задач
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "EnableAutoTray" /t REG_DWORD /d "0" /f
:: Отключить показ показ окон при половинчетости окна
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SnapAssist" /t REG_DWORD /d "0" /f
:: Установить формат дата-время
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sLongDate" /t REG_SZ /d "ddd, MMM d, yyyy" /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sShortDate" /t REG_SZ /d "ddd, MMM d" /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sShortTime" /t REG_SZ /d "HH:mm" /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sTimeFormat" /t REG_SZ /d "HH:mm:ss" /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "iFirstDayOfWeek" /t REG_SZ /d "0" /f

:: Отключить перемещение удаленных файлов в корзину
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecycleFiles" /t REG_DWORD /d "1" /f
:: Включить запрос на удаление файлов
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ConfirmFileDelete" /t REG_DWORD /d "1" /f
:: Отключить корзину на рабочем столе
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v "{645FF040-5081-101B-9F08-00AA002F954E}" /t REG_DWORD /d "1" /f


:: Удаление папки рабочего стола
if not exist "%UserProfile%\AppData\Empty" mkdir "%UserProfile%\AppData\Empty"
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Desktop" /t REG_EXPAND_SZ /d "%UserProfile%\AppData\Empty" /f
timeout /t 2 /nobreak >nul
rmdir /s /q "%UserProfile%\Desktop"

:: Добавление в автозапуск PortableApps 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "PortableApps" /t REG_SZ /d "%UserProfile%\Start.exe" /f

:: Установка WSL и дебиана
wsl --install -d debian

pause
