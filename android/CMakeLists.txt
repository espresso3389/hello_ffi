cmake_minimum_required(VERSION 3.4.1)

add_library( native_add

    # 共有ライブラリにする
    SHARED

    # Xcode側でファイルの位置に対する制約があるので、
    # Android側は無理やり ios 配下のファイルを引き込む
    ../ios/Classes/hello.cpp )
