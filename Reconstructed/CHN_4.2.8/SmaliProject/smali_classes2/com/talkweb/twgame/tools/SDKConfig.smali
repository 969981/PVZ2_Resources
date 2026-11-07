.class public Lcom/talkweb/twgame/tools/SDKConfig;
.super Ljava/lang/Object;
.source "SDKConfig.java"


# static fields
.field private static classType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    .line 26
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_ADVIEW:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_ADVIEW_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_YUMI:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_YUMI_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_TW:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_TW_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_YODO1:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_YODO1_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_OPPO:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_OPPO_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_VIVO:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_VIVO_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_BD:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_BD_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_XM:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_XM_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_360:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_360_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_UC:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_UC_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_HEMEDIA:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_HEMEDIA_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_ANZHI:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_ANZHI_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_JINSHANYUN:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_JINSHANYUN_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_MTG:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_MTG_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_ANZHI_VEDIO:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_ANZHI_VEDIO_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_DYDANDLM_VEDIO:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_DYDANDLM_VEDIO_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_4399:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_4399_VEDIO_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_DOUYIN:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_DOUYIN_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_JINLI:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_JINLI_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_HUAWEI:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_HUAWEI_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_TOPON:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_TopOn_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_LEDOU:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_LEDOU_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_GDT:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_GDT_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_BBX:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_BBX_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_NEWBD:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_NEWBD_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_CHUANSHANJIA:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_CHUANSHANJIA_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_MZ:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_MZ_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_SX:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_SX_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_233:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_233_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_TAPTAP:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_TAPTAP_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_MMY:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_MMY_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_SIG:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_SIG_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    sget-object v1, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_HONOR:Ljava/lang/String;

    sget-object v2, Lcom/talkweb/twgame/sdk/TwGameSdkConstant;->TWGAME_HONOR_CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassType()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    return-object v0
.end method

.method public static getTwGameSDKInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/talkweb/twgame/sdk/ITwGameSDKBase;
    .locals 0

    .line 122
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getTwGameSDKInstance(Ljava/lang/String;)Lcom/talkweb/twgame/sdk/ITwGameSDKBase;
    .locals 3

    .line 102
    sget-object v0, Lcom/talkweb/twgame/tools/SDKConfig;->classType:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 106
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 109
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/talkweb/twgame/sdk/ITwGameSDKBase;->setGameType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v0, v1

    .line 112
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-object v0
.end method
