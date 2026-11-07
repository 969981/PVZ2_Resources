.class public Lgbsdk/common/host/abdq;
.super Ljava/lang/Object;
.source "RequestIdGenerator.java"


# static fields
.field public static bY:Lgbsdk/common/host/abay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/common/host/abay<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgbsdk/common/host/abdq$ab;

    invoke-direct {v0}, Lgbsdk/common/host/abdq$ab;-><init>()V

    sput-object v0, Lgbsdk/common/host/abdq;->bY:Lgbsdk/common/host/abay;

    return-void
.end method
