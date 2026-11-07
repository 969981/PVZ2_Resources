.class public Lgbsdk/common/host/abwe$ab;
.super Ljava/lang/Object;
.source "TTNetDiagnosisRequest.java"

# interfaces
.implements Lcom/bytedance/frameworks/baselib/network/http/cronet/diagnosis/ICronetDiagnosisRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abwe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ab"
.end annotation


# instance fields
.field final synthetic aIu:Lgbsdk/common/host/abwe;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abwe;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lgbsdk/common/host/abwe$ab;->aIu:Lgbsdk/common/host/abwe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetDiagnosisRequestComplete(Ljava/lang/String;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lgbsdk/common/host/abwe$ab;->aIu:Lgbsdk/common/host/abwe;

    iget-object v0, v0, Lgbsdk/common/host/abwe;->aIn:Lcom/bytedance/ttnet/diagnosis/IDiagnosisCallback;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lgbsdk/common/host/abwe$ab;->aIu:Lgbsdk/common/host/abwe;

    iget-object v0, v0, Lgbsdk/common/host/abwe;->aIn:Lcom/bytedance/ttnet/diagnosis/IDiagnosisCallback;

    invoke-interface {v0, p1}, Lcom/bytedance/ttnet/diagnosis/IDiagnosisCallback;->onDiagnosisComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
