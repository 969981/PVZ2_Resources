.class final Lcom/tw/gamesdk/net/OkHttpClientNet$4;
.super Ljava/lang/Object;
.source "OkHttpClientNet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/net/OkHttpClientNet;->dismissLoadingDialogUtils()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 211
    invoke-static {}, Lcom/tw/gamesdk/net/LoadingDialogUtils;->dismiss()V

    return-void
.end method
