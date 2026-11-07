.class public final synthetic Lcom/tw/gamesdk/core/-$$Lambda$GameSDK$nAARgMeYKvOahfgPfpzywCAYeRY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tw/gamesdk/core/-$$Lambda$GameSDK$nAARgMeYKvOahfgPfpzywCAYeRY;->f$0:Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tw/gamesdk/core/-$$Lambda$GameSDK$nAARgMeYKvOahfgPfpzywCAYeRY;->f$0:Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;

    invoke-static {v0}, Lcom/tw/gamesdk/core/GameSDK;->lambda$initialize$0(Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;)V

    return-void
.end method
