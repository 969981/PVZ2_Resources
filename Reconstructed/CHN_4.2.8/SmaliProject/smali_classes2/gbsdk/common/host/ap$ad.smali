.class public Lgbsdk/common/host/ap$ad;
.super Lgbsdk/common/host/ap$ac;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ad"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgbsdk/common/host/ap$ac<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic aF:Lgbsdk/common/host/ap;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/ap;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgbsdk/common/host/ap$ad;->aF:Lgbsdk/common/host/ap;

    .line 2
    invoke-direct {p0, p1, p2}, Lgbsdk/common/host/ap$ac;-><init>(Lgbsdk/common/host/ap;Ljava/lang/Object;)V

    return-void
.end method
