.class public Lcom/bytedance/ttgame/tob/gradle/applog/AppLogVerifyUtils;
.super Ljava/lang/Object;
.source "AppLogVerifyUtils.java"


# static fields
.field private static sSendUris:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSendUris()[Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/bytedance/ttgame/tob/gradle/applog/AppLogVerifyUtils;->sSendUris:[Ljava/lang/String;

    return-object v0
.end method

.method public static isVerifyOpen()Z
    .locals 1

    .line 8
    sget-object v0, Lcom/bytedance/ttgame/tob/gradle/applog/AppLogVerifyUtils;->sSendUris:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static startVerify(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 16
    sput-object v0, Lcom/bytedance/ttgame/tob/gradle/applog/AppLogVerifyUtils;->sSendUris:[Ljava/lang/String;

    return-void
.end method

.method public static stopVerify()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/bytedance/ttgame/tob/gradle/applog/AppLogVerifyUtils;->sSendUris:[Ljava/lang/String;

    return-void
.end method
