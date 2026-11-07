.class public Lcom/tw/OnLinePaySdk/SdkTW/NativeUtils;
.super Ljava/lang/Object;
.source "NativeUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "keyprovider"

    .line 6
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native getApiKey()Ljava/lang/String;
.end method
