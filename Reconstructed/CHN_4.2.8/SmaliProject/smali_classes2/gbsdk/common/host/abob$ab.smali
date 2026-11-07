.class public final Lgbsdk/common/host/abob$ab;
.super Ljava/lang/Object;
.source "AsyncEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ab"
.end annotation


# static fields
.field public static final uG:Lgbsdk/common/host/abob;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lgbsdk/common/host/abob;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgbsdk/common/host/abob;-><init>(Lgbsdk/common/host/abob$1;)V

    sput-object v0, Lgbsdk/common/host/abob$ab;->uG:Lgbsdk/common/host/abob;

    return-void
.end method
