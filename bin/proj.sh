#!/bin/bash


if [ "_$1" = "_TAU" ] ; then
        echo 'Tau project'
        echo '-----------'
        gsed -i  "s/^\( *name: \).*$/\1flauto/" flutter_sound/pubspec.yaml
        gsed -i  "s/^ *flutter_sound_platform_interface: \(.*\)$/  flauto_platform_interface: \1/" flutter_sound/pubspec.yaml
        gsed -i  "s/^ *flutter_sound_web: \(.*\)$/  flauto_web: \1/" flutter_sound/pubspec.yaml
        gsed -i  "s/^\( *name: \).*$/\1flauto_platform_interface/" flutter_sound_platform_interface/pubspec.yaml
        gsed -i  "s/^\( *name: \).*$/\1flauto_web/" flutter_sound_web/pubspec.yaml
        gsed -i  "s/^ *flutter_sound_platform_interface: \(.*\)$/  flauto_platform_interface: \1/" flutter_sound_web/pubspec.yaml
        gsed -i  "s/'https:\/\/github.com\/dooboolab\/flutter_sound.git'/'https:\/\/github.com\/Canardoux\/tau.git'/" TauEngine.podspec
        gsed -i  "s/^ *flutter_sound: \(.*\)$/  flauto: \1/" flutter_sound/example/pubspec.yaml
        gsed -i  "s/^\( *#* *\)flutter_sound_platform_interface/\1flauto_platform_interface/" flutter_sound/example/pubspec.yaml
        gsed -i  "s/^\( *#* *\)flutter_sound_web/\1flauto_web/" flutter_sound/example/pubspec.yaml
        mv flutter_sound/ios/flutter_sound.podspec flutter_sound/ios/flauto.podspec 2>/dev/null
        mv flutter_sound/ios/flutter_sound_lite.podspec flutter_sound/ios/flauto_lite.podspec 2>/dev/null
        gsed -i  "s/^\( *s.name = \)'flutter_sound'$/\1'flauto'/" flutter_sound/ios/flauto.podspec 2>/dev/null
        gsed -i  "s/^\( *s.name = \)'flutter_sound_lite'$/\1'flauto_lite'/" flutter_sound/ios/flauto.podspec 2>/dev/null
        gsed -i  "s/^\( *s.name = \)'flutter_sound'$/\1'flauto'/" flutter_sound/ios/flauto_lite.podspec 2>/dev/null
        gsed -i  "s/^\( *s.name = \)'flutter_sound_lite'$/\1'flauto_lite'/" flutter_sound_lite/ios/flauto.podspec 2>/dev/null


        for f in flutter_sound/lib/*.dart
        do
                gsed -i  "s/package\:flutter_sound/package:flauto/" $f
        done
        for f in flutter_sound/lib/src/*.dart
        do
                gsed -i  "s/package\:flutter_sound/package:flauto/" $f
        done
        for f in flutter_sound/lib/src/ui/*.dart
        do
                gsed -i  "s/package\:flutter_sound/package:flauto/" $f
        done
        for f in flutter_sound/lib/src/util/*.dart
        do
                gsed -i  "s/package\:flutter_sound/package:flauto/" $f
        done
        for f in flutter_sound_web/lib/*.dart
        do
                gsed -i  "s/package\:flutter_sound/package:flauto/" $f
        done

        for f in flutter_sound/example/lib/*.dart
        do
                gsed -i  "s/package\:flutter_sound/package:flauto/" $f
        done
        for f in flutter_sound/example/lib/widgetUI/demo_util/*.dart
        do
                gsed -i  "s/package\:flutter_sound/package:flauto/" $f
        done

        for d in flutter_sound/example/lib/*/
        do
                for f in $d/*.dart
                do
                        gsed -i  "s/package\:flutter_sound/package:flauto/" $f
                done
        done

        for f in *.md
        do
                gsed -i  "s/https:\/\/dooboolab.github.io\/flutter_sound/https:\/\/canardoux.github.io\/tau/" $f
                gsed -i  "s/https:\/\/pub.dartlang.org\/packages\/flutter_sound/https:\/\/pub.dartlang.org\/packages\/flauto/" $f
                gsed -i  "s/https:\/\/img.shields.io\/pub\/v\/flutter_sound.svg/https:\/\/img.shields.io\/pub\/v\/flauto.svg/" $f

        done

        for f in flutter_sound/*.md
        do
                gsed -i  "s/https:\/\/dooboolab.github.io\/flutter_sound/https:\/\/canardoux.github.io\/tau/" $f
                gsed -i  "s/https:\/\/pub.dartlang.org\/packages\/flutter_sound/https:\/\/pub.dartlang.org\/packages\/flauto/" $f
                gsed -i  "s/https:\/\/img.shields.io\/pub\/v\/flutter_sound.svg/https:\/\/img.shields.io\/pub\/v\/flauto.svg/" $f
        done

        for f in flutter_sound_platform_interface/*.md
        do
                gsed -i  "s/https:\/\/dooboolab.github.io\/flutter_sound/https:\/\/canardoux.github.io\/tau/" $f
                gsed -i  "s/https:\/\/pub.dartlang.org\/packages\/flutter_sound/https:\/\/pub.dartlang.org\/packages\/flauto/" $f
                gsed -i  "s/https:\/\/img.shields.io\/pub\/v\/flutter_sound.svg/https:\/\/img.shields.io\/pub\/v\/flauto.svg/" $f
        done

        for f in flutter_sound_web/*.md
        do
                gsed -i  "s/https:\/\/dooboolab.github.io\/flutter_sound/https:\/\/canardoux.github.io\/tau/" $f
                gsed -i  "s/https:\/\/pub.dartlang.org\/packages\/flutter_sound/https:\/\/pub.dartlang.org\/packages\/flauto/" $f
                gsed -i  "s/https:\/\/img.shields.io\/pub\/v\/flutter_sound.svg/https:\/\/img.shields.io\/pub\/v\/flauto.svg/" $f
        done

        gsed -i  "s/https:\/\/github.com\/dooboolab\/flutter_sound/https:\/\/github.com\/canardoux\/tau/" flutter_sound/pubspec.yaml
        gsed -i  "s/https:\/\/github.com\/dooboolab\/flutter_sound/https:\/\/github.com\/canardoux\/tau/" flutter_sound_web/pubspec.yaml
        gsed -i  "s/https:\/\/github.com\/dooboolab\/flutter_sound/https:\/\/github.com\/canardoux\/tau/" flutter_sound_platform_interface/pubspec.yaml

        gsed -i  "s/https:\/\/dooboolab.github.io\/flutter_sound/https:\/\/canardoux.github.io\/tau/"   doc/SUMMARY.md
        gsed -i  "s/https:\/\/dooboolab.github.io\/flutter_sound/https:\/\/canardoux.github.io\/tau/"   doc/README.md

        for d in doc/*/
        do
                for f in $d/*.md
                do
                        gsed -i  "s/https:\/\/dooboolab.github.io\/flutter_sound/https:\/\/canardoux.github.io\/tau/"   $f
                        gsed -i  "s/https:\/\/github.com\/dooboolab\/flutter_sound/https:\/\/github.com\/canardoux\/tau/" $f
                done
        done

        exit 0

#========================================================================================================================================================================================================


elif [ "_$1" = "_FLUTTER_SOUND" ]; then
        echo 'Flutter Sound Project'
        echo '---------------------'
        gsed -i  "s/^\( *name: \).*$/\1flutter_sound/" flutter_sound/pubspec.yaml
        gsed -i  "s/^ *flauto_platform_interface: \(.*\)$/  flutter_sound_platform_interface: \1/" flutter_sound/pubspec.yaml
        gsed -i  "s/^ *flauto_web: \(.*\)$/  flutter_sound_web: \1/" flutter_sound/pubspec.yaml
        gsed -i  "s/^\( *name: \).*$/\1flutter_sound_platform_interface/" flutter_sound_platform_interface/pubspec.yaml
        gsed -i  "s/^\( *name: \).*$/\1flutter_sound_web/" flutter_sound_web/pubspec.yaml
        gsed -i  "s/^ *flauto_platform_interface: \(.*\)$/  flutter_sound_platform_interface: \1/" flutter_sound_web/pubspec.yaml
        gsed -i  "s/'https:\/\/github.com\/Canardoux\/tau.git'/'https:\/\/github.com\/dooboolab\/flutter_sound.git'/" TauEngine.podspec
        gsed -i  "s/^ *flauto: \(.*\)$/  flutter_sound: \1/" flutter_sound/example/pubspec.yaml
        gsed -i  "s/^\( *#* *\)flauto_platform_interface/\1flutter_sound_platform_interface/" flutter_sound/example/pubspec.yaml
        gsed -i  "s/^\( *#* *\)flauto_web/\1flutter_sound_web/" flutter_sound/example/pubspec.yaml
        mv flutter_sound/ios/flauto.podspec flutter_sound/ios/flutter_sound.podspec 2>/dev/null
        mv flutter_sound/ios/flauto_lite.podspec flutter_sound/ios/flutter_sound_lite.podspec 2>/dev/null
        gsed -i  "s/^\( *s.name = \)'flauto'$/\1'flutter_sound'/" flutter_sound/ios/flutter_sound.podspec 2>/dev/null
        gsed -i  "s/^\( *s.name = \)'flauto_lite'$/\1'flutter_sound_lite'/" flutter_sound/ios/flutter_sound.podspec 2>/dev/null
        gsed -i  "s/^\( *s.name = \)'flauto'$/\1'flutter_sound'/" flutter_sound/ios/flutter_sound_lite.podspec 2>/dev/null
        gsed -i  "s/^\( *s.name = \)'flauto_lite'$/\1'flutter_sound_lite'/" flutter_sound/ios/flutter_sound_lite.podspec 2>/dev/null

        for f in flutter_sound/lib/*.dart
        do
                gsed -i  "s/package\:flauto/package:flutter_sound/" $f
        done
        for f in flutter_sound/lib/src/*.dart
        do
                gsed -i  "s/package\:flauto/package:flutter_sound/" $f
        done
        for f in flutter_sound/lib/src/util/*.dart
        do
                gsed -i  "s/package\:flauto/package:flutter_sound/" $f
        done
        for f in flutter_sound/lib/src/ui/*.dart
        do
                gsed -i  "s/package\:flauto/package:flutter_sound/" $f
        done
        for f in flutter_sound_web/lib/*.dart
        do
                gsed -i  "s/package\:flauto/package:flutter_sound/" $f
        done

        for f in flutter_sound/example/lib/*.dart
        do
                gsed -i  "s/package\:flauto/package:flutter_sound/" $f
        done
        for f in flutter_sound/example/lib/widgetUI/demo_util/*.dart
        do
                gsed -i  "s/package\:flauto/package:flutter_sound/" $f
        done

        for d in flutter_sound/example/lib/*/
        do
                for f in $d/*.dart
                do
                        gsed -i  "s/package\:flauto/package:flutter_sound/" $f
                done
        done

        for f in *.md
        do
                gsed -i  "s/https:\/\/canardoux.github.io\/tau/https:\/\/dooboolab.github.io\/flutter_sound/" $f
                gsed -i  "s/https:\/\/pub.dartlang.org\/packages\/flauto/https:\/\/pub.dartlang.org\/packages\/flutter_sound/" $f
                gsed -i  "s/https:\/\/img.shields.io\/pub\/v\/flauto.svg/https:\/\/img.shields.io\/pub\/v\/flutter_sound.svg/" $f
        done


        for f in flutter_sound/*.md
        do
                gsed -i  "s/https:\/\/canardoux.github.io\/tau/https:\/\/dooboolab.github.io\/flutter_sound/" $f
                gsed -i  "s/https:\/\/pub.dartlang.org\/packages\/flauto/https:\/\/pub.dartlang.org\/packages\/flutter_sound/" $f
                gsed -i  "s/https:\/\/img.shields.io\/pub\/v\/flauto.svg/https:\/\/img.shields.io\/pub\/v\/flutter_sound.svg/" $f
        done

        for f in flutter_sound_platform_interface/*.md
        do
                gsed -i  "s/https:\/\/canardoux.github.io\/tau/https:\/\/dooboolab.github.io\/flutter_sound/" $f
                gsed -i  "s/https:\/\/pub.dartlang.org\/packages\/flauto/https:\/\/pub.dartlang.org\/packages\/flutter_sound/" $f
                gsed -i  "s/https:\/\/img.shields.io\/pub\/v\/flauto.svg/https:\/\/img.shields.io\/pub\/v\/flutter_sound.svg/" $f
        done

       for f in flutter_sound_web/*.md
        do
                gsed -i  "s/https:\/\/canardoux.github.io\/tau/https:\/\/dooboolab.github.io\/flutter_sound/" $f
                gsed -i  "s/https:\/\/pub.dartlang.org\/packages\/flauto/https:\/\/pub.dartlang.org\/packages\/flutter_sound/" $f
                gsed -i  "s/https:\/\/img.shields.io\/pub\/v\/flauto.svg/https:\/\/img.shields.io\/pub\/v\/flutter_sound.svg/" $f
        done

        gsed -i  "s/https:\/\/github.com\/canardoux\/tau/https:\/\/github.com\/dooboolab\/flutter_sound/"  flutter_sound/pubspec.yaml
        gsed -i  "s/https:\/\/github.com\/canardoux\/tau/https:\/\/github.com\/dooboolab\/flutter_sound/"  flutter_sound_web/pubspec.yaml
        gsed -i  "s/https:\/\/github.com\/canardoux\/tau/https:\/\/github.com\/dooboolab\/flutter_sound/"  flutter_sound_platform_interface/pubspec.yaml

        gsed -i  "s/https:\/\/canardoux.github.io\/tau/https:\/\/dooboolab.github.io\/flutter_sound/"   doc/SUMMARY.md
        gsed -i  "s/https:\/\/canardoux.github.io\/tau/https:\/\/dooboolab.github.io\/flutter_sound/"   doc/README.md

        for d in doc/*/
        do
                for f in doc/flutter_sound/*.md
                do
                        gsed -i  "s/https:\/\/canardoux.github.io\/tau/https:\/\/dooboolab.github.io\/flutter_sound/"   $f
                        gsed -i  "s/https:\/\/github.com\/canardoux\/tau/https:\/\/github.com\/dooboolab\/flutter_sound/"  $f
                done
        done

        exit 0

else
        echo "Correct syntax is $0 [TAU | FLUTTER_SOUND]"
        exit -1
fi
