var plasma = getApiVersion(1);

var layout = {
    "desktops": [
        {
            "applets": [
                {
                    "config": {
                        "/": {
                            "PreloadWeight": "0"
                        }
                    },
                    "geometry.height": 0,
                    "geometry.width": 0,
                    "geometry.x": 0,
                    "geometry.y": 0,
                    "plugin": "org.kde.plasma.trash",
                    "title": "Trashcan"
                },
                {
                    "config": {
                        "/": {
                            "PreloadWeight": "2"
                        },
                        "/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        },
                        "/General": {
                            "textColor": "#d0d0d0",
                            "textFont": "Noto Sans,10,-1,5,50,0,0,0,0,0,Regular"
                        }
                    },
                    "geometry.height": 0,
                    "geometry.width": 0,
                    "geometry.x": 0,
                    "geometry.y": 0,
                    "plugin": "minimalclock",
                    "title": "Minimal Clock"
                }
            ],
            "config": {
                "/": {
                    "ItemGeometriesHorizontal": "Applet-29:32,64,64,128,0;Applet-32:416,80,336,160,0;",
                    "formfactor": "0",
                    "immutability": "1",
                    "lastScreen": "0",
                    "wallpaperplugin": "org.kde.image"
                },
                "/ConfigDialog": {
                    "DialogHeight": "874",
                    "DialogWidth": "1566"
                },
                "/Configuration": {
                    "PreloadWeight": "0"
                },
                "/General": {
                    "ToolBoxButtonState": "topcenter",
                    "ToolBoxButtonX": "584",
                    "positions": "1,14,desktop:/Interview_practice,0,1",
                    "sortMode": "-1"
                },
                "/Wallpaper/org.kde.image/General": {
                    "Image": "file:///home/knnan/.local/share/wallpapers/Saved Pictures/devianart/just_low_poly__by_pyxartz-da72vz4.jpg"
                }
            },
            "wallpaperPlugin": "org.kde.image"
        },
        {
            "applets": [
            ],
            "config": {
                "/": {
                    "formfactor": "0",
                    "immutability": "1",
                    "lastScreen": "1",
                    "wallpaperplugin": "org.kde.image"
                },
                "/Configuration": {
                    "PreloadWeight": "0"
                },
                "/Wallpaper/org.kde.image/General": {
                    "Image": "file:///usr/share/wallpapers/Next/contents/images/1920x1080.jpg"
                }
            },
            "wallpaperPlugin": "org.kde.image"
        },
        {
            "applets": [
            ],
            "config": {
                "/": {
                    "formfactor": "0",
                    "immutability": "1",
                    "lastScreen": "3",
                    "wallpaperplugin": "org.kde.image"
                },
                "/Configuration": {
                    "PreloadWeight": "0"
                },
                "/Wallpaper/org.kde.image/General": {
                    "Image": "file:///usr/share/wallpapers/Next/contents/images/1920x1080.jpg"
                }
            },
            "wallpaperPlugin": "org.kde.image"
        }
    ],
    "panels": [
        {
            "alignment": "left",
            "applets": [
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "100"
                        },
                        "/Configuration/General": {
                            "favoritesPortedToKAstats": "true"
                        },
                        "/Shortcuts": {
                            "global": "Alt+F1"
                        }
                    },
                    "plugin": "org.kde.plasma.kicker"
                },
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "0"
                        }
                    },
                    "plugin": "org.kde.plasma.pager"
                },
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "0"
                        },
                        "/Configuration/General": {
                            "launchers": "applications:org.kde.konsole.desktop,applications:org.kde.dolphin.desktop,applications:google-chrome.desktop,applications:org.kde.ksysguard.desktop,applications:code.desktop?iconData=iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAH50lEQVRoge2ae3BUVx3HP-fe7GazG_LYvEsIKaSmxLGVwb5EGQSCRWYKVF5q2xRkoNYCQq3FgpOqLYW-EAlDBaFBXi2RV2mFgDxCFSgULDBUqhMEyiORkBfktXvvPf5x89jsbnZveCT_-Js5M5vZPb_f9_t7nd89N_B_6V5RuxsAIAClu0HcnAx-NtqWv__37qWnS-_ZVvVx3_cuTWTAVFtnVIg7hS2s_CA_kbsHbgJlEJpOSt8-xPZMA8M4ozXVvX72o3c2UPjrxnBquieFJi3tRcbXd6IoD2FI0A0cLhfO-FgQIlGJsI9y93v4R-7RMzVbVOrndSd3ax2p6uoICKa-m01i-kcoog8SMCR4dRLS00no0ztgg5TystHU8LvKYyXLqxaOrwWk7_ddGQHB9HUP4E7biRC9muHREgFnbAzO-LjATUL0UCJsuc6MrB_Hj5llr3I5j_JZSWtEuqr6BTM3DqNH8i4g1XSibO9LGXoJKZLUyKhX-o58bhE-ju8KAgozN43HFfcBENsOGBKkucLgb12Kzf4kENmiPOIOg1eZtXUaUa7FSBnhl76m-CMMI1IKFz6472QEVGZvm0eks8AEHxQNbekkrYXAlNbmEyoCLT-y4Bc_ycmxM2Lh29jsPw3I9QASnbTg99tgBAT5xdnEphUghIO6ijnM-87fLZsZMNXJkFGrUCMmhAfjGwHLFtqJfwoJfrX3QeJ67kdRhyKUgbiS9rDg8PNYqZeRc-IZMmorijqhpThDr1b8mopWagmxH0lfAoL8klzcKbtApLR5RNiJ7PEGb_6jiKl_SOxQ8ROL0ug3qBih5lpuKUjQtXJKD-Y5IpUdljiHIGAnNqEQKWOC7lJso8n-5mHm7nmQ9ie44ImlWaRl70MRD1hD3rya6g_yceEIPpz_FyXK2dhp9H4EbBi60hqioB4TfXEnl_Dq4WcxDxPB08vvJzVzH5BtHbs0qCpbwopp4_h00-dAnVBUo8Po-oofCd-89lJ6fDp9B6wCJbpjDcKBI7qABce_xZkT64lJKESXbhTa4hJqwjL0a1w4NYuilz4ErgMaEIHBLRexh2WTdvBZ8UR0_VpYL0bYJ_KV-z4AxY1XB80AwwhWoG3L0_Aph94bQdFLW4CaZvCdkxA1IIE61r6wn8MbH0fzXAybjzY7pPcChxO8Gmi6OZwZ_nkrDWqurmDNjDEcXHcKqAMCUsZSCYQg0EKins2vHqV4xWi8TWfCekQokJwC7kTwGiYR3ScahlHNl6ensSJvDpWXyoDGQBg-1sMs_43BRgkJNLBv2Wn-_OrjNNYfDd8OBcTEwV3ppkqvbpJoajzJsc0jef8X7wPVhEoZayUcNgK-0sjxLWf54_QJNNTusRRfeyT0zIBIp6T66hrWvfAYB949DtywBNFKB_OTcMOch6ietVw4Z1BbY82AUCA1DTKyNDLvrwGagpu-SelEBGDc_ESGPbkNhzOXinKoqrSGRSKIdk9iXP5uZmzPwsqjq4UAWyniNvnhm71Jy9mDqg5EFRChQnUFVFy1ZklKUJRvkJpxmHklY0Laojm_blMRC_IKvkpi1n6E8jXTeQIUAaoC16ug_Epzq7RgFNw444p4-ZM3GPy0IxSJm2EQOI1OXvkwcel7ESKzdVMzB1QFVBXqr0PZpeZWacmugs0xm6Ez_srPtmTSUUpZckh7Bu2n0cmFuUQn7kSK5KCtEsxIRKhQfWU7J3ZNwdCrrbJAUQaSmHmEF_d-L8B5t6GN2nHGrO5wGm0dokQjVefnsWbKFIpe3MSx7WPRtStWOYBIIsa9jZc_-Q054-wB4G6hjdqQYbqF7j3PFwe-z4ZZBcA1oIat-Yf425oxaJ5SyyQMVNTIuYyfs4Mpa9NpDu-tdiEvl09Nx9BvBN3ZUFvM7iUj2P32fqAW0JvVNbBr8QmKF4_B03DCMgkJKMoQ0vsdYdrmoVLTLV0w-D8SCL_PLnJnD-KeR1ajqC1PXx4qLy1k_fQCzHHA04HuSHIG92L0b1fhiP62FTBmNCR4DS0hPq40JiUpO_wWybmn4uIwp9mAq0UvZw9dxhVfQuxd96Jr_-X8sRlsmbeBcLMM6Fw9d4PSA8X0G56FzREWTGt0dalEOpyJUdHOsFuQUL11wQLMEz5ozgvMmy9X8-c6Qk2QgWLD5Urgmc0L6JGcFxaNIcFjEOd2E5_S8SN32w7Juby2CHQ0jTYClZiF2tAJ8ABe6uoqeOu7P6fqy7cIdWPl_-ctFnEwIp0B7isaUMXix-ZT_u-5GFIPzsEXlTVToW4lbrfoQDXLJizj4snnMGRT0J4ejFDoENT57L7jt9MGUMuqSes5ezAPQ78ecLHlS8KKwhuVG_FpJl3xgkMCHk7tOIc78whJdw9HKC7zm2YihsQRFYXD5epYiaFX6hXnCy6-NvYV6q-2vqnpyldMAnDy6PP96T92Hao9owU8XrMLxaUmBQLXveVa-dmVFWvm_Knpi31lmF1R81XalSIAB488dS-DnllLhD0H3SQQm-AmLqWNgNQ8Fz1l_1petfIn65ounKrA7IYafsnWXa9ZHdz3aG-G_3I1EVEPoUncKcn0iI_H0BpLvZf--U7ZkslFVP-nkjbgQaX73hODnbT-aer41_Ojk3oOi4mNLvdeOVNYtmjiNhoqawgDvEW6kwCADfPEd2C23XrMQ1TvTlCdlZb_lehuZ3aP_A__UsTubakFDQAAAABJRU5ErkJggg%3D%3D,applications:sublime_text.desktop,applications:sublime_merge.desktop,applications:postman.desktop,applications:typora.desktop,applications:vlc.desktop,applications:slack.desktop,applications:telegramdesktop.desktop,applications:systemsettings.desktop,applications:spotify.desktop"
                        }
                    },
                    "plugin": "org.kde.plasma.icontasks"
                },
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "0"
                        },
                        "/Configuration/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        },
                        "/Configuration/General": {
                            "sources": "cpu%2Fsystem%2FTotalLoad",
                            "updateInterval": "100"
                        }
                    },
                    "plugin": "org.kde.plasma.systemmonitor.cpu"
                },
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "100"
                        }
                    },
                    "plugin": "org.kde.plasma.systemtray"
                },
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "12"
                        },
                        "/Configuration/Appearance": {
                            "bold": "false",
                            "clockFontSize": "12",
                            "marginSize": "26"
                        },
                        "/Configuration/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        }
                    },
                    "plugin": "org.kde.plasma.digitalclock.wl"
                },
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "0"
                        },
                        "/Configuration/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        }
                    },
                    "plugin": "org.kde.plasma.minimizeall"
                }
            ],
            "config": {
                "/": {
                    "formfactor": "3",
                    "immutability": "1",
                    "lastScreen": "0",
                    "wallpaperplugin": "org.kde.image"
                },
                "/ConfigDialog": {
                    "DialogHeight": "900",
                    "DialogWidth": "170"
                },
                "/Configuration": {
                    "PreloadWeight": "0"
                }
            },
            "height": 1.8888888888888888,
            "hiding": "normal",
            "location": "right",
            "maximumLength": 50,
            "minimumLength": 50,
            "offset": 0
        }
    ],
    "serializationFormatVersion": "1"
}
;

plasma.loadSerializedLayout(layout);
