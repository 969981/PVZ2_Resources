.class public abstract Lcom/tw/OnLinePaySdk/callback/ChannelSpecialCallback;
.super Ljava/lang/Object;
.source "ChannelSpecialCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract logoutAccount(ILjava/lang/String;)V
.end method

.method public abstract otherHandler(ILjava/lang/String;)V
.end method

.method public abstract switchAccount(ILjava/lang/String;)V
.end method
