.class public final Lgbsdk/common/host/abwt$1;
.super Ljava/lang/Object;
.source "TNCManager.java"

# interfaces
.implements Lgbsdk/common/host/abkk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abwt;->a(Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic aJC:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;


# direct methods
.method constructor <init>(Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lgbsdk/common/host/abwt$1;->aJC:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lgbsdk/common/host/abwt$1;->aJC:Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;->sendAppMonitorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 105
    invoke-static {}, Lgbsdk/common/host/abwt;->hw()Lgbsdk/common/host/abwt;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lgbsdk/common/host/abwt;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onStoreIdcChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 100
    invoke-static {}, Lgbsdk/common/host/abwc;->hk()Lgbsdk/common/host/abwc;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lgbsdk/common/host/abwc;->onStoreIdcChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
